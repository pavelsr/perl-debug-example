package Bat;

# demo module that use  Sub::Exporter::Progressive as 

use Sub::Exporter::Progressive -setup => {
    exports => [ qw(abc) ],
};

sub abc {
    _xyz();
    return 1;
}

sub _xyz {
    print "Hello world from package ".__PACKAGE__."\n";
    return 2;
}

1;