# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 19 Maret 2021
# Deskripsi : Membuat program yang membaca sebuah integer N (asumsi N > 0),
# dan menuliskan hasil perhitungan deret: 1+2+3+ ... +N.

# KAMUS
# N : int
# deret : int

# ALGORITMA
N = int(input())
deret = 0

for i in range(1,N+1):
    deret += i

print(deret)
