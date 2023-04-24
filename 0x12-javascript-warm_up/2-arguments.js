#!/usr/bin/node

const myVar0 = 'No argument';
const myVar1 = 'Argument found';
const myVar2 = 'Arguments found';
if (process.argv.length === 2) {
	  console.log(myVar0);
} else if (process.argv.length === 3) {
	  console.log(myVar1);
} else {
	  console.log(myVar2);
}
