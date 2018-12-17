package A;

use Sub::Exporter::Progressive -setup => {
    exports => [ qw(sub1 sub2) ],
};

sub sub1 {
    return 1;
}

sub sub2 {
    return 2;
}

1;