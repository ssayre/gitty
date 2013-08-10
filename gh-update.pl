#!/usr/bin/perl
#
# update all the things... git pull
#####

my  $cmd = 'git pull';
my  $stdout;
    $stdout = `$cmd`;

if ( open(my LOG, ">>", "gh-update.log")) {
    print LOG "\n".localtime(time).' git pull'."\n";
}
else {
    print "\tERROR:  failed to open log file: gh-update.log"."\n";
}

exit 0;

