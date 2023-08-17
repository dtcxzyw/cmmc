.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
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
pcrel133:
	auipc a1, %pcrel_hi(array)
	mv s1, a0
	addi s0, a1, %pcrel_lo(pcrel133)
	ble s2, zero, label40
	mv s3, s0
	mv s4, zero
.p2align 2
label3:
	jal getint
	addiw s4, s4, 1
	sw a0, 0(s3)
	ble s2, s4, label40
	addi s3, s3, 4
	j label3
label40:
	addiw a1, s2, -1
	mv a0, zero
label11:
	bne a0, a1, label14
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
label14:
	sh2add a2, a1, s0
	lw a3, 0(a2)
	bge a0, a1, label59
	sh2add a2, a0, s0
	mv a5, a0
	mv a4, a0
	lw t0, 0(a2)
	blt a3, t0, label31
.p2align 2
label34:
	sh2add t1, a5, s0
	addiw a4, a4, 1
	addiw a5, a5, 1
	lw t2, 0(t1)
	sw t2, 0(a2)
	sw t0, 0(t1)
	ble a1, a4, label98
.p2align 2
label33:
	addi a2, a2, 4
	lw t0, 0(a2)
	bge a3, t0, label34
	addiw a4, a4, 1
	bgt a1, a4, label33
label98:
	mv s2, a5
label15:
	sh2add a2, s2, s0
	sh2add a4, a1, s0
	lw a3, 0(a2)
	lw a5, 0(a4)
	sw a5, 0(a2)
	sw a3, 0(a4)
	beq s1, s2, label20
	blt s1, s2, label18
	addiw a0, s2, 1
	j label11
label20:
	ble s2, zero, label13
	mv s1, zero
.p2align 2
label22:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, 1
	ble s2, s1, label13
	addi s0, s0, 4
	j label22
label31:
	addiw a4, a4, 1
	bgt a1, a4, label33
	j label98
label18:
	addiw a1, s2, -1
	j label11
label59:
	mv s2, a0
	j label15
