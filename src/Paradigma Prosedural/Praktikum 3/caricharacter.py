# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 9 April 2021
# Deskripsi : Membuat program yang digunakan untuk membaca sebuah integer
# positif N. Nilai N harus divalidasi sampai didapatkan nilai N yang benar,
# yaitu 0 < N <= 100. Jika masukan N salah, tuliskan pesan “Masukan salah.
# Ulangi!”. Setelah didapatkan nilai N yang benar, program meminta masukan N
# buah character.

# Selanjutnya, program menerima masukan sebuah character, misalnya CC, dan
# menghasilkan:

# Jika CC = ‘S’ atau CC = ‘s’ (kependekan dari “small”), tuliskan urutan pertama
# ditemukannya character huruf kecil dan tuliskan hurufnya. Jika tidak ada
# character huruf kecil, tuliskan “Tidak ada huruf kecil”.

# Jika CC = ‘L’ atau CC = ‘l’ (el, kependekan dari “large”), tuliskan urutan
# pertama ditemukannya character huruf besar dan tuliskan hurufnya. Jika tidak
# ada character huruf besar, tuliskan “Tidak ada huruf besar”.

# Jika CC = ‘X’ atau CC = ‘x’, tuliskan urutan pertama ditemukannya character
# selain huruf dan tuliskan character-nya. Jika tidak ada character selain
# huruf, tuliskan “Semua huruf”.

# Jika CC selain selain {‘S’,’s’,’L’,’l’,’X’,’x’} tuliskan: “Tidak diproses”.

# KAMUS
# N : integer
# T : array
# i : integer
# CC : string

# ALGORITMA
N = int(input())
while N <= 0 or N > 100:
    print("Masukan salah. Ulangi!")
    N = int(input())

T = ["" for i in range(N)]
for i in range(N):
    T[i] = str(input())

CC = str(input())
if CC == 'S' or CC == 's':
    small = False
    i = 0
    while i < N and (not(small)):
        small = T[i].islower()
        i += 1
    if(not(small)):
        print("Tidak ada huruf kecil")
    else:
        print(i, T[i-1])
elif CC == 'L' or CC == 'l':
    large = False
    i = 0
    while i < N and (not(large)):
        large = T[i].isupper()
        i += 1
    if(not(large)):
        print("Tidak ada huruf besar")
    else:
        print(i, T[i-1])
elif CC == 'X' or CC == 'x':
    huruf = True
    i = 0
    while i < N and (huruf):
        huruf = T[i].isalpha()
        i += 1
    if(huruf):
        print("Semua huruf")
    else:
        print(i, T[i-1])
else:
    print("Tidak diproses")
