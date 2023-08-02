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
	addiw s1, a0, 2
	sd s0, 24(sp)
	mv s0, a1
	sd s5, 32(sp)
	addiw s5, a0, 1
	sd s3, 40(sp)
	mv s3, a2
	sd s4, 48(sp)
	sh2add s4, a0, a1
	sd s2, 56(sp)
pcrel173:
	auipc a0, %pcrel_hi(graph)
	sd s8, 64(sp)
	addi s2, a0, %pcrel_lo(pcrel173)
	mv s8, zero
	sd s7, 72(sp)
	li s7, 1
	sd s10, 80(sp)
	sd s9, 88(sp)
label2:
	lw a0, 0(s3)
	bgt s7, a0, label34
.p2align 2
label5:
	sh2add a1, s6, s0
	li a0, 1
	sw s7, 0(a1)
.p2align 2
label6:
	ble s5, a0, label52
	addiw a1, a0, 1
	mv a2, a1
	ble s5, a1, label57
.p2align 2
label11:
	sh2add a5, a0, s0
	lw a3, 0(a5)
	slli a4, a3, 4
	sub a5, a4, a3
	sh2add a4, a2, s0
	sh3add a3, a5, s2
	lw a5, 0(a4)
	sh2add t0, a5, a3
	lw a3, 0(t0)
	beq a3, zero, label73
	addiw a2, a2, 1
	bgt s5, a2, label11
	j label57
.p2align 2
label73:
	mv a0, zero
	addiw s7, s7, 1
	lw a0, 0(s3)
	ble s7, a0, label5
label34:
	mv a0, s8
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	ld s2, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	addi sp, sp, 96
	ret
label52:
	li a0, 1
	bne a0, zero, label78
	addiw s7, s7, 1
	lw a0, 0(s3)
	ble s7, a0, label5
	j label34
label57:
	mv a0, a1
	j label6
label78:
	mv s10, zero
	li s9, 1
	lw a0, 0(s3)
	ble s9, a0, label19
label18:
	max a0, s6, s8
	max s8, s10, a0
	addiw s7, s7, 1
	j label2
.p2align 2
label19:
	sw s9, 4(s4)
	li a0, 1
	ble s1, a0, label89
.p2align 2
label27:
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label102
.p2align 2
label30:
	sh2add a4, a0, s0
	lw a3, 0(a4)
	slli a5, a3, 4
	sub a4, a5, a3
	sh2add a5, a2, s0
	sh3add a3, a4, s2
	lw a4, 0(a5)
	sh2add t0, a4, a3
	lw a3, 0(t0)
	beq a3, zero, label118
	addiw a2, a2, 1
	bgt s1, a2, label30
	j label102
.p2align 2
label118:
	mv a0, zero
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label19
	j label18
label89:
	li a0, 1
	beq a0, zero, label93
	mv a0, s1
	mv a1, s0
	mv a2, s3
	jal maxCliques
	max a1, s5, s10
	max s10, a0, a1
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label19
	j label18
label102:
	mv a0, a1
	bgt s1, a1, label27
	j label89
label93:
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label19
	j label18
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
pcrel414:
	auipc a1, %pcrel_hi(graph)
	mv s3, a0
	addi s4, a1, %pcrel_lo(pcrel414)
pcrel415:
	auipc a0, %pcrel_hi(edges)
	addi s5, a0, %pcrel_lo(pcrel415)
	ble s3, zero, label183
	mv s6, zero
.p2align 2
label175:
	jal getint
	sh3add s7, s6, s5
	sw a0, 0(s7)
	jal getint
	addiw s6, s6, 1
	sw a0, 4(s7)
	bgt s3, s6, label175
	li a0, 4
	ble s3, a0, label238
	addiw a1, s3, -4
	mv a0, zero
.p2align 2
label179:
	sh3add a2, a0, s5
	addiw a0, a0, 4
	lw a3, 0(a2)
	slli a4, a3, 4
	sub t0, a4, a3
	lw a4, 4(a2)
	sh3add a5, t0, s4
	sh2add t0, a4, a5
	slli a5, a4, 4
	sw s0, 0(t0)
	sub t0, a5, a4
	sh3add a4, t0, s4
	sh2add a5, a3, a4
	sw s0, 0(a5)
	lw a3, 8(a2)
	slli a4, a3, 4
	sub t0, a4, a3
	lw a4, 12(a2)
	sh3add a5, t0, s4
	slli t1, a4, 4
	sh2add t0, a4, a5
	sw s0, 0(t0)
	sub t0, t1, a4
	sh3add a5, t0, s4
	sh2add a4, a3, a5
	sw s0, 0(a4)
	lw a3, 16(a2)
	slli a4, a3, 4
	sub t0, a4, a3
	lw a4, 20(a2)
	sh3add a5, t0, s4
	sh2add t0, a4, a5
	slli a5, a4, 4
	sub t1, a5, a4
	sw s0, 0(t0)
	sh3add t0, t1, s4
	sh2add a4, a3, t0
	sw s0, 0(a4)
	lw a3, 24(a2)
	lw a2, 28(a2)
	slli a5, a3, 4
	sub t0, a5, a3
	sh3add a4, t0, s4
	sh2add a5, a2, a4
	slli a4, a2, 4
	sub t0, a4, a2
	sw s0, 0(a5)
	sh3add a5, t0, s4
	sh2add a2, a3, a5
	sw s0, 0(a2)
	bgt a1, a0, label179
	mv a1, a0
label181:
	sh3add a2, a1, s5
	addiw a1, a1, 1
	lw a0, 0(a2)
	lw a2, 4(a2)
	slli a4, a0, 4
	sub a5, a4, a0
	sh3add a3, a5, s4
	sh2add a4, a2, a3
	slli a3, a2, 4
	sw s0, 0(a4)
	sub a4, a3, a2
	sh3add a2, a4, s4
	sh2add a0, a0, a2
	sw s0, 0(a0)
	bgt s3, a1, label181
label183:
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
label238:
	mv a1, zero
	j label181
