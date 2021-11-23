const longest_substring_with_k_distinct = function(str, k) {
    
    let windowStart = 0
    let maxLength = 0
    let charFrequency = {}

    for (let windowEnd = 0; windowEnd < str.length; windowEnd++) {
        const rightChar = str[windowEnd]
        
        if (!(rightChar in charFrequency)) {
            charFrequency[rightChar] = 0
        }
        charFrequency[rightChar] += 1

        console.log('charFrequency', charFrequency)

        while (Object.keys(charFrequency).length > k) {
            const leftChar = str[windowStart]
            charFrequency[leftChar] -= 1
            if (charFrequency[leftChar] === 0) {
                delete charFrequency[leftChar]
            }
            windowStart += 1
        }

        maxLength = Math.max(maxLength, windowEnd - windowStart + 1)
    }

    return maxLength
}

const exampleOne = longest_substring_with_k_distinct("araaci", 2)
const exampleTwo = longest_substring_with_k_distinct("araaci", 1)
const exampleThree = longest_substring_with_k_distinct("cbbebi", 3)
const exampleFour = longest_substring_with_k_distinct("cbbebi", 10)

console.log("Example One: ", exampleOne)
console.log("Example Two: ", exampleTwo)
console.log("Example Three: ", exampleThree)
console.log("Example Four: ", exampleFour)