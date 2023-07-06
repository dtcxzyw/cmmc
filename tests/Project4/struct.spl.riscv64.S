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
	addi a1, sp, 0
	sd ra, 8(sp)
	lw a4, 0(a0)
	lw a2, 4(a0)
	mv a0, a4
	mv a3, a2
	beq a2, zero, label3
	divw a4, a4, a2
	mulw a3, a2, a4
	subw a0, a0, a3
	li a3, 4294967295
	and a2, a2, a3
	and a0, a0, a3
	sw a2, 0(sp)
	sw a0, 4(a1)
	mv a0, a1
	jal gcd
label3:
	ld ra, 8(sp)
	addi sp, sp, 16
	ret
.globl main
main:
	addi sp, sp, -16
	addi a1, sp, 0
	sd ra, 8(sp)
	jal read
	li a2, 4294967295
	and a0, a0, a2
	sw a0, 0(sp)
	jal read
	and a0, a0, a2
	sw a0, 4(a1)
	mv a0, a1
	jal gcd
	jal write
	ld ra, 8(sp)
	mv a0, zero
	addi sp, sp, 16
	ret
