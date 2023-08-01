.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -48
pcrel115:
	auipc a0, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s3, 8(sp)
	addi s3, a0, %pcrel_lo(pcrel115)
	sd s0, 16(sp)
	mv s0, s3
	sd s1, 24(sp)
	sd s4, 32(sp)
	sd s2, 40(sp)
	mv a0, s3
	jal getarray
	addiw s4, a0, -1
	mv s1, a0
	srliw a0, a0, 31
	add a1, s1, a0
	li a0, 59
	sraiw s2, a1, 1
	jal _sysy_starttime
	mv a1, s3
	mv a0, zero
	mv a2, s4
	lw a3, 0(s3)
	addiw a4, s4, 1
	mv a5, zero
label8:
	bgt a4, a5, label11
	j label12
label55:
	mv a2, a5
	lw a3, 0(a1)
	addiw a4, a5, 1
	mv a5, a0
	j label8
.p2align 2
label11:
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	bgt a3, t1, label12
	bgt a4, a5, label11
.p2align 2
label12:
	ble a4, a5, label15
.p2align 2
label22:
	addiw a5, a5, 1
	sh2add t0, a5, s0
	lw t1, 0(t0)
	ble a3, t1, label15
	bgt a4, a5, label22
.p2align 2
label15:
	bne a4, a5, label47
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	blt s2, a5, label55
	ble s2, a5, label20
	addiw a0, a5, 1
	sh2add a1, a0, s0
	lw a3, 0(a1)
	addiw a4, a2, 1
	mv a5, a0
	j label8
label20:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	sh2add a2, s2, s0
	lw a0, 0(a2)
	ld ra, 0(sp)
	slli a1, a0, 1
	ld s3, 8(sp)
	srli a2, a1, 56
	ld s0, 16(sp)
	add a3, a0, a2
	ld s1, 24(sp)
	andi a1, a3, -256
	ld s4, 32(sp)
	subw a0, a0, a1
	ld s2, 40(sp)
	addi sp, sp, 48
	ret
label47:
	sh2add t0, a4, s0
	sh2add t1, a5, s0
	lw t2, 0(t1)
	lw t3, 0(t0)
	sw t3, 0(t1)
	sw t2, 0(t0)
	bgt a4, a5, label11
	j label12
