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
    addi sp, sp, -152
    sd ra, 0(sp)
    sd s0, 8(sp)
    sd s5, 16(sp)
    sd s1, 24(sp)
    sd s6, 32(sp)
    sd s2, 40(sp)
    sd s3, 96(sp)
    sd s4, 104(sp)
    mv t0, a0
    mv t1, a1
    mv t2, a2
    mv t3, a3
    li t4, 1
    sw t3, 68(sp)
    sw t2, 72(sp)
    sw t1, 76(sp)
    sw t0, 84(sp)
    bne t0, t4, .BB1
    lw t0, 68(sp)
    mv t1, t0
    lw t2, 76(sp)
    mv t3, t2
    sw t3, 80(sp)
    sw t1, 64(sp)
    li t0, 10000
    lw t1, 80(sp)
    mul t2, t1, t0
    lw t3, 64(sp)
    add t4, t2, t3
    mv a0, t4
    call write
    li a0, 0
    ld s4, 104(sp)
    ld s3, 96(sp)
    ld s2, 40(sp)
    ld s6, 32(sp)
    ld s1, 24(sp)
    ld s5, 16(sp)
    ld s0, 8(sp)
    ld ra, 0(sp)
    addi sp, sp, 152
    ret
.BB1:
    lw t0, 72(sp)
    mv t1, t0
    lw t2, 68(sp)
    mv t3, t2
    lw t4, 76(sp)
    mv t5, t4
    lw t6, 84(sp)
    mv s0, t6
    sw s0, 48(sp)
    sw t5, 52(sp)
    sw t3, 56(sp)
    sw t1, 60(sp)
    lw t0, 48(sp)
    addi t1, t0, -1
    mv a0, t1
    lw t2, 52(sp)
    mv a1, t2
    lw t3, 56(sp)
    mv a2, t3
    lw t4, 60(sp)
    mv a3, t4
    sw t1, 144(sp)
    call hanoi
    mv t5, a0
    li t6, 10000
    lw s0, 52(sp)
    mul s1, s0, t6
    lw s2, 56(sp)
    add s3, s1, s2
    mv a0, s3
    call write
    lw s4, 144(sp)
    mv a0, s4
    lw s5, 60(sp)
    mv a1, s5
    mv a2, s0
    mv a3, s2
    sw t5, 140(sp)
    sw t6, 136(sp)
    call hanoi
    mv s6, a0
    li a0, 0
    ld s4, 104(sp)
    ld s3, 96(sp)
    ld s2, 40(sp)
    ld s6, 32(sp)
    ld s1, 24(sp)
    ld s5, 16(sp)
    ld s0, 8(sp)
    ld ra, 0(sp)
    addi sp, sp, 152
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

