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
pcrel697:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel697)
pcrel698:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel698)
pcrel699:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel699)
	mv s4, zero
	ble s0, zero, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
label510:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label554
label9:
	ble s0, zero, label10
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	j label600
label554:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
label598:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label598
label5:
	addiw s4, s4, 1
	ble s0, s4, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label510
label10:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label46
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	j label601
label86:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label21
	mv a3, zero
	ble s0, zero, label17
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, zero, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
label516:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	j label560
label17:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label21
	mv a3, zero
	ble s0, zero, label17
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, zero, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	j label516
label21:
	ble s0, zero, label116
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label35
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	j label573
label116:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label24
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, zero, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	j label609
label24:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label25
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label46
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	j label583
label25:
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
label573:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	j label617
label35:
	addiw a1, a2, 4
	ble s0, a1, label163
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
	j label576
label163:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	j label621
label40:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	j label624
label46:
	addiw a1, a2, 4
	ble s0, a1, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	j label586
label50:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	j label632
label212:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label21
	mv a3, zero
	ble s0, zero, label17
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, zero, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	j label516
label523:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	j label567
label30:
	sh2add t1, a3, s1
	sh2add a5, a1, s2
	lw t2, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t2, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	j label567
label31:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label24
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, zero, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	j label523
label567:
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	j label567
label609:
	addiw a3, a3, 1
	ble s0, a3, label31
	j label523
label624:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label180
	j label624
label180:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label24
	mv a3, zero
	ble s0, zero, label31
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, zero, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label30
	addiw a3, a3, 1
	ble s0, a3, label31
	j label523
label560:
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	j label560
label19:
	sh2add t2, a3, s2
	sh2add a5, a1, s1
	lw t1, 0(a5)
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	addiw a3, a3, 1
	ble s0, a3, label17
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label19
	j label560
label632:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label212
	j label632
label586:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	j label630
label200:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	j label631
label617:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label35
	j label617
label576:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
label620:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label163
	j label620
label621:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label40
	j label621
label601:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
label583:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	j label627
label630:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label200
	j label630
label631:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label50
	j label631
label627:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label46
	j label627
label600:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
label636:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label10
	j label636
