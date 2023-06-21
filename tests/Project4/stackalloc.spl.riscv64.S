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
	addi sp, sp, -488
	sd ra, 480(sp)
	addi a0, sp, 8
	sd a0, 472(sp)
	jal read
	mv a1, a0
	sd a0, 456(sp)
	ble a0, zero, label23
	mv a0, zero
	sd zero, 464(sp)
	j label2
label23:
	li a0, 1
	sd a0, 408(sp)
	ld a1, 456(sp)
	bge a0, a1, label14
	slli a1, a0, 2
	ld a2, 472(sp)
	add a3, a2, a1
	lw a4, 0(a3)
	addiw a5, a0, -1
	mv t1, a5
	sd a5, 424(sp)
	sd a4, 448(sp)
	mv a0, a5
	blt a5, zero, label43
	j label42
label2:
	ld a0, 464(sp)
	slli a1, a0, 2
	ld a2, 472(sp)
	add a3, a2, a1
	jal read
	mv a4, a0
	sw a0, 0(a3)
	ld a5, 464(sp)
	addiw t1, a5, 1
	ld t2, 456(sp)
	sd t1, 432(sp)
	bge t1, t2, label31
	mv a0, t1
	mv a1, t1
	sd t1, 464(sp)
	j label2
label31:
	li a0, 1
	sd a0, 408(sp)
	ld a1, 456(sp)
	bge a0, a1, label14
	j label34
label113:
	mv a0, zero
	sd zero, 416(sp)
	j label15
label14:
	ld a0, 456(sp)
	ble a0, zero, label17
	j label113
label34:
	ld a0, 408(sp)
	slli a1, a0, 2
	ld a2, 472(sp)
	add a3, a2, a1
	lw a4, 0(a3)
	addiw a5, a0, -1
	mv t1, a5
	sd a5, 424(sp)
	sd a4, 448(sp)
	mv a0, a5
	blt a5, zero, label43
	j label42
label43:
	mv a0, zero
	sd zero, 440(sp)
label13:
	ld a0, 424(sp)
	addiw a1, a0, 1
	slli a2, a1, 2
	ld a3, 472(sp)
	add a4, a3, a2
	ld a5, 448(sp)
	sw a5, 0(a4)
	ld t1, 408(sp)
	addiw t2, t1, 1
	mv t1, t2
	sd t2, 408(sp)
	mv a0, t2
	ld a1, 456(sp)
	bge t2, a1, label14
	j label34
label42:
	ld a0, 424(sp)
	slli a1, a0, 2
	ld a2, 472(sp)
	add a3, a2, a1
	lw a4, 0(a3)
	ld a5, 448(sp)
	slt t1, a5, a4
	mv t2, t1
	sd t1, 440(sp)
	mv a0, t1
	beq t1, zero, label13
	ld a0, 424(sp)
	addiw a1, a0, 1
	slli a2, a1, 2
	ld a3, 472(sp)
	add a4, a3, a2
	slli a5, a0, 2
	add t1, a3, a5
	lw t2, 0(t1)
	sw t2, 0(a4)
	addiw t3, a0, -1
	mv a0, t3
	sd t3, 424(sp)
	blt t3, zero, label43
	j label42
label15:
	ld a0, 416(sp)
	slli a1, a0, 2
	ld a2, 472(sp)
	add a3, a2, a1
	lw a4, 0(a3)
	mv a0, a4
	jal write
	ld a5, 416(sp)
	addiw t1, a5, 1
	ld t2, 456(sp)
	sd t1, 0(sp)
	bge t1, t2, label17
	mv a0, t1
	mv a1, t1
	sd t1, 416(sp)
	j label15
label17:
	mv a0, zero
	ld ra, 480(sp)
	addi sp, sp, 488
	ret
