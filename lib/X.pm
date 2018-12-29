package X;

require Exporter;

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(lv1);

sub lv1 {
    lv2();
    return;
}

sub lv2 {
    lv3();
    return;
}

sub lv3 {
    lv4();
    return;
}

sub lv4 {
    lv5();
    return;
}

sub lv5 {
    return;
}