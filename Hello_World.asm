SECTION .data
msg: db "Hello World"
len: equ $-msg

SECTION .text
global _start

_start:

push ebp
mov ebp,esp
push msg
mov eax,0x04 
mov ebx,0x01
mov ecx,msg
mov edx,len
int 0x80

mov ebx,0
mov eax,0x01
int 0x80

