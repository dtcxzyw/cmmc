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
	addi sp, sp, -48
	sd s0, 40(sp)
	mv s0, a0
	sd s2, 32(sp)
	addiw a0, a2, 1
	mv s2, a1
	sd s3, 24(sp)
	mv s3, a2
	sd s1, 16(sp)
	mv s1, a3
	sd s4, 8(sp)
	sd ra, 0(sp)
	bgt a3, a0, label2
	j label15
label7:
	xor a4, s4, a1
	xor a5, s1, a2
	sltu a3, zero, a4
	sltu a4, zero, a5
	and a3, a3, a4
	bne a3, zero, label8
	bne s4, a1, label9
	sh2add a4, a2, s0
	sh2add a5, a0, s2
	addiw a2, a2, 1
	lw a3, 0(a4)
	addiw a0, a0, 1
	sw a3, 0(a5)
	bne s1, a0, label7
	bne s1, s3, label14
label15:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label12:
	beq s1, s3, label15
label14:
	sh2add a1, s3, s2
	sh2add a2, s3, s0
	lw a0, 0(a1)
	addiw s3, s3, 1
	sw a0, 0(a2)
	j label12
label9:
	sh2add a4, a1, s0
	sh2add a5, a0, s2
	addiw a1, a1, 1
	lw a3, 0(a4)
	addiw a0, a0, 1
	sw a3, 0(a5)
	bne s1, a0, label7
	bne s1, s3, label14
	j label15
label8:
	sh2add a4, a1, s0
	sh2add a5, a2, s0
	lw a3, 0(a4)
	lw a4, 0(a5)
	blt a3, a4, label9
	sh2add a4, a2, s0
	sh2add a5, a0, s2
	addiw a2, a2, 1
	lw a3, 0(a4)
	addiw a0, a0, 1
	sw a3, 0(a5)
	bne s1, a0, label7
	bne s1, s3, label14
	j label15
label2:
	addw a0, s3, s1
	srliw a2, a0, 31
	add a1, a0, a2
	mv a0, s0
	sraiw s4, a1, 1
	mv a1, s2
	mv a2, s3
	mv a3, s4
	jal merge
	mv a0, s0
	mv a1, s2
	mv a2, s4
	mv a3, s1
	jal merge
	mv a0, s3
	mv a1, s3
	mv a2, s4
	bne s1, s3, label7
	j label15
.globl main
main:
	addi sp, sp, -808
	addi t1, sp, 400
	addi a1, sp, 0
	sd ra, 800(sp)
	jal read
	mv t0, a0
	ble a0, zero, label111
	mv a2, zero
label109:
	jal read
	sh2add a3, a2, t1
	addiw a2, a2, 1
	sw a0, 0(a3)
	bgt t0, a2, label109
label111:
	mv a0, t1
	mv a2, zero
	mv a3, t0
	jal merge
	ble t0, zero, label114
	mv a1, zero
label112:
	sh2add a2, a1, t1
	lw a0, 0(a2)
	jal write
	addiw a1, a1, 1
	bgt t0, a1, label112
label114:
	mv a0, zero
	ld ra, 800(sp)
	addi sp, sp, 808
	ret
