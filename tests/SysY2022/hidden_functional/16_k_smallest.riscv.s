.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	4000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s1, 32(sp)
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	ble s1, zero, label30
pcrel124:
	auipc a0, %pcrel_hi(array)
	mv s3, zero
	addi s2, a0, %pcrel_lo(pcrel124)
.p2align 2
label3:
	jal getint
	sh2add a1, s3, s2
	addiw s3, s3, 1
	sw a0, 0(a1)
	bgt s1, s3, label3
	addiw a1, s1, -1
	mv a0, zero
	beq zero, a1, label26
label119:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(label119)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label22
	sh2add a2, a0, s1
	sh2add a4, a1, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	bne s0, a0, label16
label19:
	ble s2, zero, label26
	mv s0, zero
.p2align 2
label20:
	sh2add a1, s0, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s0, s0, 1
	bgt s2, s0, label20
	j label26
.p2align 2
label22:
	sh2add a5, a2, s1
	lw a4, 0(a5)
	bge a3, a4, label23
	addiw a2, a2, 1
	bgt a1, a2, label22
	sh2add a2, s2, s1
	sh2add a4, a1, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	beq s0, s2, label19
	j label16
label26:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label16:
	blt s0, s2, label69
	addiw a0, s2, 1
	j label9
label69:
	addiw a1, s2, -1
	j label9
.p2align 2
label23:
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	bgt a1, a2, label22
	sh2add a2, s2, s1
	sh2add a4, a1, s1
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	beq s0, s2, label19
	j label16
label9:
	beq a0, a1, label26
	j label119
label30:
	addiw a1, s1, -1
	mv a0, zero
	j label9
