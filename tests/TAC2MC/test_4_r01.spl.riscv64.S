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
    addi sp, sp, -168
    sd ra, 0(sp)
    sd s0, 8(sp)
    sd s5, 16(sp)
    sd s1, 24(sp)
    sd s6, 32(sp)
    sd s2, 40(sp)
    sd s3, 48(sp)
    sd s4, 56(sp)
    sd s7, 112(sp)
    sd s8, 96(sp)
    mv t0, a0
    mv t1, a1
    mv t2, a2
    mv t3, a3
    li t4, 1
    sw t3, 84(sp)
    sw t2, 88(sp)
    sw t1, 92(sp)
    sw t0, 120(sp)
    bne t0, t4, .BB1
    lw t0, 84(sp)
    mv t1, t0
    lw t2, 92(sp)
    mv t3, t2
    sw t3, 104(sp)
    sw t1, 80(sp)
    li t0, 10000
    lw t1, 104(sp)
    mul t2, t1, t0
    lw t3, 80(sp)
    add t4, t2, t3
    mv a0, t4
    sw t4, 128(sp)
    sw t2, 136(sp)
    sw t0, 132(sp)
    call write
    li a0, 0
    ld s8, 96(sp)
    ld s7, 112(sp)
    ld s4, 56(sp)
    ld s3, 48(sp)
    ld s2, 40(sp)
    ld s6, 32(sp)
    ld s1, 24(sp)
    ld s5, 16(sp)
    ld s0, 8(sp)
    ld ra, 0(sp)
    addi sp, sp, 168
    ret
.BB1:
    lw t0, 88(sp)
    mv t1, t0
    lw t2, 84(sp)
    mv t3, t2
    lw t4, 92(sp)
    mv t5, t4
    lw t6, 120(sp)
    mv s0, t6
    sw s0, 64(sp)
    sw t5, 68(sp)
    sw t3, 72(sp)
    sw t1, 76(sp)
    lw t0, 64(sp)
    addi t1, t0, -1
    mv a0, t1
    lw t2, 68(sp)
    mv a1, t2
    lw t3, 72(sp)
    mv a2, t3
    lw t4, 76(sp)
    mv a3, t4
    sw t1, 160(sp)
    call hanoi
    mv t5, a0
    li t6, 10000
    lw s0, 68(sp)
    mul s1, s0, t6
    lw s2, 72(sp)
    add s3, s1, s2
    mv a0, s3
    sw t5, 156(sp)
    sw t6, 152(sp)
    call write
    lw s4, 160(sp)
    mv a0, s4
    lw s5, 76(sp)
    mv a1, s5
    lw s6, 68(sp)
    mv a2, s6
    lw s7, 72(sp)
    mv a3, s7
    call hanoi
    mv s8, a0
    li a0, 0
    ld s8, 96(sp)
    ld s7, 112(sp)
    ld s4, 56(sp)
    ld s3, 48(sp)
    ld s2, 40(sp)
    ld s6, 32(sp)
    ld s1, 24(sp)
    ld s5, 16(sp)
    ld s0, 8(sp)
    ld ra, 0(sp)
    addi sp, sp, 168
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

