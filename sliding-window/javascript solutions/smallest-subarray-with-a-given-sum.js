const smallest_subarray_with_given_sum = function(s, arr) {
    let windowStart = 0
    let minLength = Infinity
    let windowSum = 0
    
    for (let windowEnd = 0; windowEnd < arr.length; windowEnd++) {

        windowSum += arr[windowEnd]

        while (windowSum >= s) {
            minLength = Math.min(minLength, windowEnd - windowStart + 1)
            windowSum -= arr[windowStart]
            windowStart += 1
        }        
    }

    return minLength
  }

  const exampleOne = smallest_subarray_with_given_sum(7, [2, 1, 5, 2, 3, 2])
  const exampleTwo = smallest_subarray_with_given_sum(7, [2, 1, 5, 2, 8])
  const exampleThree = smallest_subarray_with_given_sum(8, [3, 4, 1, 1, 6])

  console.log("Example One: ", exampleOne)
  console.log("Example Two: ", exampleTwo)
  console.log("Example Three: ", exampleThree)