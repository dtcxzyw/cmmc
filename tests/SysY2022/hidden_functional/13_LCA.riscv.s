.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
f:
	.zero	800400
.align 4
dep:
	.zero	40020
.align 4
to:
	.zero	40020
.align 4
next:
	.zero	40020
.align 4
head:
	.zero	40020
.text
tree:
.p2align 2
	addi sp, sp, -40
	mv a3, a1
pcrel90:
	auipc a4, %pcrel_hi(dep)
	sd s0, 32(sp)
	addi a1, a4, %pcrel_lo(pcrel90)
	addiw s0, a3, 1
pcrel91:
	auipc a4, %pcrel_hi(f)
	sh2add a2, a0, a1
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	sw a3, 0(a2)
pcrel92:
	auipc a3, %pcrel_hi(to)
	addi a2, a4, %pcrel_lo(pcrel91)
	addi s1, a3, %pcrel_lo(pcrel92)
	sh2add a4, a0, a0
	mv a1, a2
pcrel93:
	auipc a3, %pcrel_hi(next)
	slli a5, a4, 4
	addi s2, a3, %pcrel_lo(pcrel93)
	add a2, a2, a5
	lw a4, 0(a2)
	bne a4, zero, label26
pcrel94:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel94)
	sh2add a0, a0, a1
	li a1, -1
	lw s3, 0(a0)
	bne s3, a1, label5
	j label7
label26:
	mv a3, zero
	j label2
.p2align 2
label5:
	sh2add a1, s3, s1
	lw a0, 0(a1)
	mv a1, s0
	jal tree
	li a1, -1
	sh2add a0, s3, s2
	lw s3, 0(a0)
	bne s3, a1, label5
label7:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label2:
	sh2add a5, a3, a2
	lw a4, 0(a5)
	sh2add t0, a4, a4
	slli a5, t0, 4
	add t1, a1, a5
	sh2add t0, a3, t1
	addiw a3, a3, 1
	sh2add a5, a3, a2
	lw a4, 0(t0)
	sw a4, 0(a5)
	bne a4, zero, label2
pcrel95:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(pcrel95)
	sh2add a0, a0, a1
	li a1, -1
	lw s3, 0(a0)
	bne s3, a1, label5
	j label7
.globl main
main:
.p2align 2
	addi sp, sp, -112
	sd s2, 8(sp)
	sd s3, 0(sp)
	sd s1, 104(sp)
	sd s6, 96(sp)
	sd s0, 88(sp)
	sd s5, 80(sp)
	sd s4, 72(sp)
	sd s7, 64(sp)
	sd s9, 56(sp)
	sd s10, 48(sp)
	sd s8, 40(sp)
	sd s11, 32(sp)
	sd ra, 24(sp)
	jal getch
	slti a1, a0, 48
	li a2, 57
	slt a3, a2, a0
pcrel1090:
	auipc a2, %pcrel_hi(to)
	or a1, a1, a3
	addi s2, a2, %pcrel_lo(pcrel1090)
pcrel1091:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel1091)
pcrel1092:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel1092)
pcrel1093:
	auipc a2, %pcrel_hi(f)
	addi a4, a2, %pcrel_lo(pcrel1093)
pcrel1094:
	auipc a2, %pcrel_hi(dep)
	sd a4, 16(sp)
	addi s0, a2, %pcrel_lo(pcrel1094)
	bne a1, zero, label199
	mv s5, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label213
	j label1036
label199:
	mv s4, a0
	mv s5, zero
.p2align 2
label97:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s4, a3, label915
	mv a1, s5
.p2align 2
label915:
	bne a2, zero, label208
	mv s5, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label213
	j label1036
label208:
	mv s4, a0
	mv s5, a1
	j label97
label213:
	mv s4, a0
	mv s6, zero
.p2align 2
label103:
	jal getch
	sh2add a2, s6, s6
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s6, s4, a3
	bgeu a1, a2, label106
	mv s4, a0
	j label103
