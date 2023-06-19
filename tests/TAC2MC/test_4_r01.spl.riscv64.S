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
	addi sp, sp, -128
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s1, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd ra, 72(sp)
	mv t1, a0
	mv t2, a1
	mv t3, a2
	mv t4, a3
	li t5, 1
	sd a3, 112(sp)
	sd a2, 104(sp)
	sd a1, 96(sp)
	sd a0, 88(sp)
	bne a0, t5, label14
	mv t1, a1
	sd a1, 120(sp)
	j label2
label14:
	ld t1, 88(sp)
	mv t2, t1
	ld t3, 96(sp)
	mv t4, t3
	ld t5, 104(sp)
	mv t6, t5
	sd t5, 0(sp)
	sd t3, 8(sp)
	sd t1, 80(sp)
	j label4
label2:
	li t1, 10000
	ld t2, 120(sp)
	mulw t3, t2, t1
	ld t4, 112(sp)
	addw t5, t4, t3
	mv a0, t5
	jal write
	mv a0, zero
	ld ra, 72(sp)
	ld s4, 64(sp)
	ld s3, 56(sp)
	ld s2, 48(sp)
	ld s1, 40(sp)
	ld s5, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 128
	ret
label4:
	ld t1, 80(sp)
	addiw t2, t1, -1
	mv a0, t2
	ld t3, 8(sp)
	mv a1, t3
	ld t4, 112(sp)
	mv a2, t4
	ld t5, 0(sp)
	mv a3, t5
	sd t2, 16(sp)
	jal hanoi
	li t6, 10000
	ld s0, 8(sp)
	mulw s1, s0, t6
	ld s2, 112(sp)
	addw s3, s2, s1
	mv a0, s3
	jal write
	li s4, 1
	ld s5, 16(sp)
	bne s5, s4, label24
	ld t1, 0(sp)
	mv t2, t1
	sd t1, 120(sp)
	j label2
label24:
	ld t1, 16(sp)
	mv t2, t1
	ld t3, 8(sp)
	mv t4, t3
	ld t5, 0(sp)
	mv t3, t5
	mv t5, t4
	sd t4, 0(sp)
	sd t3, 8(sp)
	sd t1, 80(sp)
	j label4
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
