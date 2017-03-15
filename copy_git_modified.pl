#!/usr/bin/perl
use File::Copy;
my $mod_base_dir = "/scratch/yangzhao/tmp";
my $mod_log_file = $mod_base_dir .'/' . 'mod.log';
my $git_status = "git status > $mod_log_file";
system $git_status;

$ARGV[0] = $mod_log_file;

while(<>){
	if(/^#\s+modified:\s+(\S+)/){
		print $1;
		copy($1, $mod_base_dir) or die "Copy failed: $!";
		print "\n";
	}
}