label106:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s6
	or a1, a1, a3
	mv s4, a2
	bne s5, zero, label917
	mv s4, s6
label917:
	bne a1, zero, label232
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label246
	mv s7, zero
	mv a0, zero
	mv s5, zero
label1060:
	mv s5, s7
	j label921
label232:
	mv s5, a0
	mv s6, zero
.p2align 2
label108:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a4, a3, a0
	li a3, 45
	or a2, a1, a4
	li a1, 1
	beq s5, a3, label919
	mv a1, s6
.p2align 2
label919:
	bne a2, zero, label241
	mv s6, a1
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label246
	mv s7, zero
	mv a0, zero
	mv s5, zero
	bne s6, zero, label921
	j label1060
label241:
	mv s5, a0
	mv s6, a1
	j label108
label246:
	mv s5, a0
	mv s7, zero
.p2align 2
label114:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s5, a4
	bltu a1, a2, label255
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label921
	j label1060
label255:
	mv s5, a0
	j label114
label921:
	li a0, 1061109567
	sw a0, 0(s0)
	bgt s4, zero, label262
	li a1, 1
	bne s4, a1, label273
	j label122
label262:
	li a0, 1
	j label119
label273:
	mv s6, zero
	li s7, 1
	j label159
label122:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label123
	mv s1, s5
	j label124
.p2align 2
label159:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label613
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label618
.p2align 2
label1054:
	mv s10, zero
	j label165
.p2align 2
label613:
	mv s10, a0
	mv s8, zero
	j label181
.p2align 2
label618:
	mv s8, a0
	mv s10, zero
	j label178
.p2align 2
label165:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	subw a2, zero, s10
	or a1, a1, a3
	mv s8, a2
	bne s9, zero, label1015
	mv s8, s10
.p2align 2
label1015:
	bne a1, zero, label628
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label633
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label1065:
	mv a1, a0
	j label1017
.p2align 2
label628:
	mv s10, a0
	mv s9, zero
	j label175
.p2align 2
label633:
	mv s10, a0
	mv s11, zero
	j label172
.p2align 2
label1017:
	sh2add a0, s6, s2
	addiw s7, s7, 1
	sh2add a2, a1, a1
	sw a1, 0(a0)
	sh2add a3, s6, s3
	ld a4, 16(sp)
	slli a1, a2, 4
	add a0, a4, a1
	sh2add a1, s8, s1
	lw a2, 0(a1)
	sw a2, 0(a3)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	bne s4, s7, label159
	j label122
.p2align 2
label172:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s11, s10, a3
	bltu a1, a2, label660
	mv a0, s11
	subw a2, zero, s11
	mv a1, a2
	bne s9, zero, label1017
	j label1065
.p2align 2
label660:
	mv s10, a0
	j label172
.p2align 2
label175:
	jal getch
	li a3, 45
	li a2, 57
	slti a1, a0, 48
	slt a4, a2, a0
	li a2, 1
	or a1, a1, a4
	beq s10, a3, label1019
	mv a2, s9
.p2align 2
label1019:
	bne a1, zero, label669
	mv s9, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label633
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s9, zero, label1017
	j label1065
.p2align 2
label669:
	mv s10, a0
	mv s9, a2
	j label175
.p2align 2
label178:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s10, s8, a2
	bgeu a1, a3, label165
	mv s8, a0
	j label178
.p2align 2
label181:
	jal getch
	li s9, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s10, a2, label1021
	mv s9, s8
.p2align 2
label1021:
	bne a1, zero, label687
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label618
	j label1054
.p2align 2
label687:
	mv s10, a0
	mv s8, s9
	j label181
