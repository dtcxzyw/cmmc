.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
f:
	.zero	800400
.align 8
dep:
	.zero	40020
.align 8
to:
	.zero	40020
.align 8
next:
	.zero	40020
.align 8
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
	addiw a1, a0, -48
pcrel1090:
	auipc a2, %pcrel_hi(to)
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
	li a2, 9
	bgtu a1, a2, label198
	mv s5, zero
	li a2, 10
	bltu a1, a2, label211
	j label1036
label198:
	mv s4, a0
	mv s6, zero
.p2align 2
label97:
	jal getch
	li s5, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label915
	mv s5, s6
.p2align 2
label915:
	li a2, 9
	bgtu a1, a2, label206
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label211
	j label1036
label206:
	mv s4, a0
	mv s6, s5
	j label97
label211:
	mv s4, a0
	mv s6, zero
.p2align 2
label103:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s6, s4, a4
	bgeu a1, a2, label106
	mv s4, a0
	j label103
.p2align 2
label1036:
	mv s6, zero
label106:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label917
	mv s4, s6
label917:
	li a2, 9
	bgtu a1, a2, label229
	mv s6, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label234
	mv s7, zero
	mv a0, zero
	mv s5, zero
label1060:
	mv s5, s7
	j label919
label229:
	mv s5, a0
	mv s7, zero
	j label181
label234:
	mv s5, a0
	mv s7, zero
.p2align 2
label111:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s7, s5, a4
	bltu a1, a2, label243
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label919
	j label1060
label243:
	mv s5, a0
	j label111
label919:
	li a0, 1061109567
	sw a0, 0(s0)
	bgt s4, zero, label250
	li a1, 1
	bne s4, a1, label261
	j label119
label250:
	li a0, 1
.p2align 2
label116:
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	bge s4, a0, label116
	li a1, 1
	beq s4, a1, label119
label261:
	mv s6, zero
	li s7, 1
	j label156
label119:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label155
	mv s1, s5
	j label120
label155:
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
label181:
	jal getch
	li s6, 1
	li a2, 45
	addiw a1, a0, -48
	beq s5, a2, label1021
	mv s6, s7
.p2align 2
label1021:
	li a2, 9
	bgtu a1, a2, label675
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label234
	mv s7, zero
	mv a0, zero
	mv s5, zero
	bne s6, zero, label919
	j label1060
label675:
	mv s5, a0
	mv s7, s6
	j label181
.p2align 2
label156:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label596
	mv s9, zero
	li a2, 10
	bltu a1, a2, label601
.p2align 2
label1053:
	mv s10, zero
	j label162
.p2align 2
label596:
	mv s10, a0
	mv s8, zero
	j label178
.p2align 2
label601:
	mv s8, a0
	mv s10, zero
	j label175
.p2align 2
label162:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1013
	mv s8, s10
.p2align 2
label1013:
	li a2, 9
	bgtu a1, a2, label610
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label615
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label1064:
	mv a1, a0
	j label1015
.p2align 2
label610:
	mv s10, a0
	mv s9, zero
	j label172
.p2align 2
label615:
	mv s10, a0
	mv s11, zero
	j label169
.p2align 2
label1015:
	sh2add a2, s6, s2
	addiw s7, s7, 1
	sh2add a0, a1, a1
	sw a1, 0(a2)
	sh2add a3, s6, s3
	ld a4, 16(sp)
	slli a1, a0, 4
	add a0, a4, a1
	sh2add a1, s8, s1
	lw a2, 0(a1)
	sw a2, 0(a3)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	bne s4, s7, label156
	j label119
.p2align 2
label169:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s11, s10, a3
	bltu a1, a2, label642
	mv a0, s11
	subw a2, zero, s11
	mv a1, a2
	bne s9, zero, label1015
	j label1064
.p2align 2
label642:
	mv s10, a0
	j label169
.p2align 2
label172:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s10, a3, label1017
	mv a2, s9
.p2align 2
label1017:
	li a3, 9
	bgtu a1, a3, label650
	mv s9, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label615
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s9, zero, label1015
	j label1064
.p2align 2
label650:
	mv s10, a0
	mv s9, a2
	j label172
.p2align 2
label175:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s10, s8, a3
	bgeu a1, a2, label162
	mv s8, a0
	j label175
.p2align 2
label178:
	jal getch
	li s9, 1
	li a2, 45
	addiw a1, a0, -48
	beq s10, a2, label1019
	mv s9, s8
.p2align 2
label1019:
	li a2, 9
	bgtu a1, a2, label667
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label601
	j label1053
.p2align 2
label667:
	mv s10, a0
	mv s8, s9
	j label178
.p2align 2
label120:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label271
	mv s3, zero
	li a2, 10
	bltu a1, a2, label284
.p2align 2
label1043:
	mv s4, zero
	j label128
.p2align 2
label271:
	mv s4, a0
	mv s2, zero
.p2align 2
label122:
	jal getch
	li s3, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label921
	mv s3, s2
