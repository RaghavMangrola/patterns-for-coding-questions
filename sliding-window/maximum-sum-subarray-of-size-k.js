const max_sum_subarray_of_size_k = function(k, arr) {
  let windowStart = 0
  var output = 0
  var currentSum = 0
  for (let windowEnd = 0; windowEnd < arr.length; windowEnd++) {

    currentSum += arr[windowEnd]

    if (windowEnd >= k - 1) {
      
      output = Math.max(output, currentSum)

      currentSum -= arr[windowStart]
      windowStart += 1
    }
  }
  return output
}

const exampleOne = max_sum_subarray_of_size_k(3, [2,1,5,1,3,2])

const exampleTwo = max_sum_subarray_of_size_k(2, [2,3,4,1,5])

console.log("Example One: ", exampleOne)
console.log("Example Two: ", exampleTwo)