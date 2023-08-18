.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
t:
	.zero	8040
.p2align 3
dp:
	.zero	140700
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s9, 8(sp)
	sd s10, 16(sp)
	sd s2, 24(sp)
	sd s5, 32(sp)
	sd s0, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s3, 64(sp)
	sd s7, 72(sp)
	sd s4, 80(sp)
	sd s8, 88(sp)
	sd s11, 96(sp)
	jal getint
pcrel340:
	auipc a2, %pcrel_hi(dp)
	mv s9, a0
	addi s10, a2, %pcrel_lo(pcrel340)
	li a0, 140
	mul a1, s9, a0
	add s2, s10, a1
	jal getint
	li s8, 4
	li s4, 1
	addiw s0, a0, -2
	addiw s6, s9, 1
	addiw s1, a0, 1
	addiw s3, a0, -17
	mv s5, a0
pcrel341:
	auipc a0, %pcrel_hi(t)
	addi s7, a0, %pcrel_lo(pcrel341)
	ble s9, zero, label26
	addi s9, s10, 140
	mv s11, s4
.p2align 2
label3:
	jal getint
	sh3add a1, s11, s7
	andi a2, a0, 1
	addiw s11, s11, 1
	sh2add a3, a2, a1
	sw s4, 0(a3)
	lw a0, -140(s9)
	lw a2, 4(a1)
	addw a3, a0, a2
	sw a3, 0(s9)
	ble s6, s11, label6
	addi s9, s9, 140
	j label3
label6:
	addi a1, s10, 140
	mv a2, s4
	bgt s5, zero, label12
	j label10
.p2align 2
label132:
	addiw a2, a2, 1
	ble s6, a2, label26
.p2align 2
label11:
	addi a1, a1, 140
	ble s5, zero, label10
.p2align 2
label12:
	sh3add a0, a2, s7
	addi a4, a1, -140
	ble s1, s8, label110
	addi a3, a4, 4
	mv a5, s4
	j label21
.p2align 2
label24:
	addi a3, a3, 16
.p2align 2
label21:
	addiw t0, a5, 1
	andi t6, a5, 1
	lw t1, 0(a3)
	andi t2, t0, 1
	addiw a5, a5, 4
	sh2add t3, t2, a0
	lw t0, 0(t3)
	addw t3, t1, t0
	lw t4, -4(a3)
	addw t2, t0, t4
	sh2add t4, t6, a0
	max t5, t2, t3
	sw t5, 140(a3)
	lw t2, 4(a3)
	lw t3, 0(t4)
	addw t6, t1, t3
	addw t5, t2, t3
	max t4, t5, t6
	sw t4, 144(a3)
	addw t4, t0, t2
	lw t1, 8(a3)
	andi t2, a5, 1
	addw t3, t0, t1
	max t5, t3, t4
	sh2add t3, t2, a0
	sw t5, 148(a3)
	lw t4, 12(a3)
	lw t0, 0(t3)
	addw t5, t1, t0
	addw t2, t4, t0
	max t3, t2, t5
	sw t3, 152(a3)
	bgt s0, a5, label24
	ble s1, a5, label323
.p2align 2
label15:
	sh2add a3, a5, a4
	mv a4, a5
.p2align 2
label16:
	addiw a4, a4, 1
	lw a5, 0(a3)
	andi t1, a4, 1
	sh2add t2, t1, a0
	lw t0, 0(t2)
	addw t4, a5, t0
	lw t3, -4(a3)
	addw t1, t0, t3
	max t2, t1, t4
	sw t2, 140(a3)
	ble s1, a4, label132
	addi a3, a3, 4
	j label16
label26:
	blt s5, zero, label183
	li a2, 3
	ble s1, a2, label187
	li a0, 15
	ble s0, a0, label205
	mv a0, s2
	mv a1, zero
	mv a2, zero
.p2align 2
label42:
	lw a5, 0(a0)
	addiw a1, a1, 16
	lw t1, 4(a0)
	max a3, a2, a5
	lw t0, 8(a0)
	max a4, a3, t1
	lw t2, 12(a0)
	max a2, a4, t0
	lw t1, 16(a0)
	max a5, a2, t2
	lw a4, 20(a0)
	max a3, a5, t1
	lw t1, 24(a0)
	max t0, a3, a4
	lw a5, 28(a0)
	max a2, t0, t1
	lw t0, 32(a0)
	max a4, a2, a5
	lw a2, 36(a0)
	max a3, a4, t0
	lw t1, 40(a0)
	max a5, a3, a2
	lw t0, 44(a0)
	max a4, a5, t1
	lw a3, 48(a0)
	max a2, a4, t0
	lw t1, 52(a0)
	max a5, a2, a3
	lw t0, 56(a0)
	max a4, a5, t1
	lw a5, 60(a0)
	max a3, a4, t0
	max a2, a3, a5
	ble s3, a1, label257
	addi a0, a0, 64
	j label42
label110:
	mv a5, s4
	bgt s1, s4, label15
	addiw a2, a2, 1
	bgt s6, a2, label11
	j label26
label257:
	mv a3, a1
	mv a4, a2
label47:
	ble s0, a3, label262
	sh2add a0, a3, s2
	mv a2, a4
	mv a1, a3
label53:
	lw t0, 0(a0)
	addiw a1, a1, 4
	lw t1, 4(a0)
	max a5, a2, t0
	lw t0, 8(a0)
	max a4, a5, t1
	lw a5, 12(a0)
	max a3, a4, t0
	max a2, a3, a5
	ble s0, a1, label262
	addi a0, a0, 16
	j label53
label262:
	mv a0, a2
	mv a3, a2
label30:
	ble s1, a1, label27
	sh2add a0, a1, s2
	mv a2, a1
	mv a1, a3
label35:
	lw a4, 0(a0)
	addiw a2, a2, 1
	max a1, a1, a4
	ble s1, a2, label200
	addi a0, a0, 4
	j label35
label10:
	addiw a2, a2, 1
	bgt s6, a2, label11
	j label26
label200:
	mv a0, a1
label27:
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s10, 16(sp)
	ld s2, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s3, 64(sp)
	ld s7, 72(sp)
	ld s4, 80(sp)
	ld s8, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
label323:
	addiw a2, a2, 1
	bgt s6, a2, label11
	j label26
label205:
	mv a3, zero
	mv a4, zero
	mv a2, zero
	mv a1, zero
	j label47
label187:
	mv a3, zero
	mv a1, zero
	mv a0, zero
	j label30
label183:
	mv a0, zero
	j label27
