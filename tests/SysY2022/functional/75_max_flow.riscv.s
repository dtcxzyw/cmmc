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
	sh2add a2, a0, a4
pcrel402:
	auipc a4, %pcrel_hi(cap)
	addi a1, a4, %pcrel_lo(pcrel402)
	sw a3, 0(a2)
pcrel403:
	auipc a4, %pcrel_hi(to)
	sh2add a3, a0, a0
	sd a1, 112(sp)
	addi a0, a4, %pcrel_lo(pcrel403)
	sh3add a2, a3, a1
	mv a1, zero
	sd a2, 176(sp)
	sh3add a2, a3, a0
	sd a0, 184(sp)
	sd a2, 128(sp)
	sd zero, 136(sp)
	ld a0, 120(sp)
	ld a3, 160(sp)
	sh2add a4, a0, a3
	lw a2, 0(a4)
	bge zero, a2, label65
label5:
	ld a2, 128(sp)
	ld a1, 136(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	sd a0, 200(sp)
	ld a4, 144(sp)
	sh2add a2, a0, a4
	lw a1, 0(a2)
	beq a1, zero, label7
label6:
	ld a1, 136(sp)
	addiw a1, a1, 1
	sd a1, 136(sp)
	ld a0, 120(sp)
	ld a3, 160(sp)
	sh2add a4, a0, a3
	lw a2, 0(a4)
	blt a1, a2, label5
	j label65
label7:
	ld a1, 136(sp)
	ld a2, 176(sp)
	sh2add a3, a1, a2
	lw a0, 0(a3)
	ble a0, zero, label6
	ld a2, 168(sp)
pcrel404:
	auipc a4, %pcrel_hi(rev)
	min s0, a2, a0
	addi a3, a4, %pcrel_lo(pcrel404)
	sd a3, 192(sp)
	ld a1, 152(sp)
	ld a0, 200(sp)
	bne a1, a0, label9
label37:
	bgt s0, zero, label39
	j label6
label49:
	ld a2, 168(sp)
	mv a0, a2
label40:
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
label9:
	ld a0, 200(sp)
	ld a1, 112(sp)
	sh2add a2, a0, a0
	ld a0, 184(sp)
	sh3add s1, a2, a1
	sh3add a1, a2, a0
	li a2, 1
	sd a1, 208(sp)
	ld a4, 144(sp)
	ld a0, 200(sp)
	sh2add a1, a0, a4
	mv a0, zero
	sw a2, 0(a1)
	sd zero, 104(sp)
label10:
	ld a3, 160(sp)
	ld a0, 200(sp)
	sh2add a2, a0, a3
	lw a1, 0(a2)
	ld a0, 104(sp)
	blt a0, a1, label12
label103:
	mv s0, zero
	j label37
label12:
	ld a1, 208(sp)
	ld a0, 104(sp)
	sh2add a2, a0, a1
	lw s3, 0(a2)
	ld a4, 144(sp)
	sh2add a0, s3, a4
	lw a1, 0(a0)
	bne a1, zero, label36
	ld a0, 104(sp)
	sh2add a2, a0, s1
	lw a1, 0(a2)
	bgt a1, zero, label14
label36:
	ld a0, 104(sp)
	addiw a0, a0, 1
	sd a0, 104(sp)
	ld a3, 160(sp)
	ld a0, 200(sp)
	sh2add a2, a0, a3
	lw a1, 0(a2)
	ld a0, 104(sp)
	blt a0, a1, label12
	j label103
label14:
	min s2, s0, a1
	ld a1, 152(sp)
	beq a1, s3, label15
	sh2add a2, s3, s3
	ld a1, 112(sp)
	mv s4, zero
	sh3add s6, a2, a1
	ld a0, 184(sp)
	ld a4, 144(sp)
	sh3add s5, a2, a0
	sh2add a1, s3, a4
	li a0, 1
	sw a0, 0(a1)
	ld a3, 160(sp)
	sh2add a0, s3, a3
	lw a1, 0(a0)
	bge zero, a1, label160
label21:
	sh2add a0, s4, s5
	lw s9, 0(a0)
	ld a4, 144(sp)
	sh2add a1, s9, a4
	lw a0, 0(a1)
	beq a0, zero, label23
label22:
	addiw s4, s4, 1
	ld a3, 160(sp)
	sh2add a0, s3, a3
	lw a1, 0(a0)
	blt s4, a1, label21
	j label160
label23:
	sh2add a1, s4, s6
	lw a0, 0(a1)
	ble a0, zero, label22
	min s7, s2, a0
	ld a1, 152(sp)
	bne a1, s9, label25
	mv a0, s7
label33:
	bgt a0, zero, label35
	j label22
label15:
	ble s2, zero, label129
	ld a0, 104(sp)
	mv s0, s2
	sh2add a1, a0, s1
	lw a3, 0(a1)
	subw a2, a3, s2
	sw a2, 0(a1)
	ld a0, 200(sp)
	ld a3, 192(sp)
	sh2add a5, a0, a0
	ld a0, 104(sp)
	sh3add a4, a5, a3
	ld a1, 208(sp)
	sh2add a2, a0, a4
	sh2add t0, a0, a1
	lw a4, 0(t0)
	sh2add a5, a4, a4
	lw a3, 0(a2)
	ld a1, 112(sp)
	sh3add t0, a5, a1
	sh2add a0, a3, t0
	lw a2, 0(a0)
	addw a1, s2, a2
	sw a1, 0(a0)
	j label37
label35:
	sh2add a1, s4, s6
	mv s2, a0
	sh2add a2, s3, s3
	lw a3, 0(a1)
	sh2add t0, s4, s5
	subw a4, a3, a0
	sw a4, 0(a1)
	ld a3, 192(sp)
	sh3add a1, a2, a3
	lw a3, 0(t0)
	sh2add a4, s4, a1
	sh2add a5, a3, a3
	lw a2, 0(a4)
	ld a1, 112(sp)
	sh3add t0, a5, a1
	sh2add a3, a2, t0
	lw a4, 0(a3)
	addw a1, a0, a4
	sw a1, 0(a3)
	j label15
label25:
	sh2add a2, s9, s9
	ld a1, 112(sp)
	mv s8, zero
	sh3add s11, a2, a1
	ld a0, 184(sp)
	ld a4, 144(sp)
	sh3add s10, a2, a0
	sh2add a1, s9, a4
	li a0, 1
	sw a0, 0(a1)
label26:
	ld a3, 160(sp)
	sh2add a1, s9, a3
	lw a2, 0(a1)
	blt s8, a2, label28
label196:
	mv a0, zero
	j label33
label28:
	sh2add a1, s8, s10
	lw a0, 0(a1)
	ld a4, 144(sp)
	sh2add a2, a0, a4
	lw a1, 0(a2)
	bne a1, zero, label32
	sh2add a2, s8, s11
	lw a1, 0(a2)
	bgt a1, zero, label30
label32:
	addiw s8, s8, 1
	ld a3, 160(sp)
	sh2add a1, s9, a3
	lw a2, 0(a1)
	blt s8, a2, label28
	j label196
label30:
	min a2, s7, a1
	ld a4, 144(sp)
	ld a1, 152(sp)
	ld a3, 160(sp)
	jal dfs
	ble a0, zero, label219
	sh2add a1, s8, s11
	sh2add a2, s9, s9
	lw a3, 0(a1)
	subw a4, a3, a0
	sw a4, 0(a1)
	sh2add a1, s8, s10
	ld a3, 192(sp)
	sh3add a5, a2, a3
	lw a3, 0(a1)
	sh2add a4, s8, a5
	sh2add a5, a3, a3
	lw a2, 0(a4)
	ld a1, 112(sp)
	sh3add t0, a5, a1
	sh2add a3, a2, t0
	lw a4, 0(a3)
	addw a1, a0, a4
	sw a1, 0(a3)
	j label33
label65:
	mv a0, zero
	j label40
label160:
	mv s2, zero
	j label15
label129:
	ld a0, 104(sp)
	addiw a0, a0, 1
	sd a0, 104(sp)
	j label10
label39:
	ld a1, 136(sp)
	ld a2, 176(sp)
	sh2add a3, a1, a2
	lw a4, 0(a3)
	subw a5, a4, s0
	sw a5, 0(a3)
	ld a0, 120(sp)
	ld a3, 192(sp)
	sh2add a4, a0, a0
	ld a2, 128(sp)
	sh3add a5, a4, a3
	sh2add t0, a1, a2
	sh2add a0, a1, a5
	lw a4, 0(t0)
	sh2add a5, a4, a4
	lw a3, 0(a0)
	ld a1, 112(sp)
	sh3add a0, a5, a1
	sh2add a2, a3, a0
	mv a0, s0
	lw a4, 0(a2)
	addw a1, s0, a4
	sw a1, 0(a2)
	j label40
label219:
	addiw s8, s8, 1
	j label26
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
pcrel538:
	auipc a2, %pcrel_hi(cap)
pcrel539:
	auipc a1, %pcrel_hi(to)
	sd zero, 88(sp)
	addi s4, a2, %pcrel_lo(pcrel538)
	addi s3, a1, %pcrel_lo(pcrel539)
	sd zero, 96(sp)
pcrel540:
	auipc a1, %pcrel_hi(rev)
	sd zero, 104(sp)
	addi s5, a1, %pcrel_lo(pcrel540)
	sd zero, 112(sp)
	sd zero, 120(sp)
	bgt a0, zero, label435
label434:
	mv t1, zero
	j label406
label435:
	mv s6, a0
	j label410
label406:
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
	bne a0, zero, label448
	mv a0, t1
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
.p2align 2
label410:
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
	sh2add a5, a1, a4
	sh2add t0, a1, a3
	sh3add a3, a2, s5
	sw s9, 0(t0)
	sh2add a4, a1, a3
	sw a0, 0(a5)
	sh2add a3, s9, s9
	sh2add a0, s9, s0
	sh3add t0, a3, s5
	lw a2, 0(a0)
	sh3add t1, a3, s4
	sh3add a5, a3, s3
	sw a2, 0(a4)
	addi a3, a1, 1
	sh2add a4, a2, a5
	sh2add a5, a2, t1
	sw s8, 0(a4)
	sh2add a4, a2, t0
	sw zero, 0(a5)
	sw a1, 0(a4)
	sw a3, 0(s7)
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	bgt s6, zero, label410
	j label434
label448:
	addw t1, t1, a0
	j label406