.p2align 2
label921:
	li a2, 9
	bgtu a1, a2, label279
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label284
	j label1043
.p2align 2
label279:
	mv s4, a0
	mv s2, s3
	j label122
.p2align 2
label284:
	mv s2, a0
	mv s4, zero
	j label152
.p2align 2
label128:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label923
	mv s2, s4
.p2align 2
label923:
	li a2, 9
	bgtu a1, a2, label293
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label306
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
	bgt a4, a3, label148
	beq zero, s2, label341
	j label147
.p2align 2
label293:
	mv s4, a0
	mv s3, zero
.p2align 2
label130:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label925
	mv a2, s3
.p2align 2
label925:
	li a3, 9
	bgtu a1, a3, label301
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label306
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
	bgt a4, a3, label148
	beq zero, s2, label341
	j label147
.p2align 2
label301:
	mv s4, a0
	mv s3, a2
	j label130
.p2align 2
label306:
	mv s4, a0
	mv s5, zero
.p2align 2
label136:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s5, s4, a3
	bltu a1, a2, label315
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
	bgt a4, a3, label148
	beq s5, s2, label341
	j label147
.p2align 2
label315:
	mv s4, a0
	j label136
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
	bgt a4, a3, label148
	bne a0, a2, label147
.p2align 2
label341:
	mv a0, a2
.p2align 2
label145:
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label120
	j label155
.p2align 2
label147:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add a5, a4, a1
	sh2add a1, a0, a0
	lw a3, 76(a5)
	slli a5, a1, 4
	add a4, a4, a5
	lw a1, 76(a4)
	xor t0, a3, a1
	sltu a5, zero, t0
	bne a5, zero, label933
	mv a3, a2
.p2align 2
label933:
	sh2add t0, a3, a3
	ld a4, 16(sp)
	slli a2, t0, 4
	add t0, a4, a2
	lw a2, 72(t0)
	bne a5, zero, label935
	mv a1, a0
.p2align 2
label935:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add t0, a4, a0
	mv a0, a2
	lw a5, 72(t0)
	xor a4, a2, a5
	sltu t0, zero, a4
	bne t0, zero, label937
	mv a0, a3
.p2align 2
label937:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a2, a3, 4
	add t1, a4, a2
	mv a2, a5
	lw a3, 68(t1)
	bne t0, zero, label939
	mv a2, a1
.p2align 2
label939:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a1, a5, 4
	add t0, a4, a1
	mv a1, a3
	lw a5, 68(t0)
	xor a4, a3, a5
	sltu t1, zero, a4
	bne t1, zero, label941
	mv a1, a0
.p2align 2
label941:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a0, a3, 4
	add a3, a4, a0
	mv a0, a5
	lw t0, 64(a3)
	bne t1, zero, label943
	mv a0, a2
.p2align 2
label943:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a2, a3, 4
	add a5, a4, a2
	mv a2, t0
	lw a3, 64(a5)
	xor a4, t0, a3
	sltu t1, zero, a4
	bne t1, zero, label945
	mv a2, a1
.p2align 2
label945:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a1, a5, 4
	add t0, a4, a1
	mv a1, a3
	lw a5, 60(t0)
	bne t1, zero, label947
	mv a1, a0
