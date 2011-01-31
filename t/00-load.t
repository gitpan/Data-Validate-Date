#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Data::Validate::Date' ) || print "Bail out!
";
}

diag( "Testing Data::Validate::Date $Data::Validate::Date::VERSION, Perl $], $^X" );
