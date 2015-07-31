SECTION .text
global _start

_start:
push ebp
mov ebp,esp
mov ecx,1
mov eax,0

loop:
add eax,ecx
add ecx,1
cmp ecx,9
jle loop

push eax
mov eax,0x04
mov ebx,0x01
mov ecx,esp
mov edx,0x01
int 0x80

mov eax,0x01
mov ebx,0x00
int 0x80
