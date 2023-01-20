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
main:
    addi sp, sp, -96
    sd ra, 64(sp)
    call read
    mv t0, a0
    sw a0, 80(sp)
    ble t0, zero, .BB1
    j .BB3
.BB1:
    lw t0, 80(sp)
    bge t0, zero, .BB2
    li a0, -1
    call write
    mv a0, zero
    ld ra, 64(sp)
    addi sp, sp, 96
    ret
.BB2:
    mv a0, zero
    call write
    mv a0, zero
    ld ra, 64(sp)
    addi sp, sp, 96
    ret
.BB3:
    li a0, 1
    call write
    mv a0, zero
    ld ra, 64(sp)
    addi sp, sp, 96
    ret

