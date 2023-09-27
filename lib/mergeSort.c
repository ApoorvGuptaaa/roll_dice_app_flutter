#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Function to merge two sorted arrays
void merge(int arr[], int left[], int leftSize, int right[], int rightSize) {
    int i = 0, j = 0, k = 0;

    // Merge elements from left[] and right[] into arr[]
    while (i < leftSize && j < rightSize) {
        if (left[i] <= right[j]) {
            arr[k++] = left[i++];
        } else {
            arr[k++] = right[j++];
        }
    }

    // Copy the remaining elements from left[] and right[], if any
    while (i < leftSize) {
        arr[k++] = left[i++];
    }
    while (j < rightSize) {
        arr[k++] = right[j++];
    }
}

// Merge Sort function
void mergeSort(int arr[], int size) {
    if (size <= 1) {
        return; // Array is already sorted or empty
    }

    // Calculate the middle index
    int middle = size / 2;

    // Create left and right subarrays
    int left[middle];
    int right[size - middle];

    // Populate left and right subarrays
    for (int i = 0; i < middle; i++) {
        left[i] = arr[i];
    }
    for (int i = middle; i < size; i++) {
        right[i - middle] = arr[i];
    }

    // Recursively sort left and right subarrays
    mergeSort(left, middle);
    mergeSort(right, size - middle);

    // Merge the sorted subarrays back into arr[]
    merge(arr, left, middle, right, size - middle);
}

int main() {
    int arr[] = {13, 5, 31, 61, 2};
    int arr_size = sizeof(arr) / sizeof(arr[0]);

    printf("Original array: ");
    for (int i = 0; i < arr_size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    // Measure the start time
    clock_t start = clock();

    // Perform Merge Sort
    mergeSort(arr, arr_size);

    // Measure the end time
    clock_t end = clock();

    // Calculate the elapsed time in milliseconds
    double time_taken = ((double)(end - start)) / CLOCKS_PER_SEC * 1000;

    printf("Sorted array: ");
    for (int i = 0; i < arr_size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    printf("Time taken for Merge Sort: %.2f milliseconds\n", time_taken);

    return 0;
}
