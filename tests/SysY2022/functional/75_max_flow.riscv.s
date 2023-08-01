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
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s9, 64(sp)
	sd s7, 72(sp)
	sd s11, 80(sp)
	sd s10, 88(sp)
	sd s8, 96(sp)
	sd a2, 168(sp)
	sd a3, 160(sp)
	sd a1, 152(sp)
	sd a4, 144(sp)
	sd a0, 120(sp)
	beq a0, a1, label49
	li a3, 1
pcrel403:
	auipc a2, %pcrel_hi(cap)
	sh2add a1, a0, a4
	sh2add a0, a0, a0
	sw a3, 0(a1)
pcrel404:
	auipc a3, %pcrel_hi(to)
	addi a1, a2, %pcrel_lo(pcrel403)
	sh3add a2, a0, a1
	sd a1, 112(sp)
	addi a1, a3, %pcrel_lo(pcrel404)
	sd a2, 176(sp)
	sh3add a0, a0, a1
	sd a1, 184(sp)
	mv a1, zero
	sd a0, 128(sp)
	sd zero, 136(sp)
label5:
	ld a0, 120(sp)
	ld a3, 160(sp)
	sh2add a2, a0, a3
	lw a0, 0(a2)
	ld a1, 136(sp)
	blt a1, a0, label7
label65:
	mv a0, zero
	j label2
