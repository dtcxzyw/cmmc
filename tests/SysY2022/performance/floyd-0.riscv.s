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
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	jal getint
pcrel276:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel276)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
	mv a2, zero
pcrel277:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel277)
pcrel278:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel278)
label2:
	bgt s0, a2, label4
label45:
	mv a3, zero
	j label11
.p2align 2
label5:
	mulw a4, s0, a1
	addw a3, a2, a4
	ble s0, a1, label55
	sh2add a5, a3, s2
	lw a4, 0(a5)
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a1, label5
	j label248
.p2align 2
label55:
	li a4, -1
	addiw a1, a1, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a1, label5
	addiw a2, a2, 1
	bgt s0, a2, label4
	j label45
label11:
	mulw a1, s0, a3
	ble s0, a3, label25
.p2align 2
label71:
	mv a4, zero
	mv a5, zero
	sext.w a2, a3
	ble s0, zero, label76
.p2align 2
label77:
	mv t0, zero
	bgt s0, zero, label17
	j label80
.p2align 2
label252:
	addiw a4, a4, 1
	mulw a5, s0, a4
	addw a2, a3, a5
	bgt s0, a4, label77
	addiw a3, a3, 1
	mulw a1, s0, a3
	bgt s0, a3, label71
label25:
	mulw s2, s0, s0
	bne s0, zero, label27
label26:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label27:
	li a1, 4
	bgt s2, a1, label30
	j label125
label28:
	sh2add a3, a2, a0
	sh2add a4, a2, s1
	lw a1, 0(a3)
	addiw a2, a2, 1
	sw a1, 0(a4)
	bgt s2, a2, label28
	j label26
label30:
	addiw a1, s2, -4
	addiw a3, s2, -20
	li a4, 16
	ble a1, a4, label141
	mv a2, zero
label31:
	sh2add a4, a2, a0
	sh2add a5, a2, s1
	lw t0, 0(a4)
	addiw a2, a2, 16
	sw t0, 0(a5)
	lw t0, 4(a4)
	sw t0, 4(a5)
	lw t2, 8(a4)
	sw t2, 8(a5)
	lw t1, 12(a4)
	sw t1, 12(a5)
	lw t0, 16(a4)
	sw t0, 16(a5)
	lw t2, 20(a4)
	sw t2, 20(a5)
	lw t1, 24(a4)
	sw t1, 24(a5)
	lw t0, 28(a4)
	sw t0, 28(a5)
	lw t2, 32(a4)
	sw t2, 32(a5)
	lw t1, 36(a4)
	sw t1, 36(a5)
	lw t0, 40(a4)
	sw t0, 40(a5)
	lw t1, 44(a4)
	sw t1, 44(a5)
	lw t0, 48(a4)
	sw t0, 48(a5)
	lw t1, 52(a4)
	sw t1, 52(a5)
	lw t0, 56(a4)
	sw t0, 56(a5)
	lw a4, 60(a4)
	sw a4, 60(a5)
	bgt a3, a2, label31
label33:
	sh2add a3, a2, a0
	sh2add a4, a2, s1
	lw a5, 0(a3)
	addiw a2, a2, 4
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw t0, 8(a3)
	sw t0, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	bgt a1, a2, label33
	j label28
label76:
	addiw a3, a3, 1
	mulw a1, s0, a3
	bgt s0, a3, label71
	j label25
.p2align 2
label17:
	sh2add t2, a2, a0
	lw t1, 0(t2)
	bge t1, zero, label18
	addiw t0, t0, 1
	bgt s0, t0, label17
	j label252
.p2align 2
label18:
	addw t4, a1, t0
	sh2add t3, t4, a0
	lw t2, 0(t3)
	blt t2, zero, label95
	addw t3, a5, t0
	addw t1, t1, t2
	sh2add t5, t3, a0
	lw t4, 0(t5)
	blt t4, zero, label20
	sh2add t2, t3, a0
	lw t4, 0(t2)
	blt t1, t4, label20
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a4, a4, 1
	mulw a5, s0, a4
	addw a2, a3, a5
	bgt s0, a4, label77
	j label76
.p2align 2
label95:
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a4, a4, 1
	mulw a5, s0, a4
	addw a2, a3, a5
	bgt s0, a4, label77
	addiw a3, a3, 1
	mulw a1, s0, a3
	bgt s0, a3, label71
	j label25
.p2align 2
label20:
	sh2add t2, t3, a0
	sw t1, 0(t2)
	addiw t0, t0, 1
	bgt s0, t0, label17
	addiw a4, a4, 1
	mulw a5, s0, a4
	addw a2, a3, a5
	bgt s0, a4, label77
	addiw a3, a3, 1
	mulw a1, s0, a3
	bgt s0, a3, label71
	j label25
.p2align 2
label4:
	ble s0, zero, label48
	mv a1, zero
	j label5
.p2align 2
label248:
	addiw a2, a2, 1
	bgt s0, a2, label4
	j label45
.p2align 2
label80:
	addiw a4, a4, 1
	mulw a5, s0, a4
	addw a2, a3, a5
	bgt s0, a4, label77
	addiw a3, a3, 1
	mulw a1, s0, a3
	bgt s0, a3, label71
	j label25
label48:
	addiw a2, a2, 1
	j label2
label141:
	mv a2, zero
	j label33
label125:
	mv a2, zero
	j label28
