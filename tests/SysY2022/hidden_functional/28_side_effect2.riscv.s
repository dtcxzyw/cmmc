.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[80] RegSpill[0] CalleeSaved[8]
	addi sp, sp, -88
	mv a1, zero
	mv t0, zero
	li a3, 20
	li a4, 2
	li a0, 1
	li a5, 3
	addi a2, sp, 8
	sd ra, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	j label2
.p2align 2
label622:
	mv t2, zero
	j label625
.p2align 2
label124:
	addiw t1, a1, 3
	blt t0, a5, label631
	sw a0, 16(sp)
	lw t2, 12(sp)
	bne t2, zero, label126
.p2align 2
label210:
	mv a1, t1
.p2align 2
label7:
	addiw t0, t0, 1
	bge t0, a3, label959
.p2align 2
label2:
	addiw t1, a1, 1
	bgt t0, zero, label206
	mv t2, zero
	j label210
.p2align 2
label121:
	addiw t1, a1, 2
	blt t0, a4, label622
	sw a0, 12(sp)
	lw t2, 8(sp)
	bne t2, zero, label124
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label959
.p2align 2
label206:
	sw a0, 8(sp)
	mv t2, a0
	bne a0, zero, label121
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label959
label126:
	addiw t1, a1, 4
	li t2, 4
	blt t0, t2, label210
	sw a0, 20(sp)
	lw t2, 16(sp)
	bne t2, zero, label128
	j label210
label959:
	mv t0, zero
	j label9
label66:
	addiw t1, a1, 8
	li t2, 4
	blt t0, t2, label225
	sw zero, 20(sp)
	lw t2, 16(sp)
	beq t2, zero, label68
.p2align 2
label225:
	mv a1, t1
.p2align 2
label14:
	addiw t0, t0, 1
	bge t0, a3, label229
.p2align 2
label9:
	addiw t1, a1, 2
	ble t0, zero, label221
	sw zero, 8(sp)
	mv t2, zero
	addiw t1, a1, 4
	bge t0, a4, label956
.p2align 2
label399:
	mv t2, a0
	bne a0, zero, label406
	addiw t2, a1, 6
	blt t0, a5, label411
label940:
	sw zero, 16(sp)
	lw t1, 12(sp)
	beq t1, zero, label66
label418:
	mv a1, t2
	j label14
.p2align 2
label221:
	mv t2, a0
	bne a0, zero, label225
	addiw t1, a1, 4
	blt t0, a4, label399
	sw zero, 12(sp)
	lw t2, 8(sp)
	bne t2, zero, label406
	addiw t2, a1, 6
	blt t0, a5, label411
	j label940
.p2align 2
label956:
	sw zero, 12(sp)
	lw t2, 8(sp)
	beq t2, zero, label960
.p2align 2
label406:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label9
label229:
	mv a4, a0
label16:
	bge a4, a3, label19
	addiw a5, a4, -1
	addiw a1, a1, 1
	ble a4, a5, label19
	sh2add t0, a5, a2
	sw a0, 0(t0)
	beq a5, zero, label59
	lw a5, -4(t0)
label56:
	beq a5, zero, label19
	addiw a4, a4, 1
	j label16
label960:
	addiw t2, a1, 6
	bge t0, a5, label940
label411:
	mv a1, t2
	addiw t0, t0, 1
	blt t0, a3, label9
	j label229
label19:
	lw a3, 8(sp)
	addiw a2, a1, 3
	bne a3, zero, label50
	mv a1, a2
label51:
	lw a2, 16(sp)
	addiw a5, a1, 3
	addiw a4, a1, 6
	mv a1, a5
	beq a2, zero, label21
	mv a1, a4
label21:
	lw a4, 24(sp)
	addiw a2, a1, 3
	beq a4, zero, label248
	lw a5, 28(sp)
	addiw a2, a1, 6
	beq a5, zero, label46
	lw a5, 32(sp)
	addiw a2, a1, 9
	bne a5, zero, label46
	lw a5, 36(sp)
	addiw a2, a1, 12
	beq a5, zero, label46
label248:
	mv a1, a2
label23:
	lw a5, 44(sp)
	addiw a2, a1, 3
	beq a5, zero, label254
	lw a2, 48(sp)
	addiw a1, a1, 6
	beq a2, zero, label25
	j label39
