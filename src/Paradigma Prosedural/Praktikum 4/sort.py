# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 23 April 2021
# Program menerima input bilangan, misalnya N dan menerima N buah input bilangan
# yang disimpan di sebuah array. Lalu, implementasikan algoritma sorting, yaitu
# selection sort untuk mengurutkan bilangan dalam array tersebut dari besar ke
# kecil. Kemudian, print array yang telah diurutkan ke layar (langsung
# print(array)) saja. Asumsikan input valid, yaitu bilangan integer dan N > 0.

# ALGORITMA
N = int(input())
arr = [0 for i in range(N)]
for i in range(N):
    arr[i] = int(input())
    
def get_max(arr, index_start):
    # mendapatkan maksimum array dari indeks indeks_start sampai selesai
    maxArr = arr[index_start]
    for i in range(index_start, N):
        if maxArr < arr[i]:
            maxArr = arr[i]
    return maxArr

def get_idx(arr, number):
    # mendapatkan index dari suatu angka dalam array
    for i in range(N):
        if arr[i] == number:
            Idx = i
    return Idx

def swap(array, indeks_1, indeks_2):
    # swap elemen array indeks 1 dengan indeks 2
    T = array[indeks_1] 
    array[indeks_1] = array[indeks_2]
    array[indeks_2] = T
    
def sort(arr):
    for i in range(len(arr)):
        maxArr = get_max(arr, i)
        maxIdx = get_idx(arr, maxArr)
        swap(arr, i, maxIdx)
    print(arr)

sort(arr)
