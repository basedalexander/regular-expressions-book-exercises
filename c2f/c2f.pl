print "Enter a temperature in Celsius:\n";

$input = <STDIN>; # get line 
chomp($input); # remove \n from the end of line 

$input =~ m/^([0-9]+)([CF])$/;

if ($input) {
	$type = $2;
	
	if ($type eq "C") {
		$celsius = $1;
		$fahrenheit = ($celsius * 9 / 5) + 32;
	}
	else {
		$fahrenheit = $1;
		$celsius = ($fahrenheit - 32) * 5 / 9;
	}

#	printf "%.2f C is %.2f F \n", $celsius, $fahrenheit;

	print STDOUT "% C is % F \n", $celsius, $fahrenheit;
}
else {
	print "I don't understand \"$type\".\n";
}
