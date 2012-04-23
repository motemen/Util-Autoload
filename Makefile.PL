use inc::Module::Install;

name 'Util-Autoload';
all_from 'lib/Util/Autoload.pm';

tests 't/*.t';
author_tests 'xt';

requires 'Exporter::Lite';
requires 'Carp';

requires 'Data::Dumper::Concise';
requires 'Encode';
requires 'List::MoreUtils';
requires 'List::Util';
requires 'Path::Class';
requires 'Perl6::Say';
requires 'Scalar::Util';
requires 'Time::Piece';

test_requires 'Test::More';

auto_set_repository;
auto_include;

readme_from 'lib/Util/Autoload.pm';

WriteAll;
