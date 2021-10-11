# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 19 Maret 2021
# Deskripsi : Membuat program yang membaca 3 buah integer berturut-berturut,
# misalnya A, B, C, dan menghasilkan bilangan yang terbesar di antara ketiganya.
# Asumsikan A, B, C adalah bilangan yang berbeda.

# KAMUS
# A : int
# B : int
# C : int

# ALGORITMA
A = int(input())
B = int(input())
C = int(input())

if A > B:
    if A > C:
        print(A)
    else:
        print(C)
else:
    if B > C:
        print(B)
    else:
        print(C)
