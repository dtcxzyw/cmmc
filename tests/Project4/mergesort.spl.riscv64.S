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
	bgt a3, a0, label2
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
label2:
	addw a2, s2, s1
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
	xor t1, s3, s5
	sltu a4, zero, t0
	sltu a5, zero, t1
	and t0, a4, a5
	beq t0, zero, label91
label21:
	sh2add a5, a2, s0
	sh2add t0, a3, s0
	lw a4, 0(a5)
	lw t1, 0(t0)
	blt a4, t1, label10
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label19
label308:
	sh2add a0, s2, s4
	mv a1, s2
label15:
	sh2add a2, a1, s0
	lw a3, 0(a0)
	addiw a1, a1, 1
	sw a3, 0(a2)
	beq s3, a1, label23
	addi a0, a0, 4
	j label15
label23:
	addiw a0, s3, 1
	bgt s1, a0, label24
label44:
	beq s2, s1, label64
	sh2add a0, s2, s4
	mv a1, s2
	mv a2, s2
	mv a3, s3
	xor t1, s3, s2
	xor a5, s1, s3
	sltu a4, zero, t1
	sltu t0, zero, a5
	and t1, a4, t0
	bne t1, zero, label63
	beq s3, s2, label305
label61:
	sh2add a5, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	beq s1, a1, label55
label60:
	addi a0, a0, 4
	xor t1, s3, a2
	xor a5, s1, a3
	sltu a4, zero, t1
	sltu t0, zero, a5
	and t1, a4, t0
	bne t1, zero, label63
	bne s3, a2, label61
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label60
	j label55
label91:
	beq s5, a2, label294
label10:
	sh2add a4, a2, s0
	addiw a2, a2, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	addiw a1, a1, 1
	beq s3, a1, label308
label19:
	addi a0, a0, 4
	xor t0, s5, a2
	xor t1, s3, a3
	sltu a4, zero, t0
	sltu a5, zero, t1
	and t0, a4, a5
	bne t0, zero, label21
	bne s5, a2, label10
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label19
	j label308
label63:
	sh2add a5, a2, s0
	sh2add t1, a3, s0
	lw a4, 0(a5)
	lw t0, 0(t1)
	blt a4, t0, label61
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label60
	j label55
label24:
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
	xor t1, s5, s3
	xor t0, s1, s5
	sltu a4, zero, t1
	sltu a5, zero, t0
	and t1, a4, a5
	bne t1, zero, label43
	bne s5, s3, label42
	sh2add a4, s5, s0
	addiw a1, s3, 1
	addiw a3, s5, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label41
	j label36
label302:
	beq s5, a2, label310
label42:
	sh2add a5, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	beq s1, a1, label36
label41:
	addi a0, a0, 4
	xor t1, s5, a2
	xor t0, s1, a3
	sltu a4, zero, t1
	sltu a5, zero, t0
	and t1, a4, a5
	beq t1, zero, label302
label43:
	sh2add t0, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t0)
	lw t1, 0(a5)
	blt a4, t1, label42
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label41
	j label36
label55:
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
label305:
	sh2add a4, a3, s0
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	addiw a1, a1, 1
	bne s1, a1, label60
	j label55
label36:
	sh2add a0, s3, s4
	mv a1, s3
	j label37
label40:
	addi a0, a0, 4
label37:
	sh2add a2, a1, s0
	lw a3, 0(a0)
	addiw a1, a1, 1
	sw a3, 0(a2)
	bne s1, a1, label40
	j label44
label310:
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label41
	j label36
label294:
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label19
	j label308
.globl main
main:
	# stack usage: CalleeArg[0] Local[800] RegSpill[0] CalleeSaved[8]
	addi sp, sp, -808
	addi t3, sp, 8
	addi a4, sp, 408
	sd ra, 0(sp)
	jal read
	mv t2, a0
	ble a0, zero, label337
	mv a1, t3
	mv a2, zero
label333:
	jal read
	addiw a2, a2, 1
	sw a0, 0(a1)
	ble t2, a2, label337
	addi a1, a1, 4
	j label333
label337:
	mv a0, t3
	mv a2, zero
	mv a1, a4
	mv a3, t2
	jal merge
	ble t2, zero, label343
	mv a1, zero
label339:
	lw a0, 0(t3)
	jal write
	addiw a1, a1, 1
	ble t2, a1, label343
	addi t3, t3, 4
	j label339
label343:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 808
	ret
