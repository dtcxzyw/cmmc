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
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s0, 72(sp)
	sd s1, 80(sp)
	jal read
	mv t1, a0
	li t2, 1
	slt t3, t2, a0
	xori t4, t3, 1
	sd a0, 40(sp)
	bne t4, zero, label14
	li t1, 1
	ld t2, 40(sp)
	xor t3, t2, t1
	sltiu t4, t3, 1
	xori t5, t4, 1
	bne t5, zero, label18
	j label17
label14:
	li t1, 1
	sd t1, 32(sp)
	j label9
label17:
	ld t1, 40(sp)
	mv t2, t1
	li t3, 1
	sd t3, 16(sp)
	sd t1, 24(sp)
	ld t1, 24(sp)
	ld t2, 16(sp)
	mulw t3, t1, t2
	mv t4, t3
	sd t3, 32(sp)
	j label9
label18:
	ld t1, 40(sp)
	mv t2, t1
	li t3, 1
	sd t3, 64(sp)
	sd t1, 8(sp)
label6:
	ld t1, 8(sp)
	addiw t2, t1, -1
	ld t3, 64(sp)
	mulw t4, t1, t3
	li t5, 1
	xor t6, t2, t5
	sltiu s0, t6, 1
	xori s1, s0, 1
	sd t4, 56(sp)
	sd t2, 48(sp)
	bne s1, zero, label25
	ld t1, 48(sp)
	mv t2, t1
	ld t3, 56(sp)
	mv t4, t3
	sd t3, 16(sp)
	sd t1, 24(sp)
	ld t1, 24(sp)
	ld t2, 16(sp)
	mulw t3, t1, t2
	mv t4, t3
	sd t3, 32(sp)
	j label9
label25:
	ld t1, 48(sp)
	mv t2, t1
	ld t3, 56(sp)
	mv t4, t3
	sd t3, 64(sp)
	sd t1, 8(sp)
	j label6
label9:
	ld t1, 32(sp)
	mv a0, t1
	jal write
	mv a0, zero
	ld s1, 80(sp)
	ld s0, 72(sp)
	ld ra, 0(sp)
	addi sp, sp, 88
	jr ra
