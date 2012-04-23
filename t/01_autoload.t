use strict;
use warnings;
use Test::More tests => 4;

use_ok 'Util::Autoload';

subtest exports => sub {
    can_ok __PACKAGE__, $_ for qw(
        Dumper
        file
        say
        reduce
        any
        blessed
        encode
    );
};

subtest 'Data::Dumper::Concise' => sub {
    is Dumper({ a => 1 }), "{\n  a => 1\n}\n";
};

subtest 'Path::Class::File' => sub {
    isa_ok file(__FILE__), 'Path::Class::File';
};
