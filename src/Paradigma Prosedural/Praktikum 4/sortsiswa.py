# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 23 April 2021
# Program SortSiswa
# Spesifikasi : Program membaca nama sebuah file teks, misalnya "siswa.txt" dan
# mencetak ke layar semua data dalam keadaan terurut berdasarkan NoInduk.
# Proses pengurutan harus menggunakan insertion sort. Jika file teks kosong,
# tuliskan ke layar "File kosong". Akhir file ditandai dengan nilai 99999999.
import tulisdata

# KAMUS
# namafile: string


# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataSiswa(namafile)

f = open(namafile,"r")
array = f.readlines()
Siswa = [["" for j in range(3)] for i in range((len(array)-1)//3)]
f.close()

g = open(namafile,"r")
NoInduk = g.readline()
if NoInduk == "99999999":
    print("File kosong")
else:
    for i in range((len(array)-1)//3):
        Siswa[i][0] = NoInduk.rstrip()
        KodeKursus = g.readline()
        Siswa[i][1] = KodeKursus.rstrip()
        Nilai = g.readline()
        Siswa[i][2] = Nilai.rstrip()
        NoInduk = g.readline()

for i in range((len(array)-1)//3):
    induk_terendah = Siswa[i][0]
    indeks_terendah = i
    for j in range(i,(len(array)-1)//3):
        if int(Siswa[j][0]) < int(induk_terendah):
            induk_terendah = Siswa[j][0]
            indeks_terendah = j
    T = Siswa[indeks_terendah]
    Siswa[indeks_terendah] = Siswa[i]
    Siswa[i] = T

for i in range((len(array)-1)//3):
    print(Siswa[i][0],end=",")
    print(Siswa[i][1],end=",")
    print(Siswa[i][2])
    

