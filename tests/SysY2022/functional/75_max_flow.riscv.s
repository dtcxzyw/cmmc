.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
to:
	.zero	400
.align 8
cap:
	.zero	400
.align 8
rev:
	.zero	400
.text
dfs:
.p2align 2
	addi sp, sp, -216
	sd s0, 112(sp)
	sd s5, 120(sp)
	sd s1, 128(sp)
	sd s6, 136(sp)
	sd s4, 144(sp)
	sd s2, 152(sp)
	sd s3, 160(sp)
	sd s9, 168(sp)
	sd s7, 176(sp)
	sd s11, 184(sp)
	sd s10, 192(sp)
	sd s8, 200(sp)
	sd ra, 208(sp)
	sd a2, 56(sp)
	sd a1, 64(sp)
	sd a3, 72(sp)
	sd a4, 80(sp)
	sd a0, 88(sp)
	bne a0, a1, label4
	mv a0, a2
	j label2
label4:
	ld a0, 88(sp)
	li a2, 1
pcrel388:
	auipc a3, %pcrel_hi(cap)
	ld a4, 80(sp)
	sh2add a1, a0, a4
pcrel389:
	auipc a4, %pcrel_hi(to)
	sw a2, 0(a1)
	addi a2, a3, %pcrel_lo(pcrel388)
	sh2add a3, a0, a0
	sd a2, 96(sp)
	mv a1, a2
	addi a1, a4, %pcrel_lo(pcrel389)
	sh3add a2, a3, a2
	mv a0, a1
	sd a2, 32(sp)
	sh3add a0, a3, a1
	sd a1, 24(sp)
	mv a1, zero
	sd a0, 48(sp)
	sd zero, 40(sp)
	j label5
label2:
	ld ra, 208(sp)
	ld s8, 200(sp)
	ld s10, 192(sp)
	ld s11, 184(sp)
	ld s7, 176(sp)
	ld s9, 168(sp)
	ld s3, 160(sp)
	ld s2, 152(sp)
	ld s4, 144(sp)
	ld s6, 136(sp)
	ld s1, 128(sp)
	ld s5, 120(sp)
	ld s0, 112(sp)
	addi sp, sp, 216
	ret
label5:
	ld a0, 88(sp)
	ld a3, 72(sp)
	sh2add a2, a0, a3
	lw a0, 0(a2)
	ld a1, 40(sp)
	blt a1, a0, label7
	mv a0, zero
	j label2
label7:
	ld a0, 48(sp)
	ld a1, 40(sp)
	sh2add a2, a1, a0
	lw a0, 0(a2)
	sd a0, 8(sp)
	ld a4, 80(sp)
	sh2add a1, a0, a4
	lw a2, 0(a1)
	beq a2, zero, label8
label76:
	ld a1, 40(sp)
	addiw a1, a1, 1
	sd a1, 40(sp)
	j label5
