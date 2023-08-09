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
pcrel112:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel112)
	sd s1, 16(sp)
	sd s2, 24(sp)
	mv a0, s0
	jal getarray
	mv s1, a0
	li a0, 59
	jal _sysy_starttime
	mv a2, zero
	srliw a0, s1, 31
	addiw a1, s1, -1
	add a3, s1, a0
	mv a0, s0
	sraiw s2, a3, 1
	lw a3, 0(s0)
	addiw a4, a1, 1
	mv a5, zero
	j label8
label17:
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t1, 0(a4)
	sw t1, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	mv a1, a5
	addiw a4, a5, 1
	lw a3, 0(a0)
	mv a5, a2
.p2align 2
label8:
	ble a4, a5, label11
.p2align 2
label22:
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	bgt a4, a5, label14
	j label15
.p2align 2
label11:
	ble a4, a5, label15
.p2align 2
label14:
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label11
.p2align 2
label15:
	sh2add t0, a5, s0
	beq a4, a5, label17
	sh2add t2, a4, s0
	lw t1, 0(t0)
	lw t3, 0(t2)
	sw t3, 0(t0)
	sw t1, 0(t2)
	bgt a4, a5, label22
	j label11
label18:
	ble s2, a5, label20
	addiw a2, a5, 1
	addi a0, t0, 4
	addiw a4, a1, 1
	mv a5, a2
	lw a3, 0(a0)
	j label8
label20:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	sh2add a0, s2, s0
	lw a1, 0(a0)
	ld ra, 0(sp)
	slli a5, a1, 1
	ld s0, 8(sp)
	srli a4, a5, 56
	ld s1, 16(sp)
	add a3, a1, a4
	ld s2, 24(sp)
	andi a2, a3, -256
	addi sp, sp, 32
	subw a0, a1, a2
	ret
