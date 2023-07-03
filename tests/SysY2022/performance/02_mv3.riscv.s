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
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s6, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel479:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel479)
pcrel480:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel480)
pcrel481:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel481)
	mv s4, zero
	ble s0, zero, label4
	ble s0, zero, label55
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	j label373
label330:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	j label371
label55:
	addiw s4, s4, 1
	ble s0, s4, label4
	ble s0, zero, label55
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	j label330
label371:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	j label415
label373:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	j label330
label415:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label55
	j label415
label4:
	ble s0, zero, label7
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	j label376
label7:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label80
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label43
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label377
label80:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label18
	mv a3, zero
	ble s0, zero, label14
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, zero, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	j label269
label393:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label360
label28:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label360:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label404
label269:
	addiw a3, a3, 1
	ble s0, a3, label14
	j label337
label18:
	ble s0, zero, label110
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label31
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label31
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label31
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label31
	j label350
label110:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label27
	mv a3, zero
	ble s0, zero, label26
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, zero, 1
	ble s0, a3, label26
	j label385
label27:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label28
	ble s0, zero, label80
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label43
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label393
label350:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label31
	j label394
label47:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	j label409
label206:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label18
	mv a3, zero
	ble s0, zero, label14
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, zero, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	j label269
label385:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
label275:
	addiw a3, a3, 1
	ble s0, a3, label26
	j label343
label25:
	sh2add t1, a3, s1
	sh2add a5, a1, s2
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t0, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label26
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, a3, 1
	ble s0, a3, label26
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, a3, 1
	ble s0, a3, label26
label343:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, a3, 1
	ble s0, a3, label26
	j label343
label31:
	addiw a1, a2, 4
	ble s0, a1, label152
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label152
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label152
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label152
	j label395
label152:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label37
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label37
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label37
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label37
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label37
	j label398
label37:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label174
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label174
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label174
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label174
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label174
	j label401
label174:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label27
	mv a3, zero
	ble s0, zero, label26
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, zero, 1
	ble s0, a3, label26
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	j label275
label26:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label27
	mv a3, zero
	ble s0, zero, label26
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	addiw a3, zero, 1
	ble s0, a3, label26
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label25
	j label275
label337:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, a3, 1
	ble s0, a3, label14
	j label337
label14:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label18
	mv a3, zero
	ble s0, zero, label14
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, zero, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	j label269
label16:
	sh2add t1, a3, s2
	sh2add a5, a1, s1
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t0, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, a3, 1
	ble s0, a3, label14
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label16
	addiw a3, a3, 1
	ble s0, a3, label14
	j label337
label401:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label174
	j label401
label409:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label206
	j label409
label43:
	addiw a1, a2, 4
	ble s0, a1, label194
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	j label363
label194:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	j label408
label394:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label31
	j label394
label395:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label152
	j label395
label398:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label37
	j label398
label404:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label404
label363:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	j label407
label408:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label47
	j label408
label407:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label194
	j label407
label377:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label43
	j label360
label376:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label7
	j label376
