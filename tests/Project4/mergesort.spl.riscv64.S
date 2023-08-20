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
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	addiw a0, a2, 1
	sd s4, 24(sp)
	mv s4, a1
	sd s2, 32(sp)
	mv s2, a2
	sd s1, 40(sp)
	mv s1, a3
	sd s3, 48(sp)
	ble a3, a0, label64
	addw a2, a2, a3
	mv a1, a2
	bge a2, zero, label282
	addiw a1, a2, 1
label282:
	sraiw s3, a1, 1
	bge a0, s3, label23
	addw a0, s2, s3
	mv a2, a0
	bge a0, zero, label284
	addiw a2, a0, 1
label284:
	sraiw s5, a2, 1
	mv a0, s0
	mv a1, s4
	mv a2, s2
	mv a3, s5
	jal merge
	mv a0, s0
	mv a1, s4
	mv a2, s5
	mv a3, s3
	jal merge
	beq s2, s3, label23
	sh2add a0, s2, s4
	mv a1, s2
	mv a2, s2
	mv a3, s5
	xor t0, s5, s2
	xor a5, s3, s5
	sltu a4, zero, t0
	sltu t1, zero, a5
	and t0, a4, t1
	beq t0, zero, label91
label10:
	sh2add t1, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t1)
	lw t0, 0(a5)
	bge a4, t0, label101
label11:
	sh2add a4, a2, s0
	addiw a2, a2, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	addiw a1, a1, 1
	beq s3, a1, label310
label20:
	addi a0, a0, 4
	xor t0, s5, a2
	xor a5, s3, a3
	sltu a4, zero, t0
	sltu t1, zero, a5
	and t0, a4, t1
	bne t0, zero, label10
	bne s5, a2, label11
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label20
	j label310
label64:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
label23:
	addiw a0, s3, 1
	bgt s1, a0, label44
label24:
	beq s2, s1, label64
	sh2add a0, s2, s4
	mv a1, s2
	mv a2, s2
	mv a3, s3
	xor t0, s3, s2
	xor t1, s1, s3
	sltu a4, zero, t0
	sltu a5, zero, t1
	and t0, a4, a5
	bne t0, zero, label43
	bne s3, s2, label41
	sh2add a4, s3, s0
	addiw a1, s2, 1
	addiw a3, s3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label39
label313:
	sh2add a0, s2, s4
label35:
	sh2add a1, s2, s0
	lw a2, 0(a0)
	addiw s2, s2, 1
	sw a2, 0(a1)
	beq s1, s2, label64
	addi a0, a0, 4
	j label35
label43:
	sh2add t1, a2, s0
	sh2add t0, a3, s0
	lw a4, 0(t1)
	lw a5, 0(t0)
	bge a4, a5, label184
label41:
	sh2add a5, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	beq s1, a1, label313
label39:
	addi a0, a0, 4
	xor t0, s3, a2
	xor t1, s1, a3
	sltu a4, zero, t0
	sltu a5, zero, t1
	and t0, a4, a5
	bne t0, zero, label43
	bne s3, a2, label41
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label39
	j label313
label44:
	addw a0, s1, s3
	mv a2, a0
	bge a0, zero, label286
	addiw a2, a0, 1
label286:
	sraiw s5, a2, 1
	mv a0, s0
	mv a1, s4
	mv a2, s3
	mv a3, s5
	jal merge
	mv a0, s0
	mv a1, s4
	mv a2, s5
	mv a3, s1
	jal merge
	beq s1, s3, label24
	sh2add a0, s3, s4
	mv a1, s3
	mv a2, s3
	mv a3, s5
	xor t1, s5, s3
	xor t0, s1, s5
	sltu a4, zero, t1
	sltu a5, zero, t0
	and t1, a4, a5
	bne t1, zero, label63
	bne s5, s3, label52
	sh2add a4, s5, s0
	addiw a1, s3, 1
	addiw a3, s5, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label62
	j label315
label63:
	sh2add t1, a2, s0
	sh2add t0, a3, s0
	lw a4, 0(t1)
	lw a5, 0(t0)
	bge a4, a5, label236
label52:
	sh2add a5, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	beq s1, a1, label315
label62:
	addi a0, a0, 4
	xor t1, s5, a2
	xor t0, s1, a3
	sltu a4, zero, t1
	sltu a5, zero, t0
	and t1, a4, a5
	bne t1, zero, label63
	bne s5, a2, label52
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label62
	j label315
label310:
	sh2add a0, s2, s4
	mv a1, s2
	j label16
label19:
	addi a0, a0, 4
label16:
	sh2add a2, a1, s0
	lw a3, 0(a0)
	addiw a1, a1, 1
	sw a3, 0(a2)
	bne s3, a1, label19
	j label23
label315:
	sh2add a0, s3, s4
	mv a1, s3
	j label58
label61:
	addi a0, a0, 4
label58:
	sh2add a2, a1, s0
	lw a3, 0(a0)
	addiw a1, a1, 1
	sw a3, 0(a2)
	bne s1, a1, label61
	j label24
label184:
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label39
	j label313
label91:
	bne s5, a2, label11
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label20
	j label310
label101:
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label20
	j label310
label236:
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label62
	j label315
.globl main
main:
	# stack usage: CalleeArg[0] Local[800] RegSpill[0] CalleeSaved[8]
	addi sp, sp, -808
	addi t3, sp, 8
	addi a4, sp, 408
	sd ra, 0(sp)
	jal read
	mv t2, a0
	ble a0, zero, label342
	mv a1, t3
	mv a2, zero
label338:
	jal read
	addiw a2, a2, 1
	sw a0, 0(a1)
	ble t2, a2, label342
	addi a1, a1, 4
	j label338
label342:
	mv a0, t3
	mv a2, zero
	mv a1, a4
	mv a3, t2
	jal merge
	ble t2, zero, label348
	mv a1, zero
label344:
	lw a0, 0(t3)
	jal write
	addiw a1, a1, 1
	ble t2, a1, label348
	addi t3, t3, 4
	j label344
label348:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 808
	ret
