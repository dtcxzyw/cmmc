.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
graph:
	.zero	3600
.align 4
edges:
	.zero	4800
.text
maxCliques:
	addi sp, sp, -64
	sd s2, 56(sp)
	mv s2, a0
	sd s0, 48(sp)
	mv s0, a1
	sd s5, 40(sp)
	li s5, 1
	sd s3, 32(sp)
	mv s3, a2
	sd s1, 24(sp)
	addiw s1, a0, 1
	sd s6, 16(sp)
pcrel80:
	auipc a0, %pcrel_hi(graph)
	mv s6, zero
	sd s4, 8(sp)
	addi s4, a0, %pcrel_lo(pcrel80)
	sd ra, 0(sp)
label2:
	lw a0, 0(s3)
	bgt s5, a0, label18
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	bgt s1, a0, label13
	j label33
label10:
	mv a0, s1
	mv a1, s0
	mv a2, s3
	jal maxCliques
	max a1, s2, s6
	max s6, a0, a1
label11:
	addiw s5, s5, 1
	j label2
label18:
	mv a0, s6
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s2, 56(sp)
	addi sp, sp, 64
	ret
label33:
	li a0, 1
	bne a0, zero, label10
	j label11
label8:
	bne a0, zero, label10
	j label11
label13:
	addiw a1, a0, 1
	mv a2, a1
label14:
	bgt s1, a2, label16
	mv a0, a1
	bgt s1, a1, label13
	j label33
label16:
	sh2add a4, a0, s0
	li a5, 120
	lw a3, 0(a4)
	mul a4, a3, a5
	sh2add a5, a2, s0
	add a3, s4, a4
	lw a4, 0(a5)
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label61
	mv a0, zero
	j label8
label61:
	addiw a2, a2, 1
	j label14
.globl main
main:
	addi sp, sp, -192
	sd s0, 184(sp)
	addi s0, sp, 0
	sd s5, 176(sp)
	sd s1, 168(sp)
	addi s1, sp, 16
	sd s6, 160(sp)
	sd s3, 136(sp)
	sd s2, 152(sp)
	sd s4, 8(sp)
	sd ra, 144(sp)
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
pcrel255:
	auipc a0, %pcrel_hi(graph)
	addi s2, a0, %pcrel_lo(pcrel255)
pcrel256:
	auipc a0, %pcrel_hi(edges)
	addi s4, a0, %pcrel_lo(pcrel256)
	ble s3, zero, label90
	mv s5, zero
label82:
	jal getint
	sh3add s6, s5, s4
	sw a0, 0(s6)
	jal getint
	addiw s5, s5, 1
	sw a0, 4(s6)
	bgt s3, s5, label82
	li a1, 4
	bgt s3, a1, label146
	mv a0, zero
	j label88
label146:
	li a0, 4
	mv a1, zero
label85:
	sh3add a2, a1, s4
	li a1, 120
	lw a4, 0(a2)
	lw a5, 4(a2)
	mul t0, a4, a1
	mul t1, a5, a1
	add a3, s2, t0
	sh2add t0, a5, a3
	add a5, s2, t1
	li a3, 1
	sw a3, 0(t0)
	sh2add t0, a4, a5
	sw a3, 0(t0)
	lw a4, 8(a2)
	lw a5, 12(a2)
	mul t1, a4, a1
	add t0, s2, t1
	sh2add t1, a5, t0
	mul a5, a5, a1
	sw a3, 0(t1)
	add t1, s2, a5
	sh2add t0, a4, t1
	sw a3, 0(t0)
	lw a4, 16(a2)
	lw a5, 20(a2)
	mul t1, a4, a1
	add t0, s2, t1
	sh2add t1, a5, t0
	mul a5, a5, a1
	sw a3, 0(t1)
	add t1, s2, a5
	sh2add t0, a4, t1
	sw a3, 0(t0)
	lw a4, 24(a2)
	lw a2, 28(a2)
	mul t0, a4, a1
	add a5, s2, t0
	sh2add t0, a2, a5
	mul a2, a2, a1
	add a5, s2, a2
	sw a3, 0(t0)
	addiw a2, a0, 4
	sh2add a1, a4, a5
	sw a3, 0(a1)
	ble s3, a2, label88
	mv a1, a0
	mv a0, a2
	j label85
label88:
	sh3add a3, a0, s4
	li a2, 120
	addiw a0, a0, 1
	lw a1, 0(a3)
	lw a4, 4(a3)
	li a3, 1
	mul a5, a1, a2
	mul a2, a4, a2
	add t0, s2, a5
	sh2add a5, a4, t0
	add a4, s2, a2
	sh2add a1, a1, a4
	sw a3, 0(a5)
	sw a3, 0(a1)
	bgt s3, a0, label88
label90:
	li a0, 1
	mv a1, s1
	mv a2, s0
	jal maxCliques
	jal putint
	ld ra, 144(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s2, 152(sp)
	ld s3, 136(sp)
	ld s6, 160(sp)
	ld s1, 168(sp)
	ld s5, 176(sp)
	ld s0, 184(sp)
	addi sp, sp, 192
	ret
