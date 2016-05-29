
// Release 4 Write a Javascript Program

// input string as parameter and reverse it
// assuming no function / method availability, do it ourselves.
// for each word split the word into individual letters
// put individual letters into an array if possible w js.
// take last letter from array and put first
// continue with array until all letters (0 through length-1) are
// exhausted unless a reverse function exists.
// recombine array into word

// if no array functionality exists, take last letter if indexed to 0 and move it to first position. Take second to last letter (now length-1) and move to position 1 (second). loop until there have been length-1 moves made to reverse the string.


// reverse
function revString(str1) {
  var strArray = str1.split('');
//  return strArray
    strArray.reverse();
//    return strArray
  var newStr = strArray.join('');
if (newStr.length > 1) {
  return newStr;
} else {
  return "No Luck"
}
}
console.log(revString("suddenly"))