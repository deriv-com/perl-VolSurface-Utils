#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'VolSurface::Utils' ) || print "Bail out!\n";
}

diag( "Testing VolSurface::Utils $VolSurface::Utils::VERSION, Perl $], $^X" );
