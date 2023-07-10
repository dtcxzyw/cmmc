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
	mv s0, a0
	sd s2, 32(sp)
	addiw a0, a2, 1
	mv s2, a1
	sd s3, 24(sp)
	mv s3, a2
	sd s1, 16(sp)
	mv s1, a3
	sd s4, 8(sp)
	sd ra, 0(sp)
	ble a3, a0, label17
	addw a0, a2, a3
	srliw a1, a0, 31
	add a2, a0, a1
	mv a0, s0
	sraiw s4, a2, 1
	mv a1, s2
	mv a2, s3
	mv a3, s4
	jal merge
	mv a0, s0
	mv a1, s2
	mv a2, s4
	mv a3, s1
	jal merge
	mv a0, s3
	mv a1, s3
	mv a2, s4
	beq s1, s3, label14
	xor a5, s4, s3
	xor a4, s1, s4
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, s3, s0
	sh2add a5, s4, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, s3, s0
	sh2add a4, s3, s2
	addiw a1, s3, 1
	lw a3, 0(a5)
	addiw a0, s3, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, s4
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, s4, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
label170:
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	j label183
label10:
	sh2add a4, a2, s0
	sh2add a5, a0, s2
	addiw a2, a2, 1
	lw a3, 0(a4)
	addiw a0, a0, 1
	sw a3, 0(a5)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	j label170
label195:
	sh2add a2, s3, s2
	sh2add a1, s3, s0
	lw a0, 0(a2)
	addiw s3, s3, 1
	sw a0, 0(a1)
label14:
	beq s1, s3, label17
	j label195
label194:
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	j label170
label11:
	beq s4, a1, label13
	sh2add a4, a1, s0
	sh2add a5, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a4)
	addiw a0, a0, 1
	sw a3, 0(a5)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	j label194
label13:
	sh2add a5, a2, s0
	sh2add a4, a0, s2
	addiw a2, a2, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	xor a5, s4, a1
	xor a4, s1, a2
	sltu a3, zero, a5
	sltu a5, zero, a4
	and a3, a3, a5
	beq a3, zero, label11
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	sh2add a5, a1, s0
	sh2add a4, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a5)
	addiw a0, a0, 1
	sw a3, 0(a4)
	beq s1, a0, label14
	j label170
label183:
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	bge a3, a4, label10
	j label194
label17:
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
	addi t1, sp, 400
	addi a1, sp, 0
	sd ra, 800(sp)
	jal read
	mv t0, a0
	ble a0, zero, label223
	mv a2, zero
label221:
	jal read
	sh2add a3, a2, t1
	addiw a2, a2, 1
	sw a0, 0(a3)
	ble t0, a2, label223
	j label221
label223:
	mv a0, t1
	mv a2, zero
	mv a3, t0
	jal merge
	ble t0, zero, label226
	mv a1, zero
label224:
	sh2add a2, a1, t1
	lw a0, 0(a2)
	jal write
	addiw a1, a1, 1
	ble t0, a1, label226
	j label224
label226:
	mv a0, zero
	ld ra, 800(sp)
	addi sp, sp, 808
	ret
