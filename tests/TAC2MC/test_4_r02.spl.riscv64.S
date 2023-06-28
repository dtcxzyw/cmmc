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
	ble a0, zero, label8
	li a0, 1
	jal write
	j label3
label8:
	slti a0, a0, 0
	subw a0, zero, a0
	jal write
label3:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
