# $Id: prereq.t 1139 2004-02-11 01:16:37Z comdog $
use Test::More;
eval "use Test::Prereq 0.51";
plan skip_all => "Test::Prereq 0.51 required to test dependencies" if $@;
prereq_ok();
