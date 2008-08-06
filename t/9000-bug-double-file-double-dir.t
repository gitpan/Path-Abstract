#!perl -T

use strict;
use warnings;

use Test::More;
use Path::Abstract qw/path/;

plan skip_all => "Path::Class needed to run this test" and exit unless eval "require Path::Class;"; 

plan qw/no_plan/;

my $path = path qw/1 2 3/;
is($path->file, '1/2/3');
is($path->dir, '1/2/3');
