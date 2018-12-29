package Foo;
use Bar;
use Module::CoreList;
use Module::Load;

# demo module that export functions with core module Exporter
require Exporter;

our @ISA = qw(Exporter);
our @EXPORT_OK = qw(sub1 sub2 sub3);
our %EXPORT_TAGS = ( 'ALL' => [ @EXPORT_OK ] );

sub sub1 {
    my ( $x ) = @_;
    print $x;
}

sub sub2 {
    Bar::abc();
}

#something using core module
sub sub3 {
    sub1('Core module call will be next');
    Module::CoreList->first_release('File::Spec');
    autoload Data::Dumper;
    Data::Dumper->Dump(['abc']);
}