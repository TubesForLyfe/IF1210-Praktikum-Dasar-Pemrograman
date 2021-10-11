# Program GambarPita
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar pita sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarPita(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar pita dengan lebar sebesar N sesuai spesifikasi soal
# KAMUS LOKAL
# N : int
# ALGORITMA
    T = [[' ' for j in range(N)] for i in range (N)]

    for i in range(N//2 + 1):
        for j in range(i,N-i):
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
    GambarPita(N)    # lengkapi dengan pemanggilan prosedur GambarPita
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")
