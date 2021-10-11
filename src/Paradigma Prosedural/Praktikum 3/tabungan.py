# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 9 April 2021
# Deskripsi : Membuat program yang digunakan untuk membaca masukan jumlah
# tabungan dari sejumlah siswa di suatu kelas. Program pertama-tama akan membaca
# input N yang merupakan jumlah siswa. N diasumsikan selalu valid, yaitu N > 0.
# Selanjutnya, program akan meminta input nilai tabungan sebanyak N (input nilai
# tabungan dianggap selalu valid, yaitu > 0) dan menghitung jumlah tabungan.

# KAMUS
# N : integer
# T : array
# sumtabungan : integer
# i : integer

# ALGORITMA
N = int(input())
T = [0 for i in range(N)]
sumtabungan = 0

for i in range(N):
    T[i] = int(input())
    sumtabungan += T[i]

print(sumtabungan)
