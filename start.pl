#!/usr/bin/perl

use strict;
use warnings;
use lib 'lib';

use Foo qw(sub1 sub2 sub3);
sub1("Hello world\n");      # Foo::sub1()
sub2();                     # Foo::sub2(), Bar::abc(), Bar has INIT/BEGIN/END blocks
sub3();                     # core and cpan module call

use Bat qw(abc);            # use Sub::Exporter::Progressive
abc();                      # Bat::abc, Bat::_xyz   

use Quux;
# eval "use Quux"
my $q = Quux->new;          
$q->method1();             # Quux->method1(), Quux->method2(), also print HW method name using caller

use X qw(lv1);             # no output, standart Exporter, must produce 5 lvl trace
lv1();

require Y;
# my $class = 'Y';
# eval "require $class";
Y->import();
DumpSmth('a','b','c');

sub snickersnee {
    return;
}

sub kiss_me {
    die "Fix me";
}

eval {
    kiss_me();
    1;
} or do {
    snickersnee();
}

# use Data::Dumper;
# warn Dumper $Devel::AllSubs::traced_modules;    
