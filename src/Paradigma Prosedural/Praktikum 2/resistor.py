# Program TigaResistor
# Input: 3 float: R1, R2, R3 dan sebuah char S atau P
# Output: Jika semua resistor positif, tampilkan:
#         nilai resistor total
 
# KAMUS
# variabel
#    R1, R2, R3 : float
#    Input : char
 
# PROCEDURE DAN FUNCTION
def resistor():
    R1 = float(input())
    R2 = float(input())
    R3 = float(input())
    Input = str(input())
    
    if R1 > 0 and R2 > 0 and R3 > 0 and (Input == 's' or Input == 'S'):
        Rtot = R1 + R2 + R3
        print("%.2f" % Rtot)
    elif R1 > 0 and R2 > 0 and R3 > 0 and (Input == 'p' or Input == 'P'):
        Rtot = R1 * R2 * R3/(R1*R2 + R2*R3 + R3*R1)
        print("%.2f" % Rtot)
    else:
        print("Masukan salah")
        resistor()

# PROGRAM UTAMA
resistor()
        
