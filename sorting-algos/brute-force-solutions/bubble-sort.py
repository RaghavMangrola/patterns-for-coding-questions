def bubble_sort(arr):

    print("Input Array:\n" + str(arr))

    for i in range(len(arr)):
         print(arr)
         for j in range(0, len(arr) - i - 1):
             if arr[j] > arr[j + 1]:
                 print("Swapping " + str(arr[j]) + " with " + str(arr[j - 1]))
                 arr[j], arr[j + 1] = arr[j + 1], arr[j]
                 print(arr)
                 print("")

    return arr

def bubble_sort_backwards(arr):
    print("Input Array:\n" + str(arr))

    for i in range(len(arr)):
        for j in range(len(arr) - 1, i, -1):
            if arr[j] < arr[j - 1]:
                print("Swapping " + str(arr[j]) + " with " + str(arr[j - 1]))
                arr[j], arr[j - 1] = arr[j - 1], arr[j]
                print(arr)
                print("")

    return arr



def main():
    # big_array = [587, 476, 54, 767, 982, 895, 353, 55, 508, 230, 505, 990, 189, 555, 460, 665, 432, 24, 321, 399, 643, 167, 828, 371, 293, 251, 466, 67, 533, 908, 477, 509, 39, 407, 935, 917, 356, 196, 717, 443, 180, 924, 898, 88, 385, 363, 490, 386, 276, 947, 963, 525, 403, 876, 727, 277, 80, 190, 117, 734, 861, 411, 100, 565, 944, 500, 484, 14, 89, 806, 965, 96, 795, 364, 663, 816, 416, 995, 664, 512, 608, 295, 943, 933, 784, 286, 462, 641, 929, 480, 926, 639, 632, 548, 280, 818, 650, 911, 571, 226]
    small_array = [7, 5, 4, 6, 0, 8, 3, 1, 2, 9]
    # print(bubble_sort(big_array))
    print(bubble_sort(small_array))

main()