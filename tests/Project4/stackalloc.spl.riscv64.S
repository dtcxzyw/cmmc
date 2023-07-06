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
	addi sp, sp, -408
	addi a1, sp, 0
	sd ra, 400(sp)
	jal read
	mv a2, a0
	ble a0, zero, label23
	mv a3, zero
	jal read
	sh2add a4, a3, a1
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	sw a0, 0(a4)
	addiw a3, a3, 1
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw a0, 0(a4)
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw a0, 0(a4)
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw a0, 0(a4)
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw a0, 0(a4)
	ble a2, a3, label31
	jal read
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw a0, 0(a4)
	ble a2, a3, label31
	j label185
label23:
	li a3, 1
	ble a2, a3, label14
	sh2add a0, a3, a1
	lw a4, 0(a0)
	addiw a0, a3, -1
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
label188:
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	j label191
label43:
	mv a5, zero
	addiw a0, a0, 1
	addiw a3, a3, 1
	sh2add a0, a0, a1
	sw a4, 0(a0)
	ble a2, a3, label14
	sh2add a0, a3, a1
	lw a4, 0(a0)
	addiw a0, a3, -1
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
label194:
	addiw a5, a0, 1
	sh2add t0, a0, a1
	sh2add a5, a5, a1
	addiw a0, a0, -1
	lw t0, 0(t0)
	sw t0, 0(a5)
	blt a0, zero, label43
	j label188
label14:
	ble a2, zero, label17
	sh2add a0, zero, a1
	mv a3, zero
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	j label195
label191:
	addiw a5, a0, 1
	sh2add t0, a0, a1
	sh2add a5, a5, a1
	addiw a0, a0, -1
	lw t0, 0(t0)
	sw t0, 0(a5)
	blt a0, zero, label43
	j label188
label13:
	addiw a0, a0, 1
	addiw a3, a3, 1
	sh2add a0, a0, a1
	sw a4, 0(a0)
	ble a2, a3, label14
	sh2add a0, a3, a1
	lw a4, 0(a0)
	addiw a0, a3, -1
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	j label194
label31:
	li a3, 1
	ble a2, a3, label14
	sh2add a0, a3, a1
	lw a4, 0(a0)
	addiw a0, a3, -1
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	addiw a5, a0, 1
	sh2add t0, a0, a1
	sh2add a5, a5, a1
	addiw a0, a0, -1
	lw t0, 0(t0)
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	sh2add a5, a0, a1
	lw a5, 0(a5)
	slt a5, a4, a5
	beq a5, zero, label13
	sh2add t0, a0, a1
	addiw a5, a0, 1
	lw t0, 0(t0)
	addiw a0, a0, -1
	sh2add a5, a5, a1
	sw t0, 0(a5)
	blt a0, zero, label43
	j label188
label185:
	jal read
	sh2add a4, a3, a1
	addiw a3, a3, 1
	sw a0, 0(a4)
	ble a2, a3, label31
	j label185
label195:
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
label196:
	sh2add a0, a3, a1
	lw a0, 0(a0)
	jal write
	addiw a3, a3, 1
	ble a2, a3, label17
	j label196
label17:
	mv a0, zero
	ld ra, 400(sp)
	addi sp, sp, 408
	ret
