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
.globl main
main:
.p2align 2
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel309:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel309)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel310:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel310)
pcrel311:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel311)
	mv a1, zero
	bgt s0, zero, label4
	mv a2, zero
	bne s0, zero, label27
	j label26
label71:
	mv a3, zero
	mv a5, zero
	sext.w a4, a1
	bgt s0, zero, label77
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label71
	bne s0, zero, label27
	j label26
.p2align 2
label18:
	addw t4, a2, t0
	sh2add t3, t4, a0
	lw t2, 0(t3)
	bge t2, zero, label19
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label77
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label71
	bne s0, zero, label27
	j label26
.p2align 2
label19:
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	blt t5, zero, label21
	sh2add t6, t3, a0
	addw t5, t1, t2
	lw t4, 0(t6)
	bgt t4, t5, label21
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label77
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label71
	bne s0, zero, label27
	j label26
.p2align 2
label21:
	sh2add t3, t3, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label77
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label71
	bne s0, zero, label27
	j label26
.p2align 2
label77:
	mv t0, zero
	bgt s0, zero, label17
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label77
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label71
	bne s0, zero, label27
	j label26
.p2align 2
label17:
	sh2add t2, a4, a0
	lw t1, 0(t2)
	bge t1, zero, label18
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label77
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label71
	beq s0, zero, label26
label27:
	mulw a1, s0, s0
	li a3, 4
	bgt a1, a3, label30
	mv a2, zero
	j label28
.p2align 2
label4:
	bgt s0, zero, label49
	addiw a1, a1, 1
	bgt s0, a1, label4
	mv a1, zero
	mv a2, zero
	bne s0, zero, label27
	j label26
.p2align 2
label49:
	mv a2, zero
	mv a4, zero
	sext.w a3, a1
	ble s0, zero, label56
	sh2add a5, a3, s2
	lw a4, 0(a5)
	li a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label6
	addiw a1, a1, 1
	bgt s0, a1, label4
	mv a1, zero
	mv a2, zero
	bgt s0, zero, label71
	bne s0, zero, label27
	j label26
.p2align 2
label6:
	mulw a4, s0, a2
	addw a3, a1, a4
	ble s0, a2, label56
	sh2add a5, a3, s2
	lw a4, 0(a5)
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label6
	addiw a1, a1, 1
	bgt s0, a1, label4
	mv a1, zero
	mv a2, zero
	bgt s0, zero, label71
	bne s0, zero, label27
	j label26
.p2align 2
label56:
	li a4, -1
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label6
	addiw a1, a1, 1
	bgt s0, a1, label4
	mv a1, zero
	mv a2, zero
	bgt s0, zero, label71
	bne s0, zero, label27
label26:
	li a0, 64
	jal _sysy_stoptime
	mv a1, s1
	mulw a0, s0, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label28:
	sh2add a4, a2, a0
	sh2add a5, a2, s1
	lw a3, 0(a4)
	addiw a2, a2, 1
	sw a3, 0(a5)
	bgt a1, a2, label28
	j label26
label30:
	addiw a2, a1, -4
	addiw a4, a1, -20
	li a3, 16
	bgt a2, a3, label144
	mv a4, zero
	j label31
label144:
	mv a3, zero
	j label33
label31:
	sh2add a5, a4, a0
	sh2add a3, a4, s1
	lw t0, 0(a5)
	addiw a4, a4, 4
	sw t0, 0(a3)
	lw t1, 4(a5)
	sw t1, 4(a3)
	lw t0, 8(a5)
	sw t0, 8(a3)
	lw a5, 12(a5)
	sw a5, 12(a3)
	bgt a2, a4, label31
	mv a2, a4
	j label28
label33:
	sh2add a5, a3, a0
	sh2add t0, a3, s1
	lw t1, 0(a5)
	addiw a3, a3, 16
	sw t1, 0(t0)
	lw t1, 4(a5)
	sw t1, 4(t0)
	lw t2, 8(a5)
	sw t2, 8(t0)
	lw t1, 12(a5)
	sw t1, 12(t0)
	lw t3, 16(a5)
	sw t3, 16(t0)
	lw t2, 20(a5)
	sw t2, 20(t0)
	lw t1, 24(a5)
	sw t1, 24(t0)
	lw t2, 28(a5)
	sw t2, 28(t0)
	lw t1, 32(a5)
	sw t1, 32(t0)
	lw t3, 36(a5)
	sw t3, 36(t0)
	lw t2, 40(a5)
	sw t2, 40(t0)
	lw t1, 44(a5)
	sw t1, 44(t0)
	lw t2, 48(a5)
	sw t2, 48(t0)
	lw t1, 52(a5)
	sw t1, 52(t0)
	lw t2, 56(a5)
	sw t2, 56(t0)
	lw a5, 60(a5)
	sw a5, 60(t0)
	bgt a4, a3, label33
	mv a4, a3
	j label31
