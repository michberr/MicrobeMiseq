#! /usr/bin/perl
#from http://www.perlmonks.org/?node_id=975419

use strict;
use warnings;

@ARGV == 2 or die "usage: $0 <multifasta file> <header replacement fil
+e>\n";

my ( $fasta_file, $header_file ) = @ARGV;
my $destination = $fasta_file . '_headers-replaced.fasta';

open IN2, '<', $header_file or die "Can't read from tab-delimited head
+er replacement file $header_file: $!\n";

my %head_seqs;
while ( <IN2> ) {
    chomp;
    my ( $old, $new ) = split /\t/;
    $head_seqs{ $old } = $new;
    }
close IN2;

open IN1, '<', $fasta_file or die "Can't read from multifasta file wit
+h alternating lines of headers and sequences $fasta_file: $!\n";

open OUT, '>', $destination or die "Can't write to file $destination: 
+$!\n";    

while ( <IN1> ) {
    if ( /^>(.+)$/ && exists $head_seqs{ $1 } ) {
        $_ = ">$head_seqs{ $1 }\n";
        }
    print OUT $_;
    }
close IN1;
close OUT;