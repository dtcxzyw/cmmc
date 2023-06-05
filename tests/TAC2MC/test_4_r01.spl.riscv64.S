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
	addi sp, sp, -184
	sd ra, 0(sp)
	sd s0, 160(sp)
	sd s5, 48(sp)
	sd s1, 144(sp)
	sd s6, 104(sp)
	sd s2, 128(sp)
	sd s3, 96(sp)
	sd s4, 72(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	li t5, 1
	xor t6, a0, t5
	sltiu s0, t6, 1
	xori s1, s0, 1
	sd a3, 64(sp)
	sd a2, 40(sp)
	sd a1, 112(sp)
	sd a0, 80(sp)
	bne s1, zero, label18
	mv t1, a1
	mv t2, a1
	mv t3, zero
	mv t4, zero
	sd t4, 152(sp)
	sd t3, 136(sp)
	sd a1, 120(sp)
	j label2
label18:
	ld t1, 80(sp)
	mv t2, t1
	ld t3, 112(sp)
	mv t4, t3
	ld t5, 40(sp)
	mv t6, t5
	mv s0, zero
	mv s1, zero
	sd s1, 176(sp)
	sd s0, 32(sp)
	sd t5, 56(sp)
	sd t3, 88(sp)
	sd t1, 24(sp)
	j label6
label2:
	li t1, 10000
	ld t2, 120(sp)
	mulw t3, t2, t1
	ld t4, 64(sp)
	addw t5, t4, t3
	mv a0, t5
	jal write
	ld t6, 136(sp)
	mv s0, t6
	ld s1, 152(sp)
	sd t6, 168(sp)
	bne s1, zero, label43
	mv t1, zero
	sd t1, 168(sp)
label43:
	ld t1, 168(sp)
	mv a0, t1
	ld s4, 72(sp)
	ld s3, 96(sp)
	ld s2, 128(sp)
	ld s6, 104(sp)
	ld s1, 144(sp)
	ld s5, 48(sp)
	ld s0, 160(sp)
	ld ra, 0(sp)
	addi sp, sp, 184
	ret
label6:
	ld t1, 24(sp)
	addiw t2, t1, -1
	mv a0, t2
	ld t3, 88(sp)
	mv a1, t3
	ld t4, 64(sp)
	mv a2, t4
	ld t5, 56(sp)
	mv a3, t5
	sd t2, 16(sp)
	jal hanoi
	li t6, 10000
	ld s0, 88(sp)
	mulw s1, s0, t6
	ld s2, 64(sp)
	addw s3, s2, s1
	mv a0, s3
	jal write
	ld s4, 32(sp)
	mv s5, s4
	ld s6, 176(sp)
	sd s4, 8(sp)
	bne s6, zero, label45
	mv t1, zero
	sd t1, 8(sp)
label45:
	li t1, 1
	ld t2, 16(sp)
	xor t3, t2, t1
	sltiu t4, t3, 1
	xori t5, t4, 1
	bne t5, zero, label30
	ld t1, 56(sp)
	mv t2, t1
	ld t3, 8(sp)
	mv t4, t3
	li t5, 1
	sd t5, 152(sp)
	sd t3, 136(sp)
	sd t1, 120(sp)
	j label2
label30:
	ld t1, 16(sp)
	mv t2, t1
	ld t3, 88(sp)
	mv t4, t3
	ld t5, 56(sp)
	mv t3, t5
	mv t5, t4
	ld t6, 8(sp)
	mv s0, t6
	li s1, 1
	sd s1, 176(sp)
	sd t6, 32(sp)
	sd t4, 56(sp)
	sd t3, 88(sp)
	sd t1, 24(sp)
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
	ret
