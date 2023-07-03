.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel650:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel650)
pcrel651:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel651)
pcrel652:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel652)
	mv s5, zero
label2:
	ble s0, s5, label126
	j label4
label126:
	mv s4, zero
	j label9
label4:
	ble s0, zero, label5
	j label128
label5:
	addiw s5, s5, 1
	j label2
label9:
	ble s0, s4, label16
	ble s0, zero, label147
	j label146
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
label17:
	mv a2, zero
label19:
	ble s0, a2, label162
	j label21
label162:
	mv a2, zero
	j label34
label21:
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label167
	mv a4, zero
	j label22
label167:
	addiw a2, a2, 1
	j label19
label22:
	addiw a3, a4, 4
	ble s0, a3, label25
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label22
label34:
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label211
	mv a3, zero
	j label94
label211:
	mv a2, zero
label36:
	ble s0, a2, label215
	j label38
label215:
	mv a2, zero
	j label51
label38:
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label39
	mv a4, zero
label40:
	addiw a3, a4, 4
	ble s0, a3, label42
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label40
label51:
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label74
	mv a3, zero
label53:
	ble s0, a3, label55
	j label56
label55:
	addiw a2, a2, 1
	j label51
label56:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label58
	j label277
label58:
	ble s0, zero, label277
	slliw a4, a3, 12
	add a4, s1, a4
	li t0, 4
	ble s0, t0, label287
	j label286
label287:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	j label62
label74:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label405
	j label17
label405:
	mv a0, zero
	mv s2, zero
label75:
	ble s0, a0, label78
	ble s0, zero, label412
	j label411
label94:
	ble s0, a3, label96
	j label97
label96:
	addiw a2, a2, 1
	j label34
label97:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label99
	j label473
label62:
	addiw t0, t2, 4
	ble s0, t0, label65
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label62
label65:
	addiw t0, t2, 4
	ble s0, t0, label326
	j label67
label326:
	mv t0, t2
	j label68
label67:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label65
label68:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label277
	j label68
label473:
	addiw a3, a3, 1
	j label94
label277:
	addiw a3, a3, 1
	j label53
label99:
	ble s0, zero, label473
	slliw a4, a3, 12
	add a4, s3, a4
	li t0, 4
	ble s0, t0, label483
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
	j label112
label483:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
label103:
	addiw t0, t2, 4
	ble s0, t0, label106
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label103
label106:
	addiw t0, t2, 4
	ble s0, t0, label522
	j label110
label522:
	mv t0, t2
	j label108
label110:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label106
label108:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label473
	j label108
label112:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label595
	mv t3, t1
	mv t1, t2
	j label112
label595:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	j label103
label286:
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
label71:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label399
	mv t3, t1
	mv t1, t2
	j label71
label399:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	j label62
label42:
	addiw a3, a4, 4
	ble s0, a3, label231
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label42
label231:
	mv a3, a4
label44:
	addiw a4, a3, 4
	ble s0, a4, label46
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	j label44
label46:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label39
	j label46
label25:
	addiw a3, a4, 4
	ble s0, a3, label182
	j label181
label182:
	mv a3, a4
label27:
	addiw a4, a3, 4
	ble s0, a4, label29
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	j label27
label29:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label167
	j label29
label181:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label25
label39:
	addiw a2, a2, 1
	j label36
label147:
	addiw s4, s4, 1
	j label9
label412:
	addiw a0, a0, 1
	j label75
label128:
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
label7:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label5
	j label7
label146:
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
label13:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label147
	j label13
label411:
	slli a1, a0, 12
	add a1, s1, a1
	mv a4, s2
	mv a3, zero
label81:
	addiw a2, a3, 4
	ble s0, a2, label84
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	j label81
label84:
	addiw a2, a3, 4
	ble s0, a2, label424
	j label90
label424:
	mv a2, a4
label87:
	sh2add a4, a3, a1
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label433
	j label87
label433:
	mv s2, a2
	addiw a0, a0, 1
	j label75
label90:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	j label84
label78:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
