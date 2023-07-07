.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
	addi sp, sp, -48
	sd s0, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, zero
	mv s0, a0
pcrel405:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel405)
	ble s0, zero, label4
	ble s0, zero, label41
	li a0, 8040
	mv s4, zero
	mul a0, zero, a0
	add s3, s2, a0
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	j label291
label41:
	addiw s1, s1, 1
	ble s0, s1, label4
	ble s0, zero, label41
	li a0, 8040
	mv s4, zero
	mul a0, s1, a0
	add s3, s2, a0
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
label291:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
label356:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	j label356
label4:
	ble s0, zero, label8
pcrel406:
	auipc a0, %pcrel_hi(B)
	mv s3, zero
	addi s1, a0, %pcrel_lo(pcrel406)
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	j label328
label8:
	li a0, 59
	jal _sysy_starttime
pcrel407:
	auipc a1, %pcrel_hi(C)
pcrel408:
	auipc a0, %pcrel_hi(B)
	addi s1, a1, %pcrel_lo(pcrel407)
	addi a0, a0, %pcrel_lo(pcrel408)
	mv a1, zero
	ble s0, zero, label71
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label37
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	j label329
label71:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label13
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label280
label13:
	ble s0, zero, label80
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label17
	sh2add a2, zero, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label17
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label17
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label17
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label17
	j label300
label80:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label27
	mv a4, zero
	ble s0, zero, label26
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	addiw a4, zero, 1
	ble s0, a4, label26
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	j label220
label300:
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label17
	j label333
label220:
	addiw a4, a4, 1
	ble s0, a4, label26
	j label274
label27:
	addiw a1, a1, 1
	li a2, 50
	bge a1, a2, label28
	ble s0, zero, label71
	mv a2, zero
	addiw a3, zero, 4
	ble s0, a3, label37
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	j label344
label28:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label312:
	addiw a4, a4, 1
	ble s0, a4, label31
	j label345
label34:
	sh2add t1, a4, a0
	sh2add t0, a2, s1
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw a5, a5, t1
	addw a5, t2, a5
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	j label312
label345:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	j label312
label280:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	j label312
label31:
	addiw a2, a2, 1
	li a3, 8040
	mulw a3, a2, a3
	add a3, s2, a3
	ble s0, a2, label13
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label280
label37:
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label162
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label162
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label162
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label162
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label162
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label162
	j label351
label162:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label13
	mv a4, zero
	ble s0, zero, label31
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, zero, 1
	ble s0, a4, label31
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label280
label17:
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label97
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label97
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label97
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label97
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label97
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label97
	j label336
label97:
	mv a2, zero
	li a3, 8040
	mulw a3, zero, a3
	add a3, s2, a3
	ble s0, zero, label27
	mv a4, zero
	ble s0, zero, label26
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	addiw a4, zero, 1
	ble s0, a4, label26
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	j label337
label274:
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	j label306
label26:
	addiw a2, a2, 1
	li a3, 8040
	mulw a3, a2, a3
	add a3, s2, a3
	ble s0, a2, label27
	mv a4, zero
	ble s0, zero, label26
	sh2add a5, zero, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	addiw a4, zero, 1
	ble s0, a4, label26
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	j label274
label337:
	addiw a4, a4, 1
	ble s0, a4, label26
	j label274
label24:
	sh2add t2, a4, s1
	sh2add t0, a2, a0
	lw t1, 0(t0)
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw a5, t1, a5
	sw a5, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label24
label306:
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add a5, a4, a3
	lw a5, 0(a5)
	bne a5, zero, label24
	j label306
label336:
	sh2add a3, a2, a0
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label97
	j label336
label351:
	sh2add a3, a2, s1
	addiw a2, a2, 1
	sw zero, 0(a3)
	ble s0, a2, label162
	j label351
label333:
	sh2add a2, a2, a0
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label17
	j label333
label329:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
label317:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	j label350
label344:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	j label317
label350:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a3
	addiw a3, a3, 4
	ble s0, a3, label37
	j label350
label328:
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	j label328
