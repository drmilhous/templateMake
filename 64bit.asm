%include "io.inc"
segment .data 

segment .bss 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
	;***************CODE STARTS HERE***************************
			
	;***************CODE ENDS HERE*****************************
        mov     eax, 0            ; return back to C
        leave                     
        ret
