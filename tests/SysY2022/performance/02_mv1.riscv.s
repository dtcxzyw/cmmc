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
pcrel720:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel720)
pcrel721:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel721)
pcrel722:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel722)
	mv s4, zero
	bge zero, s0, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
label521:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label567
label9:
	ble s0, zero, label10
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	j label615
label10:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label16
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	j label616
label16:
	addiw a1, a2, 4
	bge a1, s0, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
	j label575
label101:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	j label622
label21:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	j label625
label118:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label26
	mv a3, zero
	bge zero, s0, label50
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, zero, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
label510:
	addiw a3, a3, 1
	bge a3, s0, label50
	j label556
label50:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label26
	mv a3, zero
	bge zero, s0, label50
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, zero, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	j label556
label53:
	sh2add a5, a1, s1
	lw t1, 0(a5)
	sh2add t2, a3, s2
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	j label602
label26:
	ble s0, zero, label132
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label40
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	j label593
label132:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label35
	mv a3, zero
	bge zero, s0, label34
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, zero, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	j label630
label593:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	j label639
label540:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	j label586
label34:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label35
	mv a3, zero
	bge zero, s0, label34
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, zero, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	j label540
label586:
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	j label586
label33:
	sh2add a5, a1, s2
	lw t1, 0(a5)
	sh2add t2, a3, s1
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, a4, t1
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	j label586
label35:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label36
	ble s0, zero, label86
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label16
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	j label638
label44:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	j label644
label191:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label35
	mv a3, zero
	bge zero, s0, label34
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, zero, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label33
	addiw a3, a3, 1
	bge a3, s0, label34
	j label540
label630:
	addiw a3, a3, 1
	bge a3, s0, label34
	j label540
label86:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label26
	mv a3, zero
	bge zero, s0, label50
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, zero, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	j label510
label572:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	j label618
label638:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	j label572
label36:
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
label556:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
label602:
	addiw a3, a3, 1
	bge a3, s0, label50
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label53
	j label602
label644:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label191
	j label644
label625:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label118
	j label625
label567:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
label613:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label613
label5:
	addiw s4, s4, 1
	bge s4, s0, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label521
label40:
	addiw a1, a2, 4
	bge a1, s0, label179
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	j label596
label179:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	j label643
label596:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	j label642
label639:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label40
	j label639
label642:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label179
	j label642
label643:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label44
	j label643
label616:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	j label572
label622:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label21
	j label622
label618:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label16
	j label618
label575:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
label621:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label101
	j label621
label615:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
label653:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label10
	j label653
