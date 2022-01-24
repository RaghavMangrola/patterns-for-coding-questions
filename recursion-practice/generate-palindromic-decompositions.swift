func generate_palindromic_decompositions(s: String) -> [String] {
    var result: [String] = []

    let charArray: [Character] = Array(s)
    helper(charArray, i: 0, slate: "", result: &result)

    return result
}

func helper(_ input: [Character], i: Int, slate: String, result: inout [String]) {

    if i == input.count {
        result.append(slate)
        print("SLATE: \(String(describing: slate))")
        return
    }

    var palindrome = ""

    for index in (i..<input.count) {

        palindrome += String(input[index])
        print("PALINDROME: \(String(describing: palindrome)) || SLATE: \(String(describing: slate))")
        print("I: \(String(describing: i)) || INDEX: \(String(describing: index))")
        if isPalindrome(input, start: i, end: index) {
            if slate.isEmpty {
                helper(input, i: index + 1, slate: palindrome, result: &result)
            } else {
                helper(input, i: index + 1, slate: slate + "|" + palindrome, result: &result)
            }
        }
    }
}

func isPalindrome(_ input: [Character], start: Int, end: Int) -> Bool {
    
    var start = start, end = end

    while start < end {
        if input[start] != input[end]{
            return false
        }

        start += 1
        end -= 1
    }

    return true
}

let inputOne = "abracadabra"

let exampleOne = generate_palindromic_decompositions(s: inputOne)
print(exampleOne)