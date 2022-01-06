// https://leetcode.com/problems/subsets-ii/

class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var result: [[Int]] = []
        var slate: [Int] = []
        
        helper(nums, i: 0, slate: &slate, result: &result)

        return result
    }

    func helper(_ nums: [Int], i: Int, slate: inout [Int], result: inout [[Int]]) {

        // base case
        if i == nums.count {
            result.append(slate)
            return
        }

        var numCount = 0

        for index in (i..<nums.count) {
            if nums[index] != nums[i] {
                break
            }
            numCount += 1
        }

        // recurse decision exclude/include
        // Exclude
        helper(nums, i: i + numCount, slate: &slate, result: &result)

        // Multiple Include
        for _ in (1...numCount) {
            slate.append(nums[i])
            helper(nums, i: i + numCount, slate: &slate, result: &result)
        }

        for _ in (1...numCount) {
            slate.removeLast()
        }
    }
}

let inputOne: [Int] = [1,2,2]
let inputTwo: [Int] = [0]

let exampleOne = Solution().subsetsWithDup(inputOne)
let exampleTwo = Solution().subsetsWithDup(inputTwo)

print(exampleOne)
print(exampleTwo)