label8:
	ld a1, 40(sp)
	ld a2, 32(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ble a0, zero, label76
	ld a2, 56(sp)
	min s0, a2, a0
pcrel390:
	auipc a0, %pcrel_hi(rev)
	addi a2, a0, %pcrel_lo(pcrel390)
	sd a2, 16(sp)
	ld a1, 64(sp)
	ld a0, 8(sp)
	beq a1, a0, label10
	ld a1, 96(sp)
	sh2add a2, a0, a0
	ld a0, 24(sp)
	sh3add s1, a2, a1
	sh3add a1, a2, a0
	li a2, 1
	sd a1, 0(sp)
	ld a4, 80(sp)
	ld a0, 8(sp)
	sh2add a1, a0, a4
	mv a0, zero
	sw a2, 0(a1)
	sd zero, 104(sp)
	j label14
label10:
	bgt s0, zero, label12
	j label76
label14:
	ld a3, 72(sp)
	ld a0, 8(sp)
	sh2add a2, a0, a3
	lw a1, 0(a2)
	ld a0, 104(sp)
	blt a0, a1, label16
	mv s0, zero
	j label10
label16:
	ld a1, 0(sp)
	ld a0, 104(sp)
	sh2add a2, a0, a1
	lw s4, 0(a2)
	ld a4, 80(sp)
	sh2add a0, s4, a4
	lw a1, 0(a0)
	beq a1, zero, label18
label17:
	ld a0, 104(sp)
	addiw a0, a0, 1
	sd a0, 104(sp)
	j label14
label18:
	ld a0, 104(sp)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	ble a1, zero, label17
	min s2, s0, a1
	ld a1, 64(sp)
	beq a1, s4, label20
	sh2add a2, s4, s4
	ld a1, 96(sp)
	mv s3, zero
	sh3add s6, a2, a1
	ld a0, 24(sp)
	li a1, 1
	ld a4, 80(sp)
	sh3add s5, a2, a0
	sh2add a0, s4, a4
	sw a1, 0(a0)
	j label24
label12:
	ld a1, 40(sp)
	ld a2, 32(sp)
	sh2add a0, a1, a2
	lw a3, 0(a0)
	subw a1, a3, s0
	sw a1, 0(a0)
	ld a0, 88(sp)
	ld a2, 16(sp)
	sh2add a1, a0, a0
	sh3add a0, a1, a2
	ld a1, 40(sp)
	sh2add a2, a1, a0
	ld a0, 48(sp)
	sh2add a4, a1, a0
	lw a3, 0(a4)
	lw a0, 0(a2)
	ld a1, 96(sp)
	sh2add a2, a3, a3
	sh3add a3, a2, a1
	sh2add a0, a0, a3
	lw a1, 0(a0)
	addw a2, s0, a1
	sw a2, 0(a0)
	mv a0, s0
	j label2
label20:
	bgt s2, zero, label22
	j label17
label24:
	ld a3, 72(sp)
	sh2add a1, s4, a3
	lw a0, 0(a1)
	blt s3, a0, label26
	mv s2, zero
	j label20
label26:
	sh2add a0, s3, s5
	lw s9, 0(a0)
	ld a4, 80(sp)
	sh2add a1, s9, a4
	lw a0, 0(a1)
	beq a0, zero, label27
label193:
	addiw s3, s3, 1
	j label24
label27:
	sh2add a1, s3, s6
	lw a0, 0(a1)
	ble a0, zero, label193
	min s7, s2, a0
	ld a1, 64(sp)
	bne a1, s9, label29
	mv a0, s7
	j label37
label29:
	sh2add a2, s9, s9
	ld a1, 96(sp)
	mv s8, zero
	sh3add s11, a2, a1
	ld a0, 24(sp)
	li a1, 1
	ld a4, 80(sp)
	sh3add s10, a2, a0
	sh2add a0, s9, a4
	sw a1, 0(a0)
	j label30
label22:
	ld a0, 104(sp)
	mv s0, s2
	sh2add a1, a0, s1
	lw a2, 0(a1)
	subw a3, a2, s2
	sw a3, 0(a1)
	ld a0, 8(sp)
	ld a2, 16(sp)
	sh2add a1, a0, a0
	ld a0, 104(sp)
	sh3add a3, a1, a2
	ld a1, 0(sp)
	sh2add a2, a0, a3
	sh2add a3, a0, a1
	lw a1, 0(a3)
	lw a0, 0(a2)
	sh2add a2, a1, a1
	ld a1, 96(sp)
	sh3add a3, a2, a1
	sh2add a0, a0, a3
	lw a2, 0(a0)
	addw a1, s2, a2
	sw a1, 0(a0)
	j label10
label30:
	ld a3, 72(sp)
	sh2add a0, s9, a3
	lw a1, 0(a0)
	blt s8, a1, label32
	mv a0, zero
	j label37
label32:
	sh2add a1, s8, s10
	lw a0, 0(a1)
	ld a4, 80(sp)
	sh2add a2, a0, a4
	lw a1, 0(a2)
	beq a1, zero, label33
label228:
	addiw s8, s8, 1
	j label30
label33:
	sh2add a2, s8, s11
	lw a1, 0(a2)
	ble a1, zero, label228
	min a2, s7, a1
	ld a4, 80(sp)
	ld a3, 72(sp)
	ld a1, 64(sp)
	jal dfs
	bgt a0, zero, label35
	j label228
label37:
	ble a0, zero, label193
	sh2add a1, s3, s6
	mv s2, a0
	sh2add a4, s3, s5
	lw a3, 0(a1)
	subw a2, a3, a0
	sw a2, 0(a1)
	ld a2, 16(sp)
	sh2add a1, s4, s4
	sh3add a3, a1, a2
	sh2add a1, s3, a3
	lw a3, 0(a4)
	sh2add a4, a3, a3
	lw a2, 0(a1)
	ld a1, 96(sp)
	sh3add a3, a4, a1
	sh2add a2, a2, a3
	lw a1, 0(a2)
	addw a3, a0, a1
	sw a3, 0(a2)
	j label20
label35:
	sh2add a1, s8, s11
	sh2add a4, s8, s10
	lw a3, 0(a1)
	subw a2, a3, a0
	sw a2, 0(a1)
	ld a2, 16(sp)
	sh2add a1, s9, s9
	sh3add a3, a1, a2
	sh2add a1, s8, a3
	lw a3, 0(a4)
	sh2add a4, a3, a3
	lw a2, 0(a1)
	ld a1, 96(sp)
	sh3add a3, a4, a1
	sh2add a2, a2, a3
	lw a4, 0(a2)
	addw a1, a0, a4
	sw a1, 0(a2)
	j label37
.globl main
main:
.p2align 2
	addi sp, sp, -168
	sd s2, 40(sp)
	addi s2, sp, 0
	sd s1, 160(sp)
	addi s1, sp, 48
	sd s6, 152(sp)
	sd s0, 144(sp)
	sd s5, 136(sp)
	sd s3, 128(sp)
	sd s4, 120(sp)
	sd s8, 112(sp)
	sd s7, 104(sp)
	sd s9, 96(sp)
	sd ra, 88(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s6, a0
	sw zero, 48(sp)
pcrel503:
	auipc a0, %pcrel_hi(to)
	sw zero, 52(sp)
	addi s3, a0, %pcrel_lo(pcrel503)
	sw zero, 56(sp)
pcrel504:
	auipc a0, %pcrel_hi(cap)
	sw zero, 60(sp)
	addi s4, a0, %pcrel_lo(pcrel504)
	sw zero, 64(sp)
pcrel505:
	auipc a0, %pcrel_hi(rev)
	sw zero, 68(sp)
	addi s5, a0, %pcrel_lo(pcrel505)
	sd zero, 72(sp)
	sd zero, 80(sp)
	bgt s6, zero, label392
.p2align 2
label420:
	mv a5, zero
	j label394
.p2align 2
label392:
	jal getint
	sh2add s7, a0, s1
	mv s8, a0
	jal getint
	mv s9, a0
	jal getint
	sh2add a2, s8, s8
	addiw s6, s6, -1
	mv a1, a0
	sh3add a4, a2, s3
	lw a0, 0(s7)
	sh2add a3, a0, a4
	sh3add a4, a2, s4
	sh3add a2, a2, s5
	sw s9, 0(a3)
	sh2add a3, a0, a4
	sw a1, 0(a3)
	sh2add a1, s9, s1
	sh2add a3, a0, a2
	lw a2, 0(a1)
	sw a2, 0(a3)
	sh2add a3, s9, s9
	sh3add a5, a3, s3
	sh2add a4, a2, a5
	sh3add a5, a3, s4
	sw s8, 0(a4)
	sh3add a3, a3, s5
	sh2add a4, a2, a5
	sh2add a2, a2, a3
	sw zero, 0(a4)
	addi a3, a0, 1
	sw a0, 0(a2)
	sw a3, 0(s7)
	lw a0, 0(a1)
	addi a2, a0, 1
	sw a2, 0(a1)
	bgt s6, zero, label392
	j label420
label394:
	sw zero, 0(sp)
	li a0, 1
	lui a2, 458752
	sw zero, 4(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	mv a1, s0
	mv a3, s1
	mv a4, s2
	jal dfs
	beq a0, zero, label396
	addw a5, a5, a0
	j label394
label396:
	mv a0, a5
	jal putint
	li a0, 10
	jal putch
	ld ra, 88(sp)
	mv a0, zero
	ld s9, 96(sp)
	ld s7, 104(sp)
	ld s8, 112(sp)
	ld s4, 120(sp)
	ld s3, 128(sp)
	ld s5, 136(sp)
	ld s0, 144(sp)
	ld s6, 152(sp)
	ld s1, 160(sp)
	ld s2, 40(sp)
	addi sp, sp, 168
	ret
