.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000000
.text
.globl main
main:
	addi sp, sp, -40
	sd s0, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
pcrel245:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel245)
	mv s0, a0
	jal getarray
	mv s1, a0
	addiw s3, a0, -1
	srliw a0, a0, 31
	add a0, s1, a0
	sraiw s2, a0, 1
	li a0, 59
	jal _sysy_starttime
	mv a1, s3
	mv a0, zero
	sh2add a2, zero, s0
	lw a2, 0(a2)
	addiw a3, s3, 1
	mv a4, zero
	bge zero, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	ble a3, zero, label15
	addiw a4, zero, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	bne a3, a4, label21
	sh2add a3, zero, s0
	sw a2, 0(a3)
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	bge s2, a4, label18
	mv a1, a4
	sh2add a2, zero, s0
	lw a2, 0(a2)
	addiw a3, a4, 1
	mv a4, zero
	bge zero, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	ble a3, zero, label15
	j label210
label195:
	ble a3, a4, label15
	j label210
label18:
	ble s2, a4, label20
	addiw a0, a4, 1
	sh2add a2, a0, s0
	lw a2, 0(a2)
	addiw a3, a1, 1
	mv a4, a0
	bge a0, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	ble a3, a0, label15
	addiw a4, a0, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	bne a3, a4, label21
	sh2add a3, a0, s0
	sw a2, 0(a3)
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	bge s2, a4, label18
	mv a1, a4
	sh2add a2, a0, s0
	lw a2, 0(a2)
	addiw a3, a4, 1
	mv a4, a0
	bge a0, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	j label195
label126:
	bne a3, a4, label21
	j label139
label21:
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sh2add t2, a3, s0
	lw t3, 0(t2)
	sw t3, 0(a5)
	sw t1, 0(t2)
	bge a4, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	ble a3, a4, label15
	addiw a4, a4, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	bne a3, a4, label21
	sh2add a3, a0, s0
	sw a2, 0(a3)
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	bge s2, a4, label18
	mv a1, a4
	sh2add a2, a0, s0
	lw a2, 0(a2)
	addiw a3, a4, 1
	mv a4, a0
	bge a0, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	ble a3, a0, label15
	addiw a4, a0, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	j label126
label180:
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	j label195
label7:
	bge a4, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	ble a3, a4, label15
	addiw a4, a4, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	j label126
label210:
	addiw a4, a4, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	j label126
label15:
	bne a3, a4, label21
	sh2add a3, a0, s0
	sw a2, 0(a3)
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	bge s2, a4, label18
	mv a1, a4
	sh2add a2, a0, s0
	lw a2, 0(a2)
	addiw a3, a4, 1
	mv a4, a0
	bge a0, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	ble a3, a0, label15
	addiw a4, a0, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	bne a3, a4, label21
	sh2add a3, a0, s0
	sw a2, 0(a3)
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	bge s2, a4, label18
	mv a1, a4
	sh2add a2, a0, s0
	lw a2, 0(a2)
	addiw a3, a4, 1
	mv a4, a0
	bge a0, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	j label195
label11:
	ble a3, a4, label15
	addiw a4, a4, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	bne a3, a4, label21
	sh2add a3, a0, s0
	sw a2, 0(a3)
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	bge s2, a4, label18
	mv a1, a4
	sh2add a2, a0, s0
	lw a2, 0(a2)
	addiw a3, a4, 1
	mv a4, a0
	bge a0, a3, label11
	addiw a3, a3, -1
	sh2add a5, a3, s0
	lw a5, 0(a5)
	ble a2, a5, label7
	ble a3, a0, label15
	addiw a4, a0, 1
	sh2add a5, a4, s0
	lw a5, 0(a5)
	bgt a2, a5, label11
	bne a3, a4, label21
	sh2add a3, a0, s0
	sw a2, 0(a3)
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	bge s2, a4, label18
	j label153
label139:
	sh2add a3, a0, s0
	sw a2, 0(a3)
	sh2add a5, a4, s0
	lw t1, 0(a5)
	sw t1, 0(a3)
	sw a2, 0(a5)
	bge s2, a4, label18
label153:
	mv a1, a4
	sh2add a2, a0, s0
	lw a2, 0(a2)
	addiw a3, a4, 1
	mv a4, a0
	bge a0, a3, label11
	j label180
label20:
	li a0, 61
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	sh2add a0, s2, s0
	lw a0, 0(a0)
	slli a1, a0, 1
	srli a1, a1, 56
	add a1, a0, a1
	andi a1, a1, -256
	subw a0, a0, a1
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
