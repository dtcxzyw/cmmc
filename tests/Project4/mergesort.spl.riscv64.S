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
	addi sp, sp, -120
	sd s0, 16(sp)
	sd s1, 32(sp)
	sd ra, 48(sp)
	addiw a4, a2, 1
	sd a3, 24(sp)
	sd a2, 104(sp)
	sd a1, 96(sp)
	sd a0, 80(sp)
	bge a4, a3, label21
	addw a0, a2, a3
	li a1, 2
	divw a4, a0, a1
	ld a5, 80(sp)
	mv a0, a5
	ld t1, 96(sp)
	mv a1, t1
	mv a3, a4
	sd a4, 112(sp)
	jal merge
	ld t2, 80(sp)
	mv a0, t2
	ld t3, 96(sp)
	mv a1, t3
	ld t4, 112(sp)
	mv a2, t4
	ld t5, 24(sp)
	mv a3, t5
	jal merge
	ld t6, 104(sp)
	mv a6, t6
	ld a7, 112(sp)
	mv s0, a7
	mv s1, t6
	sd a7, 56(sp)
	sd t6, 40(sp)
	sd t6, 8(sp)
	mv a0, t6
	ld a3, 24(sp)
	beq t6, a3, label37
	ld a2, 112(sp)
	beq t6, a2, label41
	mv a0, a7
	ld a3, 24(sp)
	xor a1, a7, a3
	sltu a2, zero, a1
	mv a4, a2
	sd a2, 88(sp)
	mv a0, a2
	beq a2, zero, label16
	mv a0, t6
	slli a1, t6, 2
	ld a2, 80(sp)
	add a3, a2, a1
	lw a4, 0(a3)
	mv a5, a7
	slli t1, a7, 2
	add t2, a2, t1
	lw t3, 0(t2)
	bge a4, t3, label15
	j label14
label37:
	ld a2, 104(sp)
	mv a0, a2
	sd a2, 0(sp)
	ld a3, 24(sp)
	beq a2, a3, label21
label20:
	ld a0, 0(sp)
	slli a1, a0, 2
	ld a2, 80(sp)
	add a3, a2, a1
	slli a4, a0, 2
	ld a5, 96(sp)
	add t1, a5, a4
	lw t2, 0(t1)
	sw t2, 0(a3)
	addiw t3, a0, 1
	mv a0, t3
	sd t3, 0(sp)
	ld a3, 24(sp)
	beq t3, a3, label21
	j label20
label41:
	mv a0, zero
	sd zero, 88(sp)
	j label16
label11:
	ld a0, 40(sp)
	addiw a1, a0, 1
	mv a0, a1
	ld a2, 72(sp)
	mv a3, a2
	ld a4, 64(sp)
	mv a5, a4
	sd a4, 8(sp)
	sd a2, 56(sp)
	sd a1, 40(sp)
	ld a3, 24(sp)
	beq a1, a3, label37
	mv a0, a4
	ld a2, 112(sp)
	beq a4, a2, label41
	ld a0, 56(sp)
	ld a3, 24(sp)
	xor a1, a0, a3
	sltu a2, zero, a1
	mv a4, a2
	sd a2, 88(sp)
	mv a0, a2
	beq a2, zero, label16
	ld a0, 8(sp)
	slli a1, a0, 2
	ld a2, 80(sp)
	add a3, a2, a1
	lw a4, 0(a3)
	ld a5, 56(sp)
	slli t1, a5, 2
	add t2, a2, t1
	lw t3, 0(t2)
	bge a4, t3, label15
label14:
	ld a0, 40(sp)
	slli a1, a0, 2
	ld a2, 96(sp)
	add a3, a2, a1
	ld a4, 8(sp)
	slli a5, a4, 2
	ld t1, 80(sp)
	add t2, t1, a5
	lw t3, 0(t2)
	sw t3, 0(a3)
	addiw t4, a4, 1
	ld t5, 56(sp)
	mv t6, t5
	mv a6, t4
	sd t4, 64(sp)
	sd t5, 72(sp)
	j label11
label15:
	ld a0, 40(sp)
	slli a1, a0, 2
	ld a2, 96(sp)
	add a3, a2, a1
	ld a4, 56(sp)
	slli a5, a4, 2
	ld t1, 80(sp)
	add t2, t1, a5
	lw t3, 0(t2)
	sw t3, 0(a3)
	addiw t4, a4, 1
	mv t5, t4
	ld t6, 8(sp)
	mv a6, t6
	sd t6, 64(sp)
	sd t4, 72(sp)
	j label11
label16:
	ld a0, 8(sp)
	ld a2, 112(sp)
	beq a0, a2, label15
	j label14
label21:
	mv a0, zero
	ld ra, 48(sp)
	ld s1, 32(sp)
	ld s0, 16(sp)
	addi sp, sp, 120
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
	ble a0, zero, label154
	mv a0, zero
	sd zero, 24(sp)
label152:
	ld a0, 24(sp)
	slli a1, a0, 2
	ld a2, 8(sp)
	add a3, a2, a1
	jal read
	mv a4, a0
	sw a0, 0(a3)
	ld a5, 24(sp)
	addiw t1, a5, 1
	ld t2, 16(sp)
	sd t1, 848(sp)
	bge t1, t2, label154
	mv a0, t1
	mv a1, t1
	sd t1, 24(sp)
	j label152
label203:
	mv a0, zero
	sd zero, 32(sp)
	j label155
label154:
	ld a1, 8(sp)
	mv a0, a1
	ld a2, 0(sp)
	mv a1, a2
	mv a2, zero
	ld a4, 16(sp)
	mv a3, a4
	jal merge
	ld a3, 16(sp)
	ble a3, zero, label157
	j label203
label155:
	ld a0, 32(sp)
	slli a1, a0, 2
	ld a2, 8(sp)
	add a3, a2, a1
	lw a4, 0(a3)
	mv a0, a4
	jal write
	ld a5, 32(sp)
	addiw t1, a5, 1
	ld t2, 16(sp)
	sd t1, 40(sp)
	bge t1, t2, label157
	mv a0, t1
	mv a1, t1
	sd t1, 32(sp)
	j label155
label157:
	mv a0, zero
	ld ra, 856(sp)
	addi sp, sp, 864
	ret
