#include "stdio.h"
#include "string.h"

void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

int main() {
    int arr1[] = {64, 34, 25, 12, 22, 11, 90};
    int n1 = sizeof(arr1) / sizeof(arr1[0]);
    
    bubbleSort(arr1, n1);

    int arr2[] = {5, 2, 9, 1, 5, 6};
    int n2 = sizeof(arr2) / sizeof(arr2[0]);
    
    bubbleSort(arr2, n2);

    int arr3[] = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5};
    int n3 = sizeof(arr3) / sizeof(arr3[0]);
    
    bubbleSort(arr3, n3);
    int arr4[10];
    memcpy(arr4, arr1, n1);
    memcpy(arr4, arr2, n2);
    memcpy(arr4, arr3, n3);

    return arr4[0];
}
