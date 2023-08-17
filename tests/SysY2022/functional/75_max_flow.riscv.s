.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
to:
	.zero	400
.p2align 3
cap:
	.zero	400
.p2align 3
rev:
	.zero	400
.text
.p2align 2
dfs:
	# stack usage: CalleeArg[0] Local[0] RegSpill[112] CalleeSaved[104]
	addi sp, sp, -216
	mv a5, a0
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s10, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s7, 88(sp)
	sd s11, 96(sp)
	sd a2, 152(sp)
	sd a3, 144(sp)
	sd a1, 136(sp)
	sd a4, 128(sp)
	sd a0, 120(sp)
	bne a0, a1, label4
	mv a0, a2
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s10, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s7, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 216
	ret
label4:
	auipc a1, %pcrel_hi(to)
pcrel381:
	auipc a4, %pcrel_hi(cap)
	addi a2, a1, %pcrel_lo(label4)
	addi a3, a4, %pcrel_lo(pcrel381)
	sd a2, 160(sp)
	ld a5, 120(sp)
	sd a3, 112(sp)
	sh2add a0, a5, a5
	ld a4, 128(sp)
	sh3add a1, a0, a2
	sh2add t0, a5, a4
	sh3add a2, a0, a3
	li a0, 1
	sw a0, 0(t0)
	sd a2, 176(sp)
	sd a1, 168(sp)
	sd zero, 184(sp)
	mv a1, zero
	ld a3, 144(sp)
	sh2add a0, a5, a3
	lw a2, 0(a0)
	blt zero, a2, label9
	j label73
label97:
	ld a0, 208(sp)
label13:
	bgt a0, zero, label15
label10:
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
	bge a1, a2, label73
label9:
	ld a1, 168(sp)
	lw a2, 0(a1)
	sd a2, 200(sp)
	ld a4, 128(sp)
	sh2add a0, a2, a4
	lw a1, 0(a0)
	bne a1, zero, label10
	ld a2, 176(sp)
	lw a0, 0(a2)
	ble a0, zero, label10
	ld a2, 152(sp)
pcrel382:
	auipc a4, %pcrel_hi(rev)
	min a0, a2, a0
	addi a3, a4, %pcrel_lo(pcrel382)
	sd a0, 208(sp)
	sd a3, 192(sp)
	ld a1, 136(sp)
	ld a2, 200(sp)
	beq a1, a2, label97
	mv s1, zero
	sh2add a1, a2, a2
	ld a2, 160(sp)
	ld a3, 112(sp)
	sh3add a0, a1, a2
	ld a4, 128(sp)
	sh3add s0, a1, a3
	ld a2, 200(sp)
	li a3, 1
	sh2add a1, a2, a4
	sw a3, 0(a1)
	sd a0, 104(sp)
label17:
	ld a3, 144(sp)
	ld a2, 200(sp)
	sh2add a4, a2, a3
	lw a1, 0(a4)
	blt s1, a1, label21
	j label127
label49:
	addiw s1, s1, 1
	addi s0, s0, 4
	ld a0, 104(sp)
	addi a0, a0, 4
	sd a0, 104(sp)
	ld a3, 144(sp)
	ld a2, 200(sp)
	sh2add a4, a2, a3
	lw a1, 0(a4)
	bge s1, a1, label127
label21:
	ld a0, 104(sp)
	lw s5, 0(a0)
	ld a4, 128(sp)
	sh2add a1, s5, a4
	lw a0, 0(a1)
	bne a0, zero, label49
	lw a1, 0(s0)
	ble a1, zero, label49
	ld a0, 208(sp)
	min s4, a0, a1
	ld a1, 136(sp)
	beq a1, s5, label46
	sh2add a0, s5, s5
	ld a2, 160(sp)
	mv s6, zero
	sh3add s3, a0, a2
	ld a3, 112(sp)
	sh3add s2, a0, a3
	sh2add a1, s5, a4
	li a0, 1
	sw a0, 0(a1)
label25:
	ld a3, 144(sp)
	sh2add a1, s5, a3
	lw a0, 0(a1)
	blt s6, a0, label29
	j label158
label45:
	addiw s6, s6, 1
	addi s3, s3, 4
	addi s2, s2, 4
	ld a3, 144(sp)
	sh2add a1, s5, a3
	lw a0, 0(a1)
	bge s6, a0, label158
label29:
	lw s10, 0(s3)
	ld a4, 128(sp)
	sh2add a1, s10, a4
	lw a0, 0(a1)
	bne a0, zero, label45
	lw a0, 0(s2)
	ble a0, zero, label45
	min s9, s4, a0
	ld a1, 136(sp)
	bne a1, s10, label35
	mv a0, s9
