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
merge:
	addi sp, sp, -112
	sd s0, 8(sp)
	sd ra, 24(sp)
	addiw a4, a2, 1
	sd a3, 88(sp)
	sd a2, 80(sp)
	sd a1, 72(sp)
	sd a0, 56(sp)
	bge a4, a3, label21
	addw a0, a2, a3
	li a1, 2
	divw a0, a0, a1
	ld a1, 56(sp)
	sd a0, 96(sp)
	mv a0, a1
	ld a4, 72(sp)
	mv a1, a4
	ld a5, 96(sp)
	mv a3, a5
	jal merge
	ld t1, 56(sp)
	mv a0, t1
	ld t2, 72(sp)
	mv a1, t2
	ld t3, 96(sp)
	mv a2, t3
	ld t4, 88(sp)
	mv a3, t4
	jal merge
	ld t5, 80(sp)
	mv t6, t5
	ld a6, 96(sp)
	mv a7, a6
	mv s0, t5
	sd a6, 32(sp)
	sd t5, 16(sp)
	sd t5, 104(sp)
	mv a0, t5
	ld a3, 88(sp)
	beq t5, a3, label37
	ld a2, 96(sp)
	beq t5, a2, label41
	mv a0, a6
	ld a3, 88(sp)
	xor a1, a6, a3
	sltu a1, zero, a1
	sd a1, 64(sp)
	mv a0, a1
	beq a1, zero, label16
	mv a0, t5
	slli a1, t5, 2
	ld a2, 56(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	mv a3, a6
	slli a4, a6, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bge a1, a4, label15
	j label14
label37:
	ld a2, 80(sp)
	mv a0, a2
	sd a2, 0(sp)
	ld a3, 88(sp)
	beq a2, a3, label21
label20:
	ld a0, 0(sp)
	slli a1, a0, 2
	ld a2, 56(sp)
	add a1, a2, a1
	slli a3, a0, 2
	ld a4, 72(sp)
	add a3, a4, a3
	lw a3, 0(a3)
	sw a3, 0(a1)
	addiw a0, a0, 1
	sd a0, 0(sp)
	ld a3, 88(sp)
	beq a0, a3, label21
	j label20
label41:
	mv a0, zero
	sd zero, 64(sp)
	j label16
label14:
	ld a0, 16(sp)
	slli a1, a0, 2
	ld a2, 72(sp)
	add a1, a2, a1
	ld a3, 104(sp)
	slli a4, a3, 2
	ld a5, 56(sp)
	add a4, a5, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a1, a3, 1
	ld a3, 32(sp)
	sd a1, 40(sp)
	sd a3, 48(sp)
	ld a0, 16(sp)
	addiw a0, a0, 1
	mv a1, a3
	ld a2, 40(sp)
	sd a2, 104(sp)
	sd a3, 32(sp)
	sd a0, 16(sp)
	ld a3, 88(sp)
	beq a0, a3, label37
	mv a0, a2
	ld a2, 96(sp)
	beq a0, a2, label41
	ld a0, 32(sp)
	ld a3, 88(sp)
	xor a1, a0, a3
	sltu a1, zero, a1
	sd a1, 64(sp)
	mv a0, a1
	beq a1, zero, label16
	ld a0, 104(sp)
	slli a1, a0, 2
	ld a2, 56(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	ld a3, 32(sp)
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bge a1, a4, label15
	j label14
label16:
	ld a0, 104(sp)
	ld a2, 96(sp)
	beq a0, a2, label15
	j label14
label15:
	ld a0, 16(sp)
	slli a1, a0, 2
	ld a2, 72(sp)
	add a1, a2, a1
	ld a3, 32(sp)
	slli a4, a3, 2
	ld a5, 56(sp)
	add a4, a5, a4
	lw a4, 0(a4)
	sw a4, 0(a1)
	addiw a1, a3, 1
	ld a3, 104(sp)
	sd a3, 40(sp)
	sd a1, 48(sp)
	ld a0, 16(sp)
	addiw a0, a0, 1
	mv a2, a3
	sd a3, 104(sp)
	sd a1, 32(sp)
	sd a0, 16(sp)
	ld a3, 88(sp)
	beq a0, a3, label37
	ld a0, 104(sp)
	ld a2, 96(sp)
	beq a0, a2, label41
	mv a0, a1
	ld a3, 88(sp)
	xor a1, a1, a3
	sltu a1, zero, a1
	sd a1, 64(sp)
	mv a0, a1
	beq a1, zero, label16
	ld a0, 104(sp)
	slli a1, a0, 2
	ld a2, 56(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	ld a3, 32(sp)
	slli a4, a3, 2
	add a4, a2, a4
	lw a4, 0(a4)
	bge a1, a4, label15
	j label14
label21:
	mv a0, zero
	ld ra, 24(sp)
	ld s0, 8(sp)
	addi sp, sp, 112
	ret
.globl main
main:
	addi sp, sp, -864
	sd ra, 856(sp)
	addi a1, sp, 448
	addi a0, sp, 48
	sd a0, 8(sp)
	jal read
	mv a3, a0
	sd a0, 16(sp)
	sd a1, 0(sp)
	ble a0, zero, label161
	mv a0, zero
	sd zero, 24(sp)
label159:
	ld a0, 24(sp)
	slli a1, a0, 2
	ld a2, 8(sp)
	add a1, a2, a1
	jal read
	mv a3, a0
	sw a0, 0(a1)
	ld a1, 24(sp)
	addiw a1, a1, 1
	ld a3, 16(sp)
	sd a1, 848(sp)
	bge a1, a3, label161
	mv a0, a1
	sd a1, 24(sp)
	j label159
label210:
	mv a0, zero
	sd zero, 32(sp)
	j label162
label161:
	ld a1, 8(sp)
	mv a0, a1
	ld a2, 0(sp)
	mv a1, a2
	mv a2, zero
	ld a4, 16(sp)
	mv a3, a4
	jal merge
	ld a3, 16(sp)
	ble a3, zero, label164
	j label210
label162:
	ld a0, 32(sp)
	slli a1, a0, 2
	ld a2, 8(sp)
	add a1, a2, a1
	lw a1, 0(a1)
	mv a0, a1
	jal write
	ld a1, 32(sp)
	addiw a1, a1, 1
	ld a3, 16(sp)
	sd a1, 40(sp)
	bge a1, a3, label164
	mv a0, a1
	sd a1, 32(sp)
	j label162
label164:
	mv a0, zero
	ld ra, 856(sp)
	addi sp, sp, 864
	ret
