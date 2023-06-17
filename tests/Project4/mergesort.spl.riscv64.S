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
	addi sp, sp, -168
	sd ra, 0(sp)
	sd s0, 152(sp)
	sd s5, 96(sp)
	sd s1, 144(sp)
	sd s6, 80(sp)
	sd s2, 136(sp)
	sd s3, 128(sp)
	sd s4, 112(sp)
	sd s7, 64(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	addiw t5, a2, 1
	sd a3, 48(sp)
	sd a2, 56(sp)
	sd a1, 120(sp)
	sd a0, 88(sp)
	bge t5, a3, label21
	mv t1, a2
	mv t2, a3
	addw t3, a2, a3
	li t4, 2
	divw t5, t3, t4
	mv t6, a0
	mv s0, a1
	mv a3, t5
	sd t5, 24(sp)
	jal merge
	ld s1, 88(sp)
	mv a0, s1
	mv a1, s0
	ld s2, 24(sp)
	mv a2, s2
	ld s3, 48(sp)
	mv a3, s3
	jal merge
	ld s4, 56(sp)
	mv s5, s4
	mv s6, s2
	mv s7, s4
	sd s2, 32(sp)
	sd s4, 40(sp)
	sd s4, 16(sp)
	mv t1, s4
	ld t2, 48(sp)
	beq s4, t2, label37
	ld t2, 24(sp)
	beq s4, t2, label41
	mv t1, s2
	ld t2, 48(sp)
	xor t3, s2, t2
	sltu t4, zero, t3
	mv t5, t4
	sd t4, 104(sp)
	mv t1, t4
	beq t4, zero, label16
	mv t1, s4
	slli t2, s4, 2
	ld t3, 88(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	mv t6, s2
	slli s0, s2, 2
	add s1, t3, s0
	lw s2, 0(s1)
	bge t5, s2, label15
	j label14
label37:
	ld t1, 56(sp)
	mv t2, t1
	sd t1, 8(sp)
	ld t2, 48(sp)
	beq t1, t2, label21
label20:
	ld t1, 8(sp)
	slli t2, t1, 2
	ld t3, 88(sp)
	add t4, t3, t2
	slli t5, t1, 2
	ld t6, 120(sp)
	add s0, t6, t5
	lw s1, 0(s0)
	sw s1, 0(t4)
	addiw s2, t1, 1
	mv t1, s2
	sd s2, 8(sp)
	ld t2, 48(sp)
	beq s2, t2, label21
	j label20
label41:
	mv t1, zero
	sd zero, 104(sp)
	j label16
label11:
	ld t1, 40(sp)
	addiw t2, t1, 1
	mv t1, t2
	ld t3, 72(sp)
	mv t4, t3
	ld t5, 160(sp)
	mv t6, t5
	sd t5, 16(sp)
	sd t3, 32(sp)
	sd t2, 40(sp)
	ld t2, 48(sp)
	beq t1, t2, label37
	mv t1, t5
	ld t2, 24(sp)
	beq t5, t2, label41
	mv t1, t3
	ld t2, 48(sp)
	xor t3, t3, t2
	sltu t4, zero, t3
	mv t5, t4
	sd t4, 104(sp)
	mv t1, t4
	beq t4, zero, label16
	ld t1, 16(sp)
	slli t2, t1, 2
	ld t3, 88(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	ld t6, 32(sp)
	slli s0, t6, 2
	add s1, t3, s0
	lw s2, 0(s1)
	bge t5, s2, label15
label14:
	ld t1, 40(sp)
	slli t2, t1, 2
	ld t3, 120(sp)
	add t4, t3, t2
	ld t5, 16(sp)
	slli t6, t5, 2
	ld s0, 88(sp)
	add s1, s0, t6
	lw s2, 0(s1)
	sw s2, 0(t4)
	addiw s3, t5, 1
	ld s4, 32(sp)
	mv s5, s4
	mv s6, s3
	sd s3, 160(sp)
	sd s4, 72(sp)
	j label11
label15:
	ld t1, 40(sp)
	slli t2, t1, 2
	ld t3, 120(sp)
	add t4, t3, t2
	ld t5, 32(sp)
	slli t6, t5, 2
	ld s0, 88(sp)
	add s1, s0, t6
	lw s2, 0(s1)
	sw s2, 0(t4)
	addiw s3, t5, 1
	mv s4, s3
	ld s5, 16(sp)
	mv s6, s5
	sd s5, 160(sp)
	sd s3, 72(sp)
	j label11
label16:
	ld t1, 16(sp)
	ld t2, 24(sp)
	beq t1, t2, label15
	j label14
label21:
	mv a0, zero
	ld s7, 64(sp)
	ld s4, 112(sp)
	ld s3, 128(sp)
	ld s2, 136(sp)
	ld s6, 80(sp)
	ld s1, 144(sp)
	ld s5, 96(sp)
	ld s0, 152(sp)
	ld ra, 0(sp)
	addi sp, sp, 168
	ret
.globl main
main:
	addi sp, sp, -872
	sd ra, 0(sp)
	sd s0, 864(sp)
	addi t1, sp, 464
	addi t2, sp, 64
	jal read
	mv t3, a0
	sd a0, 24(sp)
	sd t2, 16(sp)
	sd t1, 8(sp)
	ble a0, zero, label159
	mv t1, zero
	sd zero, 32(sp)
	slli t2, zero, 2
	ld t3, 16(sp)
	add t4, t3, t2
	jal read
	sw a0, 0(t4)
	addiw t5, t1, 1
	ld t6, 24(sp)
	sd t5, 40(sp)
	bge t5, t6, label159
label177:
	ld t1, 40(sp)
	mv t2, t1
	sd t1, 32(sp)
	slli t2, t1, 2
	ld t3, 16(sp)
	add t4, t3, t2
	jal read
	sw a0, 0(t4)
	addiw t5, t1, 1
	ld t6, 24(sp)
	sd t5, 40(sp)
	bge t5, t6, label159
	j label177
label208:
	mv t1, zero
	sd zero, 48(sp)
	j label160
label159:
	ld t1, 16(sp)
	mv a0, t1
	ld t2, 8(sp)
	mv a1, t2
	mv a2, zero
	ld t3, 24(sp)
	mv a3, t3
	jal merge
	ld t4, 24(sp)
	ble t4, zero, label162
	j label208
label160:
	ld t1, 48(sp)
	slli t2, t1, 2
	ld t3, 16(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	mv a0, t5
	jal write
	addiw t6, t1, 1
	ld s0, 24(sp)
	sd t6, 56(sp)
	bge t6, s0, label162
	mv t1, t6
	mv t2, t6
	sd t6, 48(sp)
	j label160
label162:
	mv a0, zero
	ld s0, 864(sp)
	ld ra, 0(sp)
	addi sp, sp, 872
	ret
