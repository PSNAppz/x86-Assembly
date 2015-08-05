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
jle jlb
cmp DWORD [ebp+0x8],0xfff
jle jlc

jlb:

mov eax,DWORD[ebp+0x8]
jmp

jlc:

mov DWORD [ebp-ox8],0x0
jmp jld

jla:

mov eax,DWORD [ebp-0x8]
add DWORD[ebp-0x4],eax
add DWORD [ebp-0x8],0x1

jld:

mov eax,DWORD[ebp-0x8]
cmp eax,DWORD [ebp+0x8]
jle jla
mov eax,DWORD [ebp-0x4]
mov DWORD [esp],eax
call foo
leave
ret
