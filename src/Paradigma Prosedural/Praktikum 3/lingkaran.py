# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 9 April 2021
# Deskripsi : Membuat program yang digunakan untuk menghitung luas lingkaran.
# Program menerima input jari-jari (integer). Input jari-jari harus divalidasi
# sehingga selalu > 0. Apabila jari-jari yang dimasukkan <= 0, program akan
# mengeluarkan pesan error. Jika jari-jari yang dimasukkan valid, program
# menghasilkan luas lingkaran dengan rumus: 3.1415 * jari-jari * jari-jari.

# KAMUS
# r : integer

# ALGORITMA
r = int(input())

if r > 0:
    luaslingkaran = 3.1415 * r * r
    print("%.2f" % luaslingkaran)
else:
    print("Jari-jari harus > 0")

