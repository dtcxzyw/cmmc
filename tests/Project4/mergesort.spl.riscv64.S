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
	sd s0, 64(sp)
	sd s5, 80(sp)
	sd s1, 96(sp)
	sd s6, 112(sp)
	sd s2, 128(sp)
	sd s3, 136(sp)
	sd s4, 144(sp)
	sd s7, 152(sp)
	sd ra, 160(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	addiw t5, a2, 1
	sd a3, 40(sp)
	sd a2, 48(sp)
	sd a1, 56(sp)
	sd a0, 104(sp)
	bge t5, a3, label21
	mv t1, a2
	mv t2, a3
	addw t3, a2, a3
	li t4, 2
	divw t5, t3, t4
	mv t6, a0
	mv s0, a1
	mv a3, t5
	sd t5, 16(sp)
	jal merge
	ld s1, 104(sp)
	mv a0, s1
	mv a1, s0
	ld s2, 16(sp)
	mv a2, s2
	ld s3, 40(sp)
	mv a3, s3
	jal merge
	ld s4, 48(sp)
	mv s5, s4
	mv s6, s2
	mv s7, s4
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s4, 8(sp)
	mv t1, s4
	ld t2, 40(sp)
	beq s4, t2, label37
	ld t2, 16(sp)
	beq s4, t2, label41
	mv t1, s2
	ld t2, 40(sp)
	xor t3, s2, t2
	sltu t4, zero, t3
	mv t5, t4
	sd t4, 120(sp)
	mv t1, t4
	beq t4, zero, label16
	mv t1, s4
	slli t2, s4, 2
	ld t3, 104(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	mv t6, s2
	slli s0, s2, 2
	add s1, t3, s0
	lw s2, 0(s1)
	bge t5, s2, label15
	j label14
label37:
	ld t1, 48(sp)
	mv t2, t1
	sd t1, 0(sp)
	ld t2, 40(sp)
	beq t1, t2, label21
label20:
	ld t1, 0(sp)
	slli t2, t1, 2
	ld t3, 104(sp)
	add t4, t3, t2
	slli t5, t1, 2
	ld t6, 56(sp)
	add s0, t6, t5
	lw s1, 0(s0)
	sw s1, 0(t4)
	addiw s2, t1, 1
	mv t1, s2
	sd s2, 0(sp)
	ld t2, 40(sp)
	beq s2, t2, label21
	j label20
label41:
	mv t1, zero
	sd zero, 120(sp)
	j label16
label11:
	ld t1, 32(sp)
	addiw t2, t1, 1
	mv t1, t2
	ld t3, 88(sp)
	mv t4, t3
	ld t5, 72(sp)
	mv t6, t5
	sd t5, 8(sp)
	sd t3, 24(sp)
	sd t2, 32(sp)
	ld t2, 40(sp)
	beq t1, t2, label37
	mv t1, t5
	ld t2, 16(sp)
	beq t5, t2, label41
	mv t1, t3
	ld t2, 40(sp)
	xor t3, t3, t2
	sltu t4, zero, t3
	mv t5, t4
	sd t4, 120(sp)
	mv t1, t4
	beq t4, zero, label16
	ld t1, 8(sp)
	slli t2, t1, 2
	ld t3, 104(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	ld t6, 24(sp)
	slli s0, t6, 2
	add s1, t3, s0
	lw s2, 0(s1)
	bge t5, s2, label15
label14:
	ld t1, 32(sp)
	slli t2, t1, 2
	ld t3, 56(sp)
	add t4, t3, t2
	ld t5, 8(sp)
	slli t6, t5, 2
	ld s0, 104(sp)
	add s1, s0, t6
	lw s2, 0(s1)
	sw s2, 0(t4)
	addiw s3, t5, 1
	ld s4, 24(sp)
	mv s5, s4
	mv s6, s3
	sd s3, 72(sp)
	sd s4, 88(sp)
	j label11
label15:
	ld t1, 32(sp)
	slli t2, t1, 2
	ld t3, 56(sp)
	add t4, t3, t2
	ld t5, 24(sp)
	slli t6, t5, 2
	ld s0, 104(sp)
	add s1, s0, t6
	lw s2, 0(s1)
	sw s2, 0(t4)
	addiw s3, t5, 1
	mv s4, s3
	ld s5, 8(sp)
	mv s6, s5
	sd s5, 72(sp)
	sd s3, 88(sp)
	j label11
label16:
	ld t1, 8(sp)
	ld t2, 16(sp)
	beq t1, t2, label15
	j label14
label21:
	mv a0, zero
	ld ra, 160(sp)
	ld s7, 152(sp)
	ld s4, 144(sp)
	ld s3, 136(sp)
	ld s2, 128(sp)
	ld s6, 112(sp)
	ld s1, 96(sp)
	ld s5, 80(sp)
	ld s0, 64(sp)
	addi sp, sp, 168
	ret
.globl main
main:
	addi sp, sp, -872
	sd s0, 864(sp)
	sd ra, 848(sp)
	addi t1, sp, 448
	addi t2, sp, 48
	jal read
	mv t3, a0
	sd a0, 16(sp)
	sd t2, 8(sp)
	sd t1, 0(sp)
	ble a0, zero, label160
	mv t1, zero
	sd zero, 24(sp)
	slli t2, zero, 2
	ld t3, 8(sp)
	add t4, t3, t2
	jal read
	sw a0, 0(t4)
	addiw t5, t1, 1
	ld t6, 16(sp)
	sd t5, 32(sp)
	bge t5, t6, label160
label178:
	ld t1, 32(sp)
	mv t2, t1
	sd t1, 24(sp)
	slli t2, t1, 2
	ld t3, 8(sp)
	add t4, t3, t2
	jal read
	sw a0, 0(t4)
	addiw t5, t1, 1
	ld t6, 16(sp)
	sd t5, 32(sp)
	bge t5, t6, label160
	j label178
label210:
	mv t1, zero
	sd zero, 40(sp)
	j label161
label160:
	ld t1, 8(sp)
	mv a0, t1
	ld t2, 0(sp)
	mv a1, t2
	mv a2, zero
	ld t3, 16(sp)
	mv a3, t3
	jal merge
	ld t4, 16(sp)
	ble t4, zero, label163
	j label210
label161:
	ld t1, 40(sp)
	slli t2, t1, 2
	ld t3, 8(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	mv a0, t5
	jal write
	addiw t6, t1, 1
	ld s0, 16(sp)
	sd t6, 856(sp)
	bge t6, s0, label163
	mv t1, t6
	mv t2, t6
	sd t6, 40(sp)
	j label161
label163:
	mv a0, zero
	ld ra, 848(sp)
	ld s0, 864(sp)
	addi sp, sp, 872
	ret
