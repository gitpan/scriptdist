# $Id: prereq.t,v 1.2 2004/02/11 01:16:37 comdog Exp $
use Test::More;
eval "use Test::Prereq 0.51";
plan skip_all => "Test::Prereq 0.51 required to test dependencies" if $@;
prereq_ok();
