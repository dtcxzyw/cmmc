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
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
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
	li s2, 3
	lui s1, 1
	addiw s0, a0, -3
pcrel824:
	auipc a1, %pcrel_hi(B)
	li s7, 5
	addiw a5, a0, -18
	mv s9, zero
	addi s4, a1, %pcrel_lo(pcrel824)
	sd a0, 112(sp)
pcrel825:
	auipc a0, %pcrel_hi(A)
	sd a5, 104(sp)
	addi s6, a0, %pcrel_lo(pcrel825)
	mv s8, s6
pcrel826:
	auipc a0, %pcrel_hi(C)
	addi s5, a0, %pcrel_lo(pcrel826)
	ld t2, 112(sp)
	bgt t2, zero, label168
	j label5
.p2align 2
label172:
	addiw s9, s9, 1
	add s8, s8, s1
	ld t2, 112(sp)
	ble t2, s9, label5
.p2align 2
label168:
	mv s10, s8
	mv s11, zero
.p2align 2
label169:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t2, 112(sp)
	ble t2, a1, label172
	addi s10, s10, 4
	mv s11, a1
	j label169
label5:
	mv s8, s4
	mv s9, zero
	ld t2, 112(sp)
	bgt t2, zero, label9
	j label15
.p2align 2
label13:
	addi s10, s10, 4
	mv s11, a1
.p2align 2
label10:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t2, 112(sp)
	bgt t2, a1, label13
	addiw s9, s9, 1
	add s8, s8, s1
	ble t2, s9, label15
.p2align 2
label9:
	mv s10, s8
	mv s11, zero
	j label10
label15:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
	j label16
.p2align 2
label726:
	addiw a3, a3, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a3, label98
label719:
	addiw a0, a0, 1
	bge a0, s7, label58
.p2align 2
label16:
	mv a1, s5
	mv a2, zero
.p2align 2
label18:
	ld t2, 112(sp)
	bgt t2, a2, label145
	j label21
.p2align 2
label121:
	addi t0, t0, 4
.p2align 2
label117:
	sh2add t3, t1, a1
	lw t2, 0(t0)
	addiw t1, t1, 1
	lw t5, 0(t3)
	mulw t4, a2, t5
	addw t6, t2, t4
	sw t6, 0(t0)
	ld t2, 112(sp)
	bgt t2, t1, label121
	add a4, a4, s1
	mv t0, a5
	ble t2, a5, label726
.p2align 2
label103:
	sh2add t1, a3, a4
	addiw a5, t0, 1
	lw a2, 0(t1)
	bne a2, zero, label411
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label103
	addiw a3, a3, 1
	add a1, a1, s1
	ble t2, a3, label751
.p2align 2
label98:
	mv a4, s6
	mv t0, zero
	ld t2, 112(sp)
	bgt t2, zero, label103
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label98
	j label719
.p2align 2
label411:
	ld t2, 112(sp)
	ble t2, zero, label720
	slliw t3, t0, 12
	add t1, s4, t3
	ble t2, s2, label421
	mv t0, t1
	mv t2, zero
	j label109
.p2align 2
label112:
	addi t0, t0, 16
.p2align 2
label109:
	sh2add t3, t2, a1
	lw t4, 0(t0)
	addiw t2, t2, 4
	lw t5, 0(t3)
	mulw t6, a2, t5
	addw a6, t4, t6
	sw a6, 0(t0)
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
	mulw t4, a2, a6
	addw t6, t5, t4
	sw t6, 12(t0)
	bgt s0, t2, label112
	mv t3, t2
	ld t2, 112(sp)
	ble t2, t3, label724
.p2align 2
label116:
	sh2add t0, t3, t1
	mv t1, t3
	j label117
.p2align 2
label580:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	ble t2, a2, label764
.p2align 2
label145:
	ld t2, 112(sp)
	ble t2, s2, label530
	ble s0, s3, label533
	mv a3, a1
	mv a4, zero
.p2align 2
label148:
	addiw a4, a4, 16
	sd zero, 0(a3)
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ld a5, 104(sp)
	ble a5, a4, label553
	addi a3, a3, 64
	j label148
.p2align 2
label553:
	mv a5, a4
	ble s0, a4, label735
.p2align 2
label155:
	sh2add a3, a5, a1
	mv a4, a5
.p2align 2
label156:
	addiw a4, a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s0, a4, label568
	addi a3, a3, 16
	j label156
.p2align 2
label568:
	ld t2, 112(sp)
	ble t2, a4, label737
.p2align 2
label162:
	sh2add a3, a4, a1
.p2align 2
label163:
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t2, 112(sp)
	ble t2, a4, label580
	addi a3, a3, 4
	j label163
