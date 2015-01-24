#!/usr/bin/perl
use strict;
use warnings;

# srt2tsv

while(<>) {
	chomp;
	if ($_ =~ /\d\d:\d\d:\d\d,\d\d\d \-\-\> \d\d:\d\d:\d\d,\d\d\d/) {
		s/,/\./g;
		s/ \-\-\> /\t/;
		print "\n$_\t";
	}
	elsif ($_ !~ /^\d+$/) {
		print;
		if ($_ !~ /^$/) {
			print " ";
		}
	}
	else {
	}
}
exit;
