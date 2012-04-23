use strict;
use warnings;
use YAML;
use Data::Dumper;
use Module::Load;
use Path::Class;

my $provider = {};
my $functions = YAML::LoadFile('data/functions.yaml');

foreach my $module (keys %$functions) {
    my $config = $functions->{$module};
    my $pkg = "sandbox::import::$module";

    my $import;
    if (exists $config->{import}) {
        if (defined $config->{import}) {
            $import = qq('$config->{import}');
        } else {
            $import = '';
        }
    }
    elsif (my $var = $config->{sniff_var}) {
        load $module;
        no strict 'refs';
        $import = sprintf 'qw(%s)', join ' ', @{"$module\::$var"};
    }

    eval qq{
        package $pkg;
        use $module $import;
    };
    warn if $@;

    my %syms = do {
        no strict 'refs';
        %{"$pkg\::"};
    };

    my $found;
    while (my ($name, $sym) = each %syms) {
        if (*$sym{CODE}) {
            if (my $e = $provider->{$name}) {
                die "$name conflicts: $e->[0] vs $module";
            }
            $provider->{$name} = [ $module, $import ];
            $found++;
        }
    }

    unless ($found) {
        die "Could not find exported functions: $module $import";
    }
}

my $out = file('lib', 'Util', 'Autoload', 'Data.pm');
$out->dir->mkpath(1);

my $fh = $out->openw;
print $fh 'package Util::Autoload::Data;', "\n";
print $fh 'use strict;', "\n";
print $fh 'use warnings;', "\n";
print $fh "\n";
print $fh 'our ', Data::Dumper->new([ $provider ], [ 'Functions' ])->Indent(1)->Dump, "\n";
print $fh '1;';
