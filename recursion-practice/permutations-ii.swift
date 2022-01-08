// https://leetcode.com/problems/permutations-ii/

class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
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

        var seenNums: Set<Int> = []

        for index in (i..<nums.count) {

            if seenNums.contains(nums[index]) {
                continue
            } else {
                seenNums.insert(nums[index])
            }
            nums.swapAt(index, i)
            slate.append(nums[i])
            helper(&nums, i: i + 1, slate: &slate, result: &result)
            slate.removeLast()
            nums.swapAt(index, i)
        }
    }
}

let inputOne = [1,2,3]
let inputTwo = [1,1,2]
let inputThree = [2,2,1,1]

let exampleOne = Solution().permuteUnique(inputOne)
let exampleTwo = Solution().permuteUnique(inputTwo)
let exampleThree = Solution().permuteUnique(inputThree)

print(exampleOne)
print(exampleTwo)
print(exampleThree)