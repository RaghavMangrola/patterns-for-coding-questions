// https://leetcode.com/problems/letter-case-permutation/

class Solution {

    var result: [String] = []

    func letterCasePermutation(_ s: String) -> [String] {
        helper(s: s, i: 0, slate: "")

        return result
    }

    // helper(subproblem definition, partial solution)
    func helper(s: String, i: Int, slate: String) {

        let characterAtIndex = s.index(s.startIndex, offsetBy: i)

        if i == s.count {
            result.append(slate)
            return
        }

        if s[characterAtIndex].isNumber {
            helper(s: s, i: i + 1, slate: "\(slate)\(s[characterAtIndex])")
        } else {
            helper(s: s, i: i + 1, slate: "\(slate)\(s[characterAtIndex].lowercased())")
            helper(s: s, i: i + 1, slate: "\(slate)\(s[characterAtIndex].uppercased())")
        }
    }
}

let exampleOne = Solution().letterCasePermutation("a1b2")
let exampleTwo = Solution().letterCasePermutation("3z4")
let exampleThree = Solution().letterCasePermutation("12345")

print(exampleOne)
print(exampleTwo)
print(exampleThree)