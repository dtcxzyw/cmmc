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

.globl fact
fact:
    addi sp, sp, -48
    sd ra, 0(sp)
    mv t0, a0
    li t1, 1
    sw t0, 20(sp)
    bne t0, t1, .BB1
    lw t0, 20(sp)
    mv a0, t0
    ld ra, 0(sp)
    addi sp, sp, 48
    ret
.BB1:
    lw t0, 20(sp)
    addi t1, t0, -1
    mv a0, t1
    sw t1, 32(sp)
    call fact
    mv t2, a0
    lw t3, 20(sp)
    mul t4, t2, t3
    mv a0, t4
    ld ra, 0(sp)
    addi sp, sp, 48
    ret

.globl main
main:
    addi sp, sp, -32
    sd ra, 0(sp)
    call read
    mv t0, a0
    li t1, 1
    sw t0, 20(sp)
    ble t0, t1, .BB3
    lw t0, 20(sp)
    mv a0, t0
    call fact
    mv t1, a0
    mv a0, t1
    call write
    mv a0, zero
    ld ra, 0(sp)
    addi sp, sp, 32
    ret
.BB3:
    li a0, 1
    call write
    mv a0, zero
    ld ra, 0(sp)
    addi sp, sp, 32
    ret

