package Y;

require Exporter;

BEGIN {
    @ISA = qw(Exporter);
    @EXPORT = qw(DumpSmth);
}

sub DumpSmth {
  return [@_];
}