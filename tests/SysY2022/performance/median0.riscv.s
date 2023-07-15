.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.text
.globl main
main:
	addi sp, sp, -48
pcrel245:
	auipc a0, %pcrel_hi(a)
	sd s3, 40(sp)
	addi s3, a0, %pcrel_lo(pcrel245)
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
	mv a0, zero
	mv a2, s4
	lw a3, 0(s3)
	addiw a4, s4, 1
	mv a5, zero
	ble a4, zero, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	ble a4, zero, label16
	li a5, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	bne a4, a5, label22
	sw a3, 0(s3)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(s3)
	sw a3, 0(a4)
	bge s2, a5, label19
	mv a2, a5
	lw a3, 0(s3)
	addiw a4, a5, 1
	mv a5, zero
	ble a4, zero, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	ble a4, zero, label16
	j label210
label195:
	ble a4, a5, label16
	j label210
label19:
	ble s2, a5, label21
	addiw a0, a5, 1
	sh2add a1, a0, s0
	lw a3, 0(a1)
	addiw a4, a2, 1
	mv a5, a0
	ble a4, a0, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	ble a4, a0, label16
	addiw a5, a0, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	bne a4, a5, label22
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	bge s2, a5, label19
	mv a2, a5
	lw a3, 0(a1)
	addiw a4, a5, 1
	mv a5, a0
	ble a4, a0, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	j label195
label126:
	bne a4, a5, label22
	j label139
label22:
	sh2add t0, a5, s0
	sh2add t2, a4, s0
	lw t1, 0(t0)
	lw t3, 0(t2)
	sw t3, 0(t0)
	sw t1, 0(t2)
	ble a4, a5, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	ble a4, a5, label16
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	bne a4, a5, label22
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	bge s2, a5, label19
	mv a2, a5
	lw a3, 0(a1)
	addiw a4, a5, 1
	mv a5, a0
	ble a4, a0, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	ble a4, a0, label16
	addiw a5, a0, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	j label126
label180:
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	j label195
label8:
	ble a4, a5, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	ble a4, a5, label16
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	j label126
label210:
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	j label126
label16:
	bne a4, a5, label22
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	bge s2, a5, label19
	mv a2, a5
	lw a3, 0(a1)
	addiw a4, a5, 1
	mv a5, a0
	ble a4, a0, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	ble a4, a0, label16
	addiw a5, a0, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	bne a4, a5, label22
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	bge s2, a5, label19
	mv a2, a5
	lw a3, 0(a1)
	addiw a4, a5, 1
	mv a5, a0
	ble a4, a0, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	j label195
label12:
	ble a4, a5, label16
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	bne a4, a5, label22
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	bge s2, a5, label19
	mv a2, a5
	lw a3, 0(a1)
	addiw a4, a5, 1
	mv a5, a0
	ble a4, a0, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t1, 0(t0)
	ble a3, t1, label8
	ble a4, a0, label16
	addiw a5, a0, 1
	sh2add t1, a5, s0
	lw t0, 0(t1)
	bgt a3, t0, label12
	bne a4, a5, label22
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	bge s2, a5, label19
	j label153
label139:
	sw a3, 0(a1)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a1)
	sw a3, 0(a4)
	bge s2, a5, label19
label153:
	mv a2, a5
	lw a3, 0(a1)
	addiw a4, a5, 1
	mv a5, a0
	ble a4, a0, label12
	j label180
label21:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	sh2add a2, s2, s0
	lw a0, 0(a2)
	ld ra, 0(sp)
	slli a1, a0, 1
	ld s2, 8(sp)
	srli a3, a1, 56
	ld s4, 16(sp)
	add a2, a0, a3
	ld s1, 24(sp)
	andi a1, a2, -256
	ld s0, 32(sp)
	subw a0, a0, a1
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
