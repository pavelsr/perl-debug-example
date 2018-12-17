package X;

require Exporter;

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(x_sub1 x_sub2);
our %EXPORT_TAGS = ( 'ALL' => [ @EXPORT_OK ] );

sub x_sub1 {
    return;
}

sub x_sub2 {
    return;
}