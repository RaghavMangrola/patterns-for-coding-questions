class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {

        var count: [Int: Int] = [:]
        var freq: [[Int]] = Array(repeating: [], count: nums.count + 1)

        for n in nums {
            count[n] = 1 + count[n, default: 0]
        }

        for (n, c) in count {
            freq[c].append(n)
        }

        var res: [Int] = []

        for i in stride(from: freq.count - 1, to: 0, by: -1) {
            for n in freq[i] {
                res.append(n)

                if res.count == k {
                    return res
                }
            }
        }

        return res
    }
}

let sol = Solution().topKFrequent([1,1,1,2,2,3], 2)
