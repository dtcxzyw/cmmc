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
pcrel175:
	auipc a0, %pcrel_hi(graph)
	sd s8, 64(sp)
	addi s2, a0, %pcrel_lo(pcrel175)
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
	ble s5, a1, label103
.p2align 2
label32:
	sh2add a4, a0, s0
	lw a3, 0(a4)
	sh2add a4, a2, s0
	slli t0, a3, 4
	sub a5, t0, a3
	sh3add a3, a5, s2
	lw a5, 0(a4)
	sh2add a3, a5, a3
	lw a4, 0(a3)
	bne a4, zero, label118
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
	beq a0, zero, label56
	mv s10, zero
	li s9, 1
	lw a0, 0(s3)
	ble s9, a0, label14
label13:
	max a0, s6, s8
	max s8, s10, a0
	addiw s7, s7, 1
	j label2
.p2align 2
label14:
	sw s9, 4(s4)
	li a0, 1
	ble s1, a0, label68
.p2align 2
label22:
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label81
.p2align 2
label25:
	sh2add a4, a0, s0
	lw a3, 0(a4)
	slli a5, a3, 4
	sub a4, a5, a3
	sh2add a5, a2, s0
	sh3add a3, a4, s2
	lw t0, 0(a5)
	sh2add a3, t0, a3
	lw a4, 0(a3)
	beq a4, zero, label97
	addiw a2, a2, 1
	bgt s1, a2, label25
	j label81
.p2align 2
label97:
	mv a0, zero
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label14
	j label13
label103:
	mv a0, a1
	j label6
.p2align 2
label118:
	addiw a2, a2, 1
	bgt s5, a2, label32
	j label103
label68:
	li a0, 1
	beq a0, zero, label19
	mv a0, s1
	mv a1, s0
	mv a2, s3
	jal maxCliques
	max a1, s5, s10
	max s10, a0, a1
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label14
	j label13
label81:
	mv a0, a1
	bgt s1, a1, label22
	j label68
label19:
	addiw s9, s9, 1
	lw a0, 0(s3)
	ble s9, a0, label14
	j label13
label56:
	addiw s7, s7, 1
	lw a0, 0(s3)
	ble s7, a0, label5
	j label34
.globl main
main:
.p2align 2
	addi sp, sp, -192
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 184
	sd s5, 16(sp)
	sd s1, 24(sp)
	addi s1, sp, 64
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd zero, 64(sp)
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
	jal getint
	sw a0, 184(sp)
	jal getint
	mv s3, a0
pcrel384:
	auipc a0, %pcrel_hi(graph)
	addi s2, a0, %pcrel_lo(pcrel384)
pcrel385:
	auipc a0, %pcrel_hi(edges)
	addi s4, a0, %pcrel_lo(pcrel385)
	ble s3, zero, label185
	mv s5, zero
.p2align 2
label177:
	jal getint
	sh3add s6, s5, s4
	sw a0, 0(s6)
	jal getint
	addiw s5, s5, 1
	sw a0, 4(s6)
	bgt s3, s5, label177
	li a0, 4
	bgt s3, a0, label182
	j label240
label180:
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
	bgt s3, a1, label180
	j label185
label182:
	addiw a0, s3, -4
	mv a1, zero
label183:
	sh3add a3, a1, s4
	addiw a1, a1, 4
	lw a4, 0(a3)
	slli a5, a4, 4
	sub t0, a5, a4
	lw a5, 4(a3)
	sh3add a2, t0, s2
	slli t1, a5, 4
	sh2add t0, a5, a2
	li a2, 1
	sw a2, 0(t0)
	sub t0, t1, a5
	sh3add t2, t0, s2
	sh2add a5, a4, t2
	sw a2, 0(a5)
	lw a4, 8(a3)
	slli a5, a4, 4
	sub t1, a5, a4
	lw a5, 12(a3)
	sh3add t0, t1, s2
	slli t2, a5, 4
	sh2add t1, a5, t0
	sub t0, t2, a5
	sw a2, 0(t1)
	sh3add t1, t0, s2
	sh2add a5, a4, t1
	sw a2, 0(a5)
	lw a4, 16(a3)
	slli a5, a4, 4
	sub t1, a5, a4
	lw a5, 20(a3)
	sh3add t0, t1, s2
	slli t2, a5, 4
	sh2add t1, a5, t0
	sub t0, t2, a5
	sw a2, 0(t1)
	sh3add t1, t0, s2
	sh2add a5, a4, t1
	sw a2, 0(a5)
	lw a4, 24(a3)
	lw a3, 28(a3)
	slli t0, a4, 4
	sub t1, t0, a4
	sh3add a5, t1, s2
	sh2add t0, a3, a5
	slli a5, a3, 4
	sub a3, a5, a3
	sw a2, 0(t0)
	sh3add t0, a3, s2
	sh2add a4, a4, t0
	sw a2, 0(a4)
	bgt a0, a1, label183
	j label180
label185:
	li a0, 1
	mv a1, s1
	mv a2, s0
	jal maxCliques
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 192
	ret
label240:
	mv a1, zero
	j label180
