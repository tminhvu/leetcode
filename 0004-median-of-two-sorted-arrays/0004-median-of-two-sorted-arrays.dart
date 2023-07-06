class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  }
}
/*
int *merge(int *nums1, int nums1Size, int *nums2, int nums2Size);

double findMedianSortedArrays(int *nums1, int nums1Size, int *nums2,
                              int nums2Size) {
    int new_size = nums1Size + nums2Size;
    int *merged = merge(nums1, nums1Size, nums2, nums2Size);

    if (new_size % 2 == 0) {
        int median_index_left = new_size / 2 - 1;
        int median_index_right = median_index_left + 1;
        int left = *(merged + median_index_left);
        int right = *(merged + median_index_right);

        free(merged);
        return ((double)(left + right)) / 2;
    } else {
        int median_index = new_size / 2;
        double median = *(merged + median_index);

        free(merged);
        return median;
    }

    return 0;
}

int *merge(int *arr1, int arr1_size, int *arr2, int arr2_size) {

    int *end_of_arr1 = arr1 + arr1_size;
    int *end_of_arr2 = arr2 + arr2_size;

    int *result = (int *)calloc(arr1_size + arr2_size, sizeof(int));
    int *end_of_result = result;

    while (arr1 < end_of_arr1 && arr2 < end_of_arr2) {
        if (*arr1 <= *arr2) {
            *end_of_result = *arr1;
            end_of_result += 1;
            arr1 += 1;
        } else {
            *end_of_result = *arr2;
            end_of_result += 1;
            arr2 += 1;
        }
    }

    while (arr1 < end_of_arr1) {
        *end_of_result = *arr1;
        end_of_result += 1;
        arr1 += 1;
    }

    while (arr2 < end_of_arr2) {
        *end_of_result = *arr2;
        end_of_result += 1;
        arr2 += 1;
    }

    return result;
}
*/
