package Quux;
 
sub new {
    my $class = shift;
    return bless {}, $class;
}

sub method1 {
    my $self = shift;
    print "Hello world from module Quux\n";
}

1;