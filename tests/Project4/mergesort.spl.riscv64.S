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
	sd t2, 360(sp)
	sd t1, 344(sp)
	sd s1, 184(sp)
	sd s0, 200(sp)
	bge t3, t2, label2
	ld s0, 344(sp)
	ld s1, 360(sp)
	addw t1, s0, s1
	li t2, 2
	divw t3, t1, t2
	ld t4, 200(sp)
	mv a0, t4
	ld t5, 184(sp)
	mv a1, t5
	mv a2, s0
	mv a3, t3
	sd t3, 160(sp)
	sd t2, 120(sp)
	sd t1, 128(sp)
	jal merge
	ld t6, 200(sp)
	mv a0, t6
	ld s2, 184(sp)
	mv a1, s2
	ld s3, 160(sp)
	mv a2, s3
	mv a3, s1
	jal merge
	mv s4, s0
	mv s5, s3
	mv s6, s0
	sd s6, 144(sp)
	sd s4, 168(sp)
	sd s5, 152(sp)
	ld s0, 168(sp)
	ld s1, 360(sp)
	beq s0, s1, label37
	ld s0, 144(sp)
	ld s1, 160(sp)
	beq s0, s1, label41
	ld s0, 152(sp)
	ld s1, 360(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 328(sp)
	ld s0, 328(sp)
	beq s0, zero, label17
	ld s0, 144(sp)
	slli s1, s0, 2
	ld t1, 200(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 152(sp)
	slli t5, t4, 2
	add t6, t1, t5
	lw s2, 0(t6)
	bge t3, s2, label16
	j label12
label37:
	ld s0, 344(sp)
	mv s1, s0
	sd s1, 136(sp)
	ld s0, 136(sp)
	ld s1, 360(sp)
	beq s0, s1, label2
label21:
	ld s0, 136(sp)
	slli s1, s0, 2
	ld t1, 200(sp)
	add t2, t1, s1
	slli t3, s0, 2
	ld t4, 184(sp)
	add t5, t4, t3
	lw t6, 0(t5)
	sw t6, 0(t2)
	addiw s2, s0, 1
	mv s0, s2
	sd s0, 136(sp)
	ld s0, 136(sp)
	ld s1, 360(sp)
	beq s0, s1, label2
	j label21
label41:
	mv s0, zero
	sd s0, 328(sp)
	ld s0, 328(sp)
	beq s0, zero, label17
	ld s0, 144(sp)
	slli s1, s0, 2
	ld t1, 200(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 152(sp)
	slli t5, t4, 2
	add t6, t1, t5
	lw s2, 0(t6)
	bge t3, s2, label16
label12:
	ld s0, 168(sp)
	slli s1, s0, 2
	ld t1, 184(sp)
	add t2, t1, s1
	ld t3, 144(sp)
	slli t4, t3, 2
	ld t5, 200(sp)
	add t6, t5, t4
	lw s2, 0(t6)
	sw s2, 0(t2)
	addiw s3, t3, 1
	ld s4, 152(sp)
	mv s5, s4
	mv s6, s3
	sd s6, 232(sp)
	sd s5, 216(sp)
label13:
	ld s0, 168(sp)
	addiw s1, s0, 1
	mv s0, s1
	ld t1, 216(sp)
	mv t2, t1
	ld t3, 232(sp)
	mv t4, t3
	sd t4, 144(sp)
	sd t2, 152(sp)
	sd s0, 168(sp)
	ld s0, 168(sp)
	ld s1, 360(sp)
	beq s0, s1, label37
	ld s0, 144(sp)
	ld s1, 160(sp)
	beq s0, s1, label41
	ld s0, 152(sp)
	ld s1, 360(sp)
	xor t1, s0, s1
	sltiu t2, t1, 1
	xori t3, t2, 1
	mv t4, t3
	sd t4, 328(sp)
	ld s0, 328(sp)
	beq s0, zero, label17
	ld s0, 144(sp)
	slli s1, s0, 2
	ld t1, 200(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 152(sp)
	slli t5, t4, 2
	add t6, t1, t5
	lw s2, 0(t6)
	bge t3, s2, label16
	j label12
label17:
	ld s0, 144(sp)
	ld s1, 160(sp)
	beq s0, s1, label16
	j label12
label16:
	ld s0, 168(sp)
	slli s1, s0, 2
	ld t1, 184(sp)
	add t2, t1, s1
	ld t3, 152(sp)
	slli t4, t3, 2
	ld t5, 200(sp)
	add t6, t5, t4
	lw s2, 0(t6)
	sw s2, 0(t2)
	addiw s3, t3, 1
	mv s4, s3
	ld s5, 144(sp)
	mv s6, s5
	sd s6, 232(sp)
	sd s4, 216(sp)
	j label13
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
	sd t1, 920(sp)
	sd s1, 32(sp)
	sd s0, 488(sp)
	ble t1, zero, label166
	mv s0, zero
	sd s0, 912(sp)
	j label164
label218:
	mv s0, zero
	sd s0, 904(sp)
	j label167
label164:
	ld s0, 912(sp)
	slli s1, s0, 2
	ld t1, 32(sp)
	add t2, t1, s1
	jal read
	mv t3, a0
	sw t3, 0(t2)
	addiw t4, s0, 1
	ld t5, 920(sp)
	sd t4, 64(sp)
	bge t4, t5, label166
	ld s0, 64(sp)
	mv s1, s0
	sd s1, 912(sp)
	j label164
label166:
	ld s0, 32(sp)
	mv a0, s0
	ld s1, 488(sp)
	mv a1, s1
	mv a2, zero
	ld t1, 920(sp)
	mv a3, t1
	jal merge
	ld t2, 920(sp)
	ble t2, zero, label189
	j label218
label167:
	ld s0, 904(sp)
	slli s1, s0, 2
	ld t1, 32(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	mv a0, t3
	jal write
	addiw t4, s0, 1
	ld t5, 920(sp)
	sd t4, 48(sp)
	bge t4, t5, label189
	ld s0, 48(sp)
	mv s1, s0
	sd s1, 904(sp)
	j label167
label189:
	mv a0, zero
	ld s1, 40(sp)
	ld s0, 56(sp)
	ld ra, 0(sp)
	addi sp, sp, 928
	jr ra
