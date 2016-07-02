$fileBody = "";

while($input = <>) {
	if ($input =~ /^\s*$/) {
		last;
	}
	$fileBody = "$fileBody\n$input";
}

$reply = "";

if ($line =~/^From ([\w\d])+/g) {
	$senderName = $1;
}
