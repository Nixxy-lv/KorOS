

print "Please enter Password: ";
my $pass =<STDIN>;
chomp $pass;

if ($pass == "pizza") {
  print "Welcone Admin!";
} elsif ($pass == "Password") {
  print "You are too smart, Admin";
} else {
  print "YOU ARE NOT ADMIN, GET OUT";
}
