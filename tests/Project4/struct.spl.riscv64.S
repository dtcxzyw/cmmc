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
	sd ra, 0(sp)
	sd s0, 48(sp)
	addi t1, sp, 8
	lw t2, 0(a0)
	lw t3, 4(a0)
	sd t3, 24(sp)
	sd t2, 32(sp)
	sd t1, 40(sp)
	beq t3, zero, label13
	j label2
label13:
	ld t1, 32(sp)
	mv t2, t1
	sd t1, 16(sp)
	j label3
label2:
	ld t1, 24(sp)
	sw t1, 8(sp)
	ld t2, 32(sp)
	divw t3, t2, t1
	mulw t4, t1, t3
	subw t5, t2, t4
	ld t6, 40(sp)
	sw t5, 4(t6)
	mv a0, t6
	jal gcd
	mv s0, a0
	sd a0, 16(sp)
label3:
	ld t1, 16(sp)
	mv a0, t1
	ld s0, 48(sp)
	ld ra, 0(sp)
	addi sp, sp, 56
	ret
.globl main
main:
	addi sp, sp, -16
	sd ra, 0(sp)
	addi t1, sp, 8
	jal read
	sw a0, 8(sp)
	jal read
	sw a0, 4(t1)
	mv a0, t1
	jal gcd
	jal write
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 16
	ret
