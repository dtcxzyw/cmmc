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
pcrel409:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel409)
	ble s0, zero, label4
	j label209
label41:
	addiw s1, s1, 1
	ble s0, s1, label4
	ble s0, zero, label41
label209:
	li a1, 8040
	mv s4, zero
	mul a0, s1, a1
	add s3, s2, a0
label43:
	jal getint
	sh2add a1, s4, s3
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s0, s4, label41
	j label43
label4:
	ble s0, zero, label8
	j label53
label8:
	li a0, 59
	jal _sysy_starttime
pcrel410:
	auipc a1, %pcrel_hi(B)
	addi a0, a1, %pcrel_lo(pcrel410)
pcrel411:
	auipc a1, %pcrel_hi(C)
	addi s1, a1, %pcrel_lo(pcrel411)
	mv a1, zero
	ble s0, zero, label71
	mv a3, zero
	li a2, 4
	ble s0, a2, label38
	mv a3, s1
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	j label361
label336:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	j label354
label31:
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	ble s0, a2, label13
	mv a4, zero
	ble s0, zero, label31
	mv t0, a3
	lw a5, 0(a3)
	bne a5, zero, label34
	li a4, 1
	ble s0, a4, label31
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label336
label38:
	sh2add a2, a3, s1
	addiw a3, a3, 1
	sw zero, 0(a2)
	ble s0, a3, label167
	j label38
label167:
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	ble s0, zero, label13
	mv a4, zero
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label34
	li a4, 1
	ble s0, a4, label31
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label336
label354:
	addiw a4, a4, 1
	ble s0, a4, label31
	j label374
label34:
	sh2add t1, a4, a0
	sh2add t0, a2, s1
	lw t2, 0(t0)
	lw t1, 0(t1)
	mulw a5, a5, t1
	addw t2, t2, a5
	sw t2, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	j label354
label374:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label34
	j label354
label71:
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	ble s0, zero, label13
	mv a4, zero
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label34
	li a4, 1
	ble s0, a4, label31
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label31
	j label336
label17:
	sh2add a2, a4, a0
	addiw a4, a4, 1
	sw zero, 0(a2)
	ble s0, a4, label97
	j label17
label97:
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	ble s0, zero, label27
	mv a4, zero
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label24
	li a4, 1
	ble s0, a4, label26
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label24
	j label367
label330:
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	j label349
label26:
	addiw a2, a2, 1
	li a4, 8040
	mulw a5, a2, a4
	add a3, s2, a5
	ble s0, a2, label27
	mv a4, zero
	ble s0, zero, label26
	mv t0, a3
	lw a5, 0(a3)
	bne a5, zero, label24
	li a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	j label330
label27:
	addiw a1, a1, 1
	li a2, 50
	bge a1, a2, label28
	ble s0, zero, label71
	mv a3, zero
	li a2, 4
	ble s0, a2, label38
	mv a3, s1
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	j label361
label367:
	addiw a4, a4, 1
	ble s0, a4, label26
	j label330
label13:
	ble s0, zero, label80
	mv a4, zero
	li a3, 4
	ble s0, a3, label17
	mv a2, a0
	mv a4, a3
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	addiw a3, a3, 4
	ble s0, a3, label17
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label17
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label17
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label17
	j label363
label80:
	mv a2, zero
	li a4, 8040
	mv a5, zero
	mv a3, s2
	ble s0, zero, label27
	mv a4, zero
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label24
	li a4, 1
	ble s0, a4, label26
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, s2
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	j label330
label349:
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	j label349
label24:
	sh2add t2, a4, s1
	sh2add t0, a2, a0
	lw t1, 0(t0)
	lw t2, 0(t2)
	mulw a5, a5, t2
	addw t1, t1, a5
	sw t1, 0(t0)
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	addiw a4, a4, 1
	ble s0, a4, label26
	sh2add t0, a4, a3
	lw a5, 0(t0)
	bne a5, zero, label24
	j label349
label363:
	sh2add a2, a4, a0
	mv a4, a3
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addiw a3, a3, 4
	ble s0, a3, label17
	j label363
label361:
	sh2add a3, a3, s1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a2
	addiw a2, a2, 4
	ble s0, a2, label38
	j label361
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
label53:
	auipc a0, %pcrel_hi(B)
	mv s3, zero
	addi s1, a0, %pcrel_lo(label53)
label6:
	jal getint
	sh2add a1, s3, s1
	addiw s3, s3, 1
	sw a0, 0(a1)
	ble s0, s3, label8
	j label6
