#!/usr/bin/perl

use Net::LastFMAPI;
use XML::Smart;

print "Basic Script to get loved tracks from Last.FM\n";
print "-----------------------------------\n";
print "Enter LastFM user name: ";
$user = <STDIN>;
chomp $user;
print "Getting Stuff for $user\n";

my $xml = lastfm("user.getLovedTracks", user => $user,format => "xml");
print "--------------------\n";
#now that we dumped the xml, we can parse it

my $trackList = XML::Smart->new($xml);
my $trackList = $trackList->{lfm}{lovedtracks};
my @songs;
my @artists;
my $x = 0;

foreach (0 .. 34){
push (@songs, $trackList->{track}[$x]{name}[0]);
push (@artists, $trackList->{track}[$x]{artist}[0]{name}[0]);
$x++;
}

my $counter = 0;
my $numbers = 1;

foreach (@songs){
 	print "$numbers. @artists[$counter] - @songs[$counter]\n";
 	$numbers++;
 	$counter++;
}


