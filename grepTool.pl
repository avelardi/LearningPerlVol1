use strict;
use warnings;
print "Enter a file:";
my $filename = <>;
print "\nEnter text to search for: ";
my $string = <>;
chomp $string;
chomp $filename;
print "Looking for lines containing $string in $filename\n";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $row = <$fh>) {
	if ($row =~ m/$string/) {
  chomp $row;
  print "$row\n";
}
}