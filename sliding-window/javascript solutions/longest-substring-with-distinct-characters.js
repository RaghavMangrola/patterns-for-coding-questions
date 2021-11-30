const non_repeat_substring = function (str) {
  let windowStart = 0
  let maxLength = 0
  let charIndexMap = {}

  for (let windowEnd = 0; windowEnd < str.length; windowEnd++) {
    const rightSide = str[windowEnd]

    if (rightSide in charIndexMap) {
      windowStart = Math.max(windowStart, charIndexMap[rightSide] + 1)
    }

    charIndexMap[rightSide] = windowEnd

    maxLength = Math.max(maxLength, windowEnd - windowStart + 1)
  }

  return maxLength
}

const exampleOne = non_repeat_substring('aabccbb')
const exampleTwo = non_repeat_substring("abbbb")
const exampleThree = non_repeat_substring("abccde")

console.log('exampleOne', exampleOne)
console.log('exampleTwo', exampleTwo)
console.log('exampleThree', exampleThree)
