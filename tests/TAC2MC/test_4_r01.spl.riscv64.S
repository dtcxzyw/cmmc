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
hanoi:
	addi sp, sp, -304
	sd ra, 0(sp)
	sd s0, 104(sp)
	sd s5, 200(sp)
	sd s1, 120(sp)
	sd s6, 224(sp)
	sd s2, 136(sp)
	sd s3, 152(sp)
	sd s4, 176(sp)
	mv s0, a0
	mv s1, a1
	mv t1, a2
	mv t2, a3
	li t3, 1
	xor t4, s0, t3
	sltiu t5, t4, 1
	xori t6, t5, 1
	sd t2, 184(sp)
	sd t1, 208(sp)
	sd s1, 232(sp)
	sd s0, 168(sp)
	bne t6, zero, label18
	ld s0, 232(sp)
	mv s1, s0
	mv t1, zero
	mv t2, zero
	sd t2, 112(sp)
	sd t1, 128(sp)
	sd s1, 144(sp)
	j label2
label18:
	ld s0, 168(sp)
	mv s1, s0
	ld t1, 232(sp)
	mv t2, t1
	ld t3, 208(sp)
	mv t4, t3
	mv t5, zero
	mv t6, zero
	sd t6, 72(sp)
	sd t5, 216(sp)
	sd t4, 192(sp)
	sd t2, 160(sp)
	sd s1, 96(sp)
	j label6
label2:
	li s0, 10000
	ld s1, 144(sp)
	mulw t1, s1, s0
	ld t2, 184(sp)
	addw t3, t2, t1
	mv a0, t3
	jal write
	ld t4, 128(sp)
	mv t5, t4
	ld t6, 112(sp)
	sd t5, 80(sp)
	bne t6, zero, label43
	mv s0, zero
	sd s0, 80(sp)
label43:
	ld s0, 80(sp)
	mv a0, s0
	ld s4, 176(sp)
	ld s3, 152(sp)
	ld s2, 136(sp)
	ld s6, 224(sp)
	ld s1, 120(sp)
	ld s5, 200(sp)
	ld s0, 104(sp)
	ld ra, 0(sp)
	addi sp, sp, 304
	jr ra
label6:
	ld s0, 96(sp)
	addiw s1, s0, -1
	mv a0, s1
	ld t1, 160(sp)
	mv a1, t1
	ld t2, 184(sp)
	mv a2, t2
	ld t3, 192(sp)
	mv a3, t3
	jal hanoi
	li t4, 10000
	ld t5, 160(sp)
	mulw t6, t5, t4
	ld s2, 184(sp)
	addw s3, s2, t6
	mv a0, s3
	jal write
	ld s4, 216(sp)
	mv s5, s4
	ld s6, 72(sp)
	sd s5, 248(sp)
	sd s1, 240(sp)
	bne s6, zero, label45
	mv s0, zero
	sd s0, 248(sp)
	li s0, 1
	ld s1, 240(sp)
	xor t1, s1, s0
	sltiu t2, t1, 1
	xori t3, t2, 1
	bne t3, zero, label30
label83:
	ld s0, 192(sp)
	mv s1, s0
	ld t1, 248(sp)
	mv t2, t1
	li t3, 1
	sd t3, 112(sp)
	sd t2, 128(sp)
	sd s1, 144(sp)
	j label2
label45:
	li s0, 1
	ld s1, 240(sp)
	xor t1, s1, s0
	sltiu t2, t1, 1
	xori t3, t2, 1
	bne t3, zero, label30
	j label83
label30:
	ld s0, 240(sp)
	mv s1, s0
	ld t1, 160(sp)
	mv t2, t1
	ld t3, 192(sp)
	mv t1, t3
	mv t3, t2
	ld t4, 248(sp)
	mv t5, t4
	li t6, 1
	sd t6, 72(sp)
	sd t5, 216(sp)
	sd t3, 192(sp)
	sd t1, 160(sp)
	sd s1, 96(sp)
	j label6
.globl main
main:
	addi sp, sp, -8
	sd ra, 0(sp)
	li a0, 3
	li a1, 1
	li a2, 2
	li a3, 3
	jal hanoi
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 8
	jr ra
