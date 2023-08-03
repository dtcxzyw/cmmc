.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -32
pcrel117:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel117)
	sd s1, 16(sp)
	sd s2, 24(sp)
	mv a0, s0
	jal getarray
	mv s1, a0
	li a0, 59
	jal _sysy_starttime
	srliw a0, s1, 31
	addiw a1, s1, -1
	add a2, s1, a0
	mv a0, zero
	sraiw s2, a2, 1
	mv a4, s0
	addiw a3, a1, 1
	lw a2, 0(s0)
	mv a4, zero
label7:
	ble a3, a4, label11
.p2align 2
label10:
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw t0, 0(a5)
	bgt a2, t0, label11
	bgt a3, a4, label10
.p2align 2
label11:
	ble a3, a4, label15
.p2align 2
label14:
	addiw a4, a4, 1
	sh2add a5, a4, s0
	lw t0, 0(a5)
	ble a2, t0, label15
	bgt a3, a4, label14
.p2align 2
label15:
	bne a3, a4, label56
	sh2add a3, a0, s0
	sh2add a5, a4, s0
	sw a2, 0(a3)
	lw t0, 0(a5)
	sw t0, 0(a3)
	sw a2, 0(a5)
	blt s2, a4, label66
	ble s2, a4, label20
	addiw a0, a4, 1
	addiw a3, a1, 1
	sh2add a4, a0, s0
	lw a2, 0(a4)
	mv a4, a0
	j label7
label20:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	sh2add a2, s2, s0
	lw a1, 0(a2)
	ld ra, 0(sp)
	slli a0, a1, 1
	ld s0, 8(sp)
	srli a3, a0, 56
	ld s1, 16(sp)
	add a4, a1, a3
	ld s2, 24(sp)
	andi a2, a4, -256
	addi sp, sp, 32
	subw a0, a1, a2
	ret
.p2align 2
label56:
	sh2add a5, a3, s0
	sh2add t0, a4, s0
	lw t1, 0(t0)
	lw t2, 0(a5)
	sw t2, 0(t0)
	sw t1, 0(a5)
	bgt a3, a4, label10
	j label11
label66:
	mv a1, a4
	addiw a3, a4, 1
	sh2add a4, a0, s0
	lw a2, 0(a4)
	mv a4, a0
	bgt a3, a0, label10
	j label11
