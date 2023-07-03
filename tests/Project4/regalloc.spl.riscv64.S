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
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	jal read
	mv a1, zero
	li a0, 10
label2:
	addiw a0, a0, -1
	addiw a1, a1, 1
	bne a0, zero, label2
	addw a0, a0, a1
	jal write
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
