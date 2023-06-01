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
	addi sp, sp, -208
	sd ra, 0(sp)
	sd s0, 144(sp)
	sd s5, 104(sp)
	sd s1, 136(sp)
	sd s2, 128(sp)
	sd s3, 120(sp)
	sd s4, 112(sp)
	mv s0, a0
	mv s1, a1
	mv t1, a2
	mv t2, a3
	mv t3, t1
	mv t4, s1
	mv t5, s0
	sd t5, 80(sp)
	sd t4, 88(sp)
	sd t3, 96(sp)
	sd t2, 200(sp)
	li s0, 1
	ld s1, 80(sp)
	xor t1, s1, s0
	sltiu t2, t1, 1
	xori t3, t2, 1
	bne t3, zero, label7
label6:
	li s0, 10000
	ld s1, 88(sp)
	mulw t1, s1, s0
	ld t2, 200(sp)
	addw t3, t2, t1
	mv a0, t3
	jal write
	mv a0, zero
	ld s4, 112(sp)
	ld s3, 120(sp)
	ld s2, 128(sp)
	ld s1, 136(sp)
	ld s5, 104(sp)
	ld s0, 144(sp)
	ld ra, 0(sp)
	addi sp, sp, 208
	jr ra
label7:
	ld s0, 80(sp)
	addiw s1, s0, -1
	mv a0, s1
	ld t1, 88(sp)
	mv a1, t1
	ld t2, 200(sp)
	mv a2, t2
	ld t3, 96(sp)
	mv a3, t3
	jal hanoi
	li t4, 10000
	ld t5, 88(sp)
	mulw t6, t5, t4
	ld s2, 200(sp)
	addw s3, s2, t6
	mv a0, s3
	jal write
	ld s4, 96(sp)
	mv s5, s4
	mv s4, t5
	mv t5, s5
	mv s0, s1
	sd s0, 80(sp)
	sd t5, 88(sp)
	sd s4, 96(sp)
	li s0, 1
	ld s1, 80(sp)
	xor t1, s1, s0
	sltiu t2, t1, 1
	xori t3, t2, 1
	bne t3, zero, label7
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
