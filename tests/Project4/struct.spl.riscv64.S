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
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s0, 64(sp)
	sd s1, 24(sp)
	addi t1, sp, 8
	addi t2, sp, 16
	lw t3, 0(a0)
	sw t3, 16(sp)
	lw t4, 4(a0)
	sw t4, 4(t2)
	sd t4, 40(sp)
	sd t3, 48(sp)
	sd t1, 56(sp)
	beq t4, zero, label16
	j label2
label16:
	ld t1, 48(sp)
	mv t2, t1
	sd t2, 32(sp)
	j label3
label2:
	ld t1, 40(sp)
	sw t1, 8(sp)
	ld t2, 48(sp)
	divw t3, t2, t1
	mulw t4, t1, t3
	subw t5, t2, t4
	ld t6, 56(sp)
	sw t5, 4(t6)
	mv a0, t6
	jal gcd
	mv s0, a0
	mv s1, s0
	sd s1, 32(sp)
label3:
	ld t1, 32(sp)
	mv a0, t1
	ld s1, 24(sp)
	ld s0, 64(sp)
	ld ra, 0(sp)
	addi sp, sp, 72
	jr ra
.globl main
main:
	addi sp, sp, -16
	sd ra, 0(sp)
	addi t1, sp, 8
	jal read
	mv t2, a0
	sw t2, 8(sp)
	jal read
	mv t3, a0
	sw t3, 4(t1)
	mv a0, t1
	jal gcd
	mv t4, a0
	mv a0, t4
	jal write
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 16
	jr ra
