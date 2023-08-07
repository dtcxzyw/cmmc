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
	bgt a3, a0, label3
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
label3:
	addw a1, s2, s1
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s3, a3, 1
	bge a0, s3, label4
	addw a1, s2, s3
	mv a0, s0
	srliw a2, a1, 31
	add a3, a1, a2
	mv a1, s4
	sraiw s5, a3, 1
	mv a2, s2
	mv a3, s5
	jal merge
	mv a0, s0
	mv a1, s4
	mv a2, s5
	mv a3, s3
	jal merge
	beq s2, s3, label4
	sh2add a0, s2, s4
	mv a1, s2
	mv a2, s2
	mv a3, s5
	xor a5, s5, s2
	xor t1, s3, s5
	sltu a4, zero, a5
	sltu t0, zero, t1
	and a5, a4, t0
	bne a5, zero, label52
	bne s5, s2, label53
	sh2add a4, s5, s0
	addiw a1, s2, 1
	addiw a3, s5, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s3, a1, label58
	j label310
label52:
	sh2add a5, a2, s0
	sh2add t1, a3, s0
	lw a4, 0(a5)
	lw t0, 0(t1)
	bge a4, t0, label208
label53:
	sh2add a5, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	beq s3, a1, label310
label58:
	addi a0, a0, 4
	xor a5, s5, a2
	xor t1, s3, a3
	sltu a4, zero, a5
	sltu t0, zero, t1
	and a5, a4, t0
	bne a5, zero, label52
	bne s5, a2, label53
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s3, a1, label58
	j label310
label4:
	addiw a0, s3, 1
	ble s1, a0, label5
	addw a1, s1, s3
	mv a0, s0
	srliw a2, a1, 31
	add a3, a1, a2
	mv a1, s4
	sraiw s5, a3, 1
	mv a2, s3
	mv a3, s5
	jal merge
	mv a0, s0
	mv a1, s4
	mv a2, s5
	mv a3, s1
	jal merge
	beq s1, s3, label5
	sh2add a0, s3, s4
	mv a1, s3
	mv a2, s3
	mv a3, s5
	xor a5, s5, s3
	xor t1, s1, s5
	sltu a4, zero, a5
	sltu t0, zero, t1
	and a5, a4, t0
	bne a5, zero, label44
	j label32
label42:
	addi a0, a0, 4
	xor a5, s5, a2
	xor t1, s1, a3
	sltu a4, zero, a5
	sltu t0, zero, t1
	and a5, a4, t0
	bne a5, zero, label44
	beq s5, a2, label304
label43:
	sh2add a4, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label42
	j label37
label44:
	sh2add t1, a2, s0
	sh2add t0, a3, s0
	lw a4, 0(t1)
	lw a5, 0(t0)
	blt a4, a5, label43
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s1, a1, label42
label37:
	sh2add a0, s3, s4
	mv a1, s3
label38:
	lw a2, 0(a0)
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw a2, 0(a3)
	beq s1, a1, label5
	addi a0, a0, 4
	j label38
label5:
	beq s2, s1, label2
	sh2add a0, s2, s4
	mv a1, s2
	mv a2, s2
	mv a3, s3
	xor t0, s3, s2
	xor t1, s1, s3
	sltu a4, zero, t0
	sltu a5, zero, t1
	and t0, a4, a5
	beq t0, zero, label94
label22:
	sh2add a5, a2, s0
	sh2add t1, a3, s0
	lw a4, 0(a5)
	lw t0, 0(t1)
	blt a4, t0, label23
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label15
	j label302
label94:
	bne s3, a2, label23
	j label291
label302:
	sh2add a0, s2, s4
	j label17
label15:
	addi a0, a0, 4
	xor t0, s3, a2
	xor t1, s1, a3
	sltu a4, zero, t0
	sltu a5, zero, t1
	and t0, a4, a5
	bne t0, zero, label22
	j label292
label23:
	sh2add a4, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label15
	j label302
label17:
	lw a1, 0(a0)
	sh2add a2, s2, s0
	addiw s2, s2, 1
	sw a1, 0(a2)
	beq s1, s2, label2
	addi a0, a0, 4
	j label17
label292:
	bne s3, a2, label23
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label15
	j label302
label32:
	bne s5, a2, label43
	sh2add a5, a3, s0
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	addiw a1, a1, 1
	bne s1, a1, label42
	j label37
label310:
	sh2add a0, s2, s4
	mv a1, s2
label60:
	lw a2, 0(a0)
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw a2, 0(a3)
	beq s3, a1, label4
	addi a0, a0, 4
	j label60
label208:
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s3, a1, label58
	j label310
label304:
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s1, a1, label42
	j label37
label291:
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label15
	j label302
.globl main
main:
	addi sp, sp, -808
	addi a4, sp, 408
	addi t3, sp, 8
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
