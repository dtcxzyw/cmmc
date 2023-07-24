.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel171:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel171)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel172:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel172)
pcrel173:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel173)
	mv a1, zero
	bgt s0, zero, label4
label42:
	mv a1, zero
	j label11
label4:
	bgt s0, zero, label46
	addiw a1, a1, 1
	bgt s0, a1, label4
	j label42
label46:
	mv a2, zero
label5:
	mulw a4, s0, a2
	addw a3, a1, a4
	ble s0, a2, label52
	sh2add a5, a3, s2
	lw a4, 0(a5)
	j label7
label52:
	li a4, -1
label7:
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label5
	addiw a1, a1, 1
	bgt s0, a1, label4
	j label42
label11:
	mulw a2, s0, a1
	bgt s0, a1, label68
label67:
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label68:
	mv a3, zero
	j label13
label73:
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label68
	j label67
label74:
	mv t0, zero
label15:
	bgt s0, t0, label18
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label74
	j label73
label18:
	sh2add t2, a4, a0
	lw t1, 0(t2)
	bge t1, zero, label19
label23:
	addiw t0, t0, 1
	j label15
label120:
	mv a2, zero
	j label27
label26:
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
label19:
	addw t3, a2, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	blt t2, zero, label23
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	blt t5, zero, label22
	sh2add t6, t3, a0
	addw t5, t1, t2
	lw t4, 0(t6)
	ble t4, t5, label23
label22:
	sh2add t3, t3, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	j label23
label13:
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label74
	j label73
label27:
	addiw a1, a2, 4
	bgt s2, a1, label31
	sh2add a3, a2, a0
	sh2add a4, a2, s1
	lw a1, 0(a3)
	addiw a2, a2, 1
	sw a1, 0(a4)
	ble s2, a2, label26
label29:
	sh2add a3, a2, a0
	sh2add a4, a2, s1
	lw a1, 0(a3)
	addiw a2, a2, 1
	sw a1, 0(a4)
	bgt s2, a2, label29
	j label26
label31:
	sh2add a3, a2, a0
	sh2add a2, a2, s1
	lw a4, 0(a3)
	sw a4, 0(a2)
	lw a5, 4(a3)
	sw a5, 4(a2)
	lw a4, 8(a3)
	sw a4, 8(a2)
	lw a3, 12(a3)
	sw a3, 12(a2)
	mv a2, a1
	j label27
