# Program GambarBTercermin
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar B tercermin sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarBTercermin(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar B tercermin dengan lebar sebesar N sesuai spesifikasi soal
# KAMUS LOKAL
# N : int
# ALGORITMA
    T = [[' ' for j in range(N)] for i in range (N)]

    for i in range(N//2+1):
        for j in range(2*i,N):
            T[i][j] = "*"
            T[N-1-i][j] = "*"
    
    for i in range(N):
        for j in range(N):
            print(T[i][j], end ="")
        print()

def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
# KAMUS LOKAL
# N : int
# ALGORITMA
    T = N > 0 and N % 2 == 1
    return T

# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # lengkapi dengan pemanggilan fungsi IsValid
    GambarBTercermin(N)    # lengkapi dengan pemanggilan prosedur GambarBTercermin
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")
