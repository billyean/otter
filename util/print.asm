print_string:
    mov     ah,     0x0e
    mov     cl,     [bx]
    cmp     cl,     0
    jne     bx_add
    ret
bx_add:
    mov     al,     [bx]
    int     0x10
    add     bx,     1
    jmp     print_string
print_hex:
    cmp     dx,     0
    je      end
    mov     cx,     dx
    shr     dx,     4
    and     cl,     0xf
    cmp     cl,     10
    jl  less_ten
    cmp     cl,     10
    jge     great_ten
end:
    ret
less_ten:
    add     cl,     48
    mov     al,     cl
    mov     ah,     0x0e
    int     0x10
    jmp     print_hex
great_ten:
    add     cl,     55
    mov     al,     cl
    mov     ah,     0x0e
    int     0x10
    jmp     print_hex