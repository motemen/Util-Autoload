use inc::Module::Install;

name 'Util-Autoload';
all_from 'lib/Util/Autoload.pm';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';

auto_set_repository;
auto_include;

readme_from 'lib/Util/Autoload.pm';

WriteAll;
