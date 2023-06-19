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
	addi sp, sp, -56
	sd s0, 48(sp)
	sd ra, 40(sp)
	addi t1, sp, 0
	lw t2, 0(a0)
	lw t3, 4(a0)
	sd t3, 16(sp)
	sd t2, 24(sp)
	sd t1, 32(sp)
	beq t3, zero, label13
	j label2
label13:
	ld t1, 24(sp)
	mv t2, t1
	sd t1, 8(sp)
	j label3
label2:
	ld t1, 16(sp)
	sw t1, 0(sp)
	ld t2, 24(sp)
	divw t3, t2, t1
	mulw t4, t1, t3
	subw t5, t2, t4
	ld t6, 32(sp)
	sw t5, 4(t6)
	mv a0, t6
	jal gcd
	mv s0, a0
	sd a0, 8(sp)
label3:
	ld t1, 8(sp)
	mv a0, t1
	ld ra, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
.globl main
main:
	addi sp, sp, -16
	sd ra, 8(sp)
	addi t1, sp, 0
	jal read
	sw a0, 0(sp)
	jal read
	sw a0, 4(t1)
	mv a0, t1
	jal gcd
	jal write
	mv a0, zero
	ld ra, 8(sp)
	addi sp, sp, 16
	ret
