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
	addi sp, sp, -8
	sd ra, 0(sp)
	jal read
	li a1, 1
	ble a0, a1, label14
	bne a0, a1, label18
	j label33
label14:
	li a0, 1
label9:
	jal write
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label33:
	li a1, 1
	mulw a0, a0, a1
	j label9
label18:
	li a1, 1
	mulw a1, a0, a1
	addiw a0, a0, -1
	li a2, 1
	bne a0, a2, label6
	j label34
label6:
	mulw a1, a0, a1
	addiw a0, a0, -1
	li a2, 1
	bne a0, a2, label6
label34:
	mulw a0, a0, a1
	j label9
