package Util::Autoload;
use strict;
use warnings;
use 5.008_001;
use Util::Autoload::Data;
use Carp;
use Exporter::Lite;

our $VERSION = '0.01';

our @EXPORT = keys %$Util::Autoload::Data::Functions;

sub AUTOLOAD {
    my ($name) = our $AUTOLOAD =~ /([^:]+)$/;

    my $entry = $Util::Autoload::Data::Functions->{$name}
        or croak qq(function "$name" not defined);
    my ($module, $import) = @$entry;

    my $pkg = "Util::Autoload::sandbox::import::$module";
    eval qq{
        package $pkg;
        use $module $import;
    };
    die if $@;

    {
        no strict 'refs';
        *$AUTOLOAD = $pkg->can($name);
    }

    goto \&$AUTOLOAD;
}

1;

__END__

=head1 NAME

Util::Autoload - Exports and autoloads useful functions

=head1 SYNOPSIS

  use Util::Autoload; # simply use, and now you can ...

  # automatically loads Data::Dumper::Concise, Path::Class
  warn +Dumper [ file(__FILE__)->slurp ];

  # automatically loads Perl6::Say, Time::Piece
  say localtime()->datetime;

=head1 DESCRIPTION

Util::Autoload exports common functions provided by
other useful modules. The modules are not loaded until
the exported function is called.

=head1 SUPPORTTED MODULES

=over 4

=item L<Perl6::Say>

=item L<Path::Class>

=item L<Data::Dumper::Concise>

=item L<Encode>

=item L<List::Util>

=item L<List::MoreUtils>

=item L<Scalar::Util>

=item L<Time::Piece>

=back

=head1 AUTHOR

motemen E<lt>motemen@gmail.comE<gt>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
