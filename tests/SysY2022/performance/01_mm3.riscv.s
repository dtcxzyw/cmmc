.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s4, 40(sp)
	sd s8, 48(sp)
	sd s9, 56(sp)
	sd s2, 64(sp)
	sd s3, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	li s3, 15
	sd a0, 112(sp)
	addiw s0, a0, -3
	li s7, 5
	addiw a5, a0, -18
	lui s1, 1
pcrel825:
	auipc a1, %pcrel_hi(A)
	li s2, 3
	mv s9, zero
pcrel826:
	auipc a0, %pcrel_hi(B)
	addi s6, a1, %pcrel_lo(pcrel825)
	sd a5, 104(sp)
	addi s4, a0, %pcrel_lo(pcrel826)
	mv s8, s6
pcrel827:
	auipc a1, %pcrel_hi(C)
	addi s5, a1, %pcrel_lo(pcrel827)
	ld t2, 112(sp)
	bgt t2, zero, label5
	j label187
.p2align 2
label10:
	addi s10, s10, 4
	mv s11, a1
.p2align 2
label6:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t2, 112(sp)
	bgt t2, a1, label10
	addiw s9, s9, 1
	add s8, s8, s1
	ble t2, s9, label187
.p2align 2
label5:
	mv s10, s8
	mv s11, zero
	j label6
label187:
	mv s8, s4
	mv s9, zero
	ld t2, 112(sp)
	bgt t2, zero, label15
	j label21
.p2align 2
label19:
	addi s10, s10, 4
	mv s11, a1
.p2align 2
label16:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t2, 112(sp)
	bgt t2, a1, label19
	addiw s9, s9, 1
	add s8, s8, s1
	ble t2, s9, label21
.p2align 2
label15:
	mv s10, s8
	mv s11, zero
	j label16
label21:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	j label22
.p2align 2
label149:
	addi t0, t0, 4
.p2align 2
label145:
	lw t2, 0(t0)
	sh2add t4, t1, a1
	addiw t1, t1, 1
	lw t5, 0(t4)
	mulw t3, a2, t5
	addw t6, t2, t3
	sw t6, 0(t0)
	ld t2, 112(sp)
	bgt t2, t1, label149
	add a4, a4, s1
	mv t0, a5
	bgt t2, a5, label132
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label127
label728:
	addiw a0, a0, 1
	bge a0, s7, label87
.p2align 2
label22:
	mv a1, s5
	mv a2, zero
	ld t2, 112(sp)
	bgt t2, zero, label27
	j label213
.p2align 2
label133:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	ble t2, a5, label730
.p2align 2
label132:
	sh2add t1, a3, a4
	addiw a5, t0, 1
	lw a2, 0(t1)
	beq a2, zero, label133
	ld t2, 112(sp)
	ble t2, zero, label729
	slliw t3, t0, 12
	add t1, s4, t3
	ble t2, s2, label486
	mv t0, t1
	mv t2, zero
.p2align 2
label138:
	lw t4, 0(t0)
	sh2add t3, t2, a1
	addiw t2, t2, 4
	lw t5, 0(t3)
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 0(t0)
	lw t5, 4(t0)
	lw t4, 4(t3)
	mulw a6, a2, t4
	addw t6, t5, a6
	sw t6, 4(t0)
	lw t4, 8(t0)
	lw t5, 8(t3)
	mulw t6, a2, t5
	addw a6, t4, t6
	sw a6, 8(t0)
	lw t5, 12(t0)
	lw t4, 12(t3)
	mulw a6, a2, t4
	addw t6, t5, a6
	sw t6, 12(t0)
	ble s0, t2, label515
	addi t0, t0, 16
	j label138
.p2align 2
label515:
	mv t3, t2
	ld t2, 112(sp)
	ble t2, t3, label733
.p2align 2
label144:
	sh2add t0, t3, t1
	mv t1, t3
	j label145
.p2align 2
label730:
	addiw a3, a3, 1
	add a1, a1, s1
	ld t2, 112(sp)
	ble t2, a3, label760
.p2align 2
label127:
	mv a4, s6
	mv t0, zero
	ld t2, 112(sp)
	bgt t2, zero, label132
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label127
	j label728
.p2align 2
label268:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	ble t2, a2, label714
.p2align 2
label27:
	ld t2, 112(sp)
	ble t2, s2, label216
	ble s0, s3, label219
	mv a3, a1
	mv a4, zero
	j label30
.p2align 2
label33:
	addi a3, a3, 64
.p2align 2
label30:
	sd zero, 0(a3)
	addiw a4, a4, 16
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ld a5, 104(sp)
	bgt a5, a4, label33
	mv a5, a4
	ble s0, a4, label710
.p2align 2
label37:
	sh2add a3, a5, a1
	mv a4, a5
	j label38
