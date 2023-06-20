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
	addi sp, sp, -80
	sd s0, 72(sp)
	sd s1, 56(sp)
	sd s2, 40(sp)
	sd s3, 24(sp)
	sd ra, 8(sp)
	addi t1, sp, 0
	lw t2, 0(a0)
	lw t3, 4(a0)
	mv t4, t2
	mv t5, t3
	sd t3, 32(sp)
	sd t2, 48(sp)
	sd t1, 64(sp)
	beq t3, zero, label15
	j label2
label15:
	ld t1, 48(sp)
	mv t2, t1
	sd t1, 16(sp)
	j label3
label2:
	li t1, 4294967295
	ld t2, 32(sp)
	and t3, t2, t1
	sw t3, 0(sp)
	ld t4, 48(sp)
	divw t5, t4, t2
	mulw t6, t2, t5
	subw s0, t4, t6
	and s1, s0, t1
	ld s2, 64(sp)
	sw s1, 4(s2)
	mv a0, s2
	jal gcd
	mv s3, a0
	sd a0, 16(sp)
label3:
	ld t1, 16(sp)
	mv a0, t1
	ld ra, 8(sp)
	ld s3, 24(sp)
	ld s2, 40(sp)
	ld s1, 56(sp)
	ld s0, 72(sp)
	addi sp, sp, 80
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
	and t4, a0, t2
	sw t4, 4(t1)
	mv a0, t1
	jal gcd
	jal write
	mv a0, zero
	ld ra, 8(sp)
	addi sp, sp, 16
	ret
