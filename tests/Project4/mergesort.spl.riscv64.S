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
	ble a3, a0, label42
	addw a1, a2, a3
	srliw a3, a1, 31
	add a2, a1, a3
	sraiw s4, a2, 1
	blt a0, s4, label29
label3:
	addiw a2, s4, 1
	ble s1, a2, label60
	addw a1, s1, s4
	mv a0, s0
	srliw a2, a1, 31
	add a3, a1, a2
	mv a1, s2
	sraiw s5, a3, 1
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
	bne s1, s4, label9
	j label14
label60:
	mv a1, s4
	mv a0, s3
	mv a2, s3
	j label17
label9:
	xor a3, s5, a0
	xor t1, s1, a1
	sltu a4, zero, a3
	sltu t0, zero, t1
	addiw a3, a2, 1
	and a5, a4, t0
	bne a5, zero, label10
	bne s5, a0, label13
	j label269
label10:
	sh2add a5, a0, s0
	sh2add t0, a1, s0
	lw a4, 0(a5)
	lw t1, 0(t0)
	bge a4, t1, label83
label13:
	sh2add t0, a0, s0
	sh2add a5, a2, s2
	addiw a0, a0, 1
	lw a4, 0(t0)
	mv a2, a3
	sw a4, 0(a5)
	bne s1, a3, label9
label14:
	beq s1, s4, label60
	mv a0, s4
label15:
	sh2add a3, a0, s2
	sh2add a2, a0, s0
	lw a1, 0(a3)
	addiw a0, a0, 1
	sw a1, 0(a2)
	bne s1, a0, label15
	j label60
label17:
	beq s1, a2, label21
label24:
	xor a3, s4, a0
	xor t1, s1, a1
	sltu a4, zero, a3
	sltu t0, zero, t1
	addiw a3, a2, 1
	and a5, a4, t0
	bne a5, zero, label27
	j label137
label25:
	sh2add t0, a0, s0
	sh2add a5, a2, s2
	addiw a0, a0, 1
	lw a4, 0(t0)
	mv a2, a3
	sw a4, 0(a5)
	bne s1, a3, label24
	j label21
label27:
	sh2add a5, a0, s0
	sh2add t1, a1, s0
	lw a4, 0(a5)
	lw t0, 0(t1)
	blt a4, t0, label25
	sh2add t0, a1, s0
	sh2add a5, a2, s2
	addiw a1, a1, 1
	lw a4, 0(t0)
	mv a2, a3
	sw a4, 0(a5)
	bne s1, a3, label24
	j label21
label137:
	bne s4, a0, label25
	sh2add t0, a1, s0
	sh2add a5, a2, s2
	addiw a1, a1, 1
	lw a4, 0(t0)
	mv a2, a3
	sw a4, 0(a5)
	bne s1, a3, label24
	j label21
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
label21:
	beq s3, s1, label42
label22:
	sh2add a1, s3, s2
	sh2add a2, s3, s0
	lw a0, 0(a1)
	addiw s3, s3, 1
	sw a0, 0(a2)
	bne s1, s3, label22
	j label42
label29:
	addw a1, s3, s4
	mv a0, s0
	srliw a3, a1, 31
	add a2, a1, a3
	mv a1, s2
	sraiw s5, a2, 1
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
	xor a3, s5, a0
	xor t1, s4, a1
	sltu a4, zero, a3
	sltu t0, zero, t1
	addiw a3, a2, 1
	and a5, a4, t0
	bne a5, zero, label38
	beq s5, a0, label275
label35:
	sh2add t0, a0, s0
	sh2add a5, a2, s2
	addiw a0, a0, 1
	lw a4, 0(t0)
	mv a2, a3
	sw a4, 0(a5)
	bne s4, a3, label34
	j label39
label38:
	sh2add t0, a0, s0
	sh2add a5, a1, s0
	lw a4, 0(t0)
	lw t1, 0(a5)
	blt a4, t1, label35
	sh2add t0, a1, s0
	sh2add a5, a2, s2
	addiw a1, a1, 1
	lw a4, 0(t0)
	mv a2, a3
	sw a4, 0(a5)
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
label83:
	sh2add a5, a1, s0
	sh2add t0, a2, s2
	addiw a1, a1, 1
	lw a4, 0(a5)
	mv a2, a3
	sw a4, 0(t0)
	bne s1, a3, label9
	j label14
label269:
	sh2add a5, a1, s0
	sh2add t0, a2, s2
	addiw a1, a1, 1
	lw a4, 0(a5)
	mv a2, a3
	sw a4, 0(t0)
	bne s1, a3, label9
	j label14
label275:
	sh2add t0, a1, s0
	sh2add a5, a2, s2
	addiw a1, a1, 1
	lw a4, 0(t0)
	mv a2, a3
	sw a4, 0(a5)
	bne s4, a3, label34
	j label39
.globl main
main:
	addi sp, sp, -808
	addi t3, sp, 8
	addi a1, sp, 408
	sd ra, 0(sp)
	jal read
	mv t2, a0
	ble a0, zero, label299
	mv a2, zero
label297:
	jal read
	sh2add a3, a2, t3
	addiw a2, a2, 1
	sw a0, 0(a3)
	bgt t2, a2, label297
label299:
	mv a0, t3
	mv a2, zero
	mv a3, t2
	jal merge
	ble t2, zero, label302
	mv a1, zero
label300:
	sh2add a2, a1, t3
	lw a0, 0(a2)
	jal write
	addiw a1, a1, 1
	bgt t2, a1, label300
label302:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 808
	ret
