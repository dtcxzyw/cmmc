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
	addi sp, sp, -72
	sd ra, 0(sp)
	jal read
	mv t1, a0
	slti t2, a0, 2
	sd a0, 64(sp)
	bne t2, zero, label14
	xori t2, a0, 1
	sltu t3, zero, t2
	bne t3, zero, label18
	j label43
label14:
	li t1, 1
	sd t1, 56(sp)
label9:
	ld t1, 56(sp)
	mv a0, t1
	jal write
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 72
	ret
label43:
	ld t1, 64(sp)
	mv t2, t1
	li t3, 1
	sd t3, 40(sp)
	sd t1, 48(sp)
	mv t2, t3
	mulw t3, t1, t3
	mv t4, t3
	sd t3, 56(sp)
	j label9
label18:
	ld t1, 64(sp)
	mv t2, t1
	li t3, 1
	sd t3, 24(sp)
	sd t1, 32(sp)
	addiw t2, t1, -1
	mulw t4, t1, t3
	xori t5, t2, 1
	sltu t6, zero, t5
	sd t4, 8(sp)
	sd t2, 16(sp)
	bne t6, zero, label25
label24:
	ld t1, 16(sp)
	mv t2, t1
	ld t3, 8(sp)
	mv t4, t3
	sd t3, 40(sp)
	sd t1, 48(sp)
	mv t2, t3
	mulw t3, t1, t3
	mv t4, t3
	sd t3, 56(sp)
	j label9
label25:
	ld t1, 16(sp)
	mv t2, t1
	ld t3, 8(sp)
	mv t4, t3
	sd t3, 24(sp)
	sd t1, 32(sp)
	addiw t2, t1, -1
	mulw t4, t1, t3
	xori t5, t2, 1
	sltu t6, zero, t5
	sd t4, 8(sp)
	sd t2, 16(sp)
	bne t6, zero, label25
	j label24
