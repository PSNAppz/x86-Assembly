section .start
global _start

_start:

push ebp
mov ebp,esp 
sub esp,0xc ;allocating space
mov DWORD[ebp-4],20 ;argument 1
mov DWORD[ebp-8],10 ;argument 2
push DWORD[ebp-8] ;Argument pushed to 
push DWORD[ebp-4] ;
call adder ;Adder function is called

adder: ;function Definition
push ebp
mov ebp,esp
sub esp,4
mov eax,DWORD[ebp+8] 
add eax,DWORD[ebp+12]
mov DWORD[esp],eax ;Value of eax stored at stack
lea ecx,[esp] ;loading effective address to print
mov edx,1 ;1 byte
int 0x80 ;interrupt

mov eax,0x01
mov ebx,0
int 0x80
