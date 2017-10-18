use strict;

my $str = join("", <STDIN>);
my $regex = qr/"cpu_threads_conf.+\],/sp;

if ( $str =~ /$regex/g ) {
  #print "${^MATCH} and its start/end positions can be obtained via \$-[0] and \$+[0]\n";
  # print "Capture Group 1 is $1 and its start/end positions can be obtained via \$-[1] and \$+[1]\n";
  # print "Capture Group 2 is $2 ... and so on\n";
  print "${^MATCH}";
}

# ${^POSTMATCH} and ${^PREMATCH} are also available with the use of '/p'
# Named capture groups can be called via $+{name}
