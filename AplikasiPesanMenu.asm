.MODEL SMALL
ORG 100h
.DATA 


M2  DB 10,13,' | 1.  |  Pernasi-an              |$' 
M3  DB 10,13,' | 2.  |  Permie-an               |$'
M4  DB 10,13,' | 3.  |  Pertelur-an             |$'
M5  DB 10,13,' | 3.  |  Persnack-an             |$'
M   DB 10,30,'                   | No. |  MENU$                   |'
                                               
kpl1  DB 10,13,'---------------Selamat Datang di WARMINDO 007---------------$' 
kpl2  DB 10,13,'Warmindo Agent 007 Dengan Misi Mengenyangkan Perut Mahasiswa$'
kpl3  DB 10,13,'                   Free Minuman dan Wifi                    $'
GRS   DB 10,13,'-------------------------------------------------------------$'

;nasi
M6  DB 10,30,'                                                         | No. |  MENU Pernasi-an           |  Harga(k)  | $'
M7  DB 10,13,' | 1.  |  Nasi + Ayam Goreng        |  10/-      | $' 
M8  DB 10,13,' | 2.  |  Nasi + Lele Goreng        |  10/-      | $'
M9  DB 10,13,' | 3.  |  Nasi Goreng Original      |  10/-      | $'
M10 DB 10,13,' | 4.  |  Nasi Goreng + Ayam Suwir  |  10/-      | $'
M11 DB 10,13,' | 5.  |  Nasi Goreng + Telur       |  10/-      | $'
M12 DB 10,13,' | 6.  |  Nasi Goreng Spesial       |  20/-      | $'


;telur
M13 DB 10,30,'                                                         | No. |  MENU Pertelur-an          |  Harga(k)  | $'
M14 DB 10,13,' | 1.  |  Nasi Telur Ceplok         |  10/-      | $' 
M15 DB 10,13,' | 2.  |  Nasi Telur Dadar          |  10/-      | $'
M16 DB 10,13,' | 3.  |  Nasi Telur Balado         |  10/-      | $'
M17 DB 10,13,' | 4.  |  Nasi Telur Sosis          |  10/-      | $'
M18 DB 10,13,' | 5.  |  Nasi Telur Kornet         |  10/-      | $'
M19 DB 10,13,' | 6.  |  Nasi Telur Ayam Spesial   |  20/-      | $'

;mie           
M20 DB 10,30,'                                                         | No. |  MENU Mie-an               |  Harga(k)  | $'
M21 DB 10,13,' | 1.  |  Mie Dok-Dok Original      |  10/-      | $' 
M22 DB 10,13,' | 2.  |  Mie Dok-Dok Rendang       |  10/-      | $'
M23 DB 10,13,' | 3.  |  Mie Dok-Dok Iga Ayam      |  10/-      | $'
M24 DB 10,13,' | 4.  |  Mie Dok-Dok Spesial       |  20/-      | $'
M25 DB 10,13,' | 5.  |  Indomie Intel             |  10/-      | $'
M26 DB 10,13,' | 6.  |  Indomie Internet          |  20/-      | $'
M27 DB 10,13,' | 7.  |  Indomie Intel Basis       |  20/-      | $'

;snack
M28 DB 10,30,'                                                         | No. |  MENU Persnack-an          |  Harga(k)  | $'
M29 DB 10,13,' | 1.  |  Nugget                    |  10/-      | $' 
M30 DB 10,13,' | 2.  |  Sosis                     |  10/-      | $'
M31 DB 10,13,' | 3.  |  Kentang Goreng            |  10/-      | $'
M32 DB 10,13,' | 4.  |  Sosis + Nugget            |  20/-      | $'
M33 DB 10,13,' | 5.  |  Sosis + Kentang Goreng    |  20/-      | $'
M34 DB 10,13,' | 6.  |  Nugget +Kentang Goreng    |  20/-      | $'
M35 DB 10,13,' | 7.  |  Paket Lengkap             |  30/-      | $'

pil1 DB 10,13,'Masukkan pilihan anda $'
pil2 DB 10,13,'Enter your order: $'
pil3 DB 10,13,'Quantity: $'
pil4 DB 10,13,'Total Price: $' 
DRINK DB 10,13,'Minuman Gratis Bisa Diambil Didalam :) $'
QUANTITY DB ?

;INVALID
INV1 DB 10,13,'INVALID ENTRY$'
INV2 DB 10,13,'TRY AGAIN$'


GOM DB 10,13,'1.Go Back to Main Menu$'
GOE DB 10,13,'2.EXIT$'
Exit2 DB 10,13,'SELAMAT MENIKMATI MAKANAN ANDA $'

