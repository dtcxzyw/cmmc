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
	sd s4, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s8, 48(sp)
	sd s9, 56(sp)
	sd s2, 64(sp)
	sd s3, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	addiw s0, a0, -4
	addiw a5, a0, -20
	li s2, 4
pcrel736:
	auipc a1, %pcrel_hi(A)
	li s7, 5
	li s3, 16
	lui s1, 1
	mv s9, zero
	addi s4, a1, %pcrel_lo(pcrel736)
	sd a0, 112(sp)
	mv s8, s4
pcrel737:
	auipc a1, %pcrel_hi(C)
pcrel738:
	auipc a0, %pcrel_hi(B)
	sd a5, 104(sp)
	addi s6, a1, %pcrel_lo(pcrel737)
	addi s5, a0, %pcrel_lo(pcrel738)
	ld t3, 112(sp)
	ble t3, zero, label161
.p2align 2
label5:
	mv s10, s8
	mv s11, zero
.p2align 2
label6:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t3, 112(sp)
	bgt t3, a1, label10
	addiw s9, s9, 1
	add s8, s8, s1
	bgt t3, s9, label5
	j label161
.p2align 2
label10:
	addi s10, s10, 4
	mv s11, a1
	j label6
label161:
	mv s8, s5
	mv s9, zero
	ld t3, 112(sp)
	bgt t3, zero, label143
label15:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	j label16
.p2align 2
label143:
	mv s10, s8
	mv s11, zero
	j label144
.p2align 2
label517:
	addiw s9, s9, 1
	add s8, s8, s1
	ld t3, 112(sp)
	bgt t3, s9, label143
	j label15
.p2align 2
label16:
	mv a1, s6
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label21
	j label178
label641:
	mv s4, zero
	mv a0, zero
	j label115
.p2align 2
label98:
	sh2add t1, a2, a5
	lw a4, 0(t1)
	bne a4, zero, label360
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label98
	j label643
.p2align 2
label377:
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label98
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label93
label668:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label641
label115:
	ld t3, 112(sp)
	bgt t3, a0, label119
	j label142
.p2align 2
label360:
	ld t3, 112(sp)
	ble t3, s2, label642
	mv t1, a3
	mv t2, zero
.p2align 2
label106:
	lw t4, 0(t1)
	sh2add t3, t2, a1
	addiw t2, t2, 4
	lw t5, 0(t3)
	mulw t6, a4, t5
	addw a6, t4, t6
	sw a6, 0(t1)
	lw t5, 4(t1)
	lw t4, 4(t3)
	mulw t6, a4, t4
	addw a6, t5, t6
	sw a6, 4(t1)
	lw t4, 8(t1)
	lw t5, 8(t3)
	mulw a6, a4, t5
	addw t6, t4, a6
	sw t6, 8(t1)
	lw t5, 12(t1)
	lw t4, 12(t3)
	mulw a6, a4, t4
	addw t6, t5, a6
	sw t6, 12(t1)
	ble s0, t2, label109
	addi t1, t1, 16
	j label106
.p2align 2
label101:
	lw t3, 0(t1)
	sh2add t6, t2, a1
	addiw t2, t2, 1
	lw t5, 0(t6)
	mulw t4, a4, t5
	addw a6, t3, t4
	sw a6, 0(t1)
	ld t3, 112(sp)
	ble t3, t2, label377
.p2align 2
label104:
	addi t1, t1, 4
	j label101
.p2align 2
label109:
	sh2add t1, t2, a3
	sh2add t6, t2, a1
	lw t3, 0(t1)
	addiw t2, t2, 1
	lw t5, 0(t6)
	mulw t4, a4, t5
	addw a6, t3, t4
	sw a6, 0(t1)
	ld t3, 112(sp)
	bgt t3, t2, label104
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	bgt t3, t0, label98
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label93
	j label668
.p2align 2
label21:
	ld t3, 112(sp)
	ble t3, s2, label181
	ble s0, s3, label184
	mv a3, a1
	mv a4, zero
.p2align 2
label24:
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
	ble a5, a4, label27
	addi a3, a3, 64
	j label24
.p2align 2
label223:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label21
.p2align 2
label656:
	mv a1, s5
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label45
	j label230
.p2align 2
label144:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t3, 112(sp)
	ble t3, a1, label517
	addi s10, s10, 4
	mv s11, a1
	j label144
.p2align 2
label27:
	sh2add a3, a4, a1
	addiw a4, a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s0, a4, label33
	j label629
.p2align 2
label30:
	sw zero, 0(a3)
	addiw a4, a4, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s0, a4, label215
.p2align 2
label33:
	addi a3, a3, 16
	j label30
.p2align 2
label215:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label39
	j label655
