# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 19 Maret 2021
# Deskripsi : Membuat sebuah program yang akan membaca N (sebuah integer)
# berikut C1 dan C2 (dua buah karakter), dan kemudian menuliskan bentuk
# sebagai berikut dengan syarat N>0 dan C1 tidak sama dengan C2.
# Jika syarat tidak dipenuhi, diberikan pesan kesalahan.

# KAMUS
# N : int
# C1 : str
# C2 : str

# ALGORITMA
N = int(input())
C1 = input()
C2 = input()

if N < 0 or C1 == C2:
    print("Masukan tidak valid")
else:
    kotak = [[C2 for j in range(N)] for i in range(N)]
    for i in range(N):
        for j in range(N):
            if i == 0 or j == 0 or i == N-1 or j == N-1:
                kotak[i][j] = C1

    for i in range(N):
        for j in range(N):
            print(kotak[i][j], end = "")
        print()
