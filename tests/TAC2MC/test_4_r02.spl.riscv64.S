.data
_prompt: .asciz "Enter an integer:"
_ret: .asciz "\n"
.text
_entry:
    call main
    li a7, 93
    ecall
read:
    li a7, 4
    la a0, _prompt
    ecall
    li a7, 5
    ecall
    ret
write:
    li a7, 1
    ecall
    li a7, 4
    la a0, _ret
    ecall
    mv a0, x0
    ret

.globl main
.align 4
main:
    addi sp, sp, -16
    sd ra, 0(sp)
    call read
    mv t0, a0
    sw t0, 12(sp)
    blez t0, .BB1
    li a0, 1
    call write
    li a0, 0
    ld ra, 0(sp)
    addi sp, sp, 16
    ret
.BB1:
    lw t0, 12(sp)
    mv t1, t0
    sw t1, 8(sp)
    lw t0, 8(sp)
    bgez t0, .BB2
    li a0, -1
    call write
    li a0, 0
    ld ra, 0(sp)
    addi sp, sp, 16
    ret
.BB2:
    li a0, 0
    call write
    li a0, 0
    ld ra, 0(sp)
    addi sp, sp, 16
    ret

