

var counts: [Int: Int] = [:]
func how_many_bsts(n: Int) -> Int {
    
    return helper(n)
}

func helper(_ n: Int) -> Int {
    if n == 0 {
        counts[0] = 1
        return 1
    } else if n == 1 {
        counts[1] = 1
        return 1
    }

    var currentCount = 0

    for numberOfLeftNodes in 0..<n {
        if counts[numberOfLeftNodes] == nil {
            counts[numberOfLeftNodes] = helper(numberOfLeftNodes)
        }

        if counts[n - 1 - numberOfLeftNodes] == nil {
            counts[n - 1 - numberOfLeftNodes] = helper(n - 1 - numberOfLeftNodes)
        }

        guard let leftCount = counts[numberOfLeftNodes] else {
            return -1
        }
            
         guard let rightCount =  counts[n - 1 - numberOfLeftNodes] else {
            return -1
        }

        currentCount += leftCount * rightCount
    }

    counts[n] = currentCount
    return currentCount
}

print(how_many_bsts(n: 3))