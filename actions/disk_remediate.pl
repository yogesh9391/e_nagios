#!/usr/bin/perl

use strict;
use Getopt::Long;
use JSON;

my $directory;
my $debug;
my %output;

GetOptions(
    "directory=s" => \$directory,
    "debug"      => \$debug
);

if ( !defined( $directory ) )
{
    $output{ 'result' } = 'fail';
    $output{ 'reason' } = "Directory is not provided!";
    finish( 1 );
}

if($directory eq '/var/log')
{
	# do something with /var/log

}
elsif ($directory eq '/var')
{
	# do something with /var
}
elsif ($directory eq '/home')
{
	# do something with /home
}
elsif ($directory eq '/opt')
{
	# do something with /opt
}

$output{'result'} = 'success';
finish(0);

sub finish
{
    my $exit_code = shift || 0;
    my $json = encode_json \%output;
    print "$json\n";
    exit( $exit_code );
}