.p2align 2
label36:
	sw zero, 0(a3)
	addiw a4, a4, 1
	ld t3, 112(sp)
	ble t3, a4, label223
.p2align 2
label39:
	addi a3, a3, 4
	j label36
.p2align 2
label93:
	mv a3, s5
	mv a5, s4
	mv t0, zero
	ld t3, 112(sp)
	bgt t3, zero, label98
	j label353
.p2align 2
label643:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label93
	addiw a0, a0, 1
	blt a0, s7, label16
	j label641
.p2align 2
label45:
	mv a3, s6
	mv a5, s4
	mv t0, zero
	ld t3, 112(sp)
	bgt t3, zero, label50
	j label234
.p2align 2
label633:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label45
	mv a1, s5
	mv a2, zero
	bgt t3, zero, label69
	j label297
.p2align 2
label50:
	sh2add t1, a2, a5
	lw a4, 0(t1)
	bne a4, zero, label241
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label50
	j label633
.p2align 2
label258:
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	ld t3, 112(sp)
	bgt t3, t0, label50
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label45
label660:
	mv a1, s5
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label69
	j label297
.p2align 2
label241:
	ld t3, 112(sp)
	ble t3, s2, label632
	mv t1, a3
	mv t2, zero
.p2align 2
label59:
	lw t4, 0(t1)
	sh2add t3, t2, a1
	addiw t2, t2, 4
	lw t5, 0(t3)
	mulw a7, a4, t5
	addw a6, t4, a7
	sw a6, 0(t1)
	lw t6, 4(t1)
	lw t4, 4(t3)
	mulw a7, a4, t4
	addw a6, t6, a7
	sw a6, 4(t1)
	lw t5, 8(t1)
	lw t4, 8(t3)
	mulw a6, a4, t4
	addw t6, t5, a6
	sw t6, 8(t1)
	lw t4, 12(t1)
	lw t5, 12(t3)
	mulw a6, a4, t5
	addw t6, t4, a6
	sw t6, 12(t1)
	ble s0, t2, label288
	addi t1, t1, 16
	j label59
.p2align 2
label53:
	lw t3, 0(t1)
	sh2add t5, t2, a1
	addiw t2, t2, 1
	lw t6, 0(t5)
	mulw a6, a4, t6
	addw t4, t3, a6
	sw t4, 0(t1)
	ld t3, 112(sp)
	ble t3, t2, label258
.p2align 2
label56:
	addi t1, t1, 4
	j label53
.p2align 2
label288:
	sh2add t1, t2, a3
	sh2add t5, t2, a1
	lw t3, 0(t1)
	addiw t2, t2, 1
	lw t6, 0(t5)
	mulw a6, a4, t6
	addw t4, t3, a6
	sw t4, 0(t1)
	ld t3, 112(sp)
	bgt t3, t2, label56
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	bgt t3, t0, label50
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label45
	j label660
.p2align 2
label69:
	ld t3, 112(sp)
	bgt t3, s2, label76
	j label70
.p2align 2
label305:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label69
	j label663
.p2align 2
label76:
	ble s0, s3, label77
	mv a3, a1
	mv a4, zero
.p2align 2
label84:
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
	ble a5, a4, label87
	addi a3, a3, 64
	j label84
label297:
	mv a1, s6
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label93
	j label349
.p2align 2
label71:
	sw zero, 0(a3)
	addiw a4, a4, 1
	ld t3, 112(sp)
	ble t3, a4, label305
.p2align 2
label74:
	addi a3, a3, 4
	j label71
.p2align 2
label81:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label74
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label69
	j label297
.p2align 2
label78:
	sw zero, 0(a3)
	addiw a4, a4, 4
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s0, a4, label81
.p2align 2
label82:
	addi a3, a3, 16
	j label78
.p2align 2
label87:
	sh2add a3, a4, a1
	addiw a4, a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s0, a4, label82
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label74
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label69
	j label297
.p2align 2
label642:
	mv t1, a3
	mv t6, a1
	li t2, 1
	lw t3, 0(a3)
	lw t5, 0(a1)
	mulw t4, a4, t5
	addw a6, t3, t4
	sw a6, 0(a3)
	ld t3, 112(sp)
	bgt t3, t2, label104
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	bgt t3, t0, label98
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label93
	j label668
.p2align 2
label632:
	mv t1, a3
	mv t5, a1
	li t2, 1
	lw t3, 0(a3)
	lw t6, 0(a1)
	mulw a6, a4, t6
	addw t4, t3, a6
	sw t4, 0(a3)
	ld t3, 112(sp)
	bgt t3, t2, label56
	addiw t0, t0, 1
	add a5, a5, s1
	add a3, a3, s1
	bgt t3, t0, label50
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label45
	j label660
