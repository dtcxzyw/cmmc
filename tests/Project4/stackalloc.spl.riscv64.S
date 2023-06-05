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
	addi sp, sp, -512
	sd ra, 0(sp)
	sd s0, 440(sp)
	sd s1, 424(sp)
	sd s2, 408(sp)
	addi t1, sp, 8
	jal read
	mv t2, a0
	sd a0, 448(sp)
	sd t1, 432(sp)
	ble a0, zero, label23
	mv t1, zero
	sd t1, 456(sp)
	j label2
label23:
	li t1, 1
	sd t1, 464(sp)
	ld t1, 464(sp)
	ld t2, 448(sp)
	bge t1, t2, label14
	ld t1, 464(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	addiw t6, t1, -1
	mv s0, t6
	sd t6, 496(sp)
	sd t5, 488(sp)
	li t1, -1
	ld t2, 496(sp)
	slt t3, t1, t2
	xori t4, t3, 1
	bne t4, zero, label43
	j label42
label34:
	ld t1, 464(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	addiw t6, t1, -1
	mv s0, t6
	sd t6, 496(sp)
	sd t5, 488(sp)
	li t1, -1
	ld t2, 496(sp)
	slt t3, t1, t2
	xori t4, t3, 1
	bne t4, zero, label43
	j label42
label43:
	mv t1, zero
	sd t1, 472(sp)
	ld t1, 472(sp)
	beq t1, zero, label12
	j label11
label12:
	ld t1, 496(sp)
	addiw t2, t1, 1
	slli t3, t2, 2
	ld t4, 432(sp)
	add t5, t4, t3
	ld t6, 488(sp)
	sw t6, 0(t5)
	ld s0, 464(sp)
	addiw s1, s0, 1
	mv s0, s1
	sd s1, 464(sp)
	ld t1, 464(sp)
	ld t2, 448(sp)
	bge t1, t2, label14
	j label34
label42:
	ld t1, 496(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	ld t6, 488(sp)
	slt s0, t6, t5
	mv s1, s0
	sd s0, 472(sp)
	ld t1, 472(sp)
	beq t1, zero, label12
label11:
	ld t1, 496(sp)
	addiw t2, t1, 1
	slli t3, t2, 2
	ld t4, 432(sp)
	add t5, t4, t3
	slli t6, t1, 2
	add s0, t4, t6
	lw s1, 0(s0)
	sw s1, 0(t5)
	addiw s2, t1, -1
	mv t1, s2
	sd s2, 496(sp)
	li t1, -1
	ld t2, 496(sp)
	slt t3, t1, t2
	xori t4, t3, 1
	bne t4, zero, label43
	j label42
label2:
	ld t1, 456(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	jal read
	mv t5, a0
	sw a0, 0(t4)
	addiw t6, t1, 1
	ld s0, 448(sp)
	sd t6, 504(sp)
	bge t6, s0, label31
	ld t1, 504(sp)
	mv t2, t1
	sd t1, 456(sp)
	j label2
label31:
	li t1, 1
	sd t1, 464(sp)
	ld t1, 464(sp)
	ld t2, 448(sp)
	bge t1, t2, label14
	j label34
label122:
	mv t1, zero
	sd t1, 416(sp)
	j label15
label14:
	ld t1, 448(sp)
	ble t1, zero, label17
	j label122
label15:
	ld t1, 416(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	mv a0, t5
	jal write
	addiw t6, t1, 1
	ld s0, 448(sp)
	sd t6, 480(sp)
	bge t6, s0, label17
	ld t1, 480(sp)
	mv t2, t1
	sd t1, 416(sp)
	j label15
label17:
	mv a0, zero
	ld s2, 408(sp)
	ld s1, 424(sp)
	ld s0, 440(sp)
	ld ra, 0(sp)
	addi sp, sp, 512
	jr ra
