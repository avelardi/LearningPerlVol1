#!/usr/bin/perl

use strict;
use warnings;
use File::Fetch;

print "Enter a URL: ";
my $url = <>;
print "\nEnter the number of times you would like to get this file: ";
my $numberOfTimes = <STDIN>;
chomp $numberOfTimes;


my $gets = 0;

for my $i ( 0 .. $numberOfTimes ){
	
	#my $ff = File::Fetch->new(uri => $url);
	#my $where = $ff->fetch();
	system("wget $url");
	$gets++;
	print "$gets\n";
    #my $filename = "$ff->file";
	system("sudo rm aug-24-to-aug-30.pdf* ")
	#print $filename;
}

