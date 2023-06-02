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
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s0, 104(sp)
	sd s1, 32(sp)
	addi s0, sp, 8
	addi s1, sp, 24
	lw t1, 0(a0)
	sw t1, 24(sp)
	lw t2, 4(a0)
	sw t2, 4(s1)
	sd t2, 48(sp)
	sd t1, 56(sp)
	sd s0, 64(sp)
	beq t2, zero, label16
	j label2
label16:
	ld s0, 56(sp)
	mv s1, s0
	sd s1, 40(sp)
	ld s0, 40(sp)
	mv a0, s0
	ld s1, 32(sp)
	ld s0, 104(sp)
	ld ra, 0(sp)
	addi sp, sp, 112
	jr ra
label2:
	ld s0, 48(sp)
	sw s0, 8(sp)
	ld s1, 56(sp)
	divw t1, s1, s0
	mulw t2, s0, t1
	subw t3, s1, t2
	ld t4, 64(sp)
	sw t3, 4(t4)
	mv a0, t4
	sd t3, 96(sp)
	sd t2, 88(sp)
	sd t1, 80(sp)
	jal gcd
	mv t5, a0
	mv t6, t5
	sd t6, 40(sp)
	ld s0, 40(sp)
	mv a0, s0
	ld s1, 32(sp)
	ld s0, 104(sp)
	ld ra, 0(sp)
	addi sp, sp, 112
	jr ra
.globl main
main:
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s0, 48(sp)
	sd s1, 56(sp)
	addi s0, sp, 8
	jal read
	mv s1, a0
	sw s1, 8(sp)
	jal read
	mv t1, a0
	sw t1, 4(s0)
	mv a0, s0
	sd t1, 32(sp)
	jal gcd
	mv t2, a0
	mv a0, t2
	jal write
	mv a0, zero
	ld s1, 56(sp)
	ld s0, 48(sp)
	ld ra, 0(sp)
	addi sp, sp, 64
	jr ra
