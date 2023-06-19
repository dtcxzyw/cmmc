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
	sd s0, 424(sp)
	sd s1, 496(sp)
	sd s2, 440(sp)
	sd ra, 456(sp)
	addi t1, sp, 0
	jal read
	mv t2, a0
	sd a0, 504(sp)
	sd t1, 432(sp)
	ble a0, zero, label23
	mv t1, zero
	sd zero, 408(sp)
	slli t2, zero, 2
	ld t3, 432(sp)
	add t4, t3, t2
	jal read
	sw a0, 0(t4)
	addiw t5, t1, 1
	ld t6, 504(sp)
	sd t5, 472(sp)
	bge t5, t6, label31
	j label30
label23:
	li t1, 1
	sd t1, 448(sp)
	ld t2, 504(sp)
	bge t1, t2, label14
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	addiw t6, t1, -1
	mv s0, t6
	sd t6, 488(sp)
	sd t5, 464(sp)
	mv t1, t6
	blt t6, zero, label43
	j label42
label43:
	mv t1, zero
	sd zero, 480(sp)
label13:
	ld t1, 488(sp)
	addiw t2, t1, 1
	slli t3, t2, 2
	ld t4, 432(sp)
	add t5, t4, t3
	ld t6, 464(sp)
	sw t6, 0(t5)
	ld s0, 448(sp)
	addiw s1, s0, 1
	mv s0, s1
	sd s1, 448(sp)
	mv t1, s1
	ld t2, 504(sp)
	bge s1, t2, label14
	j label34
label30:
	ld t1, 472(sp)
	mv t2, t1
	sd t1, 408(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	jal read
	sw a0, 0(t4)
	addiw t5, t1, 1
	ld t6, 504(sp)
	sd t5, 472(sp)
	bge t5, t6, label31
	j label30
label31:
	li t1, 1
	sd t1, 448(sp)
	ld t2, 504(sp)
	bge t1, t2, label14
label34:
	ld t1, 448(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	addiw t6, t1, -1
	mv s0, t6
	sd t6, 488(sp)
	sd t5, 464(sp)
	mv t1, t6
	blt t6, zero, label43
	j label42
label117:
	mv t1, zero
	sd zero, 416(sp)
	j label15
label42:
	ld t1, 488(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	ld t6, 464(sp)
	slt s0, t6, t5
	mv s1, s0
	sd s0, 480(sp)
	mv t1, s0
	beq s0, zero, label13
	j label12
label14:
	ld t1, 504(sp)
	ble t1, zero, label17
	j label117
label15:
	ld t1, 416(sp)
	slli t2, t1, 2
	ld t3, 432(sp)
	add t4, t3, t2
	lw t5, 0(t4)
	mv a0, t5
	jal write
	addiw t6, t1, 1
	ld s0, 504(sp)
	sd t6, 400(sp)
	bge t6, s0, label17
	mv t1, t6
	mv t2, t6
	sd t6, 416(sp)
	j label15
label12:
	ld t1, 488(sp)
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
	sd s2, 488(sp)
	blt s2, zero, label43
	j label42
label17:
	mv a0, zero
	ld ra, 456(sp)
	ld s2, 440(sp)
	ld s1, 496(sp)
	ld s0, 424(sp)
	addi sp, sp, 512
	ret