label32:
	ble a0, zero, label180
	lw a3, 0(s2)
	sh2add a1, s5, s5
	mv s4, a0
	subw a2, a3, a0
	sw a2, 0(s2)
	ld a3, 192(sp)
	lw a2, 0(s3)
	sh3add a5, a1, a3
	sh2add a4, s6, a5
	sh2add a5, a2, a2
	lw a1, 0(a4)
	ld a3, 112(sp)
	sh3add t0, a5, a3
	sh2add a2, a1, t0
	lw a4, 0(a2)
	addw a3, a0, a4
	sw a3, 0(a2)
label46:
	ble s4, zero, label250
	lw a0, 0(s0)
	subw a3, a0, s4
	sw a3, 0(s0)
	ld a2, 200(sp)
	ld a3, 192(sp)
	sh2add a1, a2, a2
	ld a0, 104(sp)
	sh3add a5, a1, a3
	sh2add a2, s1, a5
	lw a4, 0(a0)
	sh2add a5, a4, a4
	lw a1, 0(a2)
	ld a3, 112(sp)
	sh3add a0, a5, a3
	sh2add a2, a1, a0
	mv a0, s4
	lw a4, 0(a2)
	addw a3, s4, a4
	sw a3, 0(a2)
	j label13
label35:
	sh2add a1, s10, s10
	ld a2, 160(sp)
	mv s11, zero
	sh3add s8, a1, a2
	ld a3, 112(sp)
	ld a4, 128(sp)
	sh3add s7, a1, a3
	sh2add a0, s10, a4
	li a1, 1
	sw a1, 0(a0)
	ld a3, 144(sp)
	sh2add a1, s10, a3
	lw a2, 0(a1)
	blt zero, a2, label40
	j label207
label41:
	addiw s11, s11, 1
	addi s8, s8, 4
	addi s7, s7, 4
	ld a3, 144(sp)
	sh2add a1, s10, a3
	lw a2, 0(a1)
	bge s11, a2, label207
label40:
	lw a0, 0(s8)
	ld a4, 128(sp)
	sh2add a1, a0, a4
	lw a2, 0(a1)
	bne a2, zero, label41
	lw a1, 0(s7)
	ble a1, zero, label41
	min a2, s9, a1
	ld a1, 136(sp)
	ld a3, 144(sp)
	jal dfs
	ble a0, zero, label41
	lw a3, 0(s7)
	sh2add a1, s10, s10
	subw a2, a3, a0
	sw a2, 0(s7)
	ld a3, 192(sp)
	lw a2, 0(s8)
	sh3add a4, a1, a3
	sh2add a5, s11, a4
	sh2add a4, a2, a2
	lw a1, 0(a5)
	ld a3, 112(sp)
	sh3add a5, a4, a3
	sh2add a2, a1, a5
	lw t0, 0(a2)
	addw a3, a0, t0
	sw a3, 0(a2)
	j label32
label73:
	mv a0, zero
	j label2
label127:
	mv a0, zero
	j label13
label207:
	mv a0, zero
	j label32
label158:
	mv s4, zero
	j label46
label180:
	addiw s6, s6, 1
	addi s3, s3, 4
	addi s2, s2, 4
	j label25
label250:
	addiw s1, s1, 1
	addi s0, s0, 4
	ld a0, 104(sp)
	addi a0, a0, 4
	sd a0, 104(sp)
	j label17
label15:
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
	lw a5, 0(a1)
	sh2add t0, a5, a5
	lw a2, 0(a4)
	ld a3, 112(sp)
	sh3add t1, t0, a3
	sh2add a1, a2, t1
	lw a4, 0(a1)
	addw a3, a0, a4
	sw a3, 0(a1)
	j label2
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[80] RegSpill[0] CalleeSaved[88]
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
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	ble a0, zero, label408
pcrel520:
	auipc a2, %pcrel_hi(to)
pcrel521:
	auipc a1, %pcrel_hi(cap)
	mv s6, a0
	addi s3, a2, %pcrel_lo(pcrel520)
	addi s4, a1, %pcrel_lo(pcrel521)
pcrel522:
	auipc a2, %pcrel_hi(rev)
	addi s5, a2, %pcrel_lo(pcrel522)
.p2align 2
label385:
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
	sh3add a5, a2, s3
	sh2add a3, a1, a5
	sh2add a5, a1, a4
	sw s9, 0(a3)
	sh3add a3, a2, s5
	sw a0, 0(a5)
	sh2add a4, a1, a3
	sh2add a0, s9, s0
	sh2add a3, s9, s9
	lw a2, 0(a0)
	sh3add t0, a3, s4
	sh3add t1, a3, s3
	sw a2, 0(a4)
	sh2add a5, a2, t1
	sh2add a4, a2, t0
	sw s8, 0(a5)
	sh3add t1, a3, s5
	sw zero, 0(a4)
	addi a3, a1, 1
	sh2add a5, a2, t1
	sw a1, 0(a5)
	sw a3, 0(s7)
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	bgt s6, zero, label385
label408:
	mv t2, zero
label387:
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
	bne a0, zero, label470
	mv a0, t2
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
label470:
	addw t2, t2, a0
	j label387
