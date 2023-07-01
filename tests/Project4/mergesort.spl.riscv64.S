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
	addi sp, sp, -48
	sd s0, 40(sp)
	sd s2, 32(sp)
	sd s3, 24(sp)
	sd s1, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	mv s0, a0
	mv s2, a1
	mv s3, a2
	mv s1, a3
	addiw a0, a2, 1
	ble a3, a0, label18
	addw a0, a2, a3
	srliw a1, a0, 31
	add a0, a0, a1
	sraiw s4, a0, 1
	mv a0, s0
	mv a1, s2
	mv a3, s4
	jal merge
	mv a0, s0
	mv a1, s2
	mv a2, s4
	mv a3, s1
	jal merge
	mv a0, s3
	mv a1, s4
	mv a2, s3
	beq s1, s3, label15
	xor a3, s4, s3
	sltu a3, zero, a3
	xor a4, s1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, s3, s0
	lw a3, 0(a3)
	sh2add a4, s4, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, s3, s0
	lw a3, 0(a3)
	sh2add a4, s3, s2
	sw a3, 0(a4)
	addiw a2, s3, 1
	addiw a0, s3, 1
	beq s1, a0, label15
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, s4, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, s4, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	j label163
label15:
	beq s1, s3, label18
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
	j label180
label163:
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, a1
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a1, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	j label163
label14:
	beq s4, a2, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, a1
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a1, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, a1
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a1, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, a1
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a1, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	j label190
label180:
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
label192:
	sh2add a0, s3, s2
	lw a0, 0(a0)
	sh2add a1, s3, s0
	sw a0, 0(a1)
	addiw s3, s3, 1
	beq s1, s3, label18
	j label192
label13:
	sh2add a3, a1, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a1, a1, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, a1
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a1, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, a1
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a1, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	xor a3, s4, a2
	sltu a3, zero, a3
	xor a4, s1, a1
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a1, s0
	lw a4, 0(a4)
	bge a3, a4, label13
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	j label163
label190:
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a4, a0, s2
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq s1, a0, label15
	j label163
label18:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
	addi sp, sp, -808
	sd ra, 800(sp)
	addi a1, sp, 0
	addi t1, sp, 400
	jal read
	mv a5, a0
	ble a0, zero, label211
	mv a2, zero
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
label288:
	jal read
	sh2add a3, a2, t1
	sw a0, 0(a3)
	addiw a2, a2, 1
	ble a5, a2, label211
	j label288
label211:
	mv a0, t1
	mv a2, zero
	mv a3, a5
	jal merge
	ble a5, zero, label214
	mv a1, zero
	sh2add a0, zero, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
label290:
	sh2add a0, a1, t1
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	ble a5, a1, label214
	j label290
label214:
	mv a0, zero
	ld ra, 800(sp)
	addi sp, sp, 808
	ret
