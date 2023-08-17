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
pcrel337:
	auipc a2, %pcrel_hi(dp)
	mv s9, a0
	addi s10, a2, %pcrel_lo(pcrel337)
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
pcrel338:
	auipc a0, %pcrel_hi(t)
	addi s7, a0, %pcrel_lo(pcrel338)
	ble s9, zero, label26
	addi s9, s10, 140
	mv s11, s4
	j label3
.p2align 2
label25:
	addi s9, s9, 140
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
	bgt s6, s11, label25
	addi a1, s10, 140
	mv a2, s4
	bgt s5, zero, label12
	j label10
.p2align 2
label24:
	addi a3, a3, 4
.p2align 2
label21:
	addiw a4, a4, 1
	lw a5, 0(a3)
	andi t2, a4, 1
	sh2add t1, t2, a0
	lw t0, 0(t1)
	addw t1, a5, t0
	lw t4, -4(a3)
	addw t2, t0, t4
	max t3, t2, t1
	sw t3, 140(a3)
	bgt s1, a4, label24
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
	j label14
.p2align 2
label17:
	addi a3, a3, 16
.p2align 2
label14:
	addiw t0, a5, 1
	andi t5, a5, 1
	lw t1, 0(a3)
	andi t3, t0, 1
	addiw a5, a5, 4
	sh2add t2, t3, a0
	lw t0, 0(t2)
	addw t2, t1, t0
	lw t4, -4(a3)
	addw t3, t0, t4
	sh2add t4, t5, a0
	max t6, t3, t2
	sw t6, 140(a3)
	lw t2, 4(a3)
	lw t3, 0(t4)
	addw t6, t1, t3
	addw t5, t2, t3
	max t4, t5, t6
	addw t5, t0, t2
	andi t2, a5, 1
	sw t4, 144(a3)
	lw t1, 8(a3)
	addw t3, t0, t1
	max t4, t3, t5
	sh2add t3, t2, a0
	sw t4, 148(a3)
	lw t4, 12(a3)
	lw t0, 0(t3)
	addw t5, t1, t0
	addw t2, t4, t0
	max t3, t2, t5
	sw t3, 152(a3)
	bgt s0, a5, label17
	ble s1, a5, label322
.p2align 2
label20:
	sh2add a3, a5, a4
	mv a4, a5
	j label21
label26:
	blt s5, zero, label183
	li a0, 3
	ble s1, a0, label187
	li a0, 15
	ble s0, a0, label205
	mv a0, s2
	mv a1, zero
	mv a2, zero
.p2align 2
label54:
	lw a5, 0(a0)
	addiw a1, a1, 16
	lw t0, 4(a0)
	max a4, a2, a5
	lw t2, 8(a0)
	max a3, a4, t0
	lw t1, 12(a0)
	max a5, a3, t2
	lw t0, 16(a0)
	max a2, a5, t1
	lw a5, 20(a0)
	max a4, a2, t0
	lw t0, 24(a0)
	max a3, a4, a5
	lw t2, 28(a0)
	max a2, a3, t0
	lw t1, 32(a0)
	max a5, a2, t2
	lw t0, 36(a0)
	max a4, a5, t1
	lw a5, 40(a0)
	max a3, a4, t0
	lw t0, 44(a0)
	max a2, a3, a5
	lw t1, 48(a0)
	max a4, a2, t0
	lw a2, 52(a0)
	max a5, a4, t1
	lw t0, 56(a0)
	max a3, a5, a2
	lw a5, 60(a0)
	max a4, a3, t0
	max a2, a4, a5
	ble s3, a1, label280
	addi a0, a0, 64
	j label54
label10:
	addiw a2, a2, 1
	bgt s6, a2, label11
	j label26
label110:
	mv a5, s4
	bgt s1, s4, label20
	addiw a2, a2, 1
	bgt s6, a2, label11
	j label26
label280:
	mv a3, a1
	mv a4, a2
	mv a0, a1
label39:
	ble s0, a3, label209
	sh2add a0, a3, s2
	mv a1, a4
	mv a2, a3
	j label45
label49:
	addi a0, a0, 16
label45:
	lw a5, 0(a0)
	addiw a2, a2, 4
	lw t0, 4(a0)
	max a3, a1, a5
	lw t1, 8(a0)
	max a4, a3, t0
	lw a3, 12(a0)
	max a5, a4, t1
	max a1, a5, a3
	bgt s0, a2, label49
	mv a0, a2
	mv a3, a1
label28:
	ble s1, a2, label191
	sh2add a0, a2, s2
	mv a1, a3
	j label33
label37:
	addi a0, a0, 4
label33:
	lw a4, 0(a0)
	addiw a2, a2, 1
	max a1, a1, a4
	bgt s1, a2, label37
label191:
	mv a0, a1
label59:
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
label322:
	addiw a2, a2, 1
	bgt s6, a2, label11
	j label26
label187:
	mv a3, zero
	mv a2, zero
	mv a1, zero
	j label28
label209:
	mv a1, a2
	mv a3, a2
	mv a2, a0
	j label28
label205:
	mv a3, zero
	mv a4, zero
	mv a2, zero
	mv a0, zero
	j label39
label183:
	mv a0, zero
	j label59