label123:
	mv a0, zero
	ld ra, 24(sp)
	ld s11, 32(sp)
	ld s8, 40(sp)
	ld s10, 48(sp)
	ld s9, 56(sp)
	ld s7, 64(sp)
	ld s4, 72(sp)
	ld s5, 80(sp)
	ld s0, 88(sp)
	ld s6, 96(sp)
	ld s1, 104(sp)
	ld s3, 0(sp)
	ld s2, 8(sp)
	addi sp, sp, 112
	ret
.p2align 2
label124:
	jal getch
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label284
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label289
.p2align 2
label1044:
	mv s4, zero
	j label132
.p2align 2
label284:
	mv s4, a0
	mv s2, zero
	j label156
.p2align 2
label289:
	mv s2, a0
	mv s4, zero
.p2align 2
label129:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s4, s2, a4
	bgeu a1, a2, label132
	mv s2, a0
	j label129
.p2align 2
label132:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	subw a3, zero, s4
	or a1, a1, a2
	mv s2, a3
	bne s3, zero, label923
	mv s2, s4
.p2align 2
label923:
	bne a1, zero, label308
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label322
	mv a0, zero
	mv a2, zero
	mv a1, zero
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label929
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	bgt a4, a3, label152
	beq zero, s2, label357
	j label151
.p2align 2
label308:
	mv s4, a0
	mv s3, zero
.p2align 2
label134:
	jal getch
	li a3, 57
	slti a1, a0, 48
	slt a2, a3, a0
	li a3, 45
	or a1, a1, a2
	li a2, 1
	beq s4, a3, label925
	mv a2, s3
.p2align 2
label925:
	bne a1, zero, label317
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label322
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s3, zero, label927
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label929
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	bgt a4, a3, label152
	beq zero, s2, label357
	j label151
.p2align 2
label317:
	mv s4, a0
	mv s3, a2
	j label134
.p2align 2
label322:
	mv s4, a0
	mv s5, zero
.p2align 2
label140:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s5, s4, a3
	bltu a1, a2, label331
	mv a0, s5
	subw a2, zero, s5
	mv a1, a2
	bne s3, zero, label927
	mv a1, s5
	sh2add a0, s5, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label929
	mv a0, s5
	mv a3, s5
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	sh2add a5, s5, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label152
	beq s5, s2, label357
	j label151
.p2align 2
label331:
	mv s4, a0
	j label140
.p2align 2
label927:
	sh2add a0, a1, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label929
	mv a0, a1
.p2align 2
label929:
	mv a3, a1
	bne a2, zero, label931
	mv a3, s2
.p2align 2
label931:
	li a1, 19
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label152
	bne a0, a2, label151
.p2align 2
label357:
	mv a0, a2
.p2align 2
label149:
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label124
	j label123
.p2align 2
label151:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add a3, a4, a1
	sh2add a1, a0, a0
	slli t0, a1, 4
	lw a5, 76(a3)
	add a3, a4, t0
	lw a1, 76(a3)
	xor a4, a5, a1
	sltu a3, zero, a4
	bne a3, zero, label933
	mv a5, a2
.p2align 2
label933:
	sh2add t0, a5, a5
	ld a4, 16(sp)
	slli a2, t0, 4
	add t0, a4, a2
	lw a2, 72(t0)
	bne a3, zero, label935
	mv a1, a0
.p2align 2
label935:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a0, a3, 4
	add a3, a4, a0
	lw t0, 72(a3)
	mv a3, a2
	xor a0, a2, t0
	sltu t1, zero, a0
	bne t1, zero, label937
	mv a3, a5
.p2align 2
label937:
	sh2add a2, a3, a3
	ld a4, 16(sp)
	slli a0, a2, 4
	mv a2, t0
	add a5, a4, a0
	lw a0, 68(a5)
	bne t1, zero, label939
	mv a2, a1
.p2align 2
label939:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a1, a5, 4
	add a5, a4, a1
	lw a1, 68(a5)
	xor a4, a0, a1
	sltu t0, zero, a4
	bne t0, zero, label941
	mv a0, a3
