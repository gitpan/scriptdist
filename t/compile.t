# $Id: compile.t,v 1.2 2004/02/11 01:17:15 comdog Exp $

use Test::More tests => 1;

my $file = "blib/script/scriptdist";

print "bail out! Script file is missing!" unless -e $file;

my $output = `perl -c $file 2>&1`;

print "bail out! Script file is missing!" unless
	like( $output, qr/syntax OK$/, 'script compiles' );
