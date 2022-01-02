func pair_sum_sorted_array(numbers: [Int], target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1

    while left < right {
        let sum = numbers[left] + numbers[right]
        if sum == target {
            return [left, right]
        } else if sum > target {
            right -= 1
        } else if sum < target {
            left += 1
        }
    }

    return [-1, -1]
}


let result = pair_sum_sorted_array(numbers: [1, 3, 3, 4, 6], target: 6)
print("RESULT: \(String(describing: result))")