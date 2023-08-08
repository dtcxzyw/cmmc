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
	addw a1, s2, s1
	srliw a2, a1, 31
	add a3, a1, a2
	sraiw s3, a3, 1
	blt a0, s3, label44
label3:
	addiw a0, s3, 1
	bgt s1, a0, label4
label24:
	beq s2, s1, label64
	sh2add a0, s2, s4
	mv a1, s2
	mv a2, s2
	mv a3, s3
	xor a5, s3, s2
	xor t0, s1, s3
	sltu a4, zero, a5
	sltu t1, zero, t0
	and a5, a4, t1
	bne a5, zero, label43
	bne s3, s2, label31
	sh2add a5, s3, s0
	addiw a1, s2, 1
	addiw a3, s3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s1, a1, label35
	j label307
label31:
	sh2add a5, a2, s0
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	addiw a1, a1, 1
	beq s1, a1, label307
label35:
	addi a0, a0, 4
	xor a5, s3, a2
	xor t0, s1, a3
	sltu a4, zero, a5
	sltu t1, zero, t0
	and a5, a4, t1
	beq a5, zero, label296
label43:
	sh2add t1, a2, s0
	sh2add t0, a3, s0
	lw a4, 0(t1)
	lw a5, 0(t0)
	blt a4, a5, label31
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s1, a1, label35
	j label307
label296:
	bne s3, a2, label31
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s1, a1, label35
	j label307
label44:
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
	beq s2, s3, label3
	sh2add a0, s2, s4
	mv a1, s2
	mv a2, s2
	mv a3, s5
	xor t0, s5, s2
	xor t1, s3, s5
	sltu a4, zero, t0
	sltu a5, zero, t1
	and t0, a4, a5
	bne t0, zero, label62
	bne s5, s2, label51
	sh2add a5, s5, s0
	addiw a1, s2, 1
	addiw a3, s5, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label55
	j label309
label51:
	sh2add a5, a2, s0
	addiw a2, a2, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	addiw a1, a1, 1
	beq s3, a1, label309
label55:
	addi a0, a0, 4
	xor t0, s5, a2
	xor t1, s3, a3
	sltu a4, zero, t0
	sltu a5, zero, t1
	and t0, a4, a5
	bne t0, zero, label62
	bne s5, a2, label51
	j label310
label62:
	sh2add a5, a2, s0
	sh2add t1, a3, s0
	lw a4, 0(a5)
	lw t0, 0(t1)
	blt a4, t0, label51
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label55
	j label309
label4:
	addw a1, s1, s3
	mv a0, s0
	srliw a3, a1, 31
	add a2, a1, a3
	mv a1, s4
	sraiw s5, a2, 1
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
	xor t0, s5, s3
	xor a5, s1, s5
	sltu a4, zero, t0
	sltu t1, zero, a5
	and t0, a4, t1
	bne t0, zero, label22
	bne s5, s3, label21
	sh2add a4, s5, s0
	addiw a3, s5, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	addiw a1, s3, 1
	bne s1, a1, label19
label14:
	sh2add a0, s3, s4
	mv a1, s3
label15:
	lw a2, 0(a0)
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw a2, 0(a3)
	beq s1, a1, label24
	addi a0, a0, 4
	j label15
label19:
	addi a0, a0, 4
	xor t0, s5, a2
	xor a5, s1, a3
	sltu a4, zero, t0
	sltu t1, zero, a5
	and t0, a4, t1
	bne t0, zero, label22
	beq s5, a2, label305
label21:
	sh2add a4, a2, s0
	addiw a1, a1, 1
	addiw a2, a2, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label19
	j label14
label22:
	sh2add t1, a2, s0
	sh2add a5, a3, s0
	lw a4, 0(t1)
	lw t0, 0(a5)
	blt a4, t0, label21
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label19
	j label14
label307:
	sh2add a0, s2, s4
label37:
	lw a1, 0(a0)
	sh2add a2, s2, s0
	addiw s2, s2, 1
	sw a1, 0(a2)
	beq s1, s2, label64
	addi a0, a0, 4
	j label37
label309:
	sh2add a0, s2, s4
	mv a1, s2
label57:
	lw a2, 0(a0)
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw a2, 0(a3)
	beq s3, a1, label3
	addi a0, a0, 4
	j label57
label305:
	sh2add a4, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a0)
	bne s1, a1, label19
	j label14
label310:
	sh2add a5, a3, s0
	addiw a1, a1, 1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 0(a0)
	bne s3, a1, label55
	j label309
.globl main
main:
	addi sp, sp, -808
	addi t3, sp, 8
	addi a4, sp, 408
	sd ra, 0(sp)
	jal read
	mv t2, a0
	ble a0, zero, label334
	mv a1, t3
	mv a2, zero
label330:
	jal read
	addiw a2, a2, 1
	sw a0, 0(a1)
	ble t2, a2, label334
	addi a1, a1, 4
	j label330
label334:
	mv a0, t3
	mv a2, zero
	mv a1, a4
	mv a3, t2
	jal merge
	ble t2, zero, label340
	mv a1, zero
label336:
	lw a0, 0(t3)
	jal write
	addiw a1, a1, 1
	ble t2, a1, label340
	addi t3, t3, 4
	j label336
label340:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 808
	ret
