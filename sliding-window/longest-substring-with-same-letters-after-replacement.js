const length_of_longest_substring = function (str, k) {
    let windowStart = 0
    let maxLength = 0
    let maxRepeatLetterCount = 0
    let frequencyMap = {}

    for (let windowEnd = 0; windowEnd < str.length; windowEnd++) {
        const rightSide = str[windowEnd]

        if (!(rightSide in frequencyMap)) {
            frequencyMap[rightSide] = 0
        }
        frequencyMap[rightSide] += 1
        maxRepeatLetterCount = Math.max(maxRepeatLetterCount, frequencyMap[rightSide])

        if ((windowEnd - windowStart + 1 - maxRepeatLetterCount) > k) {
            leftSide = str[windowStart]
            frequencyMap[leftSide] -= 1
            windowStart += 1
        }

        maxLength = Math.max(maxLength, windowEnd - windowStart + 1)
    }
    return maxLength
}

console.log(length_of_longest_substring('aabccbb', 2))
console.log(length_of_longest_substring('abbcb', 1))
console.log(length_of_longest_substring('abccde', 1))