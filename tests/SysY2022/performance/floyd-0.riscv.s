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
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	jal getint
pcrel217:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel217)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel218:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel218)
pcrel219:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel219)
	mv a1, zero
label2:
	bgt s0, a1, label4
label42:
	mv a4, zero
	j label11
.p2align 2
label4:
	ble s0, zero, label45
	mv a2, zero
.p2align 2
label5:
	mulw a4, s0, a2
	addw a3, a1, a4
	ble s0, a2, label52
	sh2add a5, a3, s2
	lw a4, 0(a5)
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label5
	j label193
.p2align 2
label52:
	li a4, -1
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label5
	addiw a1, a1, 1
	bgt s0, a1, label4
	j label42
label11:
	mulw a2, s0, a4
	ble s0, a4, label25
.p2align 2
label68:
	mv a5, zero
	mv a3, zero
	sext.w a1, a4
	ble s0, zero, label73
.p2align 2
label74:
	mv t0, zero
	bgt s0, zero, label18
	j label17
.p2align 2
label197:
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label74
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label68
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
	addiw a2, s2, -8
	li a3, 8
	ble s2, a3, label123
	mv a1, zero
label28:
	sh2add a3, a1, a0
	sh2add a4, a1, s1
	lw a5, 0(a3)
	addiw a1, a1, 8
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw t1, 8(a3)
	sw t1, 8(a4)
	lw t0, 12(a3)
	sw t0, 12(a4)
	lw a5, 16(a3)
	sw a5, 16(a4)
	lw t0, 20(a3)
	sw t0, 20(a4)
	lw a5, 24(a3)
	sw a5, 24(a4)
	lw a3, 28(a3)
	sw a3, 28(a4)
	bgt a2, a1, label28
label30:
	sh2add a4, a1, a0
	sh2add a3, a1, s1
	lw a2, 0(a4)
	addiw a1, a1, 1
	sw a2, 0(a3)
	bgt s2, a1, label30
	j label26
.p2align 2
label18:
	sh2add t2, a1, a0
	lw t1, 0(t2)
	bge t1, zero, label19
	addiw t0, t0, 1
	bgt s0, t0, label18
	j label197
.p2align 2
label19:
	addw t4, a2, t0
	sh2add t3, t4, a0
	lw t2, 0(t3)
	bge t2, zero, label20
	addiw t0, t0, 1
	bgt s0, t0, label18
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label74
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label68
	j label25
.p2align 2
label20:
	addw t3, a3, t0
	addw t1, t1, t2
	sh2add t5, t3, a0
	lw t4, 0(t5)
	bge t4, zero, label21
.p2align 2
label22:
	sh2add t2, t3, a0
	sw t1, 0(t2)
	addiw t0, t0, 1
	bgt s0, t0, label18
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label74
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label68
	j label25
.p2align 2
label21:
	sh2add t2, t3, a0
	lw t4, 0(t2)
	blt t1, t4, label22
	addiw t0, t0, 1
	bgt s0, t0, label18
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label74
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label68
	j label25
.p2align 2
label17:
	addiw a5, a5, 1
	mulw a3, s0, a5
	addw a1, a4, a3
	bgt s0, a5, label74
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label68
	j label25
.p2align 2
label193:
	addiw a1, a1, 1
	bgt s0, a1, label4
	j label42
label73:
	addiw a4, a4, 1
	mulw a2, s0, a4
	bgt s0, a4, label68
	j label25
label123:
	mv a1, zero
	j label30
label45:
	addiw a1, a1, 1
	j label2
