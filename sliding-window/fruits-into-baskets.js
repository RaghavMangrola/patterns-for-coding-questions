const fruits_into_baskets = function(fruits) {
    let windowStart = 0
    let fruitFrequency = {}
    let maxFruits = 0

    for (let windowEnd = 0; windowEnd < fruits.length; windowEnd++) {
        const rightFruit = fruits[windowEnd]

        if (!(rightFruit in fruitFrequency)) {
            fruitFrequency[rightFruit] = 0
        }
        fruitFrequency[rightFruit] += 1

        while (Object.keys(fruitFrequency).length > 2) {
            const leftFruit = fruits[windowStart]
            fruitFrequency[leftFruit] -= 1
            if (fruitFrequency[leftFruit] === 0) {
                delete fruitFrequency[leftFruit]
            }
            windowStart += 1
        }

        maxFruits = Math.max(maxFruits, windowEnd - windowStart + 1)
    }
    return maxFruits
  };

  exampleOne = fruits_into_baskets(["A", "B", "C", "A", "C"])
  exampleTwo = fruits_into_baskets(["A", "B", "C", "B", "B", "C"])

  console.log('exampleOne', exampleOne)
  console.log('exampleTwo', exampleTwo)