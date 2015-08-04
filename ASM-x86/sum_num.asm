SECTION .text
global _start

_start:
push ebp
mov ebp,esp
sub,0x8
mov DWORD [ebp-4],0xc8
mov eax,DWORD [ebp-4]
mov DWORD [esp],eax
call foo
mov DWORD [ebp-4],eax
leave
ret

foo:
push ebp
mov ebp,esp
sub esp,0xc
mov DWORD [ebp-4],0x00
cmp DWORD [ebp+8],0x01
jle jl1
