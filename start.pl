#!/usr/bin/perl

use strict;
use warnings;
use lib 'lib';

use Bat qw(sub1 sub2);
use X qw(x_sub1 x_sub2);
use Quux;

# Bat.pm
sub1();

# X.pm
x_sub1();
x_sub2();

# Quux.pm
my $q = Quux->new;
$q->method1();