SPASI DB 10,13,'         $'

.CODE
MULAI :
   MOV AH,09
   LEA DX,kpl1
   INT 21h
   
   MOV AH,09
   LEA DX,kpl2
   INT 21h
  
   MOV AH,09
   LEA DX,kpl3
   INT 21h   
TOP:
   MOV AH,9h
   LEA DX,GRS
   INT 21h
   
   MOV AH,9h
   LEA DX,M
   INT 21h

   MOV AH,09h
   LEA DX,M2
   INT 21h

   MOV AH,09h
   LEA DX,M3
   INT 21h

   MOV AH,09h
   LEA DX,M4
   INT 21h

   MOV AH,09h
   LEA DX,M5
   INT 21h
 
   MOV AH,09h
   LEA DX,pil1
   INT 21h

   MOV AH,1
   INT 21h
   MOV BH,AL
   SUB BH,48

   CMP BH,1
   JE NASI

   CMP BH,2
   JE TELUR

   CMP BH,3
   JE MIE

   CMP BH,4
   JE SNACK

   JMP INVALID

NASI:
   MOV AH,09h
   LEA DX,M6
   INT 21h

   MOV AH,09h
   LEA DX,M7
   INT 21h

   MOV AH,09h
   LEA DX,M8
   INT 21h

   MOV AH,09h
   LEA DX,M9
   INT 21h

   MOV AH,09h
   LEA DX,M10
   INT 21h

   MOV AH,09h
   LEA DX,M11
   INT 21h

   MOV AH,09h
   LEA DX,M12
   INT 21h

   MOV AH,09h
   LEA DX,pil2
   INT 21h

   MOV AH,1
   INT 21h
   MOV BL,AL
   SUB BL,48

   CMP BL,1
   JE SEPULUH
    
   CMP BL,2
   JE SEPULUH
    
   CMP BL,3
   JE SEPULUH 
    
   CMP BL,4
   JE SEPULUH
    
   CMP BL,5
   JE SEPULUH
    
   CMP BL,6
   JE DUAPULUH
   
   JMP INVALID

TELUR:
   MOV AH,09h
   LEA DX,M13
   INT 21h

   MOV AH,09h
   LEA DX,M14
   INT 21h

   MOV AH,09h
   LEA DX,M15
   INT 21h

   MOV AH,09h
   LEA DX,M16
   INT 21h

   MOV AH,09h
   LEA DX,M17
   INT 21h

   MOV AH,09h
   LEA DX,M18
   INT 21h

   MOV AH,09h
   LEA DX,M19
   INT 21h

   MOV AH,09h
   LEA DX,pil2
   INT 21h

   MOV AH,1
   INT 21h
   MOV BL,AL
   SUB BL,48

   CMP BL,1
   JE SEPULUH
    
   CMP BL,2
   JE SEPULUH
    
   CMP BL,3
   JE SEPULUH 
    
   CMP BL,4
   JE SEPULUH
    
   CMP BL,5
   JE SEPULUH
    
   CMP BL,6
   JE DUAPULUH
   
   JMP INVALID

MIE:
   MOV AH,09h
   LEA DX,M20
   INT 21h

   MOV AH,09h
   LEA DX,M21
   INT 21h

   MOV AH,09h
   LEA DX,M22
   INT 21h

   MOV AH,09h
   LEA DX,M23
   INT 21h

   MOV AH,09h
   LEA DX,M24
   INT 21h

   MOV AH,09h
   LEA DX,M25
   INT 21h

   MOV AH,09h
   LEA DX,M26
   INT 21h

   MOV AH,09h
   LEA DX,M27
   INT 21h

   MOV AH,09h
   LEA DX,pil2
   INT 21h

   MOV AH,1
   INT 21h
   MOV BL,AL
   SUB BL,48

   CMP BL,1
   JE SEPULUH
    
   CMP BL,2
   JE SEPULUH
    
   CMP BL,3
   JE SEPULUH 
    
   CMP BL,4
   JE DUAPULUH
    
   CMP BL,5
   JE SEPULUH
    
   CMP BL,6
   JE DUAPULUH
   
   CMP BL,7
   JE DUAPULUH
   
   JMP INVALID

