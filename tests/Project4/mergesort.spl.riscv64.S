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
	sd s2, 24(sp)
	mv s2, a1
	sd s3, 32(sp)
	mv s3, a2
	sd s1, 40(sp)
	mv s1, a3
	sd s4, 48(sp)
	bgt a3, a0, label2
label42:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s1, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
label2:
	addw a1, s3, s1
	srliw a3, a1, 31
	add a2, a1, a3
	sraiw s4, a2, 1
	bge a0, s4, label3
	addw a1, s3, s4
	srliw a0, a1, 31
	add a2, a1, a0
	mv a0, s0
	sraiw s5, a2, 1
	mv a1, s2
	mv a2, s3
	mv a3, s5
	jal merge
	mv a0, s0
	mv a1, s2
	mv a2, s5
	mv a3, s4
	jal merge
	mv a2, s3
	mv a0, s3
	mv a1, s5
	beq s4, s3, label39
label34:
	xor a4, s5, a0
	xor t0, s4, a1
	sltu a3, zero, a4
	sltu a5, zero, t0
	and a4, a3, a5
	addiw a3, a2, 1
	bne a4, zero, label37
	beq s5, a0, label184
label38:
	sh2add a5, a0, s0
	sh2add a2, a2, s2
	addiw a0, a0, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s4, a3, label34
label39:
	beq s3, s4, label3
	mv a0, s3
label40:
	sh2add a3, a0, s2
	sh2add a2, a0, s0
	lw a1, 0(a3)
	addiw a0, a0, 1
	sw a1, 0(a2)
	bne s4, a0, label40
	j label3
label37:
	sh2add a5, a0, s0
	sh2add t0, a1, s0
	lw a4, 0(a5)
	lw a5, 0(t0)
	blt a4, a5, label38
	sh2add a5, a1, s0
	sh2add a2, a2, s2
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s4, a3, label34
	j label39
label184:
	sh2add a5, a1, s0
	sh2add a2, a2, s2
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s4, a3, label34
	j label39
label3:
	addiw a0, s4, 1
	bgt s1, a0, label16
label60:
	mv a1, s4
	mv a0, s3
	mv a2, s3
	bne s1, s3, label11
label8:
	beq s3, s1, label42
label9:
	sh2add a1, s3, s2
	sh2add a2, s3, s0
	lw a0, 0(a1)
	addiw s3, s3, 1
	sw a0, 0(a2)
	bne s1, s3, label9
	j label42
label11:
	xor a4, s4, a0
	xor t0, s1, a1
	sltu a3, zero, a4
	sltu a5, zero, t0
	and a4, a3, a5
	addiw a3, a2, 1
	bne a4, zero, label15
	beq s4, a0, label269
label12:
	sh2add a5, a0, s0
	sh2add a2, a2, s2
	addiw a0, a0, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s1, a3, label11
	j label8
label15:
	sh2add t0, a0, s0
	sh2add a5, a1, s0
	lw a4, 0(t0)
	lw t0, 0(a5)
	blt a4, t0, label12
	sh2add a2, a2, s2
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s1, a3, label11
	j label8
label16:
	addw a0, s1, s4
	srliw a2, a0, 31
	add a1, a0, a2
	mv a0, s0
	sraiw s5, a1, 1
	mv a1, s2
	mv a2, s4
	mv a3, s5
	jal merge
	mv a0, s0
	mv a1, s2
	mv a2, s5
	mv a3, s1
	jal merge
	mv a2, s4
	mv a0, s4
	mv a1, s5
	beq s1, s4, label26
label21:
	xor a4, s5, a0
	xor t0, s1, a1
	sltu a3, zero, a4
	sltu a5, zero, t0
	and a4, a3, a5
	addiw a3, a2, 1
	bne a4, zero, label23
	beq s5, a0, label273
label25:
	sh2add a5, a0, s0
	sh2add a2, a2, s2
	addiw a0, a0, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s1, a3, label21
label26:
	beq s1, s4, label60
	mv a0, s4
label27:
	sh2add a3, a0, s2
	sh2add a2, a0, s0
	lw a1, 0(a3)
	addiw a0, a0, 1
	sw a1, 0(a2)
	bne s1, a0, label27
	j label60
label23:
	sh2add a5, a0, s0
	sh2add t0, a1, s0
	lw a4, 0(a5)
	lw a5, 0(t0)
	blt a4, a5, label25
	sh2add a5, a1, s0
	sh2add a2, a2, s2
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s1, a3, label21
	j label26
label269:
	sh2add a5, a1, s0
	sh2add a2, a2, s2
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s1, a3, label11
	j label8
label273:
	sh2add a5, a1, s0
	sh2add a2, a2, s2
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s1, a3, label21
	j label26
.globl main
main:
	addi sp, sp, -808
	addi t2, sp, 8
	addi a1, sp, 408
	sd ra, 0(sp)
	jal read
	mv t1, a0
	ble a0, zero, label295
	mv a2, zero
label293:
	jal read
	sh2add a3, a2, t2
	addiw a2, a2, 1
	sw a0, 0(a3)
	bgt t1, a2, label293
label295:
	mv a0, t2
	mv a2, zero
	mv a3, t1
	jal merge
	ble t1, zero, label298
	mv a1, zero
label296:
	sh2add a2, a1, t2
	lw a0, 0(a2)
	jal write
	addiw a1, a1, 1
	bgt t1, a1, label296
label298:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 808
	ret
