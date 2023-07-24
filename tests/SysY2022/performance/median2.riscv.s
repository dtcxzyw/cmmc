.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -48
pcrel111:
	auipc a0, %pcrel_hi(a)
	sd s3, 40(sp)
	addi s3, a0, %pcrel_lo(pcrel111)
	sd s0, 32(sp)
	mv s0, s3
	sd s1, 24(sp)
	sd s4, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
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
	mv a2, zero
	mv a0, s4
	lw a3, 0(s3)
	addiw a4, s4, 1
	mv a5, zero
.p2align 2
label8:
	bgt a4, a5, label22
	beq a4, a5, label16
label104:
	sh2add t0, a5, s0
	sh2add t2, a4, s0
	lw t1, 0(t0)
	lw t3, 0(t2)
	sw t3, 0(t0)
	sw t1, 0(t2)
	j label8
.p2align 2
label22:
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	bgt a3, t1, label11
	bgt a4, a5, label22
	beq a4, a5, label16
	j label104
.p2align 2
label11:
	bgt a4, a5, label21
	beq a4, a5, label16
	j label104
.p2align 2
label14:
	beq a4, a5, label16
	j label104
.p2align 2
label21:
	addiw a5, a5, 1
	sh2add t0, a5, s0
	lw t1, 0(t0)
	ble a3, t1, label14
	j label11
label16:
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	bge s2, a5, label17
	mv a0, a5
	lw a3, 0(a1)
	addiw a4, a5, 1
	mv a5, a2
	j label8
label17:
	bgt s2, a5, label18
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	sh2add a3, s2, s0
	lw a0, 0(a3)
	ld ra, 0(sp)
	slli a2, a0, 1
	ld s2, 8(sp)
	srli a3, a2, 56
	ld s4, 16(sp)
	add a1, a0, a3
	ld s1, 24(sp)
	andi a2, a1, -256
	ld s0, 32(sp)
	subw a0, a0, a2
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label18:
	addiw a2, a5, 1
	sh2add a1, a2, s0
	lw a3, 0(a1)
	addiw a4, a0, 1
	mv a5, a2
	j label8
