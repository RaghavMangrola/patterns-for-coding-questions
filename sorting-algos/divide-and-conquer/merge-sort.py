def merge_sort(arr):
    
    helper(arr, 0, len(arr) - 1)

    return arr

def helper(arr, start, end):

    if start == end:
        return arr

    
    mid = (start + end) // 2

    print("START: "+ str(start))
    print("END: "+ str(end))
    print("MID: "+ str(mid))

    helper(arr, start, mid)
    helper(arr, mid + 1, end)

    i = start
    j = mid + 1
    aux = []
    
    while i <= mid and j <= end:
        if arr[i] <= arr[j]:
            aux.append(arr[i])
            i += 1
        else:
            aux.append(arr[j])
            j += 1

    while i <= mid:
        aux.append(arr[i])
        i += 1

    while j <= end:
        aux.append(arr[j])
        j += 1

    arr[start:end] = aux

def main():
    # big_array = [587, 476, 54, 767, 982, 895, 353, 55, 508, 230, 505, 990, 189, 555, 460, 665, 432, 24, 321, 399, 643, 167, 828, 371, 293, 251, 466, 67, 533, 908, 477, 509, 39, 407, 935, 917, 356, 196, 717, 443, 180, 924, 898, 88, 385, 363, 490, 386, 276, 947, 963, 525, 403, 876, 727, 277, 80, 190, 117, 734, 861, 411, 100, 565, 944, 500, 484, 14, 89, 806, 965, 96, 795, 364, 663, 816, 416, 995, 664, 512, 608, 295, 943, 933, 784, 286, 462, 641, 929, 480, 926, 639, 632, 548, 280, 818, 650, 911, 571, 226]
    small_array = [7, 5, 4, 6, 0, 8, 3, 1, 2, 9]
    # print(insertion_sort(big_array))
    print(merge_sort(small_array))
    # return [4, 4, 4, 4, 5, 5, 5, 5, 6, 7, 6, 6, 6, 0, 8, 3, 1, 2, 9]


main()