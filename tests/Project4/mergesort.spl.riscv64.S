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
	xor a5, s5, s2
	xor t1, s3, s5
	sltu a4, zero, a5
	sltu t0, zero, t1
	and a5, a4, t0
	beq a5, zero, label91
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
	beq s3, a1, label309
label20:
	addi a0, a0, 4
	xor a5, s5, a2
	xor t1, s3, a3
	sltu a4, zero, a5
	sltu t0, zero, t1
	and a5, a4, t0
	bne a5, zero, label10
	bne s5, a2, label11
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label20
	j label309
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
	ble s1, a0, label44
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
	beq s1, s3, label44
	sh2add a0, s3, s4
	mv a1, s3
	mv a2, s3
	mv a3, s5
	xor a5, s5, s3
	xor t0, s1, s5
	sltu a4, zero, a5
	sltu t1, zero, t0
	and a5, a4, t1
	bne a5, zero, label43
	bne s5, s3, label42
	sh2add a5, s5, s0
	addiw a1, s3, 1
	addiw a3, s5, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s1, a1, label34
label312:
	sh2add a0, s3, s4
	mv a1, s3
label36:
	sh2add a2, a1, s0
	lw a3, 0(a0)
	addiw a1, a1, 1
	sw a3, 0(a2)
	beq s1, a1, label44
	addi a0, a0, 4
	j label36
label299:
	beq s5, a2, label313
label42:
	sh2add a5, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	beq s1, a1, label312
label34:
	addi a0, a0, 4
	xor a5, s5, a2
	xor t0, s1, a3
	sltu a4, zero, a5
	sltu t1, zero, t0
	and a5, a4, t1
	beq a5, zero, label299
label43:
	sh2add t1, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t1)
	lw t0, 0(a5)
	blt a4, t0, label42
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s1, a1, label34
	j label312
label44:
	beq s2, s1, label64
	sh2add a0, s2, s4
	mv a1, s2
	mv a2, s2
	mv a3, s3
	xor t0, s3, s2
	xor a5, s1, s3
	sltu a4, zero, t0
	sltu t1, zero, a5
	and t0, a4, t1
	bne t0, zero, label61
	bne s3, s2, label63
	sh2add a4, s3, s0
	addiw a1, s2, 1
	addiw a3, s3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label54
	j label314
label304:
	beq s3, a2, label315
label63:
	sh2add a5, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	beq s1, a1, label314
label54:
	addi a0, a0, 4
	xor t0, s3, a2
	xor a5, s1, a3
	sltu a4, zero, t0
	sltu t1, zero, a5
	and t0, a4, t1
	beq t0, zero, label304
label61:
	sh2add t1, a2, s0
	sh2add t0, a3, s0
	lw a4, 0(t1)
	lw a5, 0(t0)
	blt a4, a5, label63
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label54
label314:
	sh2add a0, s2, s4
	j label56
label59:
	addi a0, a0, 4
label56:
	sh2add a1, s2, s0
	lw a2, 0(a0)
	addiw s2, s2, 1
	sw a2, 0(a1)
	bne s1, s2, label59
	j label64
label309:
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
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label54
	j label314
label91:
	bne s5, a2, label11
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label20
	j label309
label101:
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label20
	j label309
label313:
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s1, a1, label34
	j label312
.globl main
main:
	# stack usage: CalleeArg[0] Local[800] RegSpill[0] CalleeSaved[8]
	addi sp, sp, -808
	addi t3, sp, 8
	addi a4, sp, 408
	sd ra, 0(sp)
	jal read
	mv t2, a0
	ble a0, zero, label344
	mv a1, t3
	mv a2, zero
label340:
	jal read
	addiw a2, a2, 1
	sw a0, 0(a1)
	ble t2, a2, label344
	addi a1, a1, 4
	j label340
label344:
	mv a0, t3
	mv a2, zero
	mv a1, a4
	mv a3, t2
	jal merge
	ble t2, zero, label350
	mv a1, zero
label346:
	lw a0, 0(t3)
	jal write
	addiw a1, a1, 1
	ble t2, a1, label350
	addi t3, t3, 4
	j label346
label350:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 808
	ret
