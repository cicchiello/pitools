#!/usr/bin/perl

#
# Do this to declare a local virtual printer
#   > sudo lpadmin -p tofile -E -v socket://localhost:12000 -m raw
# That printer will be found by the CUPS admin web page, and can be setup
# to mimic any printer.  Then, anything sent to that printer will be sent to
# /tmp/x after all filtering and processing
#

use IO::Socket::INET;
$myport=12000;
$pserve=IO::Socket::INET->new(LocalPort => $myport,Type=>SOCK_STREAM,Reuse=>1,Listen=>1) or die "can't do that $!\n";
while ($pjob=$pserve->accept()) {
    open(J,">>/tmp/x") or print "having issues $!\n";
    print J "New job...\n";
    while (<$pjob>) {
	print J "$_";
    }
    close J;
    close $pjob;
}
