var name = "Loi Tran";
console.log("Hello " + name);

function fullName(first, last) {
  var full_name = first + " " + last;
  return "Welcome " + full_name + "!";
};

// var first = prompt("What is your first name?");
// var last = prompt("What is your last name?");

// document.write(fullName(first, last));

var numbers = Array.from(Array(11).keys()).slice(1);
console.log(numbers);

for(var i = 0; i < 11; i++) {
  console.log("i:", i);
}

numbers.forEach(function(e) {console.log("element in array:", e)});
console.log("Adding 11:", numbers = numbers.concat(11));
console.log("Last element in array:", numbers.slice(-1));
console.log("Reversed array:", reversedNumbers = numbers.slice().reverse());

var bigNumbers = [100, 400, 300, 200];

var allNumbers = numbers.concat(bigNumbers);
console.log("All numbers:", allNumbers);
console.log("Sorted allNumbers:", allNumbers.sort(function(a, b){return a-b}));

console.log("\n");
console.log("MILESTONE 2:");


console.log("\n");
console.log("toSentence1:");
var loi = {"age": 30, "name": "Loi"};
var quy = {"age": 23, "name": "Quy"};
var harley = {"age": 32, "name": "Harley"};
var stan = {"age": 29, "name": "Stan"};
var test = {"name": "test"};

function toSentence1(obj) {
  return obj.name + " is " + obj.age + " years old."
}

console.log(toSentence1(loi));
console.log(toSentence1(quy));
console.log(toSentence1(harley));
console.log(toSentence1(stan));

console.log("\n")
console.log("String Interpolation:")
function toSentence2(obj) {
  if (obj.hasOwnProperty("name") && obj.hasOwnProperty("age")) {
    return `${obj.name} is ${obj.age} years old!`
  } else {
    console.log("Name property is missing.");
  }
}

console.log(toSentence2(loi));
console.log(toSentence2(quy));
console.log(toSentence2(harley));
console.log(toSentence2(stan));
console.log(toSentence2(test));

console.log("\n")
console.log("MILESTONE C1:")