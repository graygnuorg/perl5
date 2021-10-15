#!./perl -w
use strict;
use Config;
use Test::More;

BEGIN {
    plan(skip_all => "GDBM_File was not built")
	unless $Config{extensions} =~ /\bGDBM_File\b/;

    plan(tests => 2);
    use_ok('GDBM_File');
}

my $v = GDBM_File->GDBM_version;
isnt($v, undef, "Version $v");

