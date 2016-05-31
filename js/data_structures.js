// Release 0

var colors = ["grrrrooan", "irridescenteal", "blkish", "nutchest"]
var names = ["izza", "koarse", "horace", "studMuffin"]

colors.push("tholGrey")
names.push("officeAssistantiat")

// initial thinking is to try to choose a random horse name and then pair with a random complementary index number (i.e. if 5 horses and rand = 1, then color = 5, etc.)

for (var i = 0; i < colors.length; i++) {
console.log(colors[i] +  (names[i]));
}







function Car(maker, year, isGoodinSnow) {
  console.log("Our New Car!");
    this.maker = maker;
    this.year = year;
    this.isGoodinSnow = isGoodinSnow;
names
    this.rev = function() { console.log("Vroom"); };
    console.log("Car Initialization Complete");
}

console.log("Lets buy a new car...");
var newCar = new Car("VW TDI", 2015, true);
console.log(newCar.maker);
console.log("our little baby is fast");
newCar.rev();
newCar.rev();
newCar.rev();
console.log("---------");

console.log("Something for the weekends?");
var anotherNewCar = new Car("Range Rover J9data", 1956, false);
console.log(anotherNewCar.maker);
console.log("this tree-climber can't rev much");
anotherNewCar.rev();
console.log("-----------")