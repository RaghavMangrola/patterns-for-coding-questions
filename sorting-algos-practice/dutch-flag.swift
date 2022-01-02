func dutch_flag_sort(balls: inout [Character]) -> Void {

    var leftIndex = 0
    var rightIndex = balls.count - 1
    var currentIndex = 0

    while currentIndex <= rightIndex {
        if balls[currentIndex] == "R" {
            balls.swapAt(currentIndex, leftIndex)
            leftIndex += 1
            currentIndex += 1
        } else if balls[currentIndex] == "G" {
            currentIndex += 1
        } else {
            balls.swapAt(currentIndex, rightIndex)
            rightIndex -= 1
        }
    }
}

var input: [Character] = ["G", "G", "B", "B", "R", "R"]

dutch_flag_sort(balls: &input)
print(input)