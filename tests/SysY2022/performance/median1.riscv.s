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
pcrel240:
	auipc a0, %pcrel_hi(a)
	sd s3, 40(sp)
	addi s3, a0, %pcrel_lo(pcrel240)
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
	add a0, s1, a0
	sraiw s2, a0, 1
	li a0, 59
	jal _sysy_starttime
	mv a2, zero
	mv a0, s3
	mv a1, s4
	lw a3, 0(s3)
	addiw a4, s4, 1
	mv a5, zero
	bge zero, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	ble a4, zero, label15
	addiw a5, zero, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
	bne a4, a5, label21
	sw a3, 0(s3)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(s3)
	sw a3, 0(a4)
	bge s2, a5, label18
	mv a1, a5
	lw a3, 0(s3)
	addiw a4, a5, 1
	mv a5, zero
	bge zero, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	ble a4, zero, label15
label194:
	addiw a5, a5, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
label208:
	bne a4, a5, label21
	j label210
label18:
	ble s2, a5, label20
	addiw a2, a5, 1
	sh2add a0, a2, s0
	lw a3, 0(a0)
	addiw a4, a1, 1
	mv a5, a2
	bge a2, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	ble a4, a2, label15
	addiw a5, a2, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
	bne a4, a5, label21
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	mv a1, a5
	lw a3, 0(a0)
	addiw a4, a5, 1
	mv a5, a2
	bge a2, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	j label180
label20:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	sh2add a0, s2, s0
	lw a0, 0(a0)
	ld ra, 0(sp)
	slli a1, a0, 1
	ld s2, 8(sp)
	srli a1, a1, 56
	ld s4, 16(sp)
	add a1, a0, a1
	ld s1, 24(sp)
	andi a1, a1, -256
	ld s0, 32(sp)
	subw a0, a0, a1
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label21:
	sh2add t0, a5, s0
	sh2add t2, a4, s0
	lw t1, 0(t0)
	lw t3, 0(t2)
	sw t3, 0(t0)
	sw t1, 0(t2)
	bge a5, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	ble a4, a5, label15
	addiw a5, a5, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
	bne a4, a5, label21
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	mv a1, a5
	lw a3, 0(a0)
	addiw a4, a5, 1
	mv a5, a2
	bge a2, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	ble a4, a2, label15
	addiw a5, a2, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
	j label208
label180:
	ble a4, a5, label15
	j label194
label212:
	mv a1, a5
	lw a3, 0(a0)
	addiw a4, a5, 1
	mv a5, a2
	bge a2, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	j label180
label8:
	bge a5, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	ble a4, a5, label15
	addiw a5, a5, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
	bne a4, a5, label21
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	mv a1, a5
	lw a3, 0(a0)
	addiw a4, a5, 1
	mv a5, a2
	bge a2, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	j label180
label15:
	bne a4, a5, label21
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	mv a1, a5
	lw a3, 0(a0)
	addiw a4, a5, 1
	mv a5, a2
	bge a2, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	ble a4, a2, label15
	addiw a5, a2, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
	bne a4, a5, label21
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	mv a1, a5
	lw a3, 0(a0)
	addiw a4, a5, 1
	mv a5, a2
	bge a2, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	j label180
label210:
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	j label212
label12:
	ble a4, a5, label15
	addiw a5, a5, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
	bne a4, a5, label21
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	mv a1, a5
	lw a3, 0(a0)
	addiw a4, a5, 1
	mv a5, a2
	bge a2, a4, label12
	addiw a4, a4, -1
	sh2add t0, a4, s0
	lw t0, 0(t0)
	ble a3, t0, label8
	ble a4, a2, label15
	addiw a5, a2, 1
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bgt a3, t0, label12
	bne a4, a5, label21
	sw a3, 0(a0)
	sh2add a4, a5, s0
	lw t0, 0(a4)
	sw t0, 0(a0)
	sw a3, 0(a4)
	bge s2, a5, label18
	j label212
