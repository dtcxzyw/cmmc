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
.p2align 2
dfs:
	addi sp, sp, -216
	mv a5, a0
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s10, 64(sp)
	sd s9, 72(sp)
	sd s7, 80(sp)
	sd s8, 88(sp)
	sd s11, 96(sp)
	sd a2, 152(sp)
	sd a3, 144(sp)
	sd a1, 136(sp)
	sd a4, 128(sp)
	sd a0, 120(sp)
	beq a0, a1, label57
	li a3, 1
pcrel380:
	auipc a2, %pcrel_hi(cap)
	addi a1, a2, %pcrel_lo(pcrel380)
	sh2add a0, a0, a4
pcrel381:
	auipc a4, %pcrel_hi(to)
	sw a3, 0(a0)
	sh2add a0, a5, a5
	addi a3, a4, %pcrel_lo(pcrel381)
	sd a1, 112(sp)
	sh3add a2, a0, a1
	sd a3, 160(sp)
	sh3add a1, a0, a3
	sd a2, 176(sp)
	sd a1, 168(sp)
	sd zero, 184(sp)
	mv a1, zero
	ld a5, 120(sp)
	ld a3, 144(sp)
	sh2add a0, a5, a3
	lw a2, 0(a0)
	blt zero, a2, label7
label73:
	mv a0, zero
	j label48
label7:
	ld a1, 168(sp)
	lw a2, 0(a1)
	sd a2, 200(sp)
	ld a4, 128(sp)
	sh2add a0, a2, a4
	lw a1, 0(a0)
	bne a1, zero, label47
	ld a2, 176(sp)
	lw a0, 0(a2)
	bgt a0, zero, label9
label47:
	ld a1, 184(sp)
	addiw a0, a1, 1
	ld a1, 168(sp)
	ld a2, 176(sp)
	addi a1, a1, 4
	addi a2, a2, 4
	sd a2, 176(sp)
	sd a1, 168(sp)
	sd a0, 184(sp)
	ld a5, 120(sp)
	ld a3, 144(sp)
	sh2add a0, a5, a3
	lw a2, 0(a0)
	ld a1, 184(sp)
	blt a1, a2, label7
	j label73
label9:
	ld a2, 152(sp)
pcrel382:
	auipc a4, %pcrel_hi(rev)
	min a0, a2, a0
	addi a3, a4, %pcrel_lo(pcrel382)
	sd a0, 208(sp)
	sd a3, 192(sp)
	ld a1, 136(sp)
	ld a2, 200(sp)
	bne a1, a2, label10
label44:
	ble a0, zero, label47
	ld a2, 176(sp)
	lw a3, 0(a2)
	subw a1, a3, a0
	sw a1, 0(a2)
	ld a5, 120(sp)
	ld a3, 192(sp)
	sh2add t0, a5, a5
	ld a1, 184(sp)
	sh3add a2, t0, a3
	sh2add a4, a1, a2
	ld a1, 168(sp)
	lw a3, 0(a1)
	sh2add a5, a3, a3
	lw a2, 0(a4)
	ld a1, 112(sp)
	sh3add t0, a5, a1
	sh2add a3, a2, t0
	lw a4, 0(a3)
	addw a1, a0, a4
	sw a1, 0(a3)
	j label48
label57:
	ld a2, 152(sp)
	mv a0, a2
label48:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s10, 64(sp)
	ld s9, 72(sp)
	ld s7, 80(sp)
	ld s8, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 216
	ret
label10:
	ld a2, 200(sp)
	mv s1, zero
	ld a1, 112(sp)
	sh2add a0, a2, a2
	ld a3, 160(sp)
	sh3add s0, a0, a1
	ld a4, 128(sp)
	sh3add a1, a0, a3
	li a3, 1
	sh2add a0, a2, a4
	sw a3, 0(a0)
	sd a1, 104(sp)
	ld a3, 144(sp)
	sh2add a4, a2, a3
	lw a1, 0(a4)
	bge zero, a1, label106
label15:
	ld a1, 104(sp)
	lw s5, 0(a1)
	ld a4, 128(sp)
	sh2add a0, s5, a4
	lw a1, 0(a0)
	beq a1, zero, label17
label16:
	addiw s1, s1, 1
	addi s0, s0, 4
	ld a1, 104(sp)
	addi a1, a1, 4
	sd a1, 104(sp)
	ld a3, 144(sp)
	ld a2, 200(sp)
	sh2add a4, a2, a3
	lw a1, 0(a4)
	blt s1, a1, label15
	j label106
label128:
	mv a0, s4
label19:
	bgt a0, zero, label21
	j label16
label17:
	lw a1, 0(s0)
	ble a1, zero, label16
	ld a0, 208(sp)
	min s4, a0, a1
	ld a1, 136(sp)
	beq a1, s5, label128
	sh2add a2, s5, s5
	ld a1, 112(sp)
	mv s6, zero
	sh3add s2, a2, a1
	ld a3, 160(sp)
	li a1, 1
	ld a4, 128(sp)
	sh3add s3, a2, a3
	sh2add a0, s5, a4
	sw a1, 0(a0)
label23:
	ld a3, 144(sp)
	sh2add a2, s5, a3
	lw a1, 0(a2)
	blt s6, a1, label27
label158:
	mv a0, zero
	j label19
label27:
	lw s10, 0(s3)
	ld a4, 128(sp)
	sh2add a1, s10, a4
	lw a0, 0(a1)
	bne a0, zero, label43
	lw a0, 0(s2)
	bgt a0, zero, label29
