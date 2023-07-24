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
.p2align 2
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel226:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel226)
	mv s2, a0
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel227:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel227)
pcrel228:
	auipc a1, %pcrel_hi(temp)
	addi a0, a1, %pcrel_lo(pcrel228)
	mv a1, zero
	bgt s0, zero, label4
	mv a2, zero
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label68:
	mv a3, zero
	mv a5, zero
	sext.w a4, a1
	bgt s0, zero, label74
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label68
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label74:
.p2align 2
	mv t0, zero
	bgt s0, zero, label18
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label74
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label68
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label18:
.p2align 2
	sh2add t2, a4, a0
	lw t1, 0(t2)
	bge t1, zero, label19
	addiw t0, t0, 1
	bgt s0, t0, label18
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label74
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label68
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label22:
.p2align 2
	sh2add t3, t3, a0
	addw t1, t1, t2
	sw t1, 0(t3)
	addiw t0, t0, 1
	bgt s0, t0, label18
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label74
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label68
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label19:
.p2align 2
	addw t3, a2, t0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	bge t2, zero, label20
	addiw t0, t0, 1
	bgt s0, t0, label18
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label74
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label68
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label20:
.p2align 2
	addw t3, a5, t0
	sh2add t4, t3, a0
	lw t5, 0(t4)
	blt t5, zero, label22
	sh2add t6, t3, a0
	addw t5, t1, t2
	lw t4, 0(t6)
	bgt t4, t5, label22
	addiw t0, t0, 1
	bgt s0, t0, label18
	addiw a3, a3, 1
	mulw a5, s0, a3
	addw a4, a1, a5
	bgt s0, a3, label74
	addiw a1, a1, 1
	mulw a2, s0, a1
	bgt s0, a1, label68
	mulw s2, s0, s0
	bne s0, zero, label120
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
label120:
	mv a2, zero
	j label27
label4:
.p2align 2
	bgt s0, zero, label46
	addiw a1, a1, 1
	bgt s0, a1, label4
	mv a1, zero
	mv a2, zero
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label46:
.p2align 2
	mv a2, zero
label5:
.p2align 2
	mulw a4, s0, a2
	addw a3, a1, a4
	ble s0, a2, label52
	sh2add a5, a3, s2
	lw a4, 0(a5)
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label5
	addiw a1, a1, 1
	bgt s0, a1, label4
	mv a1, zero
	mv a2, zero
	bgt s0, zero, label68
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label52:
.p2align 2
	li a4, -1
	addiw a2, a2, 1
	sh2add a3, a3, a0
	sw a4, 0(a3)
	bgt s0, a2, label5
	addiw a1, a1, 1
	bgt s0, a1, label4
	mv a1, zero
	mv a2, zero
	bgt s0, zero, label68
	mulw s2, s0, s0
	bne s0, zero, label120
	j label26
label27:
.p2align 2
	addiw a1, a2, 4
	bgt s2, a1, label31
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
