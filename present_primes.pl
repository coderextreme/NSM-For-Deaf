print STDOUT<<EOF;
<html>
	<head>
		<title>American Sign Language Natural Semantic Metalanguage</title>
	</head>
<body>
EOF
while (<STDIN>) {
	chomp;
	$file = $_;
	open (FILE, "<$file");
	$_ =~ s/html_primes\/(.*).html/$1/;
	$_ =~ s/[\+\~]/ /g;
	print STDOUT $_;
	print STDOUT "<br />\n";
	for (<FILE>) {
		print STDOUT $_;
	}
	close(FILE);
	print STDOUT "<br />\n"
}
print STDOUT<<EOF;
</body>
</html>
EOF
