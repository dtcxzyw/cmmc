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
	mv s4, zero
	mv s0, a0
pcrel500:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel500)
pcrel501:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel501)
pcrel502:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel502)
	ble s0, zero, label9
	ble s0, zero, label5
	li a0, 8040
	mv s6, zero
	mul a0, zero, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
label302:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label344
label9:
	ble s0, zero, label10
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	j label391
label344:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
label389:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label389
label5:
	addiw s4, s4, 1
	ble s0, s4, label9
	ble s0, zero, label5
	li a0, 8040
	mv s6, zero
	mul a0, s4, a0
	add s5, s3, a0
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label302
label10:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label16
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label16
	j label392
label86:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label32
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label29
	addiw a3, zero, 1
	ble s0, a3, label31
	j label132
label349:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label16
	j label393
label418:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label16
	j label349
label42:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label32:
	ble s0, zero, label153
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label46
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	j label373
label153:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label41
	mv a3, zero
	ble s0, zero, label40
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a3, zero, 1
	ble s0, a3, label40
	j label410
label366:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label39
	j label412
label39:
	sh2add t0, a3, s1
	sh2add a5, a1, s2
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label40
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a3, a3, 1
	ble s0, a3, label40
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a3, a3, 1
	ble s0, a3, label40
	j label366
label41:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label42
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label16
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label16
	j label418
label373:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	j label419
label410:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label39
label286:
	addiw a3, a3, 1
	ble s0, a3, label40
	j label366
label40:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label41
	mv a3, zero
	ble s0, zero, label40
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a3, zero, 1
	ble s0, a3, label40
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label39
	j label286
label46:
	addiw a1, a2, 4
	ble s0, a1, label200
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	j label376
label200:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label51
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label51
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label51
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label51
	j label423
label51:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label217
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label217
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label217
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label217
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label217
	j label426
label217:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label41
	mv a3, zero
	ble s0, zero, label40
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label39
	addiw a3, zero, 1
	ble s0, a3, label40
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label39
	j label286
label412:
	addiw a3, a3, 1
	ble s0, a3, label40
	j label366
label352:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label101
	j label396
label101:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	j label397
label21:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label118
	j label400
label118:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label32
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label29
	addiw a3, zero, 1
	ble s0, a3, label31
label132:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label29
	j label280
label359:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label29
	j label404
label29:
	sh2add t0, a3, s2
	sh2add a5, a1, s1
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label29
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label29
	addiw a3, a3, 1
	ble s0, a3, label31
	j label359
label280:
	addiw a3, a3, 1
	ble s0, a3, label31
	j label359
label31:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label32
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label29
	addiw a3, zero, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label29
	j label280
label404:
	addiw a3, a3, 1
	ble s0, a3, label31
	j label359
label426:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label217
	j label426
label400:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label118
	j label400
label419:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	j label419
label376:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
label422:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	j label422
label423:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label51
	j label423
label392:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label16
	j label349
label16:
	addiw a1, a2, 4
	ble s0, a1, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label101
	j label352
label397:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label21
	j label397
label393:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label16
	j label393
label396:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label101
	j label396
label391:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
label429:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	j label429