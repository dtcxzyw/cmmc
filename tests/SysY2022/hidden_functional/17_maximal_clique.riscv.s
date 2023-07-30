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
maxCliques:
.p2align 2
	addi sp, sp, -96
	sd s6, 88(sp)
	mv s6, a0
	sd s1, 80(sp)
	addiw s1, a0, 2
	sd s0, 72(sp)
	mv s0, a1
	sd s5, 64(sp)
	addiw s5, a0, 1
	sd s3, 56(sp)
	mv s3, a2
	sd s4, 48(sp)
	sh2add s4, a0, a1
	sd s2, 40(sp)
pcrel209:
	auipc a0, %pcrel_hi(graph)
	sd s7, 32(sp)
	addi s2, a0, %pcrel_lo(pcrel209)
	li s7, 1
	mv a0, zero
	sd s8, 24(sp)
	sd s10, 16(sp)
	sd s9, 8(sp)
	sd ra, 0(sp)
	lw a1, 0(a2)
	bgt s7, a1, label35
.p2align 2
label5:
	sh2add a2, s6, s0
	li a1, 1
	sw s7, 0(a2)
	bgt s5, a1, label8
	bne a1, zero, label15
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label28:
	addiw a1, a0, 1
	mv a2, a1
	bgt s1, a1, label31
	mv a0, a1
	li a0, 1
	bne a0, zero, label27
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label20
	max a0, s8, s10
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label31:
	sh2add a4, a0, s0
	lw a3, 0(a4)
	slli a5, a3, 4
	sub a4, a5, a3
	sh2add a5, a2, s0
	sh3add a3, a4, s2
	lw a4, 0(a5)
	sh2add t0, a4, a3
	lw a3, 0(t0)
	beq a3, zero, label119
	addiw a2, a2, 1
	bgt s1, a2, label31
	mv a0, a1
	bgt s1, a1, label28
	li a0, 1
	bne a0, zero, label27
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label20
	max a0, s8, s10
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label119:
	mv a0, zero
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label20
	max a0, s8, s10
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label15:
	max s8, s6, a0
	mv s10, zero
	li s9, 1
	lw a0, 0(s3)
	ble s9, a0, label20
	max a0, s8, zero
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label20:
	sw s9, 4(s4)
	li a0, 1
	bgt s1, a0, label28
	bne a0, zero, label27
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label20
	max a0, s8, s10
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label27:
	mv a0, s1
	mv a1, s0
	mv a2, s3
	jal maxCliques
	max a1, s5, s10
	max s10, a0, a1
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label20
	max a0, s8, s10
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label8:
	addiw a2, a1, 1
	mv a3, a2
	bgt s5, a2, label11
	mv a1, a2
	li a1, 1
	bne a1, zero, label15
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label11:
	sh2add t0, a1, s0
	lw a4, 0(t0)
	slli a5, a4, 4
	sub t0, a5, a4
	sh2add a5, a3, s0
	sh3add a4, t0, s2
	lw t0, 0(a5)
	sh2add t1, t0, a4
	lw a4, 0(t1)
	beq a4, zero, label74
	addiw a3, a3, 1
	bgt s5, a3, label11
	mv a1, a2
	bgt s5, a2, label8
	li a1, 1
	bne a1, zero, label15
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
	j label35
.p2align 2
label74:
	mv a1, zero
	addiw s7, s7, 1
	lw a1, 0(s3)
	ble s7, a1, label5
label35:
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s10, 16(sp)
	ld s8, 24(sp)
	ld s7, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s5, 64(sp)
	ld s0, 72(sp)
	ld s1, 80(sp)
	ld s6, 88(sp)
	addi sp, sp, 96
	ret
.globl main
main:
.p2align 2
	addi sp, sp, -192
	sd s0, 8(sp)
	addi s0, sp, 0
	sd s5, 184(sp)
	sd s1, 176(sp)
	addi s1, sp, 16
	sd s6, 168(sp)
	sd s3, 160(sp)
	sd s2, 152(sp)
	sd s4, 144(sp)
	sd ra, 136(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	jal getint
	sw a0, 0(sp)
	jal getint
	mv s3, a0
pcrel417:
	auipc a0, %pcrel_hi(graph)
	addi s2, a0, %pcrel_lo(pcrel417)
pcrel418:
	auipc a0, %pcrel_hi(edges)
	addi s4, a0, %pcrel_lo(pcrel418)
	ble s3, zero, label219
	mv s5, zero
.p2align 2
label211:
	jal getint
	sh3add s6, s5, s4
	sw a0, 0(s6)
	jal getint
	addiw s5, s5, 1
	sw a0, 4(s6)
	bgt s3, s5, label211
	li a0, 4
	bgt s3, a0, label214
	mv a1, zero
	j label217
label214:
	addiw a1, s3, -4
	mv a0, zero
	j label215
label219:
	li a0, 1
	mv a1, s1
	mv a2, s0
	jal maxCliques
	jal putint
	ld ra, 136(sp)
	mv a0, zero
	ld s4, 144(sp)
	ld s2, 152(sp)
	ld s3, 160(sp)
	ld s6, 168(sp)
	ld s1, 176(sp)
	ld s5, 184(sp)
	ld s0, 8(sp)
	addi sp, sp, 192
	ret
label215:
	sh3add a2, a0, s4
	addiw a0, a0, 4
	lw a4, 0(a2)
	slli a5, a4, 4
	sub t0, a5, a4
	lw a5, 4(a2)
	sh3add a3, t0, s2
	sh2add t0, a5, a3
	li a3, 1
	sw a3, 0(t0)
	slli t0, a5, 4
	sub t1, t0, a5
	sh3add a5, t1, s2
	sh2add t0, a4, a5
	sw a3, 0(t0)
	lw a4, 8(a2)
	slli a5, a4, 4
	sub t1, a5, a4
	lw a5, 12(a2)
	sh3add t0, t1, s2
	sh2add t1, a5, t0
	slli t0, a5, 4
	sw a3, 0(t1)
	sub t1, t0, a5
	sh3add t2, t1, s2
	sh2add a5, a4, t2
	sw a3, 0(a5)
	lw a4, 16(a2)
	slli a5, a4, 4
	sub t1, a5, a4
	lw a5, 20(a2)
	sh3add t0, t1, s2
	slli t2, a5, 4
	sh2add t1, a5, t0
	sub t0, t2, a5
	sw a3, 0(t1)
	sh3add t1, t0, s2
	sh2add a5, a4, t1
	sw a3, 0(a5)
	lw a4, 24(a2)
	lw a2, 28(a2)
	slli t1, a4, 4
	sub t0, t1, a4
	sh3add a5, t0, s2
	sh2add t0, a2, a5
	slli a5, a2, 4
	sub a2, a5, a2
	sw a3, 0(t0)
	sh3add t0, a2, s2
	sh2add a4, a4, t0
	sw a3, 0(a4)
	bgt a1, a0, label215
	mv a1, a0
label217:
	sh3add a2, a1, s4
	addiw a1, a1, 1
	lw a0, 0(a2)
	slli a3, a0, 4
	sub a4, a3, a0
	lw a3, 4(a2)
	sh3add a5, a4, s2
	li a2, 1
	sh2add a4, a3, a5
	sw a2, 0(a4)
	slli a4, a3, 4
	sub a5, a4, a3
	sh3add a3, a5, s2
	sh2add a0, a0, a3
	sw a2, 0(a0)
	bgt s3, a1, label217
	j label219
