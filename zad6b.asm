INCLUDELIB C:\masm32\lib\masm32.lib
INCLUDE C:\masm32\include\masm32rt.inc

.DATA
    A dd 5          ;dd == DoubleWord == zmienna 4 bajtowa
    B dd -5
    D dd 0          ;zamiast C jest D bo C jest zarezerwowane
.CODE

start: 
    mov eax, A      ;dodaj A do rejestru eax = A
    add eax, -5     ;ebx = ebx + eax (== X + (12*-50))
    mov D, eax      ;D = eax

;    movzx eax, A         ; Load an 8-bit-byte into a 32-bit-register
    mov eax, D
    printf ("\nD=%d\n",D)

    invoke ExitProcess, 0
END start