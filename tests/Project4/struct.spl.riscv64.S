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
	lw a3, 4(a0)
	mv a4, a2
	mv a5, a3
	sd a3, 16(sp)
	sd a2, 32(sp)
	sd a1, 24(sp)
	beq a3, zero, label15
	j label2
label15:
	ld a0, 32(sp)
	mv a1, a0
	sd a0, 8(sp)
	j label3
label2:
	li a0, 4294967295
	ld a1, 16(sp)
	and a2, a1, a0
	sw a2, 0(sp)
	ld a3, 32(sp)
	divw a4, a3, a1
	mulw a5, a1, a4
	subw t1, a3, a5
	and t2, t1, a0
	ld t3, 24(sp)
	sw t2, 4(t3)
	mv a0, t3
	jal gcd
	mv t4, a0
	mv t5, a0
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
	and a3, a0, a2
	sw a3, 0(sp)
	jal read
	mv a4, a0
	and a5, a0, a2
	ld t1, 8(sp)
	sw a5, 4(t1)
	mv a0, t1
	jal gcd
	mv t2, a0
	jal write
	mv a0, zero
	ld ra, 16(sp)
	addi sp, sp, 24
	ret
