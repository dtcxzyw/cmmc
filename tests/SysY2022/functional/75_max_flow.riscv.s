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
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s9, 64(sp)
	sd s7, 72(sp)
	sd s11, 80(sp)
	sd s10, 88(sp)
	sd s8, 96(sp)
	sd a2, 152(sp)
	sd a1, 144(sp)
	sd a3, 136(sp)
	sd a4, 128(sp)
	sd a0, 120(sp)
	beq a0, a1, label49
	li a2, 1
pcrel401:
	auipc a3, %pcrel_hi(cap)
	sh2add a1, a0, a4
pcrel402:
	auipc a4, %pcrel_hi(to)
	sw a2, 0(a1)
	addi a2, a3, %pcrel_lo(pcrel401)
	sh2add a3, a0, a0
	sd a2, 112(sp)
	mv a1, a2
	addi a1, a4, %pcrel_lo(pcrel402)
	sh3add a2, a3, a2
	mv a0, a1
	sd a2, 176(sp)
	sh3add a0, a3, a1
	sd a1, 184(sp)
	mv a1, zero
	sd a0, 160(sp)
	sd zero, 168(sp)
label5:
	ld a0, 120(sp)
	ld a3, 136(sp)
	sh2add a2, a0, a3
	lw a0, 0(a2)
	ld a1, 168(sp)
	blt a1, a0, label7
label65:
	mv a0, zero
	j label2
