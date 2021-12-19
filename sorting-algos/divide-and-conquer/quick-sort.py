from random import randrange
# In-Place Partitioning
def quick_sort_lomuto_partitioning(arr):

    helper_lomuto_partitioning(arr, 0, len(arr) - 1)

    return arr

def helper_lomuto_partitioning(arr, start, end):

    if start >= end:
        return

    pivotindex = randrange(start, end + 1)
    arr[pivotindex], arr[start] = arr[start], arr[pivotindex]

    smaller = start
    print("Start Value: {}".format(arr[start]))
    for bigger in range(start + 1, end + 1):
        print("Array: {}".format(arr))
        print("Bigger Index: {}".format(bigger))
        if arr[bigger] < arr[start]:
            smaller += 1
            print("Smaller Index Incremented to: {}".format(smaller))
            print("Swapping {} with {}".format(arr[smaller], arr[bigger]))
            arr[smaller], arr[bigger] = arr[bigger], arr[smaller]
        else:
            print("Not Swapping because start value: {} is larger than bigger value: {}".format(arr[bigger], arr[start]))
        print()

    print("Swapping start index: {} with smaller index: {}".format(start, smaller))
    print("Swapping start value: {} with smaller value: {}".format(arr[start], arr[smaller]))
    arr[start], arr[smaller] = arr[smaller], arr[start]
    print("Sorted array for this iteration: {}".format(arr))
    print()
    print("-----------------------------")
    print()
    

    helper_lomuto_partitioning(arr, start, smaller - 1)
    helper_lomuto_partitioning(arr, smaller + 1, end)

    return arr



def main():
    # big_array = [587, 476, 54, 767, 982, 895, 353, 55, 508, 230, 505, 990, 189, 555, 460, 665, 432, 24, 321, 399, 643, 167, 828, 371, 293, 251, 466, 67, 533, 908, 477, 509, 39, 407, 935, 917, 356, 196, 717, 443, 180, 924, 898, 88, 385, 363, 490, 386, 276, 947, 963, 525, 403, 876, 727, 277, 80, 190, 117, 734, 861, 411, 100, 565, 944, 500, 484, 14, 89, 806, 965, 96, 795, 364, 663, 816, 416, 995, 664, 512, 608, 295, 943, 933, 784, 286, 462, 641, 929, 480, 926, 639, 632, 548, 280, 818, 650, 911, 571, 226]
    small_array = [7, 5, 4, 6, 0, 9, 3, 1, 2, 8]
    # print(quick_sort_lomuto_partitioning(big_array))
    print(quick_sort_lomuto_partitioning(small_array))


main()