.p2align 2
label41:
	addi a3, a3, 16
.p2align 2
label38:
	sw zero, 0(a3)
	addiw a4, a4, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s0, a4, label41
	ld t2, 112(sp)
	ble t2, a4, label712
.p2align 2
label45:
	sh2add a3, a4, a1
.p2align 2
label46:
	sw zero, 0(a3)
	addiw a4, a4, 1
	ld t2, 112(sp)
	ble t2, a4, label268
	addi a3, a3, 4
	j label46
.p2align 2
label486:
	mv t3, zero
	ld t2, 112(sp)
	bgt t2, zero, label144
	add a4, a4, s1
	mv t0, a5
	bgt t2, a5, label132
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label127
	j label728
.p2align 2
label733:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label132
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label127
	j label728
.p2align 2
label710:
	ld t2, 112(sp)
	bgt t2, a4, label45
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label27
	j label213
.p2align 2
label216:
	mv a4, zero
	ld t2, 112(sp)
	bgt t2, zero, label45
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label27
	j label213
.p2align 2
label219:
	mv a5, zero
	mv a4, zero
	bgt s0, zero, label37
	ld t2, 112(sp)
	bgt t2, zero, label45
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label27
	j label213
.p2align 2
label729:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label132
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label127
	j label728
label87:
	mv s5, zero
	mv a0, zero
	ld t2, 112(sp)
	bgt t2, zero, label92
	j label126
.p2align 2
label382:
	mv s5, a2
	addiw a0, a0, 1
	add s4, s4, s1
	ld t2, 112(sp)
	ble t2, a0, label126
.p2align 2
label92:
	ld t2, 112(sp)
	ble t2, s2, label367
	ble s0, s3, label386
	mv a1, s4
	mv a2, zero
	mv a3, s5
.p2align 2
label121:
	lw a5, 0(a1)
	addiw a2, a2, 16
	lw t1, 4(a1)
	addw a4, a3, a5
	lw a3, 8(a1)
	addw t0, a4, t1
	lw t1, 12(a1)
	addw a5, t0, a3
	lw t2, 16(a1)
	addw a4, a5, t1
	lw t1, 20(a1)
	addw a3, a4, t2
	lw a4, 24(a1)
	addw t0, a3, t1
	lw t1, 28(a1)
	addw a5, t0, a4
	lw t2, 32(a1)
	addw a3, a5, t1
	lw t1, 36(a1)
	addw a4, a3, t2
	lw a3, 40(a1)
	addw t0, a4, t1
	lw t1, 44(a1)
	addw a5, t0, a3
	lw t0, 48(a1)
	addw a4, a5, t1
	lw t1, 52(a1)
	addw a3, a4, t0
	lw t0, 56(a1)
	addw a5, a3, t1
	lw t1, 60(a1)
	addw a4, a5, t0
	ld a5, 104(sp)
	addw a3, a4, t1
	ble a5, a2, label461
	addi a1, a1, 64
	j label121
.p2align 2
label461:
	mv a4, a2
	mv s5, a3
	ble s0, a2, label727
.p2align 2
label114:
	sh2add a1, a4, s4
	mv a3, s5
	mv a2, a4
	j label115
.p2align 2
label119:
	addi a1, a1, 16
.p2align 2
label115:
	lw a5, 0(a1)
	addiw a2, a2, 4
	lw t1, 4(a1)
	addw t0, a3, a5
	lw t2, 8(a1)
	addw a4, t0, t1
	lw t0, 12(a1)
	addw a5, a4, t2
	addw a3, a5, t0
	bgt s0, a2, label119
	mv a1, a3
	ld t2, 112(sp)
	mv a3, a2
	mv a2, a1
	ble t2, a3, label726
.p2align 2
label99:
	sh2add a1, a3, s4
.p2align 2
label100:
	lw a4, 0(a1)
	addiw a3, a3, 1
	ld t2, 112(sp)
	addw a2, a2, a4
	ble t2, a3, label382
	addi a1, a1, 4
	j label100
label367:
	mv a2, s5
	mv a3, zero
	mv a1, zero
	ld t2, 112(sp)
	bgt t2, zero, label99
	mv s5, zero
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label92
	j label126
.p2align 2
label727:
	mv a1, a3
	ld t2, 112(sp)
	mv a3, a2
	mv a2, a1
	bgt t2, a3, label99
	mv s5, a1
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label92
	j label126
label386:
	mv a4, zero
	mv a3, zero
	mv a2, zero
	bgt s0, zero, label114
	mv a1, zero
	ld t2, 112(sp)
	bgt t2, zero, label99
	mv s5, zero
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label92
	j label126
.p2align 2
label712:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a2, label27
label213:
	mv a1, s4
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label54
	j label273
