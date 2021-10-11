# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 9 April 2021
# Deskripsi : Membuat program yang digunakan untuk membaca masukan berat tubuh
# mahasiswa (dalam bentuk angka) dalam suatu kelas, sampai pengguna mengetikkan
# -999 (-999 tidak termasuk nilai yang diproses). Harus diperiksa bahwa nilai
# yang dimasukkan berada dalam range 30-200 (30 dan 200 termasuk).
# Jika ada data nilai yang salah, maka data tersebut diabaikan (tidak
# termasuk dalam pemrosesan).

# Selanjutnya program menuliskan ada berapa banyak mahasiswa keseluruhan, berapa
# banyak mahasiswa dengan berat <= 50, berapa banyak mahasiswa dengan berat
# >=100, dan berapa rata-rata berat mahasiswa. Berat rata-rata dituliskan tanpa
# koma (dibulatkan, gunakan fungsi round).

# Semua data nilai yang salah diabaikan (tidak termasuk yang diproses). Jika
# pengguna dari awal mengetikkan -999 (artinya tidak ada data yang dimasukkan)
# atau tidak ada data yang valid, tuliskan pesan: “Data kosong”.

# KAMUS
# N : integer
# a : integer
# b : integer
# sumberat : integer
# i : integer

# ALGORITMA
berat = int(input())
N = 0
a = 0
b = 0
sumberat = 0
i = 0

while berat != -999:
    if berat >= 30 and berat <= 200:
        N += 1
        if berat <= 50:
            a += 1
        elif berat >= 100:
            b += 1
        sumberat += berat
        i += 1
    berat = int(input())

if N > 0:
    print(N)
    print(a)
    print(b)
    print(round(sumberat/i))
else:
    print("Data kosong")
    