label254:
	mv a1, a2
label39:
	lw a5, 52(sp)
	addiw a2, a1, 3
	beq a5, zero, label311
	lw a5, 56(sp)
	addiw a2, a1, 6
	beq a5, zero, label311
	lw a5, 60(sp)
	addiw a2, a1, 9
	bne a5, zero, label43
label311:
	mv a1, a2
label25:
	addiw a2, a1, 3
	beq a3, zero, label258
	lw a3, 16(sp)
	addiw a2, a1, 6
	bne a3, zero, label34
label258:
	mv a1, a2
label27:
	lw a3, 28(sp)
	addiw a2, a1, 3
	beq a3, zero, label29
label266:
	mv a1, a2
label36:
	addw a0, a1, a0
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 88
	ret
label29:
	lw a3, 32(sp)
	addiw a2, a1, 6
	beq a3, zero, label30
	lw a3, 36(sp)
	addiw a2, a1, 9
	beq a3, zero, label266
	j label30
label68:
	addiw t2, a1, 10
	li t1, 5
	blt t0, t1, label418
	sw zero, 24(sp)
	lw t1, 20(sp)
	bne t1, zero, label418
	addiw t1, a1, 12
	li t2, 6
	blt t0, t2, label225
	sw zero, 28(sp)
	lw t2, 24(sp)
	bne t2, zero, label225
	addiw t2, a1, 14
	li t1, 7
	blt t0, t1, label418
	sw zero, 32(sp)
	lw t1, 28(sp)
	bne t1, zero, label418
	addiw t1, a1, 16
	li t2, 8
	blt t0, t2, label225
	sw zero, 36(sp)
	lw t2, 32(sp)
	bne t2, zero, label225
	addiw t2, a1, 18
	li t1, 9
	blt t0, t1, label418
	sw zero, 40(sp)
	lw t1, 36(sp)
	bne t1, zero, label418
	addiw t3, a1, 20
	li t2, 10
	bge t0, t2, label494
	mv t1, a0
	j label80
label50:
	lw a4, 12(sp)
	addiw a1, a1, 6
	bne a4, zero, label21
	j label51
label46:
	addiw a1, a2, 3
	j label23
label30:
	lw a3, 40(sp)
	addiw a1, a2, 3
	sltu a0, zero, a3
	j label36
label128:
	addiw t1, a1, 5
	li t2, 5
	blt t0, t2, label210
	sw a0, 24(sp)
	lw t2, 20(sp)
	beq t2, zero, label210
	addiw t1, a1, 6
	li t2, 6
	blt t0, t2, label210
	sw a0, 28(sp)
	lw t2, 24(sp)
	beq t2, zero, label210
	addiw t1, a1, 7
	li t2, 7
	blt t0, t2, label210
	sw a0, 32(sp)
	lw t2, 28(sp)
	beq t2, zero, label210
	addiw t1, a1, 8
	li t2, 8
	blt t0, t2, label210
	sw a0, 36(sp)
	lw t2, 32(sp)
	beq t2, zero, label210
	addiw t1, a1, 9
	li t2, 9
	blt t0, t2, label210
	sw a0, 40(sp)
	lw t2, 36(sp)
	beq t2, zero, label210
	addiw t1, a1, 10
	li t3, 10
	bge t0, t3, label714
	mv t2, zero
	j label139
label34:
	lw a3, 20(sp)
	addiw a2, a1, 9
	beq a3, zero, label35
	j label258
label631:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label959
label625:
	mv a1, t1
	addiw t0, t0, 1
	blt t0, a3, label2
	j label959
label43:
	lw a5, 64(sp)
	addiw a2, a1, 12
	addiw t0, a1, 15
	mv a1, t0
	bne a5, zero, label25
	mv a1, a2
	j label25
label35:
	addiw a1, a1, 12
	beq a4, zero, label36
	j label27
label494:
	sw zero, 44(sp)
	lw t1, 40(sp)
label80:
	beq t1, zero, label82
label502:
	mv a1, t3
	j label14
label82:
	addiw t2, a1, 22
	li t3, 11
	bge t0, t3, label506
	mv t1, a0
	j label84
label714:
	sw a0, 44(sp)
	lw t2, 40(sp)
label139:
	beq t2, zero, label210
	addiw t1, a1, 11
	li t3, 11
	bge t0, t3, label723
	mv t2, zero