.p2align 2
label119:
	ld t3, 112(sp)
	bgt t3, s2, label127
	j label120
.p2align 2
label431:
	addiw a0, a0, 1
	add s5, s5, s1
	mv s4, a2
	ld t3, 112(sp)
	bgt t3, a0, label119
	j label142
.p2align 2
label127:
	ble s0, s3, label128
	mv a1, s5
	mv a2, zero
	mv a3, s4
.p2align 2
label136:
	lw t0, 0(a1)
	addiw a2, a2, 16
	lw t1, 4(a1)
	addw a4, a3, t0
	lw a3, 8(a1)
	addw a5, a4, t1
	lw t2, 12(a1)
	addw t0, a5, a3
	lw t1, 16(a1)
	addw a4, t0, t2
	lw t0, 20(a1)
	addw a3, a4, t1
	lw t2, 24(a1)
	addw a5, a3, t0
	lw t1, 28(a1)
	addw a4, a5, t2
	lw t2, 32(a1)
	addw t0, a4, t1
	lw t3, 36(a1)
	addw a3, t0, t2
	lw t1, 40(a1)
	addw a5, a3, t3
	lw t0, 44(a1)
	addw a4, a5, t1
	lw t2, 48(a1)
	addw a3, a4, t0
	lw t1, 52(a1)
	addw a5, a3, t2
	lw t2, 56(a1)
	addw t0, a5, t1
	lw t1, 60(a1)
	addw a4, t0, t2
	ld a5, 104(sp)
	addw a3, a4, t1
	ble a5, a2, label508
	addi a1, a1, 64
	j label136
.p2align 2
label129:
	lw t0, 0(a1)
	addiw a2, a2, 4
	lw t1, 4(a1)
	addw a5, a3, t0
	lw t2, 8(a1)
	addw a4, a5, t1
	lw a5, 12(a1)
	addw t0, a4, t2
	addw a3, t0, a5
	ble s0, a2, label453
.p2align 2
label133:
	addi a1, a1, 16
	j label129
.p2align 2
label508:
	sh2add a1, a2, s5
	addiw a2, a2, 4
	lw t0, 0(a1)
	lw t1, 4(a1)
	addw a5, a3, t0
	lw t2, 8(a1)
	addw a4, a5, t1
	lw a5, 12(a1)
	addw t0, a4, t2
	addw a3, t0, a5
	bgt s0, a2, label133
	sh2add a1, a2, s5
	addiw a4, a2, 1
	mv a2, a3
	lw a3, 0(a1)
	ld t3, 112(sp)
	addw a2, a2, a3
	bgt t3, a4, label125
	addiw a0, a0, 1
	add s5, s5, s1
	mv s4, a2
	bgt t3, a0, label119
	j label142
.p2align 2
label121:
	lw a3, 0(a1)
	addiw a4, a4, 1
	ld t3, 112(sp)
	addw a2, a2, a3
	ble t3, a4, label431
.p2align 2
label125:
	addi a1, a1, 4
	j label121
.p2align 2
label453:
	sh2add a1, a2, s5
	addiw a4, a2, 1
	mv a2, a3
	lw a3, 0(a1)
	ld t3, 112(sp)
	addw a2, a2, a3
	bgt t3, a4, label125
	addiw a0, a0, 1
	add s5, s5, s1
	mv s4, a2
	bgt t3, a0, label119
	j label142
.p2align 2
label70:
	mv a3, a1
	mv a4, zero
	j label71
.p2align 2
label77:
	mv a3, a1
	mv a4, zero
	j label78
.p2align 2
label629:
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label39
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label21
	j label656
.p2align 2
label181:
	mv a3, a1
	li a4, 1
	sw zero, 0(a1)
	ld t3, 112(sp)
	bgt t3, a4, label39
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t3, a2, label21
	j label656
.p2align 2
label184:
	mv a3, a1
	li a4, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	bgt s0, a4, label33
	sh2add a3, a4, a1
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t3, 112(sp)
	bgt t3, a4, label39
.p2align 2
label655:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label21
	j label656
label120:
	mv a1, s5
	mv a4, zero
	mv a2, s4
	j label121
label128:
	mv a1, s5
	mv a3, s4
	mv a2, zero
	j label129
label142:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s4
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s8, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label349:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label641
.p2align 2
label353:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label93
	j label349
label230:
	mv a1, s5
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label69
	j label297
.p2align 2
label234:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t3, 112(sp)
	bgt t3, a2, label45
	j label230
label663:
	mv a1, s6
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label93
	j label349
label178:
	mv a1, s5
	mv a2, zero
	ld t3, 112(sp)
	bgt t3, zero, label45
	j label230
