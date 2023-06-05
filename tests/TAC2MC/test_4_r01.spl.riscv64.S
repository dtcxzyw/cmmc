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
	sd s0, 40(sp)
	sd s5, 96(sp)
	sd s1, 32(sp)
	sd s6, 72(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	li t5, 1
	sd a3, 160(sp)
	sd a2, 168(sp)
	sd a1, 80(sp)
	sd a0, 104(sp)
	bne a0, t5, label18
	mv t1, a1
	mv t3, zero
	mv t4, zero
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd a1, 144(sp)
	j label2
label18:
	ld t1, 104(sp)
	mv t2, t1
	ld t3, 80(sp)
	mv t4, t3
	ld t5, 168(sp)
	mv t6, t5
	mv s0, zero
	mv s1, zero
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd t5, 112(sp)
	sd t3, 152(sp)
	sd t1, 120(sp)
	j label6
label2:
	li t1, 10000
	ld t2, 144(sp)
	mulw t3, t2, t1
	ld t4, 160(sp)
	addw t5, t4, t3
	mv a0, t5
	jal write
	ld t6, 136(sp)
	mv s0, t6
	ld s1, 128(sp)
	sd t6, 176(sp)
	bne s1, zero, label41
	mv t1, zero
	sd zero, 176(sp)
label41:
	ld t1, 176(sp)
	mv a0, t1
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s6, 72(sp)
	ld s1, 32(sp)
	ld s5, 96(sp)
	ld s0, 40(sp)
	ld ra, 0(sp)
	addi sp, sp, 184
	ret
label6:
	ld t1, 120(sp)
	addiw t2, t1, -1
	mv a0, t2
	ld t3, 152(sp)
	mv a1, t3
	ld t4, 160(sp)
	mv a2, t4
	ld t5, 112(sp)
	mv a3, t5
	sd t2, 64(sp)
	jal hanoi
	li t6, 10000
	ld s0, 152(sp)
	mulw s1, s0, t6
	ld s2, 160(sp)
	addw s3, s2, s1
	mv a0, s3
	jal write
	ld s4, 56(sp)
	mv s5, s4
	ld s6, 48(sp)
	sd s4, 88(sp)
	bne s6, zero, label43
	mv t1, zero
	sd zero, 88(sp)
label43:
	li t1, 1
	ld t2, 64(sp)
	bne t2, t1, label30
	ld t1, 112(sp)
	mv t2, t1
	ld t3, 88(sp)
	mv t4, t3
	li t5, 1
	sd t5, 128(sp)
	sd t3, 136(sp)
	sd t1, 144(sp)
	j label2
label30:
	ld t1, 64(sp)
	mv t2, t1
	ld t3, 152(sp)
	mv t4, t3
	ld t5, 112(sp)
	mv t3, t5
	mv t5, t4
	ld t6, 88(sp)
	mv s0, t6
	li s1, 1
	sd s1, 48(sp)
	sd t6, 56(sp)
	sd t4, 112(sp)
	sd t3, 152(sp)
	sd t1, 120(sp)
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
