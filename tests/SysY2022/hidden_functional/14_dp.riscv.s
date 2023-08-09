.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
t:
	.zero	8040
.align 8
dp:
	.zero	140700
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s6, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	jal getint
pcrel141:
	auipc a2, %pcrel_hi(dp)
	mv s2, a0
	addi s6, a2, %pcrel_lo(pcrel141)
	li a0, 140
	mul a1, s2, a0
	add s3, s6, a1
	jal getint
	li s1, 1
pcrel142:
	auipc a1, %pcrel_hi(t)
	mv s0, a0
	addi s5, a1, %pcrel_lo(pcrel142)
	ble s2, zero, label39
	addi s4, s6, 140
	mv s7, s1
.p2align 2
label3:
	jal getint
	sh3add a1, s7, s5
	andi a2, a0, 1
	addiw s7, s7, 1
	sh2add a3, a2, a1
	sw s1, 0(a3)
	lw a0, -140(s4)
	lw a2, 4(a1)
	addw a3, a0, a2
	sw a3, 0(s4)
	blt s2, s7, label39
	addi s4, s4, 140
	j label3
label39:
	addi a2, s6, 140
	addi a0, s5, 8
	mv a3, s1
	addi a1, a2, -140
	bge s2, s1, label21
	j label12
.p2align 2
label27:
	sw t2, 140(a1)
	addi a1, a1, 4
	blt s0, a4, label131
.p2align 2
label26:
	addiw a4, a4, 1
	lw a5, 0(a1)
	andi t1, a4, 1
	sh2add t2, t1, a0
	lw t0, 0(t2)
	addw t2, a5, t0
	lw t3, -4(a1)
	addw t1, t0, t3
	blt t1, t2, label27
	sw t1, 140(a1)
	addi a1, a1, 4
	bge s0, a4, label26
	addiw a3, a3, 1
	addi a2, a2, 140
	addi a0, a0, 8
	addi a1, a2, -140
	bge s2, a3, label21
label12:
	blt s0, zero, label69
	mv a1, zero
	mv a0, zero
	j label16
.p2align 2
label131:
	addiw a3, a3, 1
	addi a2, a2, 140
	addi a0, a0, 8
	addi a1, a2, -140
	blt s2, a3, label12
.p2align 2
label21:
	addi a1, a1, 4
	mv a4, s1
	bge s0, s1, label26
	addiw a3, a3, 1
	addi a2, a2, 140
	addi a0, a0, 8
	addi a1, a2, -140
	bge s2, a3, label21
	j label12
.p2align 2
label20:
	addi s3, s3, 4
.p2align 2
label16:
	lw a2, 0(s3)
	addiw a1, a1, 1
	max a0, a0, a2
	bge s0, a1, label20
label13:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
label69:
	mv a0, zero
	j label13
