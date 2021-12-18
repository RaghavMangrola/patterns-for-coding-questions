def selection_sort(arr):
    for i in range(len(arr)):
        min_value = arr[i]
        min_index = i

        print("Input Array: " + str(arr))
        print("min_value: " + str(min_value))
        print("min_index: " + str(min_index))
        for j in range(i + 1, len(arr)):
            # print("Comparing arr[" + str(j) + "] " + str(arr[j]) + " with current min_value: " + str(min_value))
            if arr[j] < min_value:
                min_value = arr[j]
                print("new min_value: " + str(min_value))
                min_index = j
        print("Swapping " + str(arr[i]) + " with " + str(arr[min_index]))
        arr[i], arr[min_index] = arr[min_index], arr[i]
        print("Array: " + str(arr))
        print("")

    return arr

def main():
    # big_array = [587, 476, 54, 767, 982, 895, 353, 55, 508, 230, 505, 990, 189, 555, 460, 665, 432, 24, 321, 399, 643, 167, 828, 371, 293, 251, 466, 67, 533, 908, 477, 509, 39, 407, 935, 917, 356, 196, 717, 443, 180, 924, 898, 88, 385, 363, 490, 386, 276, 947, 963, 525, 403, 876, 727, 277, 80, 190, 117, 734, 861, 411, 100, 565, 944, 500, 484, 14, 89, 806, 965, 96, 795, 364, 663, 816, 416, 995, 664, 512, 608, 295, 943, 933, 784, 286, 462, 641, 929, 480, 926, 639, 632, 548, 280, 818, 650, 911, 571, 226]
    small_array = [7, 5, 4, 6, 0, 8, 3, 1, 2, 9]
    # print(selection_sort(big_array))
    print(selection_sort(small_array))

main()