thisPrint = "Connect your wallet";
printSize = 0;

// TODO: what? rewrite.
function step() {
	printSize = 640 - string_width(thisPrint)/2;
}