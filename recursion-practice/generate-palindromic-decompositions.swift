func generate_palindromic_decompositions(s: String) -> [String] {
    var result: [String] = []

    let charArray: [Character] = Array(s)
    helper(charArray, i: 0, slate: "", result: &result)

    return result
}

func helper(_ input: [Character], i: Int, slate: String, result: inout [String]) {

    if i == input.count {
        result.append(slate)
        return
    }

    var palindrome = ""
    print("")
    for index in (i..<input.count) {

        // print("I: \(String(describing: i)) INDEX: \(String(describing: index))")

        palindrome += String(input[index])
        // print("STRING(INPUT[INDEX]): \(String(describing: String(input[index])))")

        if isPalindrome(input, start: i, end: index) {
            // print("Is a palindrome \(String(describing: palindrome))")
            if slate.isEmpty {
                helper(input, i: index + 1, slate: palindrome, result: &result)
            } else {
                helper(input, i: index + 1, slate: slate + "|" + palindrome, result: &result)
            }
        } else {
            // print("Not a palindrome \(String(describing: palindrome))")
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