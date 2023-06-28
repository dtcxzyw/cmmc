.data
_prompt: .asciz "Enter an integer:"
_ret: .asciz "\n"
.section .rodata
.bss
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
	sd ra, 400(sp)
	addi a4, sp, 0
	jal read
	mv a1, a0
	ble a0, zero, label23
	mv a2, zero
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	j label185
label23:
	li a2, 1
	bge a2, a1, label14
	slli a0, a2, 2
	add a0, a4, a0
	lw a5, 0(a0)
	addiw a0, a2, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
label188:
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	j label191
label43:
	mv a3, zero
	addiw a0, a0, 1
	slli a0, a0, 2
	add a0, a4, a0
	sw a5, 0(a0)
	addiw a2, a2, 1
	bge a2, a1, label14
	slli a0, a2, 2
	add a0, a4, a0
	lw a5, 0(a0)
	addiw a0, a2, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
label194:
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	j label188
label14:
	ble a1, zero, label17
	mv a2, zero
	slli a0, zero, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	j label195
label191:
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	j label188
label13:
	addiw a0, a0, 1
	slli a0, a0, 2
	add a0, a4, a0
	sw a5, 0(a0)
	addiw a2, a2, 1
	bge a2, a1, label14
	slli a0, a2, 2
	add a0, a4, a0
	lw a5, 0(a0)
	addiw a0, a2, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	j label194
label31:
	li a2, 1
	bge a2, a1, label14
	slli a0, a2, 2
	add a0, a4, a0
	lw a5, 0(a0)
	addiw a0, a2, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	slli a3, a0, 2
	add a3, a4, a3
	lw a3, 0(a3)
	slt a3, a5, a3
	beq a3, zero, label13
	addiw a3, a0, 1
	slli a3, a3, 2
	add a3, a4, a3
	slli t1, a0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	addiw a0, a0, -1
	blt a0, zero, label43
	j label188
label185:
	jal read
	slli a3, a2, 2
	add a3, a4, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a1, label31
	j label185
label195:
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
label196:
	slli a0, a2, 2
	add a0, a4, a0
	lw a0, 0(a0)
	jal write
	addiw a2, a2, 1
	bge a2, a1, label17
	j label196
label17:
	mv a0, zero
	ld ra, 400(sp)
	addi sp, sp, 408
	ret
