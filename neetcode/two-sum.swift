class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]

        for (index, num) in nums.enumerated() {
            if let complementIndex = dict[target - num] {
                return [complementIndex, index]
            }

            dict[num] = index
        }
        fatalError("No valid outputs")
    }
}