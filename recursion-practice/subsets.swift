// https://leetcode.com/problems/subsets/

class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {

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

        // recurse decision exclude/include
        // Exclude
        helper(nums, i: i + 1, slate: &slate, result: &result)

        // Include
        slate.append(nums[i])
        helper(nums, i: i + 1, slate: &slate, result: &result)
        slate.removeLast()
    }
}

let inputOne: [Int] = [1,2,3]
let inputTwo: [Int] = [0]

let exampleOne = Solution().subsets(inputOne)
let exampleTwo = Solution().subsets(inputTwo)

print(exampleOne)
print(exampleTwo)
