class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var uniqueValues = Set<Int>()

        for (index, currValue) in nums.enumerated() {
            if uniqueValues.contains(currValue) {
                return true
            }
            uniqueValues.insert(currValue)
        }

        return false
    }
}