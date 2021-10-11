# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 19 Maret 2021
# Deskripsi : Membuat sebuah program yang membaca sebuah nilai T,
# suatu bilangan integer yang menyatakan temperatur air dalam derajat
# celcius untuk kondisi tekanan 1 atm.  Program menuliskan apakah
# kondisi air tersebut tergantung kepada temperaturnya.

# KAMUS
# T : int

# ALGORITMA
T = int(input())

if T < 0:
    print("PADAT")
elif T > 0 and T < 100:
    print("CAIR")
elif T > 100:
    print("GAS")
elif T == 0:
    print("ANTARA PADAT-CAIR")
else:
    print("ANTARA CAIR-GAS")