label7:
	ld a0, 160(sp)
	ld a1, 168(sp)
	sh2add a2, a1, a0
	lw a0, 0(a2)
	sd a0, 200(sp)
	ld a4, 128(sp)
	sh2add a1, a0, a4
	lw a2, 0(a1)
	bne a2, zero, label41
	ld a1, 168(sp)
	ld a2, 176(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	bgt a0, zero, label9
label41:
	ld a1, 168(sp)
	addiw a1, a1, 1
	sd a1, 168(sp)
	ld a0, 120(sp)
	ld a3, 136(sp)
	sh2add a2, a0, a3
	lw a0, 0(a2)
	blt a1, a0, label7
	j label65
label9:
	ld a2, 152(sp)
	min s0, a2, a0
pcrel403:
	auipc a0, %pcrel_hi(rev)
	addi a2, a0, %pcrel_lo(pcrel403)
	sd a2, 192(sp)
	ld a1, 144(sp)
	ld a0, 200(sp)
	bne a1, a0, label10
label38:
	ble s0, zero, label264
	ld a1, 168(sp)
	ld a2, 176(sp)
	sh2add a0, a1, a2
	lw a3, 0(a0)
	subw a1, a3, s0
	sw a1, 0(a0)
	ld a0, 120(sp)
	ld a2, 192(sp)
	sh2add a1, a0, a0
	sh3add a0, a1, a2
	ld a1, 168(sp)
	sh2add a2, a1, a0
	ld a0, 160(sp)
	sh2add a4, a1, a0
	lw a3, 0(a4)
	lw a0, 0(a2)
	ld a1, 112(sp)
	sh2add a2, a3, a3
	sh3add a3, a2, a1
	sh2add a0, a0, a3
	lw a2, 0(a0)
	addw a1, s0, a2
	sw a1, 0(a0)
	mv a0, s0
	j label2
label49:
	ld a2, 152(sp)
	mv a0, a2
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s9, 64(sp)
	ld s7, 72(sp)
	ld s11, 80(sp)
	ld s10, 88(sp)
	ld s8, 96(sp)
	addi sp, sp, 216
	ret
label10:
	ld a0, 200(sp)
	ld a1, 112(sp)
	sh2add a2, a0, a0
	ld a0, 184(sp)
	sh3add s1, a2, a1
	sh3add a1, a2, a0
	li a2, 1
	sd a1, 208(sp)
	ld a4, 128(sp)
	ld a0, 200(sp)
	sh2add a1, a0, a4
	mv a0, zero
	sw a2, 0(a1)
	sd zero, 104(sp)
label11:
	ld a3, 136(sp)
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
	lw s4, 0(a2)
	ld a4, 128(sp)
	sh2add a1, s4, a4
	lw a0, 0(a1)
	bne a0, zero, label37
	ld a0, 104(sp)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bgt a1, zero, label15
label37:
	ld a0, 104(sp)
	addiw a0, a0, 1
	sd a0, 104(sp)
	ld a3, 136(sp)
	ld a0, 200(sp)
	sh2add a2, a0, a3
	lw a1, 0(a2)
	ld a0, 104(sp)
	blt a0, a1, label13
	j label102
label15:
	min s2, s0, a1
	ld a1, 144(sp)
	beq a1, s4, label34
	sh2add a2, s4, s4
	ld a1, 112(sp)
	mv s3, zero
	sh3add s6, a2, a1
	ld a0, 184(sp)
	li a1, 1
	ld a4, 128(sp)
	sh3add s5, a2, a0
	sh2add a0, s4, a4
	sw a1, 0(a0)
label17:
	ld a3, 136(sp)
	sh2add a0, s4, a3
	lw a1, 0(a0)
	bge s3, a1, label137
	sh2add a0, s3, s5
	lw s9, 0(a0)
	ld a4, 128(sp)
	sh2add a0, s9, a4
	lw a1, 0(a0)
	beq a1, zero, label21
label20:
	addiw s3, s3, 1
	j label17
label21:
	sh2add a1, s3, s6
	lw a0, 0(a1)
	ble a0, zero, label20
	min s7, s2, a0
	ld a1, 144(sp)
	bne a1, s9, label26
	mv a0, s7
label23:
	ble a0, zero, label20
	sh2add a1, s3, s6
	mv s2, a0
	sh2add a4, s3, s5
	lw a2, 0(a1)
	subw a3, a2, a0
	sw a3, 0(a1)
	ld a2, 192(sp)
	sh2add a1, s4, s4
	sh3add a3, a1, a2
	sh2add a1, s3, a3
	lw a3, 0(a4)
	sh2add a4, a3, a3
	lw a2, 0(a1)
	ld a1, 112(sp)
	sh3add a3, a4, a1
	sh2add a2, a2, a3
	lw a1, 0(a2)
	addw a3, a0, a1
	sw a3, 0(a2)
label34:
	bgt s2, zero, label36
	ld a0, 104(sp)
	addiw a0, a0, 1
	sd a0, 104(sp)
	j label11
label26:
	sh2add a2, s9, s9
	ld a1, 112(sp)
	mv s8, zero
	sh3add s11, a2, a1
	ld a0, 184(sp)
	li a1, 1
	ld a4, 128(sp)
	sh3add s10, a2, a0
	sh2add a0, s9, a4
	sw a1, 0(a0)
label27:
	ld a3, 136(sp)
	sh2add a0, s9, a3
	lw a1, 0(a0)
	bge s8, a1, label195
	sh2add a1, s8, s10
	lw a0, 0(a1)
	ld a4, 128(sp)
	sh2add a1, a0, a4
	lw a2, 0(a1)
	beq a2, zero, label31
label30:
	addiw s8, s8, 1
	j label27
label31:
	sh2add a2, s8, s11
	lw a1, 0(a2)
	ble a1, zero, label30
	min a2, s7, a1
	ld a4, 128(sp)
	ld a3, 136(sp)
	ld a1, 144(sp)
	jal dfs
	ble a0, zero, label30
	sh2add a1, s8, s11
	sh2add a4, s8, s10
	lw a3, 0(a1)
	subw a2, a3, a0
	sw a2, 0(a1)
	ld a2, 192(sp)
	sh2add a1, s9, s9
	sh3add a3, a1, a2
	sh2add a1, s8, a3
	lw a3, 0(a4)
	sh2add a4, a3, a3
	lw a2, 0(a1)
	ld a1, 112(sp)
	sh3add a5, a4, a1
	sh2add a2, a2, a5
	lw a3, 0(a2)
	addw a1, a0, a3
	sw a1, 0(a2)
	j label23
label137:
	mv s2, zero
	j label34
label264:
	ld a1, 168(sp)
	addiw a1, a1, 1
	sd a1, 168(sp)
	j label5
label36:
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
	lw a2, 0(a0)
	addw a1, s2, a2
	sw a1, 0(a0)
	j label38
label195:
	mv a0, zero
	j label23
.globl main
main:
.p2align 2
	addi sp, sp, -168
	sd ra, 0(sp)
	sd s2, 8(sp)
	addi s2, sp, 128
	sd s1, 16(sp)
	addi s1, sp, 88
	sd s6, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	jal getint
	mv s0, a0
	jal getint
pcrel517:
	auipc a1, %pcrel_hi(to)
	sd zero, 88(sp)
	addi s3, a1, %pcrel_lo(pcrel517)
pcrel518:
	auipc a1, %pcrel_hi(cap)
	sd zero, 96(sp)
	addi s4, a1, %pcrel_lo(pcrel518)
pcrel519:
	auipc a1, %pcrel_hi(rev)
	sd zero, 104(sp)
	addi s5, a1, %pcrel_lo(pcrel519)
	sd zero, 112(sp)
	sd zero, 120(sp)
	bgt a0, zero, label434
label433:
	mv t0, zero
	j label407
label434:
	mv s6, a0
.p2align 2
label405:
	jal getint
	sh2add s7, a0, s1
	mv s8, a0
	jal getint
	mv s9, a0
	jal getint
	addiw s6, s6, -1
	sh2add a2, s8, s8
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
	bgt s6, zero, label405
	j label433
label407:
	li a0, 1
	lui a2, 458752
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	mv a1, s0
	mv a3, s1
	mv a4, s2
	jal dfs
	bne a0, zero, label488
	mv a0, t0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 168
	ret
label488:
	addw t0, t0, a0
	j label407
