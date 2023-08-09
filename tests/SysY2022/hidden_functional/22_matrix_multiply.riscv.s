.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000
.align 8
b:
	.zero	40000
.align 8
res:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s2, 40(sp)
	sd s7, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	sd a0, 104(sp)
	jal getint
	mv s7, zero
	addiw s0, a0, -3
	li s4, 400
pcrel261:
	auipc a1, %pcrel_hi(b)
	mv t2, a0
	li s3, 3
	sd a0, 112(sp)
	addi s2, a1, %pcrel_lo(pcrel261)
pcrel262:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel262)
	mv s1, s6
pcrel263:
	auipc a0, %pcrel_hi(res)
	addi s5, a0, %pcrel_lo(pcrel263)
label2:
	ld a0, 104(sp)
	bgt a0, s7, label5
	j label12
.p2align 2
label10:
	addi s8, s8, 4
	mv s9, a1
.p2align 2
label7:
	jal getint
	addiw a1, s9, 1
	sw a0, 0(s8)
	ld t2, 112(sp)
	bgt t2, a1, label10
	addiw s7, s7, 1
	addi s1, s1, 400
	ld a0, 104(sp)
	ble a0, s7, label12
.p2align 2
label5:
	ld t2, 112(sp)
	ble t2, zero, label80
	mv s8, s1
	mv s9, zero
	j label7
label12:
	jal getint
	mv s8, a0
	jal getint
	mv s9, zero
	mv s7, s2
	mv s1, a0
	bgt s8, zero, label59
	j label16
.p2align 2
label65:
	addi s10, s10, 4
.p2align 2
label62:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	bgt s1, s11, label65
	addiw s9, s9, 1
	addi s7, s7, 400
	ble s8, s9, label16
.p2align 2
label59:
	ble s1, zero, label60
	mv s10, s7
	mv s11, zero
	j label62
label16:
	mv a1, s6
	mv a2, s5
	mv a3, zero
	ld a0, 104(sp)
	bgt a0, zero, label33
	j label21
.p2align 2
label245:
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	ble a0, a3, label21
.p2align 2
label33:
	mv a4, a2
	mv a0, zero
	bgt s1, zero, label37
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
	j label21
.p2align 2
label49:
	addi a5, a5, 400
.p2align 2
label45:
	sh2add t2, a0, a5
	sh2add t6, t0, a1
	addiw t0, t0, 1
	lw t3, 0(t6)
	lw t5, 0(t2)
	ld t2, 112(sp)
	mulw t4, t3, t5
	addw t1, t1, t4
	bgt t2, t0, label49
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	ble s1, a0, label245
.p2align 2
label37:
	ld t2, 112(sp)
	ble t2, zero, label38
	lw t1, 0(a4)
	ble t2, s3, label130
	mv a5, s2
	mv t0, zero
.p2align 2
label53:
	sh2add t5, a0, a5
	addi t6, a5, 400
	sh2add t2, t0, a1
	sh2add a6, a0, t6
	addiw t0, t0, 4
	lw t3, 0(t2)
	lw t4, 0(t5)
	lw a7, 4(t2)
	lw t5, 0(a6)
	mulw a6, t3, t4
	lw t4, 8(t2)
	mulw t6, a7, t5
	addi a7, a5, 800
	addw t5, t6, a6
	sh2add a6, a0, a7
	lw t6, 0(a6)
	addi a6, a5, 1200
	mulw a7, t4, t6
	lw t4, 12(t2)
	sh2add t6, a0, a6
	addw t3, t5, a7
	lw a7, 0(t6)
	mulw t5, t4, a7
	addw t2, t3, t5
	addw t1, t1, t2
	ble s0, t0, label187
	addi a5, a5, 1600
	j label53
.p2align 2
label187:
	mv t3, t1
	ld t2, 112(sp)
	ble t2, t0, label237
.p2align 2
label44:
	mul t2, t0, s4
	mv t1, t3
	add a5, s2, t2
	j label45
.p2align 2
label130:
	mv t0, zero
	mv t3, t1
	mv t1, zero
	ld t2, 112(sp)
	bgt t2, zero, label44
	sw zero, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label37
	j label235
.p2align 2
label38:
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label37
label235:
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
	j label21
.p2align 2
label237:
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label37
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
label21:
	mv s0, zero
	ld a0, 104(sp)
	bgt a0, zero, label26
	j label25
.p2align 2
label31:
	addi s2, s2, 4
.p2align 2
label28:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	jal putch
	addiw s3, s3, 1
	bgt s1, s3, label31
.p2align 2
label32:
	li a0, 10
	jal putch
	ld a0, 104(sp)
	addi s5, s5, 400
	addiw s0, s0, 1
	ble a0, s0, label25
.p2align 2
label26:
	ble s1, zero, label32
	mv s2, s5
	mv s3, zero
	j label28
label25:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s7, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label60:
	addiw s9, s9, 1
	addi s7, s7, 400
	bgt s8, s9, label59
	j label16
label80:
	addiw s7, s7, 1
	addi s1, s1, 400
	j label2