.p2align 2
label947:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a0, a3, 4
	add t0, a4, a0
	mv a0, a5
	lw a3, 60(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label949
	mv a0, a2
.p2align 2
label949:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a2, a5, 4
	add t1, a4, a2
	mv a2, a3
	lw a5, 56(t1)
	bne t0, zero, label951
	mv a2, a1
.p2align 2
label951:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add t0, a4, a1
	mv a1, a5
	lw a3, 56(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label953
	mv a1, a0
.p2align 2
label953:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	lw a0, 52(a5)
	bne t0, zero, label955
	mv a3, a2
.p2align 2
label955:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a2, a5, 4
	add a5, a4, a2
	lw a2, 52(a5)
	xor a4, a0, a2
	sltu t0, zero, a4
	bne t0, zero, label957
	mv a0, a1
.p2align 2
label957:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a1, a5, 4
	add t1, a4, a1
	mv a1, a2
	lw a5, 48(t1)
	bne t0, zero, label959
	mv a1, a3
.p2align 2
label959:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a2, a3, 4
	add t0, a4, a2
	mv a2, a5
	lw a3, 48(t0)
	xor a4, a5, a3
	sltu t1, zero, a4
	bne t1, zero, label961
	mv a2, a0
.p2align 2
label961:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	mv a0, a3
	lw t0, 44(a5)
	bne t1, zero, label963
	mv a0, a1
.p2align 2
label963:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a1, a3, 4
	add t1, a4, a1
	mv a1, t0
	lw a5, 44(t1)
	xor a3, t0, a5
	sltu t1, zero, a3
	bne t1, zero, label965
	mv a1, a2
.p2align 2
label965:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a2, a3, 4
	add t0, a4, a2
	mv a2, a5
	lw a3, 40(t0)
	bne t1, zero, label967
	mv a2, a0
.p2align 2
label967:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	lw a0, 40(a5)
	xor a4, a3, a0
	sltu a5, zero, a4
	bne a5, zero, label969
	mv a3, a1
.p2align 2
label969:
	sh2add t0, a3, a3
	ld a4, 16(sp)
	slli a1, t0, 4
	add t0, a4, a1
	lw a1, 36(t0)
	bne a5, zero, label971
	mv a0, a2
.p2align 2
label971:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a2, a5, 4
	add t0, a4, a2
	mv a2, a1
	lw a5, 36(t0)
	xor a4, a1, a5
	sltu t0, zero, a4
	bne t0, zero, label973
	mv a2, a3
.p2align 2
label973:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	mv a3, a5
	add t1, a4, a1
	lw a1, 32(t1)
	bne t0, zero, label975
	mv a3, a0
.p2align 2
label975:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	lw a0, 32(a5)
	xor a4, a1, a0
	sltu a5, zero, a4
	bne a5, zero, label977
	mv a1, a2
.p2align 2
label977:
	sh2add t0, a1, a1
	ld a4, 16(sp)
	slli a2, t0, 4
	add t0, a4, a2
	lw a2, 28(t0)
	bne a5, zero, label979
	mv a0, a3
.p2align 2
label979:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a3, a5, 4
	add a5, a4, a3
	lw a3, 28(a5)
	xor a4, a2, a3
	sltu t1, zero, a4
	bne t1, zero, label981
	mv a2, a1
.p2align 2
label981:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a1, a5, 4
	mv a5, a3
	add t2, a4, a1
	lw t0, 24(t2)
	bne t1, zero, label983
	mv a5, a0
.p2align 2
label983:
	sh2add a1, a5, a5
	ld a4, 16(sp)
	slli a0, a1, 4
	add a3, a4, a0
	lw a1, 24(a3)
	mv a3, t0
	xor a0, t0, a1
	sltu t1, zero, a0
	bne t1, zero, label985
	mv a3, a2
.p2align 2
label985:
	sh2add a2, a3, a3
	ld a4, 16(sp)
	slli a0, a2, 4
	add a2, a4, a0
	lw a0, 20(a2)
	bne t1, zero, label987
	mv a1, a5
.p2align 2
label987:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a2, a5, 4
	add a5, a4, a2
	lw a2, 20(a5)
	xor a4, a0, a2
	sltu t0, zero, a4
	bne t0, zero, label989
	mv a0, a3
.p2align 2
label989:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a3, a5, 4
	add t1, a4, a3
	mv a3, a2
	lw a5, 16(t1)
	bne t0, zero, label991
	mv a3, a1
.p2align 2
label991:
	sh2add a2, a3, a3
	ld a4, 16(sp)
	slli a1, a2, 4
	add t0, a4, a1
	mv a1, a5
	lw a2, 16(t0)
	xor a4, a5, a2
	sltu t0, zero, a4
	bne t0, zero, label993
	mv a1, a0
.p2align 2
label993:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	lw a0, 12(a5)
	bne t0, zero, label995
	mv a2, a3
.p2align 2
label995:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a3, a5, 4
	add a5, a4, a3
	lw a3, 12(a5)
	xor a4, a0, a3
	sltu t0, zero, a4
	bne t0, zero, label997
	mv a0, a1
.p2align 2
label997:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a1, a5, 4
	add t1, a4, a1
	mv a1, a3
	lw a5, 8(t1)
	bne t0, zero, label999
	mv a1, a2
.p2align 2
label999:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a2, a3, 4
	add t0, a4, a2
	mv a2, a5
	lw a3, 8(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label1001
	mv a2, a0
.p2align 2
label1001:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a0, a5, 4
	add t1, a4, a0
	mv a0, a3
	lw a5, 4(t1)
	bne t0, zero, label1003
	mv a0, a1
.p2align 2
label1003:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a1, a3, 4
	add t0, a4, a1
	mv a1, a5
	lw a3, 4(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label1005
	mv a1, a2
.p2align 2
label1005:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a2, a5, 4
	add a5, a4, a2
	lw a2, 0(a5)
	bne t0, zero, label1007
	mv a3, a0
.p2align 2
label1007:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	mv a0, a2
	lw a3, 0(a5)
	bne a2, a3, label1009
	mv a0, a1
.p2align 2
label1009:
	sh2add a1, a0, a0
	ld a4, 16(sp)
	slli a0, a1, 4
	add a1, a4, a0
	lw a0, 0(a1)
	j label145
.p2align 2
label148:
	sh2add t0, a2, a2
	ld a4, 16(sp)
	slli a5, t0, 4
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	bne a4, zero, label149
	mv a5, zero
	mv a3, a4
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label148
	beq a0, a2, label341
	j label147
.p2align 2
label152:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label128
	mv s2, a0
	j label152
.p2align 2
label149:
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
	bgt a4, a3, label148
	beq a0, a2, label341
	j label147
