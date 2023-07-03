.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s6, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel268:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel268)
pcrel269:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel269)
pcrel270:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel270)
	mv s4, zero
label2:
	ble s0, s4, label4
	ble s0, zero, label52
	j label218
label52:
	addiw s4, s4, 1
	j label2
label4:
	ble s0, zero, label69
	mv s4, zero
label5:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label69
	j label5
label218:
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
label54:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label52
	j label54
label69:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
label8:
	ble s0, zero, label80
	mv a2, zero
	j label40
label89:
	mv a1, zero
label13:
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label15
	mv a3, zero
	j label17
label15:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label16
	j label8
label16:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label17:
	ble s0, a3, label104
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label21
	j label110
label21:
	sh2add t0, a3, s1
	sh2add a5, a1, s2
	lw t1, 0(a5)
	lw t0, 0(t0)
	mulw a4, a4, t0
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	j label17
label40:
	addiw a1, a2, 4
	ble s0, a1, label43
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	j label40
label80:
	mv a1, zero
label10:
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label12
	mv a3, zero
label34:
	ble s0, a3, label36
	j label37
label36:
	addiw a1, a1, 1
	j label10
label37:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label38
	j label169
label38:
	sh2add t1, a3, s2
	sh2add a5, a1, s1
	lw t0, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t0, a4
	sw a4, 0(a5)
	j label169
label110:
	addiw a3, a3, 1
	j label17
label169:
	addiw a3, a3, 1
	j label34
label104:
	addiw a1, a1, 1
	j label13
label12:
	ble s0, zero, label89
	mv a2, zero
label23:
	addiw a1, a2, 4
	ble s0, a1, label26
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	j label23
label26:
	addiw a1, a2, 4
	ble s0, a1, label136
	j label135
label136:
	mv a1, a2
label29:
	addiw a2, a1, 4
	ble s0, a2, label31
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	j label29
label31:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label89
	j label31
label43:
	addiw a1, a2, 4
	ble s0, a1, label194
	j label193
label194:
	mv a1, a2
label45:
	addiw a2, a1, 4
	ble s0, a2, label47
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	j label45
label47:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label80
	j label47
label135:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	j label26
label193:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	j label43
