.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.text
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getint
pcrel393:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi s2, a1, %pcrel_lo(pcrel393)
	mv a0, s2
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv t2, zero
	mv a5, s2
pcrel394:
	auipc a4, %pcrel_hi(temp)
pcrel395:
	auipc a2, %pcrel_hi(dst)
	slliw a0, s0, 2
	sh1add t1, s0, s0
	slliw t0, s0, 1
	addiw a1, s0, -3
	addi a3, a4, %pcrel_lo(pcrel394)
	addi s1, a2, %pcrel_lo(pcrel395)
	li a4, 3
	mv a2, a3
	bgt s0, zero, label6
	j label80
.p2align 2
label141:
	addiw t2, t2, 1
	addi a2, a2, 4
	addi a5, a5, 4
	ble s0, t2, label80
.p2align 2
label6:
	ble s0, a4, label84
	sh2add t3, s0, a2
	mv s2, a5
	mv s5, zero
	mv s3, zero
	mv s4, zero
	sh2add t4, s0, a5
	sh2add t5, t0, a2
	sh2add t6, t0, a5
	sh2add a6, t1, a2
	sh2add a7, t1, a5
.p2align 2
label8:
	lw s7, 0(s2)
	sh2add s8, s3, a2
	sh2add s9, s4, t4
	addiw s5, s5, 4
	sh2add s10, s4, t6
	sw s7, 0(s8)
	sh2add s8, s3, t3
	lw s6, 0(s9)
	sh2add s9, s3, t5
	sw s6, 0(s8)
	sh2add s8, s4, a7
	lw s7, 0(s10)
	addw s4, a0, s4
	sw s7, 0(s9)
	sh2add s7, s3, a6
	lw s6, 0(s8)
	addw s3, a0, s3
	sw s6, 0(s7)
	ble a1, s5, label121
	sh2add s2, a0, s2
	j label8
.p2align 2
label121:
	ble s0, s5, label355
.p2align 2
label19:
	sh2add t3, s4, a5
	mv t4, s3
	mv t5, s5
.p2align 2
label20:
	lw t6, 0(t3)
	sh2add a6, t4, a2
	addiw t5, t5, 1
	addw t4, s0, t4
	sw t6, 0(a6)
	ble s0, t5, label141
	sh2add t3, s0, t3
	j label20
label80:
	mv a1, a3
	mv t0, zero
	mv a2, zero
	bgt s0, zero, label149
	j label29
.p2align 2
label372:
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	ble s0, t0, label29
.p2align 2
label149:
	mv t1, zero
	mv a0, zero
	mv a5, a3
	bgt s0, zero, label56
label55:
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label149
	j label29
.p2align 2
label279:
	addiw t3, t3, 1
	ble s0, t3, label361
.p2align 2
label65:
	addi t2, t2, 4
	sh2add t5, a0, a1
	lw t4, 0(t5)
	bge t4, zero, label60
	addiw t3, t3, 1
	bgt s0, t3, label65
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	ble s0, t1, label372
.p2align 2
label56:
	mv t2, a3
	mv t3, zero
	sh2add t5, a0, a1
	lw t4, 0(t5)
	blt t4, zero, label272
.p2align 2
label60:
	sh2add t6, a2, t2
	lw t5, 0(t6)
	blt t5, zero, label279
	sh2add a7, a0, t2
	addw t6, t4, t5
	lw a6, 0(a7)
	blt a6, zero, label63
	sh2add t5, t3, a5
	lw t4, 0(t5)
	bge t6, t4, label294
.p2align 2
label63:
	sh2add t4, t3, a5
	sw t6, 0(t4)
	addiw t3, t3, 1
	bgt s0, t3, label65
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label56
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label149
	j label29
.p2align 2
label294:
	addiw t3, t3, 1
	bgt s0, t3, label65
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label56
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label149
	j label29
.p2align 2
label272:
	addiw t3, t3, 1
	bgt s0, t3, label65
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label56
	j label55
.p2align 2
label361:
	addiw t1, t1, 1
	mulw a0, s0, t1
	sh2add a5, a0, a3
	bgt s0, t1, label56
	addiw t0, t0, 1
	addi a1, a1, 4
	mulw a2, s0, t0
	bgt s0, t0, label149
label29:
	mulw s2, s0, s0
	beq s0, zero, label30
	ble s2, a4, label157
	addiw a1, s2, -3
	addiw a2, s2, -18
	li a0, 15
	ble a1, a0, label163
	mv a0, a3
	mv a4, zero
	j label34
.p2align 2
label37:
	addi a0, a0, 64
.p2align 2
label34:
	lw t0, 0(a0)
	sh2add a5, a4, s1
	addiw a4, a4, 16
	sw t0, 0(a5)
	lw t1, 4(a0)
	sw t1, 4(a5)
	lw t0, 8(a0)
	sw t0, 8(a5)
	lw t1, 12(a0)
	sw t1, 12(a5)
	lw t2, 16(a0)
	sw t2, 16(a5)
	lw t0, 20(a0)
	sw t0, 20(a5)
	lw t2, 24(a0)
	sw t2, 24(a5)
	lw t1, 28(a0)
	sw t1, 28(a5)
	lw t0, 32(a0)
	sw t0, 32(a5)
	lw t2, 36(a0)
	sw t2, 36(a5)
	lw t1, 40(a0)
	sw t1, 40(a5)
	lw t0, 44(a0)
	sw t0, 44(a5)
	lw t1, 48(a0)
	sw t1, 48(a5)
	lw t2, 52(a0)
	sw t2, 52(a5)
	lw t0, 56(a0)
	sw t0, 56(a5)
	lw t1, 60(a0)
	sw t1, 60(a5)
	bgt a2, a4, label37
	mv a2, a4
label38:
	ble a1, a2, label221
	sh2add a0, a2, a3
	j label42
label45:
	addi a0, a0, 16
label42:
	lw a5, 0(a0)
	sh2add a4, a2, s1
	addiw a2, a2, 4
	sw a5, 0(a4)
	lw t0, 4(a0)
	sw t0, 4(a4)
	lw a5, 8(a0)
	sw a5, 8(a4)
	lw t0, 12(a0)
	sw t0, 12(a4)
	bgt a1, a2, label45
	mv a0, a2
label46:
	ble s2, a0, label30
	sh2add a1, a0, a3
	j label49
label52:
	addi a1, a1, 4
label49:
	lw a2, 0(a1)
	sh2add a3, a0, s1
	addiw a0, a0, 1
	sw a2, 0(a3)
	bgt s2, a0, label52
label30:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label84:
	mv s5, zero
	mv s3, zero
	mv s4, zero
	bgt s0, zero, label19
	addiw t2, t2, 1
	addi a2, a2, 4
	addi a5, a5, 4
	bgt s0, t2, label6
	j label80
.p2align 2
label355:
	addiw t2, t2, 1
	addi a2, a2, 4
	addi a5, a5, 4
	bgt s0, t2, label6
	j label80
label221:
	mv a0, a4
	j label46
label163:
	mv a2, zero
	mv a4, zero
	j label38
label157:
	mv a0, zero
	j label46
