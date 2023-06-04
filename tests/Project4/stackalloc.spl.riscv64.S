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
	addi sp, sp, -728
	sd ra, 0(sp)
	sd s0, 248(sp)
	sd s1, 264(sp)
	sd s2, 280(sp)
	addi s0, sp, 296
	jal read
	mv s1, a0
	sd s1, 256(sp)
	sd s0, 272(sp)
	ble s1, zero, label23
	mv s0, zero
	sd s0, 232(sp)
	j label2
label23:
	li s0, 1
	sd s0, 216(sp)
	ld s0, 216(sp)
	ld s1, 256(sp)
	bge s0, s1, label14
	ld s0, 216(sp)
	slli s1, s0, 2
	ld t1, 272(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	addiw t4, s0, -1
	mv t5, t4
	sd t5, 136(sp)
	sd t3, 168(sp)
	li s0, -1
	ld s1, 136(sp)
	slt t1, s0, s1
	xori t2, t1, 1
	bne t2, zero, label43
	j label42
label2:
	ld s0, 232(sp)
	slli s1, s0, 2
	ld t1, 272(sp)
	add t2, t1, s1
	jal read
	mv t3, a0
	sw t3, 0(t2)
	addiw t4, s0, 1
	ld t5, 256(sp)
	sd t4, 152(sp)
	bge t4, t5, label31
	ld s0, 152(sp)
	mv s1, s0
	sd s1, 232(sp)
	j label2
label31:
	li s0, 1
	sd s0, 216(sp)
	ld s0, 216(sp)
	ld s1, 256(sp)
	bge s0, s1, label14
	ld s0, 216(sp)
	slli s1, s0, 2
	ld t1, 272(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	addiw t4, s0, -1
	mv t5, t4
	sd t5, 136(sp)
	sd t3, 168(sp)
	li s0, -1
	ld s1, 136(sp)
	slt t1, s0, s1
	xori t2, t1, 1
	bne t2, zero, label43
label42:
	ld s0, 136(sp)
	slli s1, s0, 2
	ld t1, 272(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	ld t4, 168(sp)
	slt t5, t4, t3
	mv t6, t5
	sd t6, 200(sp)
	ld s0, 200(sp)
	beq s0, zero, label12
label11:
	ld s0, 136(sp)
	addiw s1, s0, 1
	slli t1, s1, 2
	ld t2, 272(sp)
	add t3, t2, t1
	slli t4, s0, 2
	add t5, t2, t4
	lw t6, 0(t5)
	sw t6, 0(t3)
	addiw s2, s0, -1
	mv s0, s2
	sd s0, 136(sp)
	li s0, -1
	ld s1, 136(sp)
	slt t1, s0, s1
	xori t2, t1, 1
	bne t2, zero, label43
	j label42
label43:
	mv s0, zero
	sd s0, 200(sp)
	ld s0, 200(sp)
	beq s0, zero, label12
	j label11
label34:
	ld s0, 216(sp)
	slli s1, s0, 2
	ld t1, 272(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	addiw t4, s0, -1
	mv t5, t4
	sd t5, 136(sp)
	sd t3, 168(sp)
	li s0, -1
	ld s1, 136(sp)
	slt t1, s0, s1
	xori t2, t1, 1
	bne t2, zero, label43
	j label42
label12:
	ld s0, 136(sp)
	addiw s1, s0, 1
	slli t1, s1, 2
	ld t2, 272(sp)
	add t3, t2, t1
	ld t4, 168(sp)
	sw t4, 0(t3)
	ld t5, 216(sp)
	addiw t6, t5, 1
	mv t5, t6
	sd t5, 216(sp)
	ld s0, 216(sp)
	ld s1, 256(sp)
	bge s0, s1, label14
	j label34
label123:
	mv s0, zero
	sd s0, 120(sp)
	j label15
label14:
	ld s0, 256(sp)
	ble s0, zero, label64
	j label123
label15:
	ld s0, 120(sp)
	slli s1, s0, 2
	ld t1, 272(sp)
	add t2, t1, s1
	lw t3, 0(t2)
	mv a0, t3
	jal write
	addiw t4, s0, 1
	ld t5, 256(sp)
	sd t4, 184(sp)
	bge t4, t5, label64
	ld s0, 184(sp)
	mv s1, s0
	sd s1, 120(sp)
	j label15
label64:
	mv a0, zero
	ld s2, 280(sp)
	ld s1, 264(sp)
	ld s0, 248(sp)
	ld ra, 0(sp)
	addi sp, sp, 728
	jr ra