.p2align 2
label74:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label58
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label54
label273:
	mv a1, s4
	mv a2, zero
	ld t2, 112(sp)
	bgt t2, zero, label151
	j label750
.p2align 2
label59:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	ble t2, a5, label716
.p2align 2
label58:
	sh2add t1, a3, a4
	addiw a5, t0, 1
	lw a2, 0(t1)
	beq a2, zero, label59
	ld t2, 112(sp)
	ble t2, zero, label715
	slliw t3, t0, 12
	add t1, s5, t3
	ble t2, s2, label294
	mv t0, t1
	mv t2, zero
	j label63
.p2align 2
label66:
	addi t0, t0, 16
.p2align 2
label63:
	lw t4, 0(t0)
	sh2add t3, t2, a1
	addiw t2, t2, 4
	lw t5, 0(t3)
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 0(t0)
	lw t5, 4(t0)
	lw t4, 4(t3)
	mulw t6, a2, t4
	addw a6, t5, t6
	sw a6, 4(t0)
	lw t4, 8(t0)
	lw t5, 8(t3)
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 8(t0)
	lw t5, 12(t0)
	lw a6, 12(t3)
	mulw t6, a2, a6
	addw t4, t5, t6
	sw t4, 12(t0)
	bgt s0, t2, label66
	mv t3, t2
	ld t2, 112(sp)
	ble t2, t3, label718
.p2align 2
label70:
	sh2add t0, t3, t1
	mv t1, t3
.p2align 2
label71:
	lw t2, 0(t0)
	sh2add t3, t1, a1
	addiw t1, t1, 1
	lw t4, 0(t3)
	mulw t6, a2, t4
	addw t5, t2, t6
	sw t5, 0(t0)
	ld t2, 112(sp)
	ble t2, t1, label74
	addi t0, t0, 4
	j label71
.p2align 2
label591:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	ble t2, a2, label741
.p2align 2
label151:
	ld t2, 112(sp)
	ble t2, s2, label539
	ble s0, s3, label542
	mv a3, a1
	mv a4, zero
.p2align 2
label162:
	sd zero, 0(a3)
	addiw a4, a4, 16
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ld a5, 104(sp)
	ble a5, a4, label577
	addi a3, a3, 64
	j label162
.p2align 2
label716:
	addiw a3, a3, 1
	add a1, a1, s1
	ld t2, 112(sp)
	ble t2, a3, label752
.p2align 2
label54:
	mv a4, s6
	mv t0, zero
	ld t2, 112(sp)
	bgt t2, zero, label58
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label54
	j label273
.p2align 2
label577:
	mv a5, a4
	ble s0, a4, label739
.p2align 2
label156:
	sh2add a3, a5, a1
	mv a4, a5
	j label157
.p2align 2
label160:
	addi a3, a3, 16
.p2align 2
label157:
	sw zero, 0(a3)
	addiw a4, a4, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s0, a4, label160
	ld t2, 112(sp)
	ble t2, a4, label738
.p2align 2
label169:
	sh2add a3, a4, a1
.p2align 2
label170:
	sw zero, 0(a3)
	addiw a4, a4, 1
	ld t2, 112(sp)
	ble t2, a4, label591
	addi a3, a3, 4
	j label170
.p2align 2
label294:
	mv t3, zero
	ld t2, 112(sp)
	bgt t2, zero, label70
	add a4, a4, s1
	mv t0, a5
	bgt t2, a5, label58
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label54
	j label273
.p2align 2
label718:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label58
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label54
	j label273
.p2align 2
label542:
	mv a5, zero
	mv a4, zero
	bgt s0, zero, label156
	ld t2, 112(sp)
	bgt t2, zero, label169
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label151
	j label750
.p2align 2
label739:
	ld t2, 112(sp)
	bgt t2, a4, label169
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label151
	j label750
.p2align 2
label539:
	mv a4, zero
	ld t2, 112(sp)
	bgt t2, zero, label169
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label151
	j label750
.p2align 2
label715:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label58
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label54
	j label273
.p2align 2
label738:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a2, label151
label750:
	mv a1, s5
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label127
	j label86
label126:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s5
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s4, 40(sp)
	ld s8, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label760:
	addiw a0, a0, 1
	blt a0, s7, label22
	j label87
.p2align 2
label726:
	mv s5, a1
	addiw a0, a0, 1
	add s4, s4, s1
	ld t2, 112(sp)
	bgt t2, a0, label92
	j label126
label714:
	mv a1, s4
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label54
	j label273
label741:
	mv a1, s5
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label127
label86:
	addiw a0, a0, 1
	blt a0, s7, label22
	j label87
label752:
	mv a1, s4
	mv a2, zero
	ld t2, 112(sp)
	bgt t2, zero, label151
	j label750
