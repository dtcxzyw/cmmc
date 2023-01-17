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
hanoi:
    addi sp, sp, -144
    sd ra, 0(sp)
    sd s0, 56(sp)
    sd s5, 16(sp)
    sd s1, 72(sp)
    sd s6, 24(sp)
    sd s2, 88(sp)
    sd s3, 40(sp)
    sd s4, 32(sp)
    mv t0, a0
    mv t1, a1
    mv t2, a2
    mv t3, a3
    li t4, 1
    sw t3, 96(sp)
    sw t2, 80(sp)
    sw t1, 64(sp)
    sw t0, 52(sp)
    bne t0, t4, .BB1
    li t0, 10000
    lw t1, 64(sp)
    mul t2, t1, t0
    lw t3, 96(sp)
    add t4, t2, t3
    mv a0, t4
    call write
    mv a0, zero
    ld s4, 32(sp)
    ld s3, 40(sp)
    ld s2, 88(sp)
    ld s6, 24(sp)
    ld s1, 72(sp)
    ld s5, 16(sp)
    ld s0, 56(sp)
    ld ra, 0(sp)
    addi sp, sp, 144
    ret
.BB1:
    lw t0, 52(sp)
    addi t1, t0, -1
    mv a0, t1
    lw t2, 64(sp)
    mv a1, t2
    lw t3, 96(sp)
    mv a2, t3
    lw t4, 80(sp)
    mv a3, t4
    sw t1, 116(sp)
    call hanoi
    mv t5, a0
    li t6, 10000
    lw s0, 64(sp)
    mul s1, s0, t6
    lw s2, 96(sp)
    add s3, s1, s2
    mv a0, s3
    call write
    lw s4, 116(sp)
    mv a0, s4
    lw s5, 80(sp)
    mv a1, s5
    mv a2, s0
    mv a3, s2
    sw t6, 124(sp)
    sw t5, 120(sp)
    call hanoi
    mv s6, a0
    mv a0, zero
    ld s4, 32(sp)
    ld s3, 40(sp)
    ld s2, 88(sp)
    ld s6, 24(sp)
    ld s1, 72(sp)
    ld s5, 16(sp)
    ld s0, 56(sp)
    ld ra, 0(sp)
    addi sp, sp, 144
    ret

.globl main
main:
    addi sp, sp, -32
    sd ra, 0(sp)
    li a0, 3
    li a1, 1
    li a2, 2
    li a3, 3
    call hanoi
    mv t0, a0
    mv a0, zero
    ld ra, 0(sp)
    addi sp, sp, 32
    ret

