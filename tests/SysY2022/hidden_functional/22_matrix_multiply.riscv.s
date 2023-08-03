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
	mv t2, a0
	addiw s0, a0, -4
pcrel256:
	auipc a1, %pcrel_hi(b)
	li s4, 400
	li s3, 4
	mv s7, zero
	sd a0, 112(sp)
	addi s2, a1, %pcrel_lo(pcrel256)
pcrel257:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel257)
	mv s1, s6
pcrel258:
	auipc a0, %pcrel_hi(res)
	addi s5, a0, %pcrel_lo(pcrel258)
	ld a0, 104(sp)
	ble a0, zero, label12
.p2align 2
label5:
	ld t2, 112(sp)
	ble t2, zero, label6
	mv s8, s1
	mv s9, zero
	j label8
.p2align 2
label84:
	addiw s7, s7, 1
	addi s1, s1, 400
	ld a0, 104(sp)
	bgt a0, s7, label5
label12:
	jal getint
	mv s8, a0
	jal getint
	mv s9, zero
	mv s7, s2
	mv s1, a0
	bgt s8, zero, label55
	j label16
.p2align 2
label8:
	jal getint
	addiw a1, s9, 1
	sw a0, 0(s8)
	ld t2, 112(sp)
	ble t2, a1, label84
	addi s8, s8, 4
	mv s9, a1
	j label8
label16:
	mv a1, s6
	mv a2, s5
	mv a3, zero
	ld a0, 104(sp)
	bgt a0, zero, label33
	j label21
.p2align 2
label55:
	ble s1, zero, label56
	mv s10, s7
	mv s11, zero
	j label58
.p2align 2
label194:
	addiw s9, s9, 1
	addi s7, s7, 400
	bgt s8, s9, label55
	j label16
label21:
	mv s0, zero
	ld a0, 104(sp)
	bgt a0, zero, label25
	j label32
.p2align 2
label33:
	mv a4, a2
	mv a0, zero
	ble s1, zero, label37
.p2align 2
label38:
	ld t2, 112(sp)
	ble t2, zero, label39
	lw t1, 0(a4)
	ble t2, s3, label129
	mv a5, s2
	mv t0, zero
.p2align 2
label42:
	sh2add t4, a0, a5
	addi a7, a5, 400
	sh2add t2, t0, a1
	sh2add a6, a0, a7
	addiw t0, t0, 4
	lw t3, 0(t2)
	lw t5, 0(t4)
	lw t6, 4(t2)
	lw t4, 0(a6)
	mulw s6, t3, t5
	addi a6, a5, 800
	lw t5, 8(t2)
	mulw a7, t6, t4
	sh2add t6, a0, a6
	addw t4, a7, s6
	addi a6, a5, 1200
	lw a7, 0(t6)
	mulw s6, t5, a7
	sh2add t5, a0, a6
	addw t3, t4, s6
	lw t4, 12(t2)
	lw t6, 0(t5)
	mulw a6, t4, t6
	addw t2, t3, a6
	addw t1, t1, t2
	ble s0, t0, label46
	addi a5, a5, 1600
	j label42
.p2align 2
label182:
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label38
.p2align 2
label237:
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
	j label21
.p2align 2
label46:
	mul t2, t0, s4
	sh2add t6, t0, a1
	add a5, s2, t2
	addiw t0, t0, 1
	sh2add t2, a0, a5
	lw t3, 0(t6)
	lw t5, 0(t2)
	ld t2, 112(sp)
	mulw t4, t3, t5
	addw t1, t1, t4
	bgt t2, t0, label52
	j label230
.p2align 2
label48:
	sh2add t2, a0, a5
	sh2add t6, t0, a1
	addiw t0, t0, 1
	lw t3, 0(t6)
	lw t5, 0(t2)
	ld t2, 112(sp)
	mulw t4, t3, t5
	addw t1, t1, t4
	ble t2, t0, label182
.p2align 2
label52:
	addi a5, a5, 400
	j label48
.p2align 2
label58:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s1, s11, label194
	addi s10, s10, 4
	j label58
.p2align 2
label25:
	ble s1, zero, label31
	mv s2, s5
	mv s3, zero
	j label27
.p2align 2
label31:
	li a0, 10
	jal putch
	ld a0, 104(sp)
	addi s5, s5, 400
	addiw s0, s0, 1
	bgt a0, s0, label25
label32:
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
.p2align 2
label27:
	lw a0, 0(s2)
	jal putint
	li a0, 32
	jal putch
	addiw s3, s3, 1
	ble s1, s3, label31
	addi s2, s2, 4
	j label27
.p2align 2
label39:
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label38
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
	j label21
.p2align 2
label129:
	mv a5, s2
	sh2add t2, a0, s2
	mv t6, a1
	li t0, 1
	lw t3, 0(a1)
	lw t5, 0(t2)
	ld t2, 112(sp)
	mulw t4, t3, t5
	addw t1, t1, t4
	bgt t2, t0, label52
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label38
	j label237
.p2align 2
label230:
	sw t1, 0(a4)
	addiw a0, a0, 1
	addi a4, a4, 4
	bgt s1, a0, label38
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
	j label21
label6:
	addiw s7, s7, 1
	addi s1, s1, 400
	ld a0, 104(sp)
	bgt a0, s7, label5
	j label12
label56:
	addiw s9, s9, 1
	addi s7, s7, 400
	bgt s8, s9, label55
	j label16
label37:
	addiw a3, a3, 1
	addi a2, a2, 400
	addi a1, a1, 400
	ld a0, 104(sp)
	bgt a0, a3, label33
	j label21