label7:
	ld a0, 128(sp)
	ld a1, 136(sp)
	sh2add a2, a1, a0
	lw a0, 0(a2)
	sd a0, 200(sp)
	ld a4, 144(sp)
	sh2add a2, a0, a4
	lw a1, 0(a2)
	bne a1, zero, label41
	ld a1, 136(sp)
	ld a2, 176(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	bgt a0, zero, label9
label41:
	ld a1, 136(sp)
	addiw a1, a1, 1
	sd a1, 136(sp)
	ld a0, 120(sp)
	ld a3, 160(sp)
	sh2add a2, a0, a3
	lw a0, 0(a2)
	blt a1, a0, label7
	j label65
label9:
	ld a2, 168(sp)
	min s0, a2, a0
pcrel405:
	auipc a0, %pcrel_hi(rev)
	addi a2, a0, %pcrel_lo(pcrel405)
	sd a2, 192(sp)
	ld a1, 152(sp)
	ld a0, 200(sp)
	beq a1, a0, label38
	ld a1, 112(sp)
	sh2add a2, a0, a0
	sh3add s1, a2, a1
	ld a1, 184(sp)
	sh3add a1, a2, a1
	li a2, 1
	sd a1, 208(sp)
	ld a4, 144(sp)
	sh2add a1, a0, a4
	mv a0, zero
	sw a2, 0(a1)
	sd zero, 104(sp)
label11:
	ld a3, 160(sp)
	ld a0, 200(sp)
	sh2add a2, a0, a3
	lw a1, 0(a2)
	ld a0, 104(sp)
	blt a0, a1, label13
label102:
	mv s0, zero
	j label38
label13:
	ld a1, 208(sp)
	ld a0, 104(sp)
	sh2add a2, a0, a1
	lw s3, 0(a2)
	ld a4, 144(sp)
	sh2add a0, s3, a4
	lw a1, 0(a0)
	bne a1, zero, label37
	ld a0, 104(sp)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bgt a1, zero, label15
label37:
	ld a0, 104(sp)
	addiw a0, a0, 1
	sd a0, 104(sp)
	ld a3, 160(sp)
	ld a0, 200(sp)
	sh2add a2, a0, a3
	lw a1, 0(a2)
	ld a0, 104(sp)
	blt a0, a1, label13
	j label102
label15:
	min s2, s0, a1
	ld a1, 152(sp)
	bne a1, s3, label16
label34:
	ble s2, zero, label241
	ld a0, 104(sp)
	mv s0, s2
	sh2add a1, a0, s1
	lw a3, 0(a1)
	subw a2, a3, s2
	sw a2, 0(a1)
	ld a0, 200(sp)
	ld a2, 192(sp)
	sh2add a3, a0, a0
	ld a0, 104(sp)
	sh3add a1, a3, a2
	sh2add a2, a0, a1
	ld a1, 208(sp)
	sh2add a3, a0, a1
	lw a1, 0(a3)
	lw a0, 0(a2)
	sh2add a2, a1, a1
	ld a1, 112(sp)
	sh3add a3, a2, a1
	sh2add a0, a0, a3
	lw a1, 0(a0)
	addw a2, s2, a1
	sw a2, 0(a0)
label38:
	bgt s0, zero, label40
	ld a1, 136(sp)
	addiw a1, a1, 1
	sd a1, 136(sp)
	j label5
label49:
	ld a2, 168(sp)
	mv a0, a2
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s9, 64(sp)
	ld s7, 72(sp)
	ld s11, 80(sp)
	ld s10, 88(sp)
	ld s8, 96(sp)
	addi sp, sp, 216
	ret
label16:
	sh2add a0, s3, s3
	ld a1, 112(sp)
	mv s4, zero
	sh3add s6, a0, a1
	ld a1, 184(sp)
	ld a4, 144(sp)
	sh3add s5, a0, a1
	li a1, 1
	sh2add a0, s3, a4
	sw a1, 0(a0)
	ld a3, 160(sp)
	sh2add a1, s3, a3
	lw a0, 0(a1)
	bge zero, a0, label137
label19:
	sh2add a0, s4, s5
	lw s9, 0(a0)
	ld a4, 144(sp)
	sh2add a1, s9, a4
	lw a0, 0(a1)
	beq a0, zero, label21
label20:
	addiw s4, s4, 1
	ld a3, 160(sp)
	sh2add a1, s3, a3
	lw a0, 0(a1)
	blt s4, a0, label19
	j label137
label21:
	sh2add a1, s4, s6
	lw a0, 0(a1)
	ble a0, zero, label20
	min s7, s2, a0
	ld a1, 152(sp)
	bne a1, s9, label26
	mv a0, s7
label23:
	ble a0, zero, label20
	sh2add a1, s4, s6
	mv s2, a0
	sh2add a4, s4, s5
	lw a2, 0(a1)
	subw a3, a2, a0
	sw a3, 0(a1)
	ld a2, 192(sp)
	sh2add a1, s3, s3
	sh3add a3, a1, a2
	sh2add a1, s4, a3
	lw a3, 0(a4)
	sh2add a4, a3, a3
	lw a2, 0(a1)
	ld a1, 112(sp)
	sh3add a3, a4, a1
	sh2add a2, a2, a3
	lw a4, 0(a2)
	addw a1, a0, a4
	sw a1, 0(a2)
	j label34
label26:
	sh2add a0, s9, s9
	ld a1, 112(sp)
	mv s8, zero
	sh3add s11, a0, a1
	ld a1, 184(sp)
	ld a4, 144(sp)
	sh3add s10, a0, a1
	li a1, 1
	sh2add a0, s9, a4
	sw a1, 0(a0)
	ld a3, 160(sp)
	sh2add a0, s9, a3
	lw a1, 0(a0)
	bge zero, a1, label195
label29:
	sh2add a1, s8, s10
	lw a0, 0(a1)
	ld a4, 144(sp)
	sh2add a1, a0, a4
	lw a2, 0(a1)
	beq a2, zero, label31
label30:
	addiw s8, s8, 1
	ld a3, 160(sp)
	sh2add a0, s9, a3
	lw a1, 0(a0)
	blt s8, a1, label29
	j label195
label31:
	sh2add a2, s8, s11
	lw a1, 0(a2)
	ble a1, zero, label30
	min a2, s7, a1
	ld a4, 144(sp)
	ld a1, 152(sp)
	ld a3, 160(sp)
	jal dfs
	ble a0, zero, label30
	sh2add a1, s8, s11
	sh2add a4, s8, s10
	lw a2, 0(a1)
	subw a3, a2, a0
	sw a3, 0(a1)
	ld a2, 192(sp)
	sh2add a1, s9, s9
	sh3add a3, a1, a2
	sh2add a1, s8, a3
	lw a3, 0(a4)
	sh2add a4, a3, a3
	lw a2, 0(a1)
	ld a1, 112(sp)
	sh3add a3, a4, a1
	sh2add a2, a2, a3
	lw a1, 0(a2)
	addw a3, a0, a1
	sw a3, 0(a2)
	j label23
label137:
	mv s2, zero
	j label34
label195:
	mv a0, zero
	j label23
label40:
	ld a1, 136(sp)
	ld a2, 176(sp)
	sh2add a0, a1, a2
	lw a3, 0(a0)
	subw a2, a3, s0
	sw a2, 0(a0)
	ld a0, 120(sp)
	ld a2, 192(sp)
	sh2add a3, a0, a0
	ld a0, 128(sp)
	sh3add a4, a3, a2
	sh2add a2, a1, a0
	sh2add a3, a1, a4
	lw a1, 0(a2)
	sh2add a2, a1, a1
	lw a0, 0(a3)
	ld a1, 112(sp)
	sh3add a3, a2, a1
	sh2add a0, a0, a3
	lw a2, 0(a0)
	addw a1, s0, a2
	sw a1, 0(a0)
	mv a0, s0
	j label2
label241:
	ld a0, 104(sp)
	addiw a0, a0, 1
	sd a0, 104(sp)
	j label11
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
pcrel519:
	auipc a2, %pcrel_hi(cap)
pcrel520:
	auipc a1, %pcrel_hi(to)
	addi s4, a2, %pcrel_lo(pcrel519)
	sd zero, 88(sp)
	addi s3, a1, %pcrel_lo(pcrel520)
pcrel521:
	auipc a1, %pcrel_hi(rev)
	sd zero, 96(sp)
	addi s5, a1, %pcrel_lo(pcrel521)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	bgt a0, zero, label436
label435:
	mv a5, zero
	j label409
label436:
	mv s6, a0
.p2align 2
label407:
	jal getint
	sh2add s7, a0, s0
	mv s8, a0
	jal getint
	mv s9, a0
	jal getint
	addiw s6, s6, -1
	sh2add a2, s8, s8
	mv a1, a0
	sh3add a4, a2, s4
	sh3add a3, a2, s3
	lw a0, 0(s7)
	sh3add a2, a2, s5
	sh2add a5, a0, a3
	sh2add a3, a0, a4
	sw s9, 0(a5)
	sw a1, 0(a3)
	sh2add a1, s9, s0
	sh2add a3, a0, a2
	lw a2, 0(a1)
	sw a2, 0(a3)
	sh2add a3, s9, s9
	sh3add a4, a3, s3
	sh2add a5, a2, a4
	sh3add a4, a3, s4
	sw s8, 0(a5)
	sh3add a3, a3, s5
	sh2add a5, a2, a4
	sh2add a2, a2, a3
	sw zero, 0(a5)
	sw a0, 0(a2)
	addi a0, a0, 1
	sw a0, 0(s7)
	lw a2, 0(a1)
	addi a0, a2, 1
	sw a0, 0(a1)
	bgt s6, zero, label407
	j label435
label409:
	li a0, 1
	lui a2, 458752
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	mv a1, s1
	mv a3, s0
	mv a4, s2
	jal dfs
	bne a0, zero, label490
	mv a0, a5
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
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
label490:
	addw a5, a5, a0
	j label409
