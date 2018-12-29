package Bar;

# Demo module with BEGIN, UNITCHECK, CHECK, INIT and END blocks

BEGIN {
    print "1. BEGIN block of ".__PACKAGE__." executed\n"
}

UNITCHECK {
    print "2. UNITCHECK block of ".__PACKAGE__." executed\n"
}

CHECK {
    print "3. CHECK block of ".__PACKAGE__." executed\n"
}

INIT {
    print "4. INIT block of ".__PACKAGE__." executed\n"
}

END {
    print "5. END block of ".__PACKAGE__." executed\n" 
}

sub abc {
    print "package ".__PACKAGE__." sub abc executed\n";
}

1;