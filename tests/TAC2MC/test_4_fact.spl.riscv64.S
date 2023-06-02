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
.globl main
main:
	addi sp, sp, -136
	sd ra, 0(sp)
	sd s0, 48(sp)
	sd s1, 32(sp)
	jal read
	mv s0, a0
	li s1, 1
	slt t1, s1, s0
	xori t2, t1, 1
	sd s0, 72(sp)
	bne t2, zero, label12
	li s0, 1
	ld s1, 72(sp)
	mv t1, s1
	sd t1, 80(sp)
	sd s0, 40(sp)
	li s0, 1
	ld s1, 80(sp)
	xor t1, s1, s0
	sltiu t2, t1, 1
	xori t3, t2, 1
	bne t3, zero, label6
label42:
	ld s0, 40(sp)
	ld s1, 80(sp)
	mulw t1, s0, s1
	mv t2, t1
	sd t2, 56(sp)
	ld s0, 56(sp)
	mv a0, s0
	jal write
	mv a0, zero
	ld s1, 32(sp)
	ld s0, 48(sp)
	ld ra, 0(sp)
	addi sp, sp, 136
	jr ra
label12:
	li s0, 1
	sd s0, 56(sp)
	ld s0, 56(sp)
	mv a0, s0
	jal write
	mv a0, zero
	ld s1, 32(sp)
	ld s0, 48(sp)
	ld ra, 0(sp)
	addi sp, sp, 136
	jr ra
label6:
	ld s0, 80(sp)
	addiw s1, s0, -1
	ld t1, 40(sp)
	mulw t2, t1, s0
	mv t1, t2
	mv s0, s1
	sd s0, 80(sp)
	sd t1, 40(sp)
	li s0, 1
	ld s1, 80(sp)
	xor t1, s1, s0
	sltiu t2, t1, 1
	xori t3, t2, 1
	bne t3, zero, label6
	j label42
