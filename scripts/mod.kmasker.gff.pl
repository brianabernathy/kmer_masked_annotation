#!/usr/bin/env perl

use strict;
use warnings;

# remove 'sequence' records from kmasker gff
# usage: ./mod.kmasker.gff.pl < kmasker.gff > kmasker.mod.gff

while (my $line = <STDIN>) {
	if ($line !~ /^#/) {
		my @fields = split(/\t/, $line);

		if ($fields[2] eq 'sequence') {
			next();
		}
	}

	print("$line");
}

exit(0);
