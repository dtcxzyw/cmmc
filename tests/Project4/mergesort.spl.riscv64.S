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
	addi sp, sp, -576
	sd ra, 0(sp)
	sd s0, 312(sp)
	sd s5, 224(sp)
	sd s1, 296(sp)
	sd s6, 208(sp)
	sd s2, 280(sp)
	sd s3, 256(sp)
	sd s4, 240(sp)
	addi s0, sp, 392
	mv s1, a0
	mv t1, a1
	mv t2, a2
	mv t3, a3
	addiw t4, t2, 1
	sd t3, 104(sp)
	sd t2, 248(sp)
	sd t1, 264(sp)
	sd s1, 304(sp)
	sd s0, 352(sp)
	bge t4, t3, label16
	ld s0, 248(sp)
	ld s1, 104(sp)
	addw t1, s0, s1
	li t2, 2
	divw t3, t1, t2
	ld t4, 304(sp)
	mv a0, t4
	ld t5, 264(sp)
	mv a1, t5
	mv a2, s0
	mv a3, t3
	sd t3, 336(sp)
	sd t2, 128(sp)
	sd t1, 120(sp)
	jal merge
	ld t6, 304(sp)
	mv a0, t6
	ld s2, 264(sp)
	mv a1, s2
	ld s3, 336(sp)
	mv a2, s3
	mv a3, s1
	jal merge
	sw s0, 408(sp)
	sw s3, 392(sp)
	beq s0, s1, label13
	ld s0, 248(sp)
	mv s1, s0
	mv t1, s0
	sd t1, 320(sp)
	sd s1, 424(sp)
	ld s0, 320(sp)
	ld s1, 336(sp)
	beq s0, s1, label42
	lw s0, 392(sp)
	ld s1, 104(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 288(sp)
	ld s0, 288(sp)
	beq s0, zero, label12
	j label9
label202:
	ld s0, 248(sp)
	mv s1, s0
	sd s1, 112(sp)
	j label14
label13:
	ld s0, 248(sp)
	ld s1, 104(sp)
	beq s0, s1, label16
	j label202
label14:
	li s0, 4
	ld s1, 112(sp)
	mul t1, s1, s0
	ld t2, 304(sp)
	add t3, t2, t1
	li t4, 4
	mul t5, s1, t4
	ld t6, 264(sp)
	add s2, t6, t5
	lw s3, 0(s2)
	sw s3, 0(t3)
	addiw s4, s1, 1
	ld s5, 104(sp)
	sd s4, 368(sp)
	beq s4, s5, label16
	ld s0, 368(sp)
	mv s1, s0
	sd s1, 112(sp)
	j label14
label42:
	mv s0, zero
	sd s0, 288(sp)
	ld s0, 288(sp)
	beq s0, zero, label12
	j label9
label205:
	ld s0, 352(sp)
	mv s1, s0
	sd s1, 232(sp)
	j label131
label12:
	lw s0, 408(sp)
	ld s1, 336(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	bne t3, zero, label131
	j label205
label131:
	li s0, 4
	ld s1, 424(sp)
	mul t1, s1, s0
	ld t2, 264(sp)
	add t3, t2, t1
	ld t4, 232(sp)
	lw t5, 0(t4)
	li t6, 4
	mul s2, t5, t6
	ld s3, 304(sp)
	add s4, s3, s2
	lw s5, 0(s4)
	sw s5, 0(t3)
	addiw s6, t5, 1
	sw s6, 0(t4)
	ld s0, 424(sp)
	addiw s1, s0, 1
	ld t1, 104(sp)
	sd s1, 400(sp)
	beq s1, t1, label13
	lw s0, 408(sp)
	ld s1, 400(sp)
	mv t1, s1
	mv t2, s0
	sd t2, 320(sp)
	sd t1, 424(sp)
	ld s0, 320(sp)
	ld s1, 336(sp)
	beq s0, s1, label42
	ld s0, 320(sp)
	ld s1, 336(sp)
	beq s0, s1, label42
	lw s0, 392(sp)
	ld s1, 104(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 288(sp)
	ld s0, 288(sp)
	beq s0, zero, label12
label9:
	lw s0, 408(sp)
	li s1, 4
	mul t1, s0, s1
	ld t2, 304(sp)
	add t3, t2, t1
	lw t4, 0(t3)
	lw t5, 392(sp)
	li t6, 4
	mul s2, t5, t6
	add s3, t2, s2
	lw s4, 0(s3)
	slt s5, t4, s4
	bne s5, zero, label129
	ld s0, 352(sp)
	mv s1, s0
	sd s1, 216(sp)
label129:
	li s0, 4
	ld s1, 424(sp)
	mul t1, s1, s0
	ld t2, 264(sp)
	add t3, t2, t1
	ld t4, 216(sp)
	lw t5, 0(t4)
	li t6, 4
	mul s2, t5, t6
	ld s3, 304(sp)
	add s4, s3, s2
	lw s5, 0(s4)
	sw s5, 0(t3)
	addiw s6, t5, 1
	sw s6, 0(t4)
	ld s0, 424(sp)
	addiw s1, s0, 1
	ld t1, 104(sp)
	sd s1, 400(sp)
	beq s1, t1, label13
	lw s0, 408(sp)
	ld s1, 400(sp)
	mv t1, s1
	mv t2, s0
	sd t2, 320(sp)
	sd t1, 424(sp)
	ld s0, 320(sp)
	ld s1, 336(sp)
	beq s0, s1, label42
	lw s0, 392(sp)
	ld s1, 104(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 288(sp)
	ld s0, 288(sp)
	beq s0, zero, label12
	j label9
label16:
	mv a0, zero
	ld s4, 240(sp)
	ld s3, 256(sp)
	ld s2, 280(sp)
	ld s6, 208(sp)
	ld s1, 296(sp)
	ld s5, 224(sp)
	ld s0, 312(sp)
	ld ra, 0(sp)
	addi sp, sp, 576
	jr ra
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
	ble t1, zero, label224
	mv s0, zero
	sd s0, 48(sp)
	j label222
label286:
	mv s0, zero
	sd s0, 40(sp)
	j label225
label222:
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
	bge t5, t6, label224
	ld s0, 80(sp)
	mv s1, s0
	sd s1, 48(sp)
	j label222
label224:
	ld s0, 64(sp)
	mv a0, s0
	ld s1, 96(sp)
	mv a1, s1
	mv a2, zero
	ld t1, 936(sp)
	mv a3, t1
	jal merge
	ld t2, 936(sp)
	ble t2, zero, label250
	j label286
label225:
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
	bge t5, t6, label250
	ld s0, 512(sp)
	mv s1, s0
	sd s1, 40(sp)
	j label225
label250:
	mv a0, zero
	ld s1, 56(sp)
	ld s0, 72(sp)
	ld ra, 0(sp)
	addi sp, sp, 944
	jr ra