SNACK:
   MOV AH,09h
   LEA DX,M28
   INT 21h

   MOV AH,09h
   LEA DX,M29
   INT 21h

   MOV AH,09h
   LEA DX,M30
   INT 21h

   MOV AH,09h
   LEA DX,M31
   INT 21h

   MOV AH,09h
   LEA DX,M32
   INT 21h

   MOV AH,09h
   LEA DX,M33
   INT 21h

   MOV AH,09h
   LEA DX,M34
   INT 21h

   MOV AH,09h
   LEA DX,M35
   INT 21h

   MOV AH,09h
   LEA DX,pil2
   INT 21h

   MOV AH,1
   INT 21h
   MOV BL,AL
   SUB BL,48

   CMP BL,1
   JE SEPULUH
    
   CMP BL,2
   JE SEPULUH
    
   CMP BL,3
   JE SEPULUH 
    
   CMP BL,4
   JE DUAPULUH
    
   CMP BL,5
   JE DUAPULUH
    
   CMP BL,6
   JE DUAPULUH

   CMP BL,7
   JE TIGAPULUH
   
   JMP INVALID 
   
SEPULUH:
   MOV BL,1
   LEA DX,pil3              
   MOV AH,9
   INT 21H  
    
   MOV AH,1
   INT 21H   
   
   SUB AL,48   
   MUL BL 
   AAM 

   MOV CX,AX 
   ADD CH,48
   ADD CL,48
    
                 
   MOV AH,9h
   LEA DX,pil4
   INT 21H
    
   MOV AH,2
   MOV DL,CH
   INT 21H
    
   MOV DL,CL
   INT 21H
   
   MOV DL,'0'
   INT 21H 
    
    
   MOV DL,47
   INT 21H 
   
   MOV DL,45
   INT 21H
   
   MOV AH,9h
   LEA DX,DRINK
   INT 21H
   
   MOV AH,9h
   LEA DX,SPASI
   INT 21H
             
   MOV AH,9h
   LEA DX,GOM
   INT 21H
             
   MOV AH,9h
   LEA DX,GOE
   INT 21H
   
   MOV AH,9h 
   LEA DX,pil1
   INT 21H 
    
   MOV AH,1
   INT 21H
   SUB AL,48
    
   CMP AL,1
   JE TOP
   
   CMP AL,2
   JE EXIT
    
   JMP INVALID

DUAPULUH:
   MOV BL,2
   LEA DX,pil3              
   MOV AH,9
   INT 21H  
    
   MOV AH,1
   INT 21H
   SUB AL,48
    
   MUL BL 
   AAM 

   MOV CX,AX 
   ADD CH,48
   ADD CL,48
    
    
   LEA DX,pil4              
   MOV AH,9h
   INT 21H
    
   MOV AH,2
   MOV DL,CH
   INT 21H
    
   MOV DL,CL
   INT 21H
   
   MOV DL,'0'
   INT 21H 
    
    
   MOV DL,47
   INT 21H
   MOV DL,45
   INT 21H 
   
   MOV AH,9h
   LEA DX,DRINK
   INT 21H
   
   MOV AH,9h
   LEA DX,SPASI
   INT 21H   
             
   MOV AH,9h
   LEA DX,GOM
   INT 21H
             
   MOV AH,9h
   LEA DX,GOE
   INT 21H
   
   MOV AH,9h 
   LEA DX,pil1
   INT 21H 
    
   MOV AH,1
   INT 21H
   SUB AL,48
    
   CMP AL,1
   JE TOP
   
   CMP AL,2 
   JE EXIT
    
   JMP INVALID

TIGAPULUH:
   MOV BL,3
   LEA DX,pil3              
   MOV AH,9
   INT 21H  
    
   MOV AH,1
   INT 21H
   SUB AL,48
    
   MUL BL 
   AAM 

   MOV CX,AX 
   ADD CH,48
   ADD CL,48
    
    
   LEA DX,pil4              
   MOV AH,9
   INT 21H
    
   MOV AH,2
   MOV DL,CH
   INT 21H
    
   MOV DL,CL
   INT 21H
   
   MOV DL,'0'
   INT 21H 
    
    
   MOV DL,47
   INT 21H
   MOV DL,45
   INT 21H

   MOV AH,9h
   LEA DX,DRINK
   INT 21H
   
   MOV AH,9h
   LEA DX,SPASI
   INT 21H
                
   MOV AH,9h
   LEA DX,GOM
   INT 21H
             
   MOV AH,9h
   LEA DX,GOE
   INT 21H
   
   MOV AH,9h 
   LEA DX,pil1
   INT 21H  
    
   MOV AH,1
   INT 21H
   SUB AL,48
    
   CMP AL,1
   JE TOP   
   
   CMP AL,2
   JE EXIT
    
   JMP INVALID
  
INVALID:
  
   MOV AH,9h
   LEA DX,inv1
   INT 21H 
  
   MOV AH,9H
   LEA DX,inv2
   INT 21H 
    
   JMP EXIT 
       
EXIT:
   
   MOV AH,09h
   LEA DX,Exit2   
   INT 21h
    
   MOV AH,4CH
   INT 21H

END MAIN

