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
    addi sp, sp, -160
    sd ra, 64(sp)
    sd s0, 80(sp)
    sd s1, 88(sp)
    sd s2, 104(sp)
    sd s3, 120(sp)
    sd s4, 136(sp)
    mv t0, a0
    mv t1, a1
    mv t2, a2
    mv t3, a3
    li t4, 1
    sw a3, 96(sp)
    sw a2, 112(sp)
    sw a1, 128(sp)
    sw a0, 144(sp)
    bne t0, t4, .BB1
    li t0, 10000
    mul t2, t1, t0
    add t4, t2, t3
    mv a0, t4
    call write
    mv a0, zero
    ld ra, 64(sp)
    addi sp, sp, 160
    ret
.BB1:
    lw t0, 144(sp)
    addi t1, t0, -1
    mv a0, t1
    lw t2, 128(sp)
    mv a1, t2
    lw t3, 96(sp)
    mv a2, t3
    lw t4, 112(sp)
    mv a3, t4
    sw t1, 148(sp)
    call hanoi
    li t5, 10000
    lw t6, 128(sp)
    mul s0, t6, t5
    lw s1, 96(sp)
    add s2, s0, s1
    mv a0, s2
    call write
    lw s3, 148(sp)
    mv a0, s3
    lw s4, 112(sp)
    mv a1, s4
    mv a2, t6
    mv a3, s1
    call hanoi
    mv a0, zero
    ld s4, 136(sp)
    ld s3, 120(sp)
    ld s2, 104(sp)
    ld s1, 88(sp)
    ld s0, 80(sp)
    ld ra, 64(sp)
    addi sp, sp, 160
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
    mv a0, zero
    ld ra, 64(sp)
    addi sp, sp, 80
    ret

