class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        if strs.isEmpty { return [] }

        var results: [[Int]: [String]] = [:]
        let aUnicode = UnicodeScalar("a").value
        
        for str in strs {

            var table = Array(repeating: 0, count: 26)

            for c in str.unicodeScalars {
                table[Int(c.value - aUnicode)] += 1
            }

            results[table, default: []].append(str)
        }

        return results.map { $0.1 }
    }
}

let strsOne = ["eat","tea","tan","ate","nat","bat"]

let result = Solution().groupAnagrams(strsOne)

print("RESULT: \(String(describing: result))")