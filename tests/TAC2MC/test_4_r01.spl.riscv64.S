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
	sd s0, 24(sp)
	sd s5, 80(sp)
	sd s1, 16(sp)
	sd s6, 56(sp)
	sd s2, 8(sp)
	sd s3, 128(sp)
	sd s4, 104(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	xori t5, a0, 1
	sltu t6, zero, t5
	sd a3, 176(sp)
	sd a2, 64(sp)
	sd a1, 88(sp)
	sd a0, 112(sp)
	bne t6, zero, label18
	mv t1, a1
	mv t3, zero
	mv t4, zero
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd a1, 160(sp)
	j label2
label18:
	ld t1, 112(sp)
	mv t2, t1
	ld t3, 88(sp)
	mv t4, t3
	ld t5, 64(sp)
	mv t6, t5
	mv s0, zero
	mv s1, zero
	sd zero, 48(sp)
	sd zero, 32(sp)
	sd t5, 40(sp)
	sd t3, 168(sp)
	sd t1, 136(sp)
	j label6
label2:
	li t1, 10000
	ld t2, 160(sp)
	mulw t3, t2, t1
	ld t4, 176(sp)
	addw t5, t4, t3
	mv a0, t5
	jal write
	ld t6, 152(sp)
	mv s0, t6
	ld s1, 144(sp)
	sd t6, 72(sp)
	bne s1, zero, label39
	mv t1, zero
	sd zero, 72(sp)
label39:
	ld t1, 72(sp)
	mv a0, t1
	ld s4, 104(sp)
	ld s3, 128(sp)
	ld s2, 8(sp)
	ld s6, 56(sp)
	ld s1, 16(sp)
	ld s5, 80(sp)
	ld s0, 24(sp)
	ld ra, 0(sp)
	addi sp, sp, 184
	ret
label6:
	ld t1, 136(sp)
	addiw t2, t1, -1
	mv a0, t2
	ld t3, 168(sp)
	mv a1, t3
	ld t4, 176(sp)
	mv a2, t4
	ld t5, 40(sp)
	mv a3, t5
	sd t2, 96(sp)
	jal hanoi
	li t6, 10000
	ld s0, 168(sp)
	mulw s1, s0, t6
	ld s2, 176(sp)
	addw s3, s2, s1
	mv a0, s3
	jal write
	ld s4, 32(sp)
	mv s5, s4
	ld s6, 48(sp)
	sd s4, 120(sp)
	bne s6, zero, label41
	mv t1, zero
	sd zero, 120(sp)
label41:
	ld t1, 96(sp)
	xori t2, t1, 1
	sltu t3, zero, t2
	bne t3, zero, label30
	ld t1, 40(sp)
	mv t2, t1
	ld t3, 120(sp)
	mv t4, t3
	li t5, 1
	sd t5, 144(sp)
	sd t3, 152(sp)
	sd t1, 160(sp)
	j label2
label30:
	ld t1, 96(sp)
	mv t2, t1
	ld t3, 168(sp)
	mv t4, t3
	ld t5, 40(sp)
	mv t3, t5
	mv t5, t4
	ld t6, 120(sp)
	mv s0, t6
	li s1, 1
	sd s1, 48(sp)
	sd t6, 32(sp)
	sd t4, 40(sp)
	sd t3, 168(sp)
	sd t1, 136(sp)
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
