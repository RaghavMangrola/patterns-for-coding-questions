# You are given an integer array arr of size n. 
# Group and rearrange them (in-place) into evens and odds in such a way that group of all even integers appears on the left side and group of all odd integers appears on the right side. 
def solve(arr):

    cursor = 0
    for i in range(len(arr)):
        if arr[i] % 2 == 0:
            arr[i], arr[cursor] = arr[cursor], arr[i]
            cursor += 1

    return arr

def main():
    print(solve([1,2,3,4]))

main()