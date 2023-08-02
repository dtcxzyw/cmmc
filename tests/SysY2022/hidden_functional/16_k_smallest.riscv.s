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
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s1, 16(sp)
	sd s0, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	jal getint
	mv s2, a0
	jal getint
pcrel123:
	auipc a1, %pcrel_hi(array)
	mv s1, a0
	addi s0, a1, %pcrel_lo(pcrel123)
	ble s2, zero, label38
	mv s3, s0
	mv s4, zero
.p2align 2
label3:
	jal getint
	addiw s4, s4, 1
	sw a0, 0(s3)
	ble s2, s4, label38
	addi s3, s3, 4
	j label3
label38:
	addiw a1, s2, -1
	mv a0, zero
label11:
	beq a0, a1, label13
	sh2add a4, a1, s0
	mv s2, a0
	sh2add a2, a0, s0
	lw a3, 0(a4)
	mv a4, a0
	ble a1, a0, label23
.p2align 2
label19:
	lw a5, 0(a2)
	bge a3, a5, label20
	addiw a4, a4, 1
	addi a2, a2, 4
	bgt a1, a4, label19
	j label23
.p2align 2
label20:
	sh2add t0, s2, s0
	addiw s2, s2, 1
	lw t1, 0(t0)
	sw t1, 0(a2)
	sw a5, 0(t0)
	addiw a4, a4, 1
	addi a2, a2, 4
	bgt a1, a4, label19
label23:
	sh2add a2, s2, s0
	sh2add a4, a1, s0
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	bne s1, s2, label24
	ble s2, zero, label13
	mv s1, zero
.p2align 2
label29:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, 1
	ble s2, s1, label13
	addi s0, s0, 4
	j label29
label24:
	blt s1, s2, label26
	addiw a0, s2, 1
	j label11
label13:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label26:
	addiw a1, s2, -1
	j label11
