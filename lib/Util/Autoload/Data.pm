package Util::Autoload::Data;
use strict;
use warnings;

our $Functions = {
  'file' => [
    'Path::Class',
    ''
  ],
  'encode' => [
    'Encode',
    ''
  ],
  'refaddr' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'insert_after_string' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'distinct' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'sum' => [
    'List::Util',
    'qw(first min max minstr maxstr reduce sum shuffle)'
  ],
  'firstidx' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'localtime' => [
    'Time::Piece',
    ''
  ],
  'decode_utf8' => [
    'Encode',
    ''
  ],
  'first_index' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'DumperF' => [
    'Data::Dumper::Concise',
    ''
  ],
  'each_arrayref' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'last_value' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'DumperObject' => [
    'Data::Dumper::Concise',
    ''
  ],
  'openhandle' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'none' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'true' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'all' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'blessed' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'isvstring' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'dir' => [
    'Path::Class',
    ''
  ],
  'decode' => [
    'Encode',
    ''
  ],
  'str2bytes' => [
    'Encode',
    ''
  ],
  'shuffle' => [
    'List::Util',
    'qw(first min max minstr maxstr reduce sum shuffle)'
  ],
  'after_incl' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'before_incl' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'reduce' => [
    'List::Util',
    'qw(first min max minstr maxstr reduce sum shuffle)'
  ],
  'dualvar' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'lastval' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'set_prototype' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'part' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'any' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'each_array' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'isweak' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'find_encoding' => [
    'Encode',
    ''
  ],
  'encode_utf8' => [
    'Encode',
    ''
  ],
  'reftype' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'firstval' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'maxstr' => [
    'List::Util',
    'qw(first min max minstr maxstr reduce sum shuffle)'
  ],
  'encodings' => [
    'Encode',
    ''
  ],
  'false' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'max' => [
    'List::Util',
    'qw(first min max minstr maxstr reduce sum shuffle)'
  ],
  'tainted' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'looks_like_number' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'pairwise' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'readonly' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'first_value' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'mesh' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'minmax' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'before' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'notall' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'zip' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'minstr' => [
    'List::Util',
    'qw(first min max minstr maxstr reduce sum shuffle)'
  ],
  'indexes' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'natatime' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'clone_encoding' => [
    'Encode',
    ''
  ],
  'apply' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'after' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'last_index' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'say' => [
    'Perl6::Say',
    ''
  ],
  'lastidx' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'first' => [
    'List::Util',
    'qw(first min max minstr maxstr reduce sum shuffle)'
  ],
  'min' => [
    'List::Util',
    'qw(first min max minstr maxstr reduce sum shuffle)'
  ],
  'gmtime' => [
    'Time::Piece',
    ''
  ],
  'insert_after' => [
    'List::MoreUtils',
    '\':all\''
  ],
  'Dumper' => [
    'Data::Dumper::Concise',
    ''
  ],
  'bytes2str' => [
    'Encode',
    ''
  ],
  'weaken' => [
    'Scalar::Util',
    'qw(blessed dualvar reftype weaken isweak tainted readonly openhandle refaddr isvstring looks_like_number set_prototype)'
  ],
  'uniq' => [
    'List::MoreUtils',
    '\':all\''
  ]
};

1;