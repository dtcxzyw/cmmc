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
merge:
	addi sp, sp, -48
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s0, 24(sp)
	sd s4, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	mv s2, a0
	mv s3, a1
	mv s0, a2
	mv s4, a3
	addiw a0, a2, 1
	bge a0, a3, label18
	addw a0, a2, a3
	srliw a1, a0, 31
	add a0, a0, a1
	sraiw s1, a0, 1
	mv a0, s2
	mv a1, s3
	mv a3, s1
	jal merge
	mv a0, s2
	mv a1, s3
	mv a2, s1
	mv a3, s4
	jal merge
	mv a0, s0
	mv a1, s1
	mv a2, s0
	beq s0, s4, label15
	xor a3, s0, s1
	sltu a3, zero, a3
	xor a4, s1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, s0, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, s1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, s0, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, s0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, s0, 1
	addiw a0, s0, 1
	beq a0, s4, label15
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, s1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, s1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, s1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, s1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	j label165
label15:
	beq s0, s4, label18
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
	j label182
label165:
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, a1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	j label165
label14:
	beq a2, s1, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, a1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, a1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, a1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	j label192
label182:
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
label194:
	slli a0, s0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	beq s0, s4, label18
	j label194
label13:
	slli a3, a1, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a1, a1, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, a1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, a1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	xor a3, a2, s1
	sltu a3, zero, a3
	xor a4, a1, s4
	sltu a4, zero, a4
	and a3, a3, a4
	beq a3, zero, label14
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a1, 2
	add a4, s2, a4
	lw a4, 0(a4)
	bge a3, a4, label13
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	j label165
label192:
	slli a3, a2, 2
	add a3, s2, a3
	lw a3, 0(a3)
	slli a4, a0, 2
	add a4, s3, a4
	sw a3, 0(a4)
	addiw a2, a2, 1
	addiw a0, a0, 1
	beq a0, s4, label15
	j label165
label18:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s4, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
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
	ble a0, zero, label213
	mv a2, zero
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
label291:
	jal read
	slli a3, a2, 2
	add a3, t1, a3
	sw a0, 0(a3)
	addiw a2, a2, 1
	bge a2, a5, label213
	j label291
label213:
	mv a0, t1
	mv a2, zero
	mv a3, a5
	jal merge
	ble a5, zero, label216
	mv a1, zero
	slli a0, zero, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
label293:
	slli a0, a1, 2
	add a0, t1, a0
	lw a0, 0(a0)
	jal write
	addiw a1, a1, 1
	bge a1, a5, label216
	j label293
label216:
	mv a0, zero
	ld ra, 800(sp)
	addi sp, sp, 808
	ret
