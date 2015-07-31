SECTION .text
global _start

_start:
push ebp
mov ebp,esp
push `/sh\0`
push '/bin'
mov eax,0x0b
mov ebx,esp
push 0
push ebx
mov ecx,esp
lea edx,[esp+4]
int 0x80

mov eax,0x01
mov ebx,0x00
int 0x80
