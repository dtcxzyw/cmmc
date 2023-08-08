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
	mv a1, a0
	li a0, 1
	ble a1, a0, label5
	mv a2, a0
label2:
	mulw a2, a1, a2
	addiw a1, a1, -1
	bne a1, a0, label2
	mv a0, a2
label5:
	jal write
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
