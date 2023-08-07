.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
graph:
	.zero	3600
.align 8
edges:
	.zero	4800
.text
.p2align 2
maxCliques:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s6, 8(sp)
	mv s6, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s3, 24(sp)
	mv s3, a2
	sd s4, 32(sp)
	sh2add s4, a0, a1
	sd s5, 40(sp)
	addiw s5, a0, 1
	sd s0, 48(sp)
	addiw s0, a0, 2
	sd s2, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	lw a1, 0(a2)
pcrel192:
	auipc a2, %pcrel_hi(graph)
	addi s2, a2, %pcrel_lo(pcrel192)
	ble a1, zero, label53
	li s7, 1
	mv s8, zero
.p2align 2
label2:
	sh2add a1, s6, s1
	addi a0, s1, 4
	sw s7, 0(a1)
	li a1, 1
.p2align 2
label5:
	ble s5, a1, label60
	addiw a1, a1, 1
	mv a3, a1
	sh2add a2, a1, s1
	ble s5, a1, label67
.p2align 2
label12:
	lw a4, 0(a0)
	lw t1, 0(a2)
	slli t2, a4, 4
	sub t0, t2, a4
	sh3add a5, t0, s2
	sh2add a4, t1, a5
	lw t0, 0(a4)
	bne t0, zero, label78
	addiw s7, s7, 1
	lw a0, 0(s3)
	ble s7, a0, label2
label178:
	mv a0, s8
label40:
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s4, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	addi sp, sp, 96
	ret
label60:
	li a0, 1
	bne a0, zero, label17
	addiw s7, s7, 1
	lw a0, 0(s3)
	ble s7, a0, label2
	j label178
label67:
	addi a0, a0, 4
	j label5
.p2align 2
label78:
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s5, a3, label12
	j label67
label17:
	lw a0, 0(s3)
	ble a0, zero, label90
	li s9, 1
	mv s10, zero
	addi a0, s1, 4
	li a1, 1
	sw s9, 4(s4)
	j label23
.p2align 2
label20:
	sw s9, 4(s4)
	addi a0, s1, 4
	li a1, 1
.p2align 2
label23:
	bgt s0, a1, label31
	j label98
label28:
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label20
label108:
	max a0, s6, s8
	addiw s7, s7, 1
	max s8, s10, a0
	lw a0, 0(s3)
	ble s7, a0, label2
	j label178
.p2align 2
label31:
	addiw a1, a1, 1
	mv a3, a1
	sh2add a2, a1, s1
	ble s0, a1, label35
.p2align 2
label36:
	lw a4, 0(a0)
	lw t0, 0(a2)
	slli t2, a4, 4
	sub t1, t2, a4
	sh3add a5, t1, s2
	sh2add a4, t0, a5
	lw t1, 0(a4)
	bne t1, zero, label130
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label20
	j label108
label98:
	li a0, 1
	beq a0, zero, label28
	mv a0, s0
	mv a1, s1
	mv a2, s3
	jal maxCliques
	addiw s9, s9, 1
	max a1, s5, s10
	max s10, a0, a1
	lw a0, 0(s3)
	ble s9, a0, label20
	j label108
label35:
	addi a0, a0, 4
	bgt s0, a1, label31
	j label98
.p2align 2
label130:
	addiw a3, a3, 1
	addi a2, a2, 4
	bgt s0, a3, label36
	j label35
label90:
	mv s10, zero
	max a0, s6, s8
	max s8, zero, a0
	addiw s7, s7, 1
	lw a0, 0(s3)
	ble s7, a0, label2
	j label178
label53:
	mv a0, zero
	j label40
.p2align 2
.globl main
main:
	addi sp, sp, -200
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 192
	sd s6, 16(sp)
	sd s2, 24(sp)
	addi s2, sp, 72
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s5, 48(sp)
	sd s0, 56(sp)
	sd s7, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	jal getint
	sw a0, 192(sp)
	jal getint
	li s0, 1
pcrel442:
	auipc a1, %pcrel_hi(graph)
	mv s3, a0
	addi s4, a1, %pcrel_lo(pcrel442)
pcrel443:
	auipc a0, %pcrel_hi(edges)
	addi s5, a0, %pcrel_lo(pcrel443)
	ble s3, zero, label211
	mv s6, s5
	mv s7, zero
.p2align 2
label195:
	jal getint
	sw a0, 0(s6)
	jal getint
	addiw s7, s7, 1
	sw a0, 4(s6)
	ble s3, s7, label199
	addi s6, s6, 8
	j label195
label199:
	li a0, 4
	ble s3, a0, label265
	addiw a1, s3, -4
	mv a0, s5
	mv a2, zero
.p2align 2
label201:
	lw a3, 0(a0)
	addiw a2, a2, 4
	lw a4, 4(a0)
	slli t0, a3, 4
	sub t1, t0, a3
	slli t0, a4, 4
	sh3add a5, t1, s4
	sh2add t2, a4, a5
	sub a5, t0, a4
	sw s0, 0(t2)
	sh3add t2, a5, s4
	sh2add t1, a3, t2
	sw s0, 0(t1)
	lw a4, 8(a0)
	lw a3, 12(a0)
	slli t0, a4, 4
	sub t1, t0, a4
	sh3add a5, t1, s4
	slli t1, a3, 4
	sh2add t0, a3, a5
	sub t2, t1, a3
	sw s0, 0(t0)
	sh3add t0, t2, s4
	sh2add a5, a4, t0
	sw s0, 0(a5)
	lw a3, 16(a0)
	lw a4, 20(a0)
	slli t0, a3, 4
	slli t2, a4, 4
	sub t1, t0, a3
	sh3add a5, t1, s4
	sub t1, t2, a4
	sh2add t0, a4, a5
	sh3add a5, t1, s4
	sw s0, 0(t0)
	sh2add t0, a3, a5
	sw s0, 0(t0)
	lw a4, 24(a0)
	lw a3, 28(a0)
	slli t2, a4, 4
	sub t1, t2, a4
	slli t2, a3, 4
	sh3add a5, t1, s4
	sub t1, t2, a3
	sh2add t0, a3, a5
	sh3add a5, t1, s4
	sw s0, 0(t0)
	sh2add t0, a4, a5
	sw s0, 0(t0)
	ble a1, a2, label318
	addi a0, a0, 32
	j label201
label265:
	mv a2, zero
label206:
	lw a0, 0(s5)
	addiw a2, a2, 1
	lw a1, 4(s5)
	slli a5, a0, 4
	sub a4, a5, a0
	sh3add a3, a4, s4
	slli a4, a1, 4
	sh2add a5, a1, a3
	sub t0, a4, a1
	sw s0, 0(a5)
	sh3add a5, t0, s4
	sh2add a3, a0, a5
	sw s0, 0(a3)
	ble s3, a2, label211
	addi s5, s5, 8
	j label206
label211:
	mv a0, s0
	mv a1, s2
	mv a2, s1
	jal maxCliques
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 200
	ret
label318:
	sh3add s5, a2, s5
	j label206
