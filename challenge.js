
function leftmostNodesSum(array) {
   // your code here
  let sum = 0;
  let index = 0;
  while (index < array.length) {
    sum += array[index];
    index = 2 * index + 1;
  }
  return sum;
}
console.log(leftmostNodesSum([2, 7, 5, 2, 6, 0, 9]))
// => 11
module.exports = leftmostNodesSum