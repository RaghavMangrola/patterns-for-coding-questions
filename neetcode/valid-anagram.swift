class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        let aUnicode = UnicodeScalar("a").value

        var table = Array(repeating: 0, count: 26)
        for c in s.unicodeScalars {
            table[Int(c.value - aUnicode)] += 1
        }

        for c in t.unicodeScalars {
            table[Int(c.value - aUnicode)] -= 1
            if table[Int(c.value - aUnicode)] < 0 {
                return false
            }
        }

        return true
    }
}