.p2align 2
label421:
	mv t3, zero
	ld t2, 112(sp)
	bgt t2, zero, label116
	add a4, a4, s1
	mv t0, a5
	bgt t2, a5, label103
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label98
	j label719
.p2align 2
label724:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label103
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label98
	j label719
.p2align 2
label735:
	ld t2, 112(sp)
	bgt t2, a4, label162
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label145
	j label21
.p2align 2
label530:
	mv a4, zero
	ld t2, 112(sp)
	bgt t2, zero, label162
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label145
	j label21
.p2align 2
label533:
	mv a5, zero
	mv a4, zero
	bgt s0, zero, label155
	ld t2, 112(sp)
	bgt t2, zero, label162
	addiw a2, a2, 1
	add a1, a1, s1
	j label18
.p2align 2
label720:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label103
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label98
	j label719
.p2align 2
label737:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a2, label145
label21:
	mv a1, s4
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label25
	j label208
.p2align 2
label712:
	addiw a3, a3, 1
	add a1, a1, s1
	ld t2, 112(sp)
	ble t2, a3, label748
.p2align 2
label25:
	mv a4, s6
	mv t0, zero
	ld t2, 112(sp)
	bgt t2, zero, label29
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label25
	j label208
.p2align 2
label47:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	ble t2, a5, label712
.p2align 2
label29:
	sh2add t1, a3, a4
	addiw a5, t0, 1
	lw a2, 0(t1)
	beq a2, zero, label47
	ld t2, 112(sp)
	ble t2, zero, label31
	slliw t3, t0, 12
	add t1, s5, t3
	ble t2, s2, label229
	mv t0, t1
	mv t2, zero
	j label34
.p2align 2
label37:
	addi t0, t0, 16
.p2align 2
label34:
	sh2add t3, t2, a1
	lw t4, 0(t0)
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
	mulw a6, a2, t5
	addw t6, t4, a6
	sw t6, 8(t0)
	lw t5, 12(t0)
	lw t4, 12(t3)
	mulw a6, a2, t4
	addw t6, t5, a6
	sw t6, 12(t0)
	bgt s0, t2, label37
	mv t3, t2
	ld t2, 112(sp)
	ble t2, t3, label709
.p2align 2
label41:
	sh2add t0, t3, t1
	mv t1, t3
.p2align 2
label42:
	sh2add t3, t1, a1
	lw t2, 0(t0)
	addiw t1, t1, 1
	lw t6, 0(t3)
	mulw t4, a2, t6
	addw t5, t2, t4
	sw t5, 0(t0)
	ld t2, 112(sp)
	ble t2, t1, label277
	addi t0, t0, 4
	j label42
.p2align 2
label31:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label29
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label25
	j label208
.p2align 2
label229:
	mv t3, zero
	ld t2, 112(sp)
	bgt t2, zero, label41
	add a4, a4, s1
	mv t0, a5
	bgt t2, a5, label29
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label25
	j label208
.p2align 2
label277:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label29
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label25
label208:
	mv a1, s4
	mv a2, zero
	ld t2, 112(sp)
	bgt t2, zero, label122
	j label741
.p2align 2
label144:
	addi a3, a3, 4
.p2align 2
label141:
	addiw a4, a4, 1
	sw zero, 0(a3)
	ld t2, 112(sp)
	bgt t2, a4, label144
	addiw a2, a2, 1
	add a1, a1, s1
	ble t2, a2, label732
.p2align 2
label122:
	ld t2, 112(sp)
	ble t2, s2, label474
	ble s0, s3, label477
	mv a3, a1
	mv a4, zero
	j label133
.p2align 2
label136:
	addi a3, a3, 64
.p2align 2
label133:
	addiw a4, a4, 16
	sd zero, 0(a3)
	sd zero, 8(a3)
	sd zero, 16(a3)
	sd zero, 24(a3)
	sd zero, 32(a3)
	sd zero, 40(a3)
	sd zero, 48(a3)
	sd zero, 56(a3)
	ld a5, 104(sp)
	bgt a5, a4, label136
	mv a5, a4
	ble s0, a4, label730
.p2align 2
label127:
	sh2add a3, a5, a1
	mv a4, a5
.p2align 2
label128:
	addiw a4, a4, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	ble s0, a4, label491
	addi a3, a3, 16
	j label128
.p2align 2
label491:
	ld t2, 112(sp)
	ble t2, a4, label729
.p2align 2
label140:
	sh2add a3, a4, a1
	j label141
.p2align 2
label709:
	add a4, a4, s1
	mv t0, a5
	ld t2, 112(sp)
	bgt t2, a5, label29
	addiw a3, a3, 1
	add a1, a1, s1
	bgt t2, a3, label25
	j label208
