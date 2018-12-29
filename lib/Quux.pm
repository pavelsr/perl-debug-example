package Quux;
 
sub new {
    my $class = shift;
    return bless {}, $class;
}

sub method1 {
    my $self = shift;
    $self->method2();
    print "Hello world from ".(caller(0))[3]."\n";
}

sub method2 {
    my $self = shift;
    print "Hello world from ".(caller(0))[3]."\n";
}

1;