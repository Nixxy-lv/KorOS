use strict; # <- always use
use warnings; # <----|

# My first time using Perl

# Perl is used for:
# Automation scripts
# Text parsing
# Log processing

print "Enter your name:  ";

# user input
my $name = <STDIN>;
chomp($name);
print "Hello $name!\n"; # needs \n for mewline like C
