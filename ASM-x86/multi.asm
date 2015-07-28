section .text
global _start

_start:

push ebp
mov ebp,esp
sub esp, 0x04

mov eax, 0x03
mov ebx, 0x02
lea ecx, [ebp-4]
mov edx,0x04
int 0x80

mov eax, 0x04
mov ebx, 0x01
lea ecx, [ebp-4]
mov edx, 0x04
int 0x80

mov eax,0x01
mov ebx,0x00
int 0x80

