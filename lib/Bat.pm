package Bat;

use Sub::Exporter::Progressive -setup => {
    exports => [ qw(sub1 sub2) ],
};

sub sub1 {
    sub2();
    return 1;
}

sub sub2 {
    print "Hello world from package Bat\n";
    return 2;
}

1;