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
merge:
	addi sp, sp, -488
	sd ra, 0(sp)
	sd s0, 432(sp)
	sd s5, 472(sp)
	sd s1, 440(sp)
	sd s6, 480(sp)
	sd s2, 448(sp)
	sd s3, 456(sp)
	sd s4, 464(sp)
	sd s7, 8(sp)
	sd s8, 104(sp)
	mv s0, a0
	mv s1, a1
	mv t1, a2
	mv t2, a3
	addiw t3, t1, 1
	sd t2, 64(sp)
	sd t1, 56(sp)
	sd s1, 32(sp)
	sd s0, 16(sp)
	bge t3, t2, label2
	ld s0, 56(sp)
	ld s1, 64(sp)
	addw t1, s0, s1
	li t2, 2
	divw t3, t1, t2
	ld t4, 16(sp)
	mv a0, t4
	ld t5, 32(sp)
	mv a1, t5
	mv a2, s0
	mv a3, t3
	sd t3, 72(sp)
	sd t2, 136(sp)
	sd t1, 128(sp)
	jal merge
	ld t6, 16(sp)
	mv a0, t6
	ld s2, 32(sp)
	mv a1, s2
	ld s3, 72(sp)
	mv a2, s3
	mv a3, s1
	jal merge
	beq s0, s1, label4
	ld s0, 56(sp)
	mv s1, s0
	mv t1, s0
	ld t2, 72(sp)
	mv t3, t2
	sd t3, 248(sp)
	sd t1, 40(sp)
	sd s1, 24(sp)
	ld s0, 40(sp)
	ld s1, 72(sp)
	beq s0, s1, label60
	ld s0, 248(sp)
	ld s1, 64(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 112(sp)
	ld s0, 112(sp)
	beq s0, zero, label19
	j label13
label60:
	mv s0, zero
	sd s0, 112(sp)
	ld s0, 112(sp)
	beq s0, zero, label19
	j label13
label90:
	ld s0, 96(sp)
	mv s1, s0
	ld t1, 144(sp)
	mv t2, t1
	ld t3, 88(sp)
	mv t4, t3
	sd t4, 248(sp)
	sd t2, 40(sp)
	sd s1, 24(sp)
	ld s0, 40(sp)
	ld s1, 72(sp)
	beq s0, s1, label60
	ld s0, 248(sp)
	ld s1, 64(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 112(sp)
	ld s0, 112(sp)
	beq s0, zero, label19
	ld s0, 112(sp)
	beq s0, zero, label19
	j label13
label18:
	li s0, 4
	ld s1, 24(sp)
	mul t1, s1, s0
	ld t2, 32(sp)
	add t3, t2, t1
	li t4, 4
	ld t5, 248(sp)
	mul t6, t5, t4
	ld s2, 16(sp)
	add s3, s2, t6
	lw s4, 0(s3)
	sw s4, 0(t3)
	addiw s5, t5, 1
	mv s6, s5
	ld s7, 40(sp)
	mv s8, s7
	sd s8, 144(sp)
	sd s6, 88(sp)
	ld s0, 24(sp)
	addiw s1, s0, 1
	ld t1, 64(sp)
	sd s1, 96(sp)
	beq s1, t1, label4
	j label90
label19:
	ld s0, 40(sp)
	ld s1, 72(sp)
	beq s0, s1, label18
	j label14
label13:
	li s0, 4
	ld s1, 40(sp)
	mul t1, s1, s0
	ld t2, 16(sp)
	add t3, t2, t1
	lw t4, 0(t3)
	li t5, 4
	ld t6, 248(sp)
	mul s2, t6, t5
	add s3, t2, s2
	lw s4, 0(s3)
	bge t4, s4, label18
label14:
	li s0, 4
	ld s1, 24(sp)
	mul t1, s1, s0
	ld t2, 32(sp)
	add t3, t2, t1
	li t4, 4
	ld t5, 40(sp)
	mul t6, t5, t4
	ld s2, 16(sp)
	add s3, s2, t6
	lw s4, 0(s3)
	sw s4, 0(t3)
	addiw s5, t5, 1
	ld s6, 248(sp)
	mv s7, s6
	mv s8, s5
	sd s8, 144(sp)
	sd s7, 88(sp)
	ld s0, 24(sp)
	addiw s1, s0, 1
	ld t1, 64(sp)
	sd s1, 96(sp)
	beq s1, t1, label4
	j label90
label2:
	mv a0, zero
	ld s8, 104(sp)
	ld s7, 8(sp)
	ld s4, 464(sp)
	ld s3, 456(sp)
	ld s2, 448(sp)
	ld s6, 480(sp)
	ld s1, 440(sp)
	ld s5, 472(sp)
	ld s0, 432(sp)
	ld ra, 0(sp)
	addi sp, sp, 488
	jr ra
label4:
	ld s0, 56(sp)
	ld s1, 64(sp)
	beq s0, s1, label2
	ld s0, 56(sp)
	mv s1, s0
	sd s1, 80(sp)
label5:
	li s0, 4
	ld s1, 80(sp)
	mul t1, s1, s0
	ld t2, 16(sp)
	add t3, t2, t1
	li t4, 4
	mul t5, s1, t4
	ld t6, 32(sp)
	add s2, t6, t5
	lw s3, 0(s2)
	sw s3, 0(t3)
	addiw s4, s1, 1
	ld s5, 64(sp)
	sd s4, 48(sp)
	beq s4, s5, label2
	ld s0, 48(sp)
	mv s1, s0
	sd s1, 80(sp)
	j label5
.globl main
main:
	addi sp, sp, -944
	sd ra, 0(sp)
	sd s0, 72(sp)
	sd s1, 56(sp)
	addi s0, sp, 536
	addi s1, sp, 112
	jal read
	mv t1, a0
	sd t1, 936(sp)
	sd s1, 64(sp)
	sd s0, 96(sp)
	ble t1, zero, label207
	mv s0, zero
	sd s0, 48(sp)
	j label205
label269:
	mv s0, zero
	sd s0, 40(sp)
	j label208
label205:
	li s0, 4
	ld s1, 48(sp)
	mul t1, s1, s0
	ld t2, 64(sp)
	add t3, t2, t1
	jal read
	mv t4, a0
	sw t4, 0(t3)
	addiw t5, s1, 1
	ld t6, 936(sp)
	sd t5, 80(sp)
	bge t5, t6, label207
	ld s0, 80(sp)
	mv s1, s0
	sd s1, 48(sp)
	j label205
label207:
	ld s0, 64(sp)
	mv a0, s0
	ld s1, 96(sp)
	mv a1, s1
	mv a2, zero
	ld t1, 936(sp)
	mv a3, t1
	jal merge
	ld t2, 936(sp)
	ble t2, zero, label233
	j label269
label208:
	li s0, 4
	ld s1, 40(sp)
	mul t1, s1, s0
	ld t2, 64(sp)
	add t3, t2, t1
	lw t4, 0(t3)
	mv a0, t4
	jal write
	addiw t5, s1, 1
	ld t6, 936(sp)
	sd t5, 512(sp)
	bge t5, t6, label233
	ld s0, 512(sp)
	mv s1, s0
	sd s1, 40(sp)
	j label208
label233:
	mv a0, zero
	ld s1, 56(sp)
	ld s0, 72(sp)
	ld ra, 0(sp)
	addi sp, sp, 944
	jr ra
