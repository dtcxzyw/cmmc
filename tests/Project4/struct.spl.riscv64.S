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
gcd:
	addi sp, sp, -16
	addi a1, sp, 8
	sd ra, 0(sp)
	lw a4, 0(a0)
	lw a2, 4(a0)
	mv a0, a4
	mv a3, a2
	beq a2, zero, label3
	divw t0, a4, a2
	mulw a4, a2, t0
	subw a5, a0, a4
	zext.w a0, a2
	zext.w a3, a5
	slli a2, a3, 32
	add.uw a3, a0, a2
	sd a3, 8(sp)
	mv a0, a1
	jal gcd
label3:
	ld ra, 0(sp)
	addi sp, sp, 16
	ret
.globl main
main:
	addi sp, sp, -16
	addi a1, sp, 8
	sd ra, 0(sp)
	jal read
	zext.w a2, a0
	sw a2, 8(sp)
	jal read
	zext.w a2, a0
	sw a2, 12(sp)
	mv a0, a1
	jal gcd
	jal write
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 16
	ret
