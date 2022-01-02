func merger_first_into_second(arr1: inout [Int], arr2: inout [Int]) -> Void {
    guard arr1.count > 0 else { return }

    var i = arr1.count - 1
    var j = arr1.count - 1
    var k = arr2.count - 1

    while i >= 0 && j >= 0 {
        if arr1[i] >= arr2[j] {
            arr2[k] = arr1[i]
            i -= 1
            k -= 1
        } else {
            arr2[k] = arr2[j]
            j -= 1
            k -= 1
        }
    }

    while i >= 0 {
        arr2[k] = arr1[i]
        i -= 1
        k -= 1
    }
}

var arr1 = [1,3,5]
var arr2 = [2,4,6,0,0,0]

let result = merger_first_into_second(arr1: &arr1, arr2: &arr2)
print(arr2)