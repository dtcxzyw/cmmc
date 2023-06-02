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
	addi sp, sp, -408
	sd ra, 0(sp)
	sd s0, 264(sp)
	sd s5, 304(sp)
	sd s1, 272(sp)
	sd s6, 312(sp)
	sd s2, 280(sp)
	sd s3, 288(sp)
	sd s4, 296(sp)
	mv s0, a0
	mv s1, a1
	mv t1, a2
	mv t2, a3
	addiw t3, t1, 1
	sd t2, 152(sp)
	sd t1, 168(sp)
	sd s1, 344(sp)
	sd s0, 216(sp)
	bge t3, t2, label2
	ld s0, 168(sp)
	ld s1, 152(sp)
	addw t1, s0, s1
	li t2, 2
	divw t3, t1, t2
	ld t4, 216(sp)
	mv a0, t4
	ld t5, 344(sp)
	mv a1, t5
	mv a2, s0
	mv a3, t3
	sd t3, 144(sp)
	sd t2, 104(sp)
	sd t1, 112(sp)
	jal merge
	ld t6, 216(sp)
	mv a0, t6
	ld s2, 344(sp)
	mv a1, s2
	ld s3, 144(sp)
	mv a2, s3
	mv a3, s1
	jal merge
	beq s0, s1, label4
	ld s0, 168(sp)
	mv s1, s0
	mv t1, s0
	ld t2, 144(sp)
	mv t3, t2
	sd t3, 160(sp)
	sd t1, 360(sp)
	sd s1, 328(sp)
	ld s0, 360(sp)
	ld s1, 144(sp)
	beq s0, s1, label55
	ld s0, 160(sp)
	ld s1, 152(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 184(sp)
	ld s0, 184(sp)
	beq s0, zero, label19
	ld s0, 360(sp)
	slli s1, s0, 2
	ld t1, 216(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 160(sp)
	slli t5, t4, 2
	add t6, t1, t5
	lw s2, 0(t6)
	bge t3, s2, label18
	j label14
label55:
	mv s0, zero
	sd s0, 184(sp)
	ld s0, 184(sp)
	beq s0, zero, label19
	ld s0, 360(sp)
	slli s1, s0, 2
	ld t1, 216(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 160(sp)
	slli t5, t4, 2
	add t6, t1, t5
	lw s2, 0(t6)
	bge t3, s2, label18
label14:
	ld s0, 328(sp)
	slli s1, s0, 2
	ld t1, 344(sp)
	add t2, t1, s1
	ld t3, 360(sp)
	slli t4, t3, 2
	ld t5, 216(sp)
	add t6, t5, t4
	lw s2, 0(t6)
	sw s2, 0(t2)
	addiw s3, t3, 1
	ld s4, 160(sp)
	mv s5, s4
	mv s6, s3
	sd s6, 232(sp)
	sd s5, 136(sp)
	ld s0, 328(sp)
	addiw s1, s0, 1
	ld t1, 152(sp)
	sd s1, 200(sp)
	beq s1, t1, label4
label82:
	ld s0, 200(sp)
	mv s1, s0
	ld t1, 232(sp)
	mv t2, t1
	ld t3, 136(sp)
	mv t4, t3
	sd t4, 160(sp)
	sd t2, 360(sp)
	sd s1, 328(sp)
	ld s0, 360(sp)
	ld s1, 144(sp)
	beq s0, s1, label55
	ld s0, 160(sp)
	ld s1, 152(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 184(sp)
	ld s0, 184(sp)
	beq s0, zero, label19
	ld s0, 184(sp)
	beq s0, zero, label19
	ld s0, 360(sp)
	slli s1, s0, 2
	ld t1, 216(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 160(sp)
	slli t5, t4, 2
	add t6, t1, t5
	lw s2, 0(t6)
	bge t3, s2, label18
	j label14
label19:
	ld s0, 360(sp)
	ld s1, 144(sp)
	beq s0, s1, label18
	j label14
label159:
	ld s0, 168(sp)
	mv s1, s0
	sd s1, 128(sp)
	j label5
label4:
	ld s0, 168(sp)
	ld s1, 152(sp)
	beq s0, s1, label2
	j label159
label5:
	ld s0, 128(sp)
	slli s1, s0, 2
	ld t1, 216(sp)
	add t2, t1, s1
	slli t3, s0, 2
	ld t4, 344(sp)
	add t5, t4, t3
	lw t6, 0(t5)
	sw t6, 0(t2)
	addiw s2, s0, 1
	ld s3, 152(sp)
	sd s2, 248(sp)
	beq s2, s3, label2
	ld s0, 248(sp)
	mv s1, s0
	sd s1, 128(sp)
	j label5
label18:
	ld s0, 328(sp)
	slli s1, s0, 2
	ld t1, 344(sp)
	add t2, t1, s1
	ld t3, 160(sp)
	slli t4, t3, 2
	ld t5, 216(sp)
	add t6, t5, t4
	lw s2, 0(t6)
	sw s2, 0(t2)
	addiw s3, t3, 1
	mv s4, s3
	ld s5, 360(sp)
	mv s6, s5
	sd s6, 232(sp)
	sd s4, 136(sp)
	ld s0, 328(sp)
	addiw s1, s0, 1
	ld t1, 152(sp)
	sd s1, 200(sp)
	beq s1, t1, label4
	j label82
label2:
	mv a0, zero
	ld s4, 296(sp)
	ld s3, 288(sp)
	ld s2, 280(sp)
	ld s6, 312(sp)
	ld s1, 272(sp)
	ld s5, 304(sp)
	ld s0, 264(sp)
	ld ra, 0(sp)
	addi sp, sp, 408
	jr ra
.globl main
main:
	addi sp, sp, -928
	sd ra, 0(sp)
	sd s0, 56(sp)
	sd s1, 40(sp)
	addi s0, sp, 88
	addi s1, sp, 496
	jal read
	mv t1, a0
	sd t1, 488(sp)
	sd s1, 920(sp)
	sd s0, 896(sp)
	ble t1, zero, label181
	mv s0, zero
	sd s0, 912(sp)
	j label179
label235:
	mv s0, zero
	sd s0, 904(sp)
	j label182
label179:
	ld s0, 912(sp)
	slli s1, s0, 2
	ld t1, 920(sp)
	add t2, t1, s1
	jal read
	mv t3, a0
	sw t3, 0(t2)
	addiw t4, s0, 1
	ld t5, 488(sp)
	sd t4, 48(sp)
	bge t4, t5, label181
	ld s0, 48(sp)
	mv s1, s0
	sd s1, 912(sp)
	j label179
label181:
	ld s0, 920(sp)
	mv a0, s0
	ld s1, 896(sp)
	mv a1, s1
	mv a2, zero
	ld t1, 488(sp)
	mv a3, t1
	jal merge
	ld t2, 488(sp)
	ble t2, zero, label205
	j label235
label182:
	ld s0, 904(sp)
	slli s1, s0, 2
	ld t1, 920(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	mv a0, t3
	jal write
	addiw t4, s0, 1
	ld t5, 488(sp)
	sd t4, 64(sp)
	bge t4, t5, label205
	ld s0, 64(sp)
	mv s1, s0
	sd s1, 904(sp)
	j label182
label205:
	mv a0, zero
	ld s1, 40(sp)
	ld s0, 56(sp)
	ld ra, 0(sp)
	addi sp, sp, 928
	jr ra
