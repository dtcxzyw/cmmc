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

.globl hanoi
.align 4
hanoi:
    addi sp, sp, -176
    sd ra, 0(sp)
    sd s0, 8(sp)
    sd s5, 16(sp)
    sd s1, 24(sp)
    sd s6, 32(sp)
    sd s2, 40(sp)
    sd s3, 48(sp)
    sd s4, 56(sp)
    sd s7, 64(sp)
    sd s8, 104(sp)
    sd s9, 120(sp)
    mv t0, a0
    mv t1, a1
    mv t2, a2
    mv s0, a3
    li s1, 1
    sw s0, 92(sp)
    sw t2, 96(sp)
    sw t1, 100(sp)
    sw t0, 128(sp)
    bne t0, s1, .BB1
    lw t0, 92(sp)
    mv t1, t0
    lw t2, 100(sp)
    mv s0, t2
    sw s0, 112(sp)
    sw t1, 88(sp)
    li t0, 10000
    lw t1, 112(sp)
    mul t2, t1, t0
    lw s0, 88(sp)
    add s1, t2, s0
    mv a0, s1
    sw t2, 144(sp)
    sw t0, 140(sp)
    call write
    li a0, 0
    ld s9, 120(sp)
    ld s8, 104(sp)
    ld s7, 64(sp)
    ld s4, 56(sp)
    ld s3, 48(sp)
    ld s2, 40(sp)
    ld s6, 32(sp)
    ld s1, 24(sp)
    ld s5, 16(sp)
    ld s0, 8(sp)
    ld ra, 0(sp)
    addi sp, sp, 176
    ret
.BB1:
    lw t0, 96(sp)
    mv t1, t0
    lw t2, 92(sp)
    mv s0, t2
    lw s1, 100(sp)
    mv s2, s1
    lw s3, 128(sp)
    mv s4, s3
    sw s4, 72(sp)
    sw s2, 76(sp)
    sw s0, 80(sp)
    sw t1, 84(sp)
    lw t0, 72(sp)
    addi t1, t0, -1
    mv a0, t1
    lw t2, 76(sp)
    mv a1, t2
    lw s0, 80(sp)
    mv a2, s0
    lw s1, 84(sp)
    mv a3, s1
    sw t1, 168(sp)
    call hanoi
    mv s2, a0
    li s3, 10000
    lw s4, 76(sp)
    mul s5, s4, s3
    add s6, s5, s0
    mv a0, s6
    call write
    lw s7, 168(sp)
    mv a0, s7
    mv a1, s1
    lw s8, 76(sp)
    mv a2, s8
    mv a3, s0
    call hanoi
    mv s9, a0
    li a0, 0
    ld s9, 120(sp)
    ld s8, 104(sp)
    ld s7, 64(sp)
    ld s4, 56(sp)
    ld s3, 48(sp)
    ld s2, 40(sp)
    ld s6, 32(sp)
    ld s1, 24(sp)
    ld s5, 16(sp)
    ld s0, 8(sp)
    ld ra, 0(sp)
    addi sp, sp, 176
    ret

.globl main
.align 4
main:
    addi sp, sp, -16
    sd ra, 0(sp)
    li a0, 3
    li a1, 1
    li a2, 2
    li a3, 3
    call hanoi
    mv t0, a0
    li a0, 0
    ld ra, 0(sp)
    addi sp, sp, 16
    ret

