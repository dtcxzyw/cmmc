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
.globl main
main:
	addi sp, sp, -184
	sd ra, 0(sp)
	sd s0, 88(sp)
	sd s1, 80(sp)
	jal read
	mv s0, a0
	li s1, 1
	slt t1, s1, s0
	xori t2, t1, 1
	sd s0, 144(sp)
	bne t2, zero, label14
	li s0, 1
	ld s1, 144(sp)
	xor t1, s1, s0
	sltiu t2, t1, 1
	xori t3, t2, 1
	bne t3, zero, label18
	j label17
label14:
	li s0, 1
	sd s0, 128(sp)
	j label9
label17:
	ld s0, 144(sp)
	mv s1, s0
	li t1, 1
	sd t1, 64(sp)
	sd s1, 72(sp)
	ld s0, 72(sp)
	ld s1, 64(sp)
	mulw t1, s0, s1
	mv t2, t1
	sd t2, 128(sp)
	j label9
label18:
	ld s0, 144(sp)
	mv s1, s0
	li t1, 1
	sd t1, 48(sp)
	sd s1, 56(sp)
label6:
	ld s0, 56(sp)
	addiw s1, s0, -1
	ld t1, 48(sp)
	mulw t2, s0, t1
	li t3, 1
	xor t4, s1, t3
	sltiu t5, t4, 1
	xori t6, t5, 1
	sd t2, 176(sp)
	sd s1, 160(sp)
	bne t6, zero, label25
	ld s0, 160(sp)
	mv s1, s0
	ld t1, 176(sp)
	mv t2, t1
	sd t2, 64(sp)
	sd s1, 72(sp)
	ld s0, 72(sp)
	ld s1, 64(sp)
	mulw t1, s0, s1
	mv t2, t1
	sd t2, 128(sp)
	j label9
label25:
	ld s0, 160(sp)
	mv s1, s0
	ld t1, 176(sp)
	mv t2, t1
	sd t2, 48(sp)
	sd s1, 56(sp)
	j label6
label9:
	ld s0, 128(sp)
	mv a0, s0
	jal write
	mv a0, zero
	ld s1, 80(sp)
	ld s0, 88(sp)
	ld ra, 0(sp)
	addi sp, sp, 184
	jr ra