label43:
	addiw s6, s6, 1
	addi s3, s3, 4
	addi s2, s2, 4
	ld a3, 144(sp)
	sh2add a2, s5, a3
	lw a1, 0(a2)
	blt s6, a1, label27
	j label158
label29:
	min s9, s4, a0
	ld a1, 136(sp)
	bne a1, s10, label33
	mv a0, s9
label30:
	ble a0, zero, label180
	lw a3, 0(s2)
	sh2add a1, s5, s5
	subw a2, a3, a0
	sw a2, 0(s2)
	ld a3, 192(sp)
	lw a4, 0(s3)
	sh3add a5, a1, a3
	sh2add t0, s6, a5
	sh2add a5, a4, a4
	lw a2, 0(t0)
	ld a1, 112(sp)
	sh3add t0, a5, a1
	sh2add a3, a2, t0
	lw a4, 0(a3)
	addw a1, a0, a4
	sw a1, 0(a3)
	j label19
label33:
	sh2add a2, s10, s10
	ld a1, 112(sp)
	mv s11, zero
	sh3add s7, a2, a1
	ld a3, 160(sp)
	li a1, 1
	ld a4, 128(sp)
	sh3add s8, a2, a3
	sh2add a0, s10, a4
	sw a1, 0(a0)
	ld a3, 144(sp)
	sh2add a1, s10, a3
	lw a2, 0(a1)
	bge zero, a2, label207
label38:
	lw a0, 0(s8)
	ld a4, 128(sp)
	sh2add a2, a0, a4
	lw a1, 0(a2)
	beq a1, zero, label40
label39:
	addiw s11, s11, 1
	addi s8, s8, 4
	addi s7, s7, 4
	ld a3, 144(sp)
	sh2add a1, s10, a3
	lw a2, 0(a1)
	blt s11, a2, label38
	j label207
label40:
	lw a1, 0(s7)
	ble a1, zero, label39
	min a2, s9, a1
	ld a4, 128(sp)
	ld a1, 136(sp)
	ld a3, 144(sp)
	jal dfs
	ble a0, zero, label39
	lw a3, 0(s7)
	sh2add a1, s10, s10
	subw a2, a3, a0
	sw a2, 0(s7)
	ld a3, 192(sp)
	lw a4, 0(s8)
	sh3add a5, a1, a3
	sh2add t0, s11, a5
	sh2add a5, a4, a4
	lw a2, 0(t0)
	ld a1, 112(sp)
	sh3add t0, a5, a1
	sh2add a3, a2, t0
	lw a4, 0(a3)
	addw a1, a0, a4
	sw a1, 0(a3)
	j label30
label106:
	mv a0, zero
	j label44
label207:
	mv a0, zero
	j label30
label21:
	lw a1, 0(s0)
	subw a3, a1, a0
	sw a3, 0(s0)
	ld a2, 200(sp)
	ld a3, 192(sp)
	sh2add a5, a2, a2
	ld a1, 104(sp)
	sh3add t0, a5, a3
	sh2add a4, s1, t0
	lw a3, 0(a1)
	sh2add a5, a3, a3
	lw a2, 0(a4)
	ld a1, 112(sp)
	sh3add a4, a5, a1
	sh2add a3, a2, a4
	lw t0, 0(a3)
	addw a1, a0, t0
	sw a1, 0(a3)
	j label44
label180:
	addiw s6, s6, 1
	addi s3, s3, 4
	addi s2, s2, 4
	j label23
.p2align 2
.globl main
main:
	addi sp, sp, -168
	sd ra, 0(sp)
	sd s2, 8(sp)
	addi s2, sp, 128
	sd s0, 16(sp)
	addi s0, sp, 88
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	jal getint
	mv s1, a0
	jal getint
pcrel516:
	auipc a2, %pcrel_hi(cap)
pcrel517:
	auipc a1, %pcrel_hi(to)
	sd zero, 88(sp)
	addi s4, a2, %pcrel_lo(pcrel516)
	addi s3, a1, %pcrel_lo(pcrel517)
	sd zero, 96(sp)
pcrel518:
	auipc a1, %pcrel_hi(rev)
	sd zero, 104(sp)
	addi s5, a1, %pcrel_lo(pcrel518)
	sd zero, 112(sp)
	sd zero, 120(sp)
	bgt a0, zero, label413
label412:
	mv t1, zero
	j label386
label413:
	mv s6, a0
.p2align 2
label384:
	jal getint
	sh2add s7, a0, s0
	mv s8, a0
	jal getint
	mv s9, a0
	jal getint
	sh2add a2, s8, s8
	lw a1, 0(s7)
	addiw s6, s6, -1
	sh3add a4, a2, s4
	sh3add a3, a2, s3
	sh2add a5, a1, a3
	sh2add a3, a1, a4
	sw s9, 0(a5)
	sh3add a5, a2, s5
	sw a0, 0(a3)
	sh2add a4, a1, a5
	sh2add a3, s9, s9
	sh2add a0, s9, s0
	sh3add a5, a3, s3
	lw a2, 0(a0)
	sh2add t1, a2, a5
	sh3add a5, a3, s5
	sw a2, 0(a4)
	sh3add a4, a3, s4
	sw s8, 0(t1)
	addi a3, a1, 1
	sh2add t0, a2, a4
	sh2add a4, a2, a5
	sw zero, 0(t0)
	sw a1, 0(a4)
	sw a3, 0(s7)
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	bgt s6, zero, label384
	j label412
label386:
	sd zero, 128(sp)
	li a0, 1
	lui a2, 458752
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	mv a1, s1
	mv a3, s0
	mv a4, s2
	jal dfs
	bne a0, zero, label467
	mv a0, t1
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 168
	ret
label467:
	addw t1, t1, a0
	j label386
