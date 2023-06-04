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
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s0, 40(sp)
	sd s1, 48(sp)
	jal read
	mv s0, a0
	sd s0, 8(sp)
	ble s0, zero, label8
	li a0, 1
	jal write
	j label3
label8:
	ld s0, 8(sp)
	slt s1, s0, zero
	mv t1, s1
	subw t2, zero, t1
	mv a0, t2
	jal write
label3:
	mv a0, zero
	ld s1, 48(sp)
	ld s0, 40(sp)
	ld ra, 0(sp)
	addi sp, sp, 56
	jr ra
