# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 9 April 2021
# Deskripsi : Program membaca N buah integer dan menyimpan setiap integer
# ke dalam suatu array. Selanjutnya, program menerima masukan sebuah nilai
# integer, misalnya X, dan menampilkan:
# Jika X ada di array, apakah X adalah nilai maksimum (tuliskan “maksimum”)
# atau nilai minimum (tuliskan “minimum”) atau keduanya.
# Jika bukan nilai maksimum atau minimum, menuliskan “N#A”.
# Jika X tidak ada di array, tuliskan “X tidak ada”

# KAMUS
# N : int
# i : int
# X : int
# T : array
# a : int

# ALGORITMA
N = int(input())
T = [0 for i in range(N)]
a = 0
        
for i in range(N):
    T[i] = int(input())

X = int(input())
i = 0
maks = T[0]
while i < N:
    if maks < T[i]:
        maks = T[i]
    i += 1

i = 0
minimum = T[0]
while i < N:
    if minimum > T[i]:
        minimum = T[i]
    i += 1

if X == maks and X != minimum:
    print("maksimum")
elif X == maks and X == minimum:
    print("maksimum")
    print("minimum")
elif X != maks and X == minimum:
    print("minimum")
else:
    for i in range(N):
        if T[i] == X:
            a += 1
    if a > 0:
        print("N#A")
    else:
        print(X, "tidak ada")
