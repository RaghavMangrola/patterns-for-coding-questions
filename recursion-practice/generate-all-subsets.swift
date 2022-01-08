func generate_all_subsets(s: String) -> [String] {
    var result: [String] = []
    var slate: String = ""

    helper(s: s, i: 0, slate: &slate, result: &result)

    return result
}

func helper(s: String, i: Int, slate: inout String, result: inout [String]) {


    if i == s.count {
        result.append(slate)
        return
    }

    helper(s: s, i: i + 1, slate: &slate, result: &result)

    let characterIndex = s.index(s.startIndex, offsetBy: i)
    let charcterString = String(s[characterIndex])
    
    slate.append(charcterString)
    helper(s: s, i: i + 1, slate: &slate, result: &result)
    slate.removeLast()
}


let inputOne = "xy"
let exampleOne = generate_all_subsets(s: inputOne)
print(exampleOne)