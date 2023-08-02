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
	sd s1, 8(sp)
	mv s1, a0
	sd s4, 16(sp)
	addiw a0, a2, 1
	mv s4, a1
	sd s2, 24(sp)
	mv s2, a2
	sd s0, 32(sp)
	mv s0, a3
	sd s5, 40(sp)
	sd s3, 48(sp)
	bgt a3, a0, label2
label63:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s4, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
label2:
	addw a1, s2, s0
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s3, a3, 1
	bge a0, s3, label3
	addw a1, s2, s3
	mv a0, s1
	srliw a2, a1, 31
	add a3, a1, a2
	mv a1, s4
	sraiw s5, a3, 1
	mv a2, s2
	mv a3, s5
	jal merge
	mv a0, s1
	mv a1, s4
	mv a2, s5
	mv a3, s3
	jal merge
	mv a5, s2
	mv a3, s2
	sh2add a0, s2, s4
	mv a4, s5
	sh2add a2, s2, s1
	sh2add a1, s5, s1
	beq s3, s2, label57
label52:
	xor t1, s5, a3
	xor t2, s3, a4
	addiw a5, a5, 1
	sltu t0, zero, t1
	sltu t3, zero, t2
	and t1, t0, t3
	bne t1, zero, label53
	beq s5, a3, label301
label54:
	lw t0, 0(a2)
	addiw a3, a3, 1
	addi a2, a2, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s3, a5, label52
label57:
	beq s2, s3, label3
	sh2add a0, s2, s4
	mv a1, s2
label59:
	lw a2, 0(a0)
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw a2, 0(a3)
	beq s3, a1, label3
	addi a0, a0, 4
	j label59
label53:
	lw t0, 0(a2)
	lw t1, 0(a1)
	blt t0, t1, label54
	lw t0, 0(a1)
	addiw a4, a4, 1
	addi a1, a1, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s3, a5, label52
	j label57
label3:
	addiw a0, s3, 1
	ble s0, a0, label4
	addw a1, s0, s3
	mv a0, s1
	srliw a2, a1, 31
	add a3, a1, a2
	mv a1, s4
	sraiw s5, a3, 1
	mv a2, s3
	mv a3, s5
	jal merge
	mv a0, s1
	mv a1, s4
	mv a2, s5
	mv a3, s0
	jal merge
	mv a5, s3
	mv a3, s3
	sh2add a0, s3, s4
	mv a4, s5
	sh2add a2, s3, s1
	sh2add a1, s5, s1
	beq s0, s3, label36
label31:
	xor t1, s5, a3
	xor t2, s0, a4
	addiw a5, a5, 1
	sltu t0, zero, t1
	sltu t3, zero, t2
	and t1, t0, t3
	beq t1, zero, label32
	lw t0, 0(a2)
	lw t1, 0(a1)
	bge t0, t1, label34
label35:
	lw t0, 0(a2)
	addiw a3, a3, 1
	addi a2, a2, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s0, a5, label31
label36:
	beq s0, s3, label4
	sh2add a0, s3, s4
	mv a1, s3
label39:
	lw a2, 0(a0)
	sh2add a3, a1, s1
	addiw a1, a1, 1
	sw a2, 0(a3)
	beq s0, a1, label4
	addi a0, a0, 4
	j label39
label32:
	bne s5, a3, label35
	lw t0, 0(a1)
	addiw a4, a4, 1
	addi a1, a1, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s0, a5, label31
	j label36
label34:
	lw t0, 0(a1)
	addiw a4, a4, 1
	addi a1, a1, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s0, a5, label31
	j label36
label4:
	sh2add a2, s2, s1
	mv a4, s3
	mv a3, s2
	mv a5, s2
	sh2add a1, s3, s1
	sh2add a0, s2, s4
	beq s0, s2, label17
label12:
	xor t1, s3, a3
	xor t2, s0, a4
	addiw a5, a5, 1
	sltu t0, zero, t1
	sltu t3, zero, t2
	and t1, t0, t3
	bne t1, zero, label15
	beq s3, a3, label294
label14:
	lw t0, 0(a2)
	addiw a3, a3, 1
	addi a2, a2, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s0, a5, label12
label17:
	beq s2, s0, label63
	sh2add a0, s2, s4
label19:
	lw a1, 0(a0)
	sh2add a2, s2, s1
	addiw s2, s2, 1
	sw a1, 0(a2)
	beq s0, s2, label63
	addi a0, a0, 4
	j label19
label15:
	lw t0, 0(a2)
	lw t1, 0(a1)
	blt t0, t1, label14
	lw t0, 0(a1)
	addiw a4, a4, 1
	addi a1, a1, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s0, a5, label12
	j label17
label294:
	lw t0, 0(a1)
	addiw a4, a4, 1
	addi a1, a1, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s0, a5, label12
	j label17
label301:
	lw t0, 0(a1)
	addiw a4, a4, 1
	addi a1, a1, 4
	sw t0, 0(a0)
	addi a0, a0, 4
	bne s3, a5, label52
	j label57
.globl main
main:
	addi sp, sp, -808
	addi t5, sp, 8
	addi a4, sp, 408
	sd ra, 0(sp)
	jal read
	mv t4, a0
	ble a0, zero, label327
	mv a1, t5
	mv a2, zero
label323:
	jal read
	addiw a2, a2, 1
	sw a0, 0(a1)
	ble t4, a2, label327
	addi a1, a1, 4
	j label323
label327:
	mv a0, t5
	mv a2, zero
	mv a1, a4
	mv a3, t4
	jal merge
	ble t4, zero, label333
	mv a1, zero
label329:
	lw a0, 0(t5)
	jal write
	addiw a1, a1, 1
	ble t4, a1, label333
	addi t5, t5, 4
	j label329
label333:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 808
	ret
