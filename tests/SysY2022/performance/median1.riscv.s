.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
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
	mv a2, s1
	addiw a1, s1, -1
	bge s1, zero, label99
	addiw a2, s1, 1
label99:
	sraiw s2, a2, 1
	mv a0, zero
	mv a2, s0
	lw a3, 0(s0)
	addiw a4, a1, 1
	mv a5, zero
	j label8
.p2align 2
label18:
	sw a3, 0(a2)
	sh2add a4, a5, s0
	lw t1, 0(a4)
	sw t1, 0(a2)
	sw a3, 0(a4)
	bge s2, a5, label19
	mv a1, a5
	addiw a4, a5, 1
	lw a3, 0(a2)
	mv a5, a0
.p2align 2
label8:
	ble a4, a5, label12
.p2align 2
label11:
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
.p2align 2
label12:
	ble a4, a5, label16
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
.p2align 2
label16:
	sh2add t0, a5, s0
	beq a4, a5, label18
	sh2add t2, a4, s0
	lw t1, 0(t0)
	lw t3, 0(t2)
	sw t3, 0(t0)
	sw t1, 0(t2)
	bgt a4, a5, label11
	j label12
label19:
	ble s2, a5, label21
	addiw a0, a5, 1
	addi a2, t0, 4
	addiw a4, a1, 1
	mv a5, a0
	lw a3, 0(a2)
	j label8
label21:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	sh2add a0, s2, s0
	lw a1, 0(a0)
	mv a2, a1
	bge a1, zero, label101
	addiw a2, a1, 255
label101:
	andi a3, a2, -256
	ld ra, 0(sp)
	subw a0, a1, a3
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
