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
pcrel249:
	auipc a1, %pcrel_hi(array)
	mv s1, a0
	addi s0, a1, %pcrel_lo(pcrel249)
	ble s2, zero, label60
	mv s3, s0
	mv s4, zero
.p2align 2
label3:
	jal getint
	addiw s4, s4, 1
	sw a0, 0(s3)
	ble s2, s4, label60
	addi s3, s3, 4
	j label3
label60:
	addiw a1, s2, -1
	mv a0, zero
label11:
	bne a0, a1, label13
label54:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label13:
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bge a0, a1, label79
	addiw a2, a0, 4
	addiw a5, a1, -4
	ble a1, a2, label112
	sh2add a2, a0, s0
	mv a4, a0
	mv t0, a0
	lw t1, 0(a2)
	bge a3, t1, label52
	addiw t1, a0, 1
	sh2add t3, t1, s0
	lw t2, 0(t3)
	blt a3, t2, label142
.p2align 2
label41:
	sh2add t3, t0, s0
	sh2add t5, t1, s0
	addiw t0, t0, 1
	lw t4, 0(t3)
	sw t4, 0(t5)
	sw t2, 0(t3)
	addiw t1, a4, 2
	sh2add t3, t1, s0
	lw t2, 0(t3)
	blt a3, t2, label156
.p2align 2
label44:
	sh2add t3, t0, s0
	sh2add t5, t1, s0
	addiw t0, t0, 1
	lw t4, 0(t3)
	sw t4, 0(t5)
	sw t2, 0(t3)
	addiw t1, a4, 3
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bge a3, t2, label51
	addiw a4, a4, 4
	bgt a5, a4, label49
	j label230
label224:
	addiw t1, a4, 3
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bge a3, t2, label51
	j label225
.p2align 2
label49:
	addi a2, a2, 16
	lw t1, 0(a2)
	bge a3, t1, label52
	addiw t1, a4, 1
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bge a3, t2, label41
	addiw t1, a4, 2
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bge a3, t2, label44
	j label224
.p2align 2
label51:
	sh2add t3, t0, s0
	addiw a4, a4, 4
	sh2add t5, t1, s0
	addiw t0, t0, 1
	lw t4, 0(t3)
	sw t4, 0(t5)
	sw t2, 0(t3)
	bgt a5, a4, label49
	j label230
.p2align 2
label52:
	sh2add t2, t0, s0
	addiw t0, t0, 1
	lw t3, 0(t2)
	sw t3, 0(a2)
	sw t1, 0(t2)
	addiw t1, a4, 1
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bge a3, t2, label41
	addiw t1, a4, 2
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bge a3, t2, label44
	j label224
label225:
	addiw a4, a4, 4
	bgt a5, a4, label49
label230:
	sh2add a2, a4, s0
label26:
	lw a5, 0(a2)
	bge a3, a5, label30
label31:
	addiw a4, a4, 1
	ble a1, a4, label126
	addi a2, a2, 4
	j label26
label14:
	sh2add a2, s2, s0
	sh2add a4, a1, s0
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	beq s1, s2, label16
	j label22
label126:
	mv s2, t0
	j label14
label22:
	blt s1, s2, label23
	addiw a0, s2, 1
	j label11
label16:
	ble s2, zero, label54
	mv s1, zero
.p2align 2
label18:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, 1
	ble s2, s1, label54
	addi s0, s0, 4
	j label18
label156:
	addiw t1, a4, 3
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bge a3, t2, label51
	j label225
label142:
	addiw t1, a4, 2
	sh2add t3, t1, s0
	lw t2, 0(t3)
	bge a3, t2, label44
	j label224
label23:
	addiw a1, s2, -1
	j label11
label30:
	sh2add t1, t0, s0
	addiw t0, t0, 1
	lw t2, 0(t1)
	sw t2, 0(a2)
	sw a5, 0(t1)
	j label31
label112:
	sh2add a2, a0, s0
	mv t0, a0
	mv a4, a0
	j label26
label79:
	mv s2, a0
	j label14
