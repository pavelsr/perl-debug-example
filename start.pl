#!/usr/bin/perl

use strict;
use warnings;

# start.pl 2>&1

use lib 'lib';

use A qw(sub1 sub2);
use B;
use X qw(x_sub1 x_sub2);

# use Devel::KYTProf;
# Devel::KYTProf->add_profs('B', ':all');

# A.pm
sub1();

# X.pm
x_sub1();
x_sub2();

# B.pm
# my $b = B->new;
# $b->method1();

ривязанное