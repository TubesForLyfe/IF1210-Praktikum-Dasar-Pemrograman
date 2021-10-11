# Nama : Willy Wilsen
# NIM : 16520145
# Tanggal : 23 April 2021
# Program HitungVokal
# Membaca masukan sejumlah karakter dan menyimpannya ke file data.txt
# Membaca isi file data.txt, menghitung dan menampilkan ada berapa
# banyak karakter huruf hidup dalam file

# KAMUS
mark = '.' # constant mark : character = '.'

def TulisTeks():
# Membaca kalimat (kumpulan karakter) diakhiri mark dari keyboard
# dan menyimpannya ke file data.txt
    # KAMUS LOKAL
    # f : SEQFILE of char
    # kalimat
    # ALGORITMA
    f = open("dataku.txt",'w')
    kalimat = input() # Baca sebuah kalimat dari keyboard
                      # diakhiri mark '.'
                      # Kalimat kosong hanya ada mark
    f.write(kalimat)  # Menuliskan kalimat ke file
    f.close()

# ALGORITMA PROGRAM UTAMA
TulisTeks()
f = open("dataku.txt","r")
cc = f.read(1)
if cc == ".":
    print(0)
else:
    hurufvokal = 0
    while cc != ".":
        if cc == "a" or cc == "i" or cc == "u" or cc == "e" or cc == "o" or cc == "A" or cc == "I" or cc == "U" or cc == "E" or cc == "O":
            hurufvokal += 1
            cc = f.read(1)
        else:
            cc = f.read(1)

    print(hurufvokal)
    
