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
	li a2, 1
	ble a0, a2, label9
	mv a1, a0
label2:
	addiw a3, a0, -1
	mulw a0, a1, a3
	beq a3, a2, label5
	mv a1, a0
	mv a0, a3
	j label2
label9:
	mv a0, a2
label5:
	jal write
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
