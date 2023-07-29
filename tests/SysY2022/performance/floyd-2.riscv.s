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
pcrel250:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel250)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel251:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel251)
pcrel252:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel252)
	mv a1, zero
	bgt s0, zero, label25
	mv a2, zero
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
label48:
	mv a3, zero
	mv a5, zero
	sext.w a4, a1
	bgt s0, zero, label54
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label48
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
.p2align 2
label12:
	sh2add t2, a4, a0
	lw t1, 0(t2)
	bge t1, zero, label13
	addiw t0, t0, 1
	bgt s0, t0, label12
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label54
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label48
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
label19:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label20:
	li a1, 4
	bgt s2, a1, label105
	mv a2, zero
	j label21
label105:
	mv a1, zero
	j label23
label21:
	sh2add a3, a2, a0
	sh2add a4, a2, s1
	lw a1, 0(a3)
	addiw a2, a2, 1
	sw a1, 0(a4)
	bgt s2, a2, label21
	j label19
.p2align 2
label13:
	addw t3, a2, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	bge t2, zero, label14
	addiw t0, t0, 1
	bgt s0, t0, label12
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label54
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label48
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
.p2align 2
label14:
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	blt t5, zero, label16
	sh2add t6, t3, a0
	addw t5, t1, t2
	lw t4, 0(t6)
	bgt t4, t5, label16
	addiw t0, t0, 1
	bgt s0, t0, label12
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label54
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label48
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
.p2align 2
label16:
	sh2add t3, t3, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	addiw t0, t0, 1
	bgt s0, t0, label12
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label54
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label48
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
.p2align 2
label54:
	mv t0, zero
	bgt s0, zero, label12
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label54
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label48
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
.p2align 2
label25:
	bgt s0, zero, label137
	addiw a1, a1, 1
	bgt s0, a1, label25
	mv a1, zero
	mv a2, zero
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
.p2align 2
label137:
	mv a2, zero
.p2align 2
label26:
	mulw a4, s0, a2
	addw a3, a1, a4
	ble s0, a2, label143
	sh2add a5, a3, s2
	lw a4, 0(a5)
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label26
	addiw a1, a1, 1
	bgt s0, a1, label25
	mv a1, zero
	mv a2, zero
	bgt s0, zero, label48
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
.p2align 2
label143:
	li a4, -1
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label26
	addiw a1, a1, 1
	bgt s0, a1, label25
	mv a1, zero
	mv a2, zero
	bgt s0, zero, label48
	mulw s2, s0, s0
	addi a2, s2, -4
	bne s0, zero, label20
	j label19
label23:
	sh2add a3, a1, a0
	sh2add a4, a1, s1
	lw a5, 0(a3)
	addiw a1, a1, 4
	sw a5, 0(a4)
	lw a5, 4(a3)
	sw a5, 4(a4)
	lw t0, 8(a3)
	sw t0, 8(a4)
	lw a3, 12(a3)
	sw a3, 12(a4)
	bgt a2, a1, label23
	mv a2, a1
	j label21
