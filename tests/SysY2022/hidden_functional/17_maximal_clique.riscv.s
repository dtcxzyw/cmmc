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
pcrel156:
	auipc a0, %pcrel_hi(graph)
	mv s6, zero
	sd s4, 8(sp)
	addi s4, a0, %pcrel_lo(pcrel156)
	sd ra, 0(sp)
	lw a0, 0(a2)
	bgt s5, a0, label18
	sh2add a1, s2, a1
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a1, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	mv a0, zero
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a1, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	mv a0, zero
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	j label137
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
label34:
	li a0, 1
	beq a0, zero, label11
	j label10
label141:
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a2, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	j label132
label47:
	mv a0, a1
	ble s1, a1, label34
	addiw a1, a1, 1
	mv a2, a1
	ble s1, a1, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a1, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	mv a0, zero
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a1, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	mv a0, zero
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	j label141
label137:
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
label138:
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	j label141
label132:
	mv a0, zero
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	j label140
label17:
	addiw a2, a2, 1
	ble s1, a2, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a2, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	mv a0, zero
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a1, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	mv a0, zero
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a1, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	j label132
label140:
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	j label138
label10:
	mv a0, s1
	mv a1, s0
	mv a2, s3
	jal maxCliques
	max a1, s2, s6
	max s6, a0, a1
label11:
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a1, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	mv a0, zero
	addiw s5, s5, 1
	lw a0, 0(s3)
	bgt s5, a0, label18
	sh2add a1, s2, s0
	li a0, 1
	sw s5, 0(a1)
	ble s1, a0, label34
	addiw a1, a0, 1
	mv a2, a1
	ble s1, a1, label47
	sh2add a5, a0, s0
	li a4, 120
	sh2add t0, a1, s0
	lw a3, 0(a5)
	mul a5, a3, a4
	lw a4, 0(t0)
	add a3, s4, a5
	sh2add a3, a4, a3
	lw a5, 0(a3)
	bne a5, zero, label17
	j label132
.globl main
main:
	addi sp, sp, -192
	sd s0, 184(sp)
	addi s0, sp, 0
	sd s5, 176(sp)
	sd s1, 168(sp)
	addi s1, sp, 4
	sd s6, 160(sp)
	sd s3, 152(sp)
	sd s2, 144(sp)
	sd s4, 128(sp)
	sd ra, 136(sp)
	sw zero, 4(sp)
	sd zero, 8(sp)
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
	sw zero, 120(sp)
	jal getint
	sw a0, 0(sp)
	jal getint
	mv s3, a0
pcrel332:
	auipc a0, %pcrel_hi(graph)
	addi s2, a0, %pcrel_lo(pcrel332)
pcrel333:
	auipc a0, %pcrel_hi(edges)
	addi s4, a0, %pcrel_lo(pcrel333)
	ble s3, zero, label166
	mv s5, zero
label158:
	jal getint
	sh3add s6, s5, s4
	sw a0, 0(s6)
	jal getint
	addiw s5, s5, 1
	sw a0, 4(s6)
	ble s3, s5, label160
	j label158
label166:
	li a0, 1
	mv a1, s1
	mv a2, s0
	jal maxCliques
	jal putint
	ld ra, 136(sp)
	mv a0, zero
	ld s4, 128(sp)
	ld s2, 144(sp)
	ld s3, 152(sp)
	ld s6, 160(sp)
	ld s1, 168(sp)
	ld s5, 176(sp)
	ld s0, 184(sp)
	addi sp, sp, 192
	ret
label160:
	li a1, 4
	ble s3, a1, label222
	li a0, 4
	mv a1, zero
	j label161
label222:
	mv a0, zero
	j label164
label161:
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
	mul t0, a5, a1
	add a5, s2, t0
	sw a3, 0(t1)
	sh2add t1, a4, a5
	sw a3, 0(t1)
	lw a4, 16(a2)
	lw a5, 20(a2)
	mul t1, a4, a1
	add t0, s2, t1
	sh2add t1, a5, t0
	mul t0, a5, a1
	add a5, s2, t0
	sw a3, 0(t1)
	sh2add t1, a4, a5
	sw a3, 0(t1)
	lw a4, 24(a2)
	lw a2, 28(a2)
	mul t0, a4, a1
	mul a1, a2, a1
	add a5, s2, t0
	sh2add t0, a2, a5
	add a2, s2, a1
	sh2add a4, a4, a2
	sw a3, 0(t0)
	addiw a2, a0, 4
	sw a3, 0(a4)
	ble s3, a2, label164
	mv a1, a0
	mv a0, a2
	j label161
label164:
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
	ble s3, a0, label166
	j label164
