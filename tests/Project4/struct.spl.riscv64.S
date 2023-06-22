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
	addi sp, sp, -48
	sd ra, 40(sp)
	addi a1, sp, 0
	lw a2, 0(a0)
	lw a0, 4(a0)
	mv a3, a0
	sd a0, 16(sp)
	sd a2, 32(sp)
	sd a1, 24(sp)
	beq a0, zero, label15
	j label2
label15:
	ld a0, 32(sp)
	sd a0, 8(sp)
	j label3
label2:
	li a0, 4294967295
	ld a1, 16(sp)
	and a2, a1, a0
	sw a2, 0(sp)
	ld a2, 32(sp)
	divw a3, a2, a1
	mulw a1, a1, a3
	subw a1, a2, a1
	and a0, a1, a0
	ld a1, 24(sp)
	sw a0, 4(a1)
	mv a0, a1
	jal gcd
	sd a0, 8(sp)
label3:
	ld a1, 8(sp)
	mv a0, a1
	ld ra, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
	addi sp, sp, -24
	sd ra, 16(sp)
	addi a0, sp, 0
	sd a0, 8(sp)
	jal read
	mv a1, a0
	li a2, 4294967295
	and a1, a0, a2
	sw a1, 0(sp)
	jal read
	mv a1, a0
	and a1, a0, a2
	ld a2, 8(sp)
	sw a1, 4(a2)
	mv a0, a2
	jal gcd
	mv a1, a0
	jal write
	mv a0, zero
	ld ra, 16(sp)
	addi sp, sp, 24
	ret
