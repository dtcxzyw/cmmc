.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
array:
	.zero	4000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s1, 16(sp)
	sd s0, 24(sp)
	sd s3, 32(sp)
	jal getint
	mv s2, a0
	jal getint
pcrel119:
	auipc a1, %pcrel_hi(array)
	mv s1, a0
	addi s0, a1, %pcrel_lo(pcrel119)
	bgt s2, zero, label32
label31:
	addiw a1, s2, -1
	mv a0, zero
	j label6
label32:
	mv s3, zero
	j label24
label6:
	beq a0, a1, label23
	j label8
.p2align 2
label24:
	jal getint
	sh2add a1, s3, s0
	addiw s3, s3, 1
	sw a0, 0(a1)
	bgt s2, s3, label24
	j label31
label8:
	sh2add a4, a1, s0
	mv s2, a0
	mv a2, a0
	lw a3, 0(a4)
	ble a1, a0, label16
.p2align 2
label12:
	sh2add a5, a2, s0
	lw a4, 0(a5)
	bge a3, a4, label13
	addiw a2, a2, 1
	bgt a1, a2, label12
	j label16
.p2align 2
label13:
	sh2add a5, s2, s0
	sh2add t1, a2, s0
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	bgt a1, a2, label12
label16:
	sh2add a3, s2, s0
	sh2add a4, a1, s0
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s1, s2, label20
	bge s1, s2, label18
	addiw a1, s2, -1
	j label6
label20:
	ble s2, zero, label23
	mv s1, zero
.p2align 2
label21:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, 1
	bgt s2, s1, label21
label23:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label18:
	addiw a0, s2, 1
	j label6
