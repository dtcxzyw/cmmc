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
	addi sp, sp, -88
	sd s0, 80(sp)
	sd s1, 64(sp)
	sd s2, 56(sp)
	sd s3, 40(sp)
	sd s4, 24(sp)
	sd ra, 8(sp)
	addi t1, sp, 72
	lw t2, 0(a0)
	lw t3, 4(a0)
	mv t4, t2
	mv t5, t3
	sd t3, 16(sp)
	sd t2, 32(sp)
	sd t1, 48(sp)
	beq t3, zero, label15
	j label2
label15:
	ld t1, 32(sp)
	mv t2, t1
	sd t1, 0(sp)
	j label3
label2:
	li t1, 4294967295
	ld t2, 16(sp)
	and t3, t2, t1
	sw t3, 72(sp)
	ld t4, 32(sp)
	divw t5, t4, t2
	mulw t6, t2, t5
	subw s0, t4, t6
	li s1, 4294967295
	and s2, s0, s1
	ld s3, 48(sp)
	sw s2, 4(s3)
	mv a0, s3
	jal gcd
	mv s4, a0
	sd a0, 0(sp)
label3:
	ld t1, 0(sp)
	mv a0, t1
	ld ra, 8(sp)
	ld s4, 24(sp)
	ld s3, 40(sp)
	ld s2, 56(sp)
	ld s1, 64(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
.globl main
main:
	addi sp, sp, -16
	sd ra, 8(sp)
	addi t1, sp, 0
	jal read
	li t2, 4294967295
	and t3, a0, t2
	sw t3, 0(sp)
	jal read
	li t4, 4294967295
	and t5, a0, t4
	sw t5, 4(t1)
	mv a0, t1
	jal gcd
	jal write
	mv a0, zero
	ld ra, 8(sp)
	addi sp, sp, 16
	ret
