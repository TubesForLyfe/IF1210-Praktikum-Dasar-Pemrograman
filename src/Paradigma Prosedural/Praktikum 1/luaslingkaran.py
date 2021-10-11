# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 19 Maret 2021
# Deskripsi : Membuat program menerima masukan sebuah bilangan real r yang
# merepresentasikan jari-jari sebuah lingkaran (asumsikan  r > 0) dan
# menghasilkan luas lingkaran berdasarkan rumus: luas = 3.1415 * r * r.

# KAMUS
# r : float

# ALGORITMA
r = float(input())

luaslingkaran = 3.1415 * r * r

print("%.4f" % luaslingkaran)
