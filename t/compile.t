# $Id: compile.t,v 1.1.1.1 2004/01/12 14:14:33 comdog Exp $

use Test::More tests => 1;

my $file = "blib/script/scriptdist";

print "bail out! Script file is missing!" unless -e $file;

my $output = `perl -c $file 2>&1`;

like( $output, qr/syntax OK$/, 'script compiles' );