.p2align 2
label477:
	mv a5, zero
	mv a4, zero
	bgt s0, zero, label127
	ld t2, 112(sp)
	bgt t2, zero, label140
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label122
	j label741
.p2align 2
label730:
	ld t2, 112(sp)
	bgt t2, a4, label140
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label122
	j label741
.p2align 2
label474:
	mv a4, zero
	ld t2, 112(sp)
	bgt t2, zero, label140
	addiw a2, a2, 1
	add a1, a1, s1
	bgt t2, a2, label122
	j label741
.p2align 2
label729:
	addiw a2, a2, 1
	add a1, a1, s1
	ld t2, 112(sp)
	bgt t2, a2, label122
label741:
	mv a1, s5
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label98
	j label57
label58:
	mv s5, zero
	mv a0, zero
	ld t2, 112(sp)
	bgt t2, zero, label63
	j label97
.p2align 2
label75:
	addi a1, a1, 4
.p2align 2
label71:
	lw a4, 0(a1)
	addiw a3, a3, 1
	ld t2, 112(sp)
	addw a2, a2, a4
	bgt t2, a3, label75
	mv s5, a2
	addiw a0, a0, 1
	add s4, s4, s1
	ble t2, a0, label97
.p2align 2
label63:
	ld t2, 112(sp)
	ble t2, s2, label302
	ble s0, s3, label321
	mv a1, s4
	mv a2, zero
	mv a3, s5
.p2align 2
label92:
	lw t0, 0(a1)
	addiw a2, a2, 16
	lw t1, 4(a1)
	addw a5, a3, t0
	lw t2, 8(a1)
	addw a4, a5, t1
	lw a5, 12(a1)
	addw t0, a4, t2
	lw t1, 16(a1)
	addw a3, t0, a5
	lw t0, 20(a1)
	addw a4, a3, t1
	lw t2, 24(a1)
	addw a5, a4, t0
	lw t1, 28(a1)
	addw a3, a5, t2
	lw t0, 32(a1)
	addw a4, a3, t1
	lw t1, 36(a1)
	addw a5, a4, t0
	lw t0, 40(a1)
	addw a3, a5, t1
	lw t1, 44(a1)
	addw a4, a3, t0
	lw t0, 48(a1)
	addw a5, a4, t1
	lw t1, 52(a1)
	addw a3, a5, t0
	lw a5, 56(a1)
	addw a4, a3, t1
	lw t1, 60(a1)
	addw t0, a4, a5
	ld a5, 104(sp)
	addw a3, t0, t1
	ble a5, a2, label396
	addi a1, a1, 64
	j label92
.p2align 2
label396:
	mv a4, a2
	mv s5, a3
	ble s0, a2, label718
.p2align 2
label85:
	sh2add a1, a4, s4
	mv a3, s5
	mv a2, a4
.p2align 2
label86:
	lw a5, 0(a1)
	addiw a2, a2, 4
	lw t1, 4(a1)
	addw t0, a3, a5
	lw t2, 8(a1)
	addw a4, t0, t1
	lw t0, 12(a1)
	addw a5, a4, t2
	addw a3, a5, t0
	ble s0, a2, label343
	addi a1, a1, 16
	j label86
.p2align 2
label343:
	mv a1, a3
	ld t2, 112(sp)
	mv a3, a2
	mv a2, a1
	ble t2, a3, label717
.p2align 2
label70:
	sh2add a1, a3, s4
	j label71
label302:
	mv a2, s5
	mv a3, zero
	mv a1, zero
	ld t2, 112(sp)
	bgt t2, zero, label70
	mv s5, zero
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label63
	j label97
label321:
	mv a4, zero
	mv a3, zero
	mv a2, zero
	bgt s0, zero, label85
	mv a1, zero
	ld t2, 112(sp)
	bgt t2, zero, label70
	mv s5, zero
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label63
	j label97
.p2align 2
label718:
	mv a1, a3
	ld t2, 112(sp)
	mv a3, a2
	mv a2, a1
	bgt t2, a3, label70
	mv s5, a1
	addiw a0, a0, 1
	add s4, s4, s1
	bgt t2, a0, label63
label97:
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
label751:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label58
.p2align 2
label717:
	mv s5, a1
	addiw a0, a0, 1
	add s4, s4, s1
	ld t2, 112(sp)
	bgt t2, a0, label63
	j label97
label732:
	mv a1, s5
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label98
label57:
	addiw a0, a0, 1
	blt a0, s7, label16
	j label58
label764:
	mv a1, s4
	mv a3, zero
	ld t2, 112(sp)
	bgt t2, zero, label25
	j label208
label748:
	mv a1, s4
	mv a2, zero
	ld t2, 112(sp)
	bgt t2, zero, label122
	j label741
