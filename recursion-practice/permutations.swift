// https://leetcode.com/problems/permutations/

class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var nums = nums
        var slate: [Int] = []
        helper(&nums, i: 0, slate: &slate, result: &result)

        return result
    }

    func helper(_ nums: inout [Int], i: Int, slate: inout [Int], result: inout [[Int]]) {
        if i == nums.count {
            result.append(slate)
            return
        }

        for index in (i..<nums.count) {
            nums.swapAt(index, i)
            slate.append(nums[i])
            helper(&nums, i: i + 1, slate: &slate, result: &result)
            slate.removeLast()
            nums.swapAt(index, i)
        }
    }
}

let inputOne = [1,2,3]
let inputTwo = [0,1]
let inputThree = [1]

let exampleOne = Solution().permute(inputOne)
let exampleTwo = Solution().permute(inputTwo)
let exampleThree = Solution().permute(inputThree)

print(exampleOne)
print(exampleTwo)
print(exampleThree)
