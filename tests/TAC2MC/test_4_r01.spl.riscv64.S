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

hanoi:
    addi sp, sp, -176
    sd ra, 64(sp)
    sd s0, 120(sp)
    sd s5, 80(sp)
    sd s1, 136(sp)
    sd s6, 88(sp)
    sd s2, 152(sp)
    sd s3, 96(sp)
    sd s4, 104(sp)
    mv t0, a0
    mv t1, a1
    mv t2, a2
    mv t3, a3
    li t4, 1
    sw t3, 160(sp)
    sw t2, 144(sp)
    sw t1, 128(sp)
    sw t0, 112(sp)
    bne t0, t4, .BB1
    li t0, 10000
    lw t1, 128(sp)
    mul t2, t1, t0
    lw t3, 160(sp)
    add t4, t2, t3
    mv a0, t4
    call write
    mv a0, zero
    ld s4, 104(sp)
    ld s3, 96(sp)
    ld s2, 152(sp)
    ld s6, 88(sp)
    ld s1, 136(sp)
    ld s5, 80(sp)
    ld s0, 120(sp)
    ld ra, 64(sp)
    addi sp, sp, 176
    ret
.BB1:
    lw t0, 112(sp)
    addi t1, t0, -1
    mv a0, t1
    lw t2, 128(sp)
    mv a1, t2
    lw t3, 160(sp)
    mv a2, t3
    lw t4, 144(sp)
    mv a3, t4
    sw t1, 164(sp)
    call hanoi
    mv t5, a0
    li t6, 10000
    lw s0, 128(sp)
    mul s1, s0, t6
    lw s2, 160(sp)
    add s3, s1, s2
    mv a0, s3
    call write
    lw s4, 164(sp)
    mv a0, s4
    lw s5, 144(sp)
    mv a1, s5
    mv a2, s0
    mv a3, s2
    call hanoi
    mv s6, a0
    mv a0, zero
    ld s4, 104(sp)
    ld s3, 96(sp)
    ld s2, 152(sp)
    ld s6, 88(sp)
    ld s1, 136(sp)
    ld s5, 80(sp)
    ld s0, 120(sp)
    ld ra, 64(sp)
    addi sp, sp, 176
    ret

.globl main
main:
    addi sp, sp, -80
    sd ra, 64(sp)
    li a0, 3
    li a1, 1
    li a2, 2
    li a3, 3
    call hanoi
    mv t0, a0
    mv a0, zero
    ld ra, 64(sp)
    addi sp, sp, 80
    ret

