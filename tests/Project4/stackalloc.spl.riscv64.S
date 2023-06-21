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
	add a1, a2, a1
	lw a1, 0(a1)
	addiw a3, a0, -1
	sd a3, 424(sp)
	sd a1, 448(sp)
	mv a0, a3
	blt a3, zero, label43
	slli a1, a3, 2
	ld a2, 472(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	ld a3, 448(sp)
	slt a1, a3, a1
	sd a1, 440(sp)
	mv a0, a1
	beq a1, zero, label13
	j label12
label43:
	mv a0, zero
	sd zero, 440(sp)
label13:
	ld a0, 424(sp)
	addiw a0, a0, 1
	slli a0, a0, 2
	ld a1, 472(sp)
	add a0, a1, a0
	ld a2, 448(sp)
	sw a2, 0(a0)
	ld a0, 408(sp)
	addiw a2, a0, 1
	mv a0, a2
	sd a2, 408(sp)
	ld a1, 456(sp)
	bge a2, a1, label14
	slli a1, a2, 2
	ld a2, 472(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	addiw a3, a0, -1
	sd a3, 424(sp)
	sd a1, 448(sp)
	mv a0, a3
	blt a3, zero, label43
	slli a1, a3, 2
	ld a2, 472(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	ld a3, 448(sp)
	slt a1, a3, a1
	sd a1, 440(sp)
	mv a0, a1
	beq a1, zero, label13
label12:
	ld a0, 424(sp)
	addiw a1, a0, 1
	slli a1, a1, 2
	ld a2, 472(sp)
	add a1, a2, a1
	slli a3, a0, 2
	add a3, a2, a3
	lw a3, 0(a3)
	sw a3, 0(a1)
	addiw a1, a0, -1
	mv a0, a1
	sd a1, 424(sp)
	blt a1, zero, label43
	slli a1, a1, 2
	ld a2, 472(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	ld a3, 448(sp)
	slt a1, a3, a1
	sd a1, 440(sp)
	mv a0, a1
	beq a1, zero, label13
	j label12
label2:
	ld a0, 464(sp)
	slli a1, a0, 2
	ld a2, 472(sp)
	add a1, a2, a1
	jal read
	mv a3, a0
	sw a0, 0(a1)
	ld a1, 464(sp)
	addiw a3, a1, 1
	ld a4, 456(sp)
	sd a3, 432(sp)
	bge a3, a4, label31
	mv a0, a3
	sd a3, 464(sp)
	j label2
label31:
	li a0, 1
	sd a0, 408(sp)
	ld a1, 456(sp)
	bge a0, a1, label14
	slli a1, a0, 2
	ld a2, 472(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	addiw a3, a0, -1
	sd a3, 424(sp)
	sd a1, 448(sp)
	mv a0, a3
	blt a3, zero, label43
	slli a1, a3, 2
	ld a2, 472(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	ld a3, 448(sp)
	slt a1, a3, a1
	sd a1, 440(sp)
	mv a0, a1
	beq a1, zero, label13
	j label12
label113:
	mv a0, zero
	sd zero, 416(sp)
	j label15
label14:
	ld a0, 456(sp)
	ble a0, zero, label17
	j label113
label15:
	ld a0, 416(sp)
	slli a1, a0, 2
	ld a2, 472(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	mv a0, a1
	jal write
	ld a1, 416(sp)
	addiw a3, a1, 1
	ld a4, 456(sp)
	sd a3, 0(sp)
	bge a3, a4, label17
	mv a0, a3
	sd a3, 416(sp)
	j label15
label17:
	mv a0, zero
	ld ra, 480(sp)
	addi sp, sp, 488
	ret
