SECTION .text
global _start

SECTION .data
usrmsg db 'Enter the no'
uml equ $-usrmsg
outmsg db 'The no is:'
otm equ $-outmsg

SECTION .bss
num resb 5

_start:

push ebp
mov ebp,esp
mov eax,0x04
mov ebx,0x01
mov ecx,usrmsg
mov edx,uml
int 0x80

mov eax,0x03
mov ebx,0x01
mov ecx,num
mov edx,uml
int 0x80

mov eax,0x04
mov ebx,0x01
mov ecx,outmsg
mov edx,otm
int 0x80

mov eax,0x04
mov ebx,0x01
mov ecx,num
mov edx,5

mov eax,0x01
mov ebx,0x00
int 0x80
