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
	sd s2, 8(sp)
	mv s2, a0
	sd s4, 16(sp)
	addiw a0, a2, 1
	mv s4, a1
	sd s0, 24(sp)
	mv s0, a2
	sd s5, 32(sp)
	sd s3, 40(sp)
	mv s3, a3
	sd s1, 48(sp)
	bgt a3, a0, label2
label42:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s4, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s3, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label2:
	addw a1, s0, s3
	srliw a3, a1, 31
	add a2, a1, a3
	sraiw s1, a2, 1
	bge a0, s1, label3
	addw a1, s0, s1
	srliw a0, a1, 31
	add a2, a1, a0
	mv a0, s2
	sraiw s5, a2, 1
	mv a1, s4
	mv a2, s0
	mv a3, s5
	jal merge
	mv a0, s2
	mv a1, s4
	mv a2, s5
	mv a3, s1
	jal merge
	mv a2, s0
	mv a0, s0
	mv a1, s5
label30:
	beq s1, a2, label168
	xor a4, s5, a0
	xor t0, s1, a1
	sltu a3, zero, a4
	sltu a5, zero, t0
	and a4, a3, a5
	addiw a3, a2, 1
	bne a4, zero, label37
	beq s5, a0, label184
label38:
	sh2add a5, a0, s2
	sh2add a2, a2, s4
	addiw a0, a0, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	j label30
label168:
	beq s0, s1, label276
	mv a0, s0
label40:
	sh2add a3, a0, s4
	sh2add a2, a0, s2
	lw a1, 0(a3)
	addiw a0, a0, 1
	sw a1, 0(a2)
	bne s1, a0, label40
	addiw a1, s1, 1
	bgt s3, a1, label16
label60:
	mv a0, s1
	mv a1, s0
	mv a2, s0
	j label4
label276:
	addiw a1, s1, 1
	bgt s3, a1, label16
	j label60
label4:
	beq s3, a2, label8
label11:
	xor a4, s1, a1
	xor t0, s3, a0
	sltu a3, zero, a4
	sltu a5, zero, t0
	and a4, a3, a5
	addiw a3, a2, 1
	bne a4, zero, label15
	j label85
label12:
	sh2add a5, a1, s2
	sh2add a2, a2, s4
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s3, a3, label11
	j label270
label15:
	sh2add t0, a1, s2
	sh2add a5, a0, s2
	lw a4, 0(t0)
	lw t0, 0(a5)
	blt a4, t0, label12
	sh2add a2, a2, s4
	addiw a0, a0, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s3, a3, label11
	bne s0, s3, label9
	j label42
label8:
	beq s0, s3, label42
label9:
	sh2add a1, s0, s4
	sh2add a2, s0, s2
	lw a0, 0(a1)
	addiw s0, s0, 1
	sw a0, 0(a2)
	bne s3, s0, label9
	j label42
label85:
	bne s1, a1, label12
	sh2add a5, a0, s2
	sh2add a2, a2, s4
	addiw a0, a0, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	bne s3, a3, label11
	bne s0, s3, label9
	j label42
label184:
	sh2add a5, a1, s2
	sh2add a2, a2, s4
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	j label30
label37:
	sh2add a5, a0, s2
	sh2add t0, a1, s2
	lw a4, 0(a5)
	lw a5, 0(t0)
	blt a4, a5, label38
	j label184
label270:
	bne s0, s3, label9
	j label42
label3:
	addiw a1, s1, 1
	ble s3, a1, label60
label16:
	addw a0, s3, s1
	srliw a2, a0, 31
	add a1, a0, a2
	mv a0, s2
	sraiw s5, a1, 1
	mv a1, s4
	mv a2, s1
	mv a3, s5
	jal merge
	mv a0, s2
	mv a1, s4
	mv a2, s5
	mv a3, s3
	jal merge
	mv a2, s1
	mv a0, s1
	mv a1, s5
label17:
	beq s3, a2, label116
	xor a4, s5, a0
	xor t0, s3, a1
	sltu a3, zero, a4
	sltu a5, zero, t0
	and a4, a3, a5
	addiw a3, a2, 1
	beq a4, zero, label24
	sh2add a5, a0, s2
	sh2add t0, a1, s2
	lw a4, 0(a5)
	lw a5, 0(t0)
	bge a4, a5, label139
label25:
	sh2add a5, a0, s2
	sh2add a2, a2, s4
	addiw a0, a0, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	j label17
label116:
	beq s3, s1, label273
	mv a0, s1
label27:
	sh2add a3, a0, s4
	sh2add a2, a0, s2
	lw a1, 0(a3)
	addiw a0, a0, 1
	sw a1, 0(a2)
	bne s3, a0, label27
	mv a0, s1
	mv a1, s0
	mv a2, s0
	bne s3, s0, label11
	bne s0, s3, label9
	j label42
label139:
	sh2add a5, a1, s2
	sh2add a2, a2, s4
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a2)
	mv a2, a3
	j label17
label24:
	bne s5, a0, label25
	j label139
label273:
	mv a0, s1
	mv a1, s0
	mv a2, s0
	bne s3, s0, label11
	bne s0, s3, label9
	j label42
.globl main
main:
	addi sp, sp, -808
	addi t2, sp, 8
	addi a1, sp, 408
	sd ra, 0(sp)
	jal read
	mv t1, a0
	ble a0, zero, label305
	mv a2, zero
label303:
	jal read
	sh2add a3, a2, t2
	addiw a2, a2, 1
	sw a0, 0(a3)
	bgt t1, a2, label303
label305:
	mv a0, t2
	mv a2, zero
	mv a3, t1
	jal merge
	ble t1, zero, label308
	mv a1, zero
label306:
	sh2add a2, a1, t2
	lw a0, 0(a2)
	jal write
	addiw a1, a1, 1
	bgt t1, a1, label306
label308:
	mv a0, zero
	ld ra, 0(sp)
	addi sp, sp, 808
	ret
