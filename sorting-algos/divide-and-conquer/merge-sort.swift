func merge_sort(arr: [Int]) -> [Int] {
    
    guard arr.count > 1 else { return arr }

    let middleIndex = arr.count / 2

    let leftArray = merge_sort(arr: Array(arr[0..<middleIndex]))
    let rightArray = merge_sort(arr: Array(arr[middleIndex..<arr.count]))

    return merge(leftArray: leftArray, rightArray: rightArray)
}

func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0

    var orderedArray: [Int] = []

    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        let leftElement = leftArray[leftIndex]
        let rightElement = rightArray[rightIndex]

        if leftElement == rightElement {
            orderedArray.append(contentsOf: [leftElement, rightElement])
            leftIndex += 1
            rightIndex += 1
        } else if leftElement <= rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
        } else {
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }

    while leftIndex < leftArray.count {
        orderedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }

    while rightIndex < rightArray.count {
        orderedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }

    return orderedArray
}


let smallArray = [7, 5, 4, 6, 0, 8, 3, 1, 2, 9]
// merge_sort(arr: smallArray)
print("MERGE_SORT(ARR: SMALLARRAY): \(String(describing: merge_sort(arr: smallArray)))")