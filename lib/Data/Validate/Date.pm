package Data::Validate::Date;

use strict;
use warnings;
use Time::Local;

our $VERSION = '0.01';

sub new {
    my $class = shift;
    bless {},$class;
}

sub is_date {
    my $self = shift;
    my $date = shift;

    return unless defined $date;
    my ($year,$month,$day);

    if ( $date =~ /^\d{4}-\d{1,2}-\d{1,2}$/ ) {
        ($year,$month,$day) = split/-/,$date;

    } elsif ( $date =~ /^(\d{4})(\d{2})(\d{2})$/ ) {
        ($year,$month,$day) = ($1,$2,$3);

    } else {
        return;
    }

    $month--;
    eval { timelocal(0,0,0,$day,$month,$year) };

    return $@ ? undef : 1;
}

1;

=head1 NAME

Data::Validate::Date - date validation methods

=head1 VERSION

Version 0.01


=head1 SYNOPSIS

    use Data::Validate::Date;

    my $test = Data::Validate::Date->new;
    my $re = $test->is_date("YYYYMMDD"); # or
    my $re = $test->is_date("YYYY-MM-DD");

    print $re ? "Valid date" : "Invalid date";


=head1 METHODS

=head2 new()

Create the object.

    my $test = Data::Validate::Date->new;

=head2 is_date()

Validate the given date is valid or not, return 1 for true, undef for false.
It accepts two forms of date, one is "YYYYMMDD", another is ""YYYY-MM-DD".
So the below invoking are right.

    $test->is_date("20101231");
    $test->is_date("2010-12-31")

    $test->is_date("20110101")
    $test->is_date("2011-01-01")
    $test->is_date("2011-1-1")


=head1 SEE ALSO

Time::Local


=head1 AUTHOR

Peng Yong Hua <pyh@mail.nsbeta.info>


=head1 BUGS/LIMITATIONS

If you have found bugs, please send email to <pyh@mail.nsbeta.info>


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Data::Validate::Date


=head1 COPYRIGHT & LICENSE

Copyright 2011 Peng Yong Hua, all rights reserved.

This program is free software; you can redistribute it and/or modify 
it under the same terms as Perl itself.