.p2align 2
label941:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a3, a5, 4
	add t1, a4, a3
	lw a5, 64(t1)
	bne t0, zero, label943
	mv a1, a2
.p2align 2
label943:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a2, a3, 4
	add t0, a4, a2
	mv a2, a5
	lw a3, 64(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label945
	mv a2, a0
.p2align 2
label945:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a0, a5, 4
	add t1, a4, a0
	mv a0, a3
	lw a5, 60(t1)
	bne t0, zero, label947
	mv a0, a1
.p2align 2
label947:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a1, a3, 4
	add t0, a4, a1
	mv a1, a5
	lw a3, 60(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label949
	mv a1, a2
.p2align 2
label949:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a2, a5, 4
	add t1, a4, a2
	mv a2, a3
	lw a5, 56(t1)
	bne t0, zero, label951
	mv a2, a0
.p2align 2
label951:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a0, a3, 4
	add a3, a4, a0
	lw a0, 56(a3)
	mv a3, a5
	xor a4, a5, a0
	sltu t0, zero, a4
	bne t0, zero, label953
	mv a3, a1
.p2align 2
label953:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a1, a5, 4
	add t1, a4, a1
	lw a5, 52(t1)
	bne t0, zero, label955
	mv a0, a2
.p2align 2
label955:
	sh2add a2, a0, a0
	ld a4, 16(sp)
	slli a1, a2, 4
	add a2, a4, a1
	lw a1, 52(a2)
	mv a2, a5
	xor a4, a5, a1
	sltu t0, zero, a4
	bne t0, zero, label957
	mv a2, a3
.p2align 2
label957:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a3, a5, 4
	add a5, a4, a3
	lw a3, 48(a5)
	bne t0, zero, label959
	mv a1, a0
.p2align 2
label959:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add t0, a4, a0
	mv a0, a3
	lw a5, 48(t0)
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label961
	mv a0, a2
.p2align 2
label961:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a2, a3, 4
	add t1, a4, a2
	mv a2, a5
	lw a3, 44(t1)
	bne t0, zero, label963
	mv a2, a1
.p2align 2
label963:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a1, a5, 4
	add t0, a4, a1
	mv a1, a3
	lw a5, 44(t0)
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label965
	mv a1, a0
.p2align 2
label965:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a0, a3, 4
	add t1, a4, a0
	mv a0, a5
	lw a3, 40(t1)
	bne t0, zero, label967
	mv a0, a2
.p2align 2
label967:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a2, a5, 4
	add t0, a4, a2
	mv a2, a3
	lw a5, 40(t0)
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label969
	mv a2, a1
.p2align 2
label969:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add t1, a4, a1
	mv a1, a5
	lw a3, 36(t1)
	bne t0, zero, label971
	mv a1, a0
.p2align 2
label971:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	lw a0, 36(a5)
	xor a4, a3, a0
	sltu a5, zero, a4
	bne a5, zero, label973
	mv a3, a2
.p2align 2
label973:
	sh2add t0, a3, a3
	ld a4, 16(sp)
	slli a2, t0, 4
	add t0, a4, a2
	lw a2, 32(t0)
	bne a5, zero, label975
	mv a0, a1
.p2align 2
label975:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a1, a5, 4
	add a5, a4, a1
	lw a1, 32(a5)
	xor a4, a2, a1
	sltu a5, zero, a4
	bne a5, zero, label977
	mv a2, a3
.p2align 2
label977:
	sh2add t0, a2, a2
	ld a4, 16(sp)
	slli a3, t0, 4
	add t0, a4, a3
	lw a3, 28(t0)
	bne a5, zero, label979
	mv a1, a0
.p2align 2
label979:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add t0, a4, a0
	mv a0, a3
	lw a5, 28(t0)
	xor a4, a3, a5
	sltu t1, zero, a4
	bne t1, zero, label981
	mv a0, a2
.p2align 2
label981:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a2, a3, 4
	add a3, a4, a2
	mv a2, a5
	lw t0, 24(a3)
	bne t1, zero, label983
	mv a2, a1
.p2align 2
label983:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add a5, a4, a1
	mv a1, t0
	lw a3, 24(a5)
	xor a4, t0, a3
	sltu t1, zero, a4
	bne t1, zero, label985
	mv a1, a0
.p2align 2
label985:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add t0, a4, a0
	mv a0, a3
	lw a5, 20(t0)
	bne t1, zero, label987
	mv a0, a2
.p2align 2
label987:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a2, a3, 4
	add a3, a4, a2
	lw a2, 20(a3)
	xor a4, a5, a2
	sltu a3, zero, a4
	bne a3, zero, label989
	mv a5, a1
.p2align 2
label989:
	sh2add t0, a5, a5
	ld a4, 16(sp)
	slli a1, t0, 4
	add t0, a4, a1
	lw a1, 16(t0)
	bne a3, zero, label991
	mv a2, a0
.p2align 2
label991:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a0, a3, 4
	add a3, a4, a0
	lw t0, 16(a3)
	mv a3, a1
	xor a0, a1, t0
	sltu t1, zero, a0
	bne t1, zero, label993
	mv a3, a5
.p2align 2
label993:
	sh2add a1, a3, a3
	ld a4, 16(sp)
	slli a0, a1, 4
	mv a1, t0
	add a5, a4, a0
	lw a0, 12(a5)
	bne t1, zero, label995
	mv a1, a2
.p2align 2
label995:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a2, a5, 4
	add a5, a4, a2
	lw a2, 12(a5)
	xor a4, a0, a2
	sltu t0, zero, a4
	bne t0, zero, label997
	mv a0, a3
.p2align 2
label997:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a3, a5, 4
	add t1, a4, a3
	lw a5, 8(t1)
	bne t0, zero, label999
	mv a2, a1
.p2align 2
label999:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add t0, a4, a1
	mv a1, a5
	lw a3, 8(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label1001
	mv a1, a0
.p2align 2
label1001:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add t1, a4, a0
	mv a0, a3
	lw a5, 4(t1)
	bne t0, zero, label1003
	mv a0, a2
.p2align 2
label1003:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a2, a3, 4
	add t0, a4, a2
	mv a2, a5
	lw a3, 4(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label1005
	mv a2, a1
.p2align 2
label1005:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a1, a5, 4
	add a5, a4, a1
	lw a1, 0(a5)
	bne t0, zero, label1007
	mv a3, a0
.p2align 2
label1007:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	mv a0, a1
	lw a3, 0(a5)
	bne a1, a3, label1009
	mv a0, a2
.p2align 2
label1009:
	sh2add a1, a0, a0
	ld a4, 16(sp)
	slli a0, a1, 4
	add a1, a4, a0
	lw a0, 0(a1)
	j label149
.p2align 2
label152:
	sh2add t0, a2, a2
	ld a4, 16(sp)
	slli a5, t0, 4
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	bne a4, zero, label153
	mv a5, zero
	mv a3, a4
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label152
	beq a0, a2, label357
	j label151
.p2align 2
label156:
	jal getch
	li s3, 1
	li a2, 57
	slti a1, a0, 48
	slt a3, a2, a0
	li a2, 45
	or a1, a1, a3
	beq s4, a2, label1013
	mv s3, s2
.p2align 2
label1013:
	bne a1, zero, label606
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label289
	j label1044
.p2align 2
label606:
	mv s4, a0
	mv s2, s3
	j label156
.p2align 2
label153:
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label1011
	mv a3, a2
.p2align 2
label1011:
	addiw a1, a1, -1
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label152
	beq a0, a2, label357
	j label151
.p2align 2
label1036:
	mv s6, zero
	j label106
.p2align 2
label119:
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	bge s4, a0, label119
	li a1, 1
	bne s4, a1, label273
	j label122