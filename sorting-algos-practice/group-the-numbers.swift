
func solve(arr: [Int]) -> [Int] {
    var cursor: Int = 0
    for (i, _) in arr.enumerated() {
        if arr[i] % 2 == 0 {
            arr.swapAt(i, cursor)
            cursor += 1
        }
    }
    return arr
}


print(solve(arr: [1,2,3,4]))