label142:
	beq t2, zero, label210
	addiw t1, a1, 12
	li t3, 12
	blt t0, t3, label733
	sw a0, 52(sp)
	lw t2, 48(sp)
label146:
	beq t2, zero, label210
	addiw t1, a1, 13
	li t3, 13
	blt t0, t3, label745
	sw a0, 56(sp)
	lw t2, 52(sp)
label149:
	bne t2, zero, label151
	j label210
label506:
	sw zero, 48(sp)
	lw t1, 44(sp)
label84:
	bne t1, zero, label418
	addiw t3, a1, 24
	li t2, 12
	bge t0, t2, label518
	mv t1, a0
label87:
	bne t1, zero, label502
	addiw t2, a1, 26
	li t3, 13
	blt t0, t3, label528
	sw zero, 56(sp)
	lw t1, 52(sp)
	j label91
label151:
	addiw t1, a1, 14
	li t3, 14
	blt t0, t3, label754
	sw a0, 60(sp)
	lw t2, 56(sp)
label152:
	beq t2, zero, label210
	addiw t1, a1, 15
	li t3, 15
	blt t0, t3, label763
	sw a0, 64(sp)
	lw t2, 60(sp)
label155:
	beq t2, zero, label210
	addiw t1, a1, 16
	li t3, 16
	blt t0, t3, label772
	sw a0, 68(sp)
	lw t2, 64(sp)
label158:
	bne t2, zero, label160
	j label210
label528:
	mv t1, a0
label91:
	bne t1, zero, label418
	addiw t3, a1, 28
	li t2, 14
	blt t0, t2, label540
	sw zero, 60(sp)
	lw t1, 56(sp)
	j label95
label540:
	mv t1, a0
label95:
	bne t1, zero, label502
	addiw t2, a1, 30
	li t3, 15
	bge t0, t3, label551
	mv t1, a0
label98:
	bne t1, zero, label418
	addiw t3, a1, 32
	li t2, 16
	bge t0, t2, label560
	mv t1, a0
label102:
	bne t1, zero, label502
	addiw t2, a1, 34
	li t3, 17
	bge t0, t3, label572
	mv t1, a0
label106:
	bne t1, zero, label418
	addiw t3, a1, 36
	li t2, 18
	blt t0, t2, label585
	sw zero, 76(sp)
	lw t1, 72(sp)
	j label110
label585:
	mv t1, a0
label110:
	bne t1, zero, label502
	addiw t2, a1, 38
	li t3, 19
	bge t0, t3, label596
	mv t1, a0
label114:
	bne t1, zero, label418
	addiw a1, a1, 40
	blt t0, a3, label14
	sw zero, 84(sp)
	j label14
label160:
	addiw t1, a1, 17
	li t3, 17
	bge t0, t3, label780
	mv t2, zero
	j label161
label780:
	sw a0, 72(sp)
	lw t2, 68(sp)
label161:
	beq t2, zero, label210
	addiw t1, a1, 18
	li t3, 18
	bge t0, t3, label789
	mv t2, zero
	j label165
label789:
	sw a0, 76(sp)
	lw t2, 72(sp)
label165:
	beq t2, zero, label210
	addiw t1, a1, 19
	li t3, 19
	bge t0, t3, label801
	mv t2, zero
label168:
	beq t2, zero, label210
	addiw a1, a1, 20
	blt t0, a3, label7
	sw a0, 84(sp)
	j label7
label733:
	mv t2, zero
	j label146
label801:
	sw a0, 80(sp)
	lw t2, 76(sp)
	j label168
label572:
	sw zero, 72(sp)
	lw t1, 68(sp)
	j label106
label560:
	sw zero, 68(sp)
	lw t1, 64(sp)
	j label102
label551:
	sw zero, 64(sp)
	lw t1, 60(sp)
	j label98
label772:
	mv t2, zero
	j label158
label763:
	mv t2, zero
	j label155
label754:
	mv t2, zero
	j label152
label518:
	sw zero, 52(sp)
	lw t1, 48(sp)
	j label87
label745:
	mv t2, zero
	j label149
label723:
	sw a0, 48(sp)
	lw t2, 44(sp)
	j label142
label59:
	lw a5, 8(sp)
	j label56
label596:
	sw zero, 80(sp)
	lw t1, 76(sp)
	j label114
