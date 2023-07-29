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
pcrel1089:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel1089)
pcrel1090:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel1090)
pcrel1091:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel1091)
pcrel1092:
	auipc a2, %pcrel_hi(f)
	addi a4, a2, %pcrel_lo(pcrel1092)
pcrel1093:
	auipc a2, %pcrel_hi(dep)
	sd a4, 16(sp)
	addi s0, a2, %pcrel_lo(pcrel1093)
	li a2, 9
	bgtu a1, a2, label198
	mv s5, zero
	li a2, 10
	bltu a1, a2, label203
.p2align 2
label1036:
	mv s6, zero
	j label103
label198:
	mv s4, a0
	mv s6, zero
	j label181
label203:
	mv s4, a0
	mv s6, zero
.p2align 2
label100:
	jal getch
	sh2add a4, s6, s6
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s6, s4, a3
	bgeu a1, a2, label103
	mv s4, a0
	j label100
label103:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label915
	mv s4, s6
label915:
	li a2, 9
	bgtu a1, a2, label221
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
label221:
	mv s5, a0
	mv s7, zero
.p2align 2
label105:
	jal getch
	li s6, 1
	li a2, 45
	addiw a1, a0, -48
	beq s5, a2, label917
	mv s6, s7
.p2align 2
label917:
	li a2, 9
	bgtu a1, a2, label229
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label234
	mv s7, zero
	mv a0, zero
	mv s5, zero
	bne s6, zero, label919
	j label1060
label229:
	mv s5, a0
	mv s7, s6
	j label105
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
	j label144
label250:
	li a0, 1
	j label116
label261:
	mv s6, zero
	li s7, 1
	j label119
.p2align 2
label181:
	jal getch
	li s5, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label1021
	mv s5, s6
.p2align 2
label1021:
	li a2, 9
	bgtu a1, a2, label675
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label203
	j label1036
label675:
	mv s4, a0
	mv s6, s5
	j label181
.p2align 2
label119:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label267
	mv s9, zero
	li a2, 10
	bltu a1, a2, label272
.p2align 2
label1043:
	mv s10, zero
	j label125
.p2align 2
label267:
	mv s10, a0
	mv s8, zero
	j label141
.p2align 2
label272:
	mv s8, a0
	mv s10, zero
	j label138
.p2align 2
label125:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label921
	mv s8, s10
.p2align 2
label921:
	li a2, 9
	bgtu a1, a2, label281
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label286
	mv a0, zero
	mv a2, zero
	mv a1, zero
.p2align 2
label1062:
	mv a1, a0
	j label923
.p2align 2
label281:
	mv s10, a0
	mv s9, zero
	j label135
.p2align 2
label286:
	mv s10, a0
	mv s11, zero
.p2align 2
label130:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s11, s10, a4
	bltu a1, a2, label295
	mv a0, s11
	subw a2, zero, s11
	mv a1, a2
	bne s9, zero, label923
	j label1062
.p2align 2
label295:
	mv s10, a0
	j label130
.p2align 2
label923:
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
	bne s4, s7, label119
	j label144
.p2align 2
label135:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s10, a3, label925
	mv a2, s9
.p2align 2
label925:
	li a3, 9
	bgtu a1, a3, label321
	mv s9, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label286
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s9, zero, label923
	j label1062
.p2align 2
label321:
	mv s10, a0
	mv s9, a2
	j label135
.p2align 2
label138:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s10, s8, a4
	bgeu a1, a2, label125
	mv s8, a0
	j label138
.p2align 2
label141:
	jal getch
	li s9, 1
	li a2, 45
	addiw a1, a0, -48
	beq s10, a2, label927
	mv s9, s8
.p2align 2
label927:
	li a2, 9
	bgtu a1, a2, label338
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label272
	j label1043
.p2align 2
label338:
	mv s10, a0
	mv s8, s9
	j label141
label144:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label180
	mv s1, s5
.p2align 2
label145:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label348
	mv s3, zero
	li a2, 10
	bltu a1, a2, label353
.p2align 2
label1049:
	mv s4, zero
	j label153
.p2align 2
label348:
	mv s4, a0
	mv s2, zero
	j label177
.p2align 2
label353:
	mv s2, a0
	mv s4, zero
.p2align 2
label150:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s4, s2, a2
	bgeu a1, a3, label153
	mv s2, a0
	j label150
.p2align 2
label153:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label929
	mv s2, s4
.p2align 2
label929:
	li a2, 9
	bgtu a1, a2, label371
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label384
	mv a0, zero
	mv a2, zero
	mv a1, zero
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label935
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	bgt a4, a3, label170
	beq zero, s2, label410
	j label169
.p2align 2
label371:
	mv s4, a0
	mv s3, zero
.p2align 2
label155:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label931
	mv a2, s3
.p2align 2
label931:
	li a3, 9
	bgtu a1, a3, label379
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label384
	mv a0, zero
	mv a2, zero
	mv a1, zero
	bne s3, zero, label933
	mv a0, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(s0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label935
	mv a0, zero
	mv a3, zero
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	mv a5, s0
	lw a4, 0(a3)
	lw a3, 0(s0)
	bgt a4, a3, label170
	beq zero, s2, label410
	j label169
.p2align 2
label379:
	mv s4, a0
	mv s3, a2
	j label155
.p2align 2
label384:
	mv s4, a0
	mv s5, zero
	j label174
.p2align 2
label933:
	sh2add a0, a1, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label935
	mv a0, a1
.p2align 2
label935:
	mv a3, a1
	bne a2, zero, label937
	mv a3, s2
.p2align 2
label937:
	li a1, 19
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label170
	bne a0, a2, label169
.p2align 2
label410:
	mv a0, a2
.p2align 2
label167:
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label145
	j label180
.p2align 2
label169:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add a5, a4, a1
	sh2add a1, a0, a0
	lw a3, 76(a5)
	slli a5, a1, 4
	add a4, a4, a5
	lw a1, 76(a4)
	xor a5, a3, a1
	sltu t0, zero, a5
	bne t0, zero, label939
	mv a3, a2
.p2align 2
label939:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a2, a5, 4
	add t1, a4, a2
	lw a5, 72(t1)
	bne t0, zero, label941
	mv a1, a0
.p2align 2
label941:
	sh2add a2, a1, a1
	ld a4, 16(sp)
	slli a0, a2, 4
	add t0, a4, a0
	mv a0, a5
	lw a2, 72(t0)
	xor a4, a5, a2
	sltu t0, zero, a4
	bne t0, zero, label943
	mv a0, a3
.p2align 2
label943:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a3, a5, 4
	add t1, a4, a3
	lw a5, 68(t1)
	bne t0, zero, label945
	mv a2, a1
.p2align 2
label945:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add t0, a4, a1
	mv a1, a5
	lw a3, 68(t0)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label947
	mv a1, a0
.p2align 2
label947:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add t1, a4, a0
	mv a0, a3
	lw a5, 64(t1)
	bne t0, zero, label949
	mv a0, a2
.p2align 2
label949:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a2, a3, 4
	add a3, a4, a2
	lw a2, 64(a3)
	mv a3, a5
	xor a4, a5, a2
	sltu t0, zero, a4
	bne t0, zero, label951
	mv a3, a1
.p2align 2
label951:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a1, a5, 4
	add a5, a4, a1
	lw a1, 60(a5)
	bne t0, zero, label953
	mv a2, a0
.p2align 2
label953:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	lw a0, 60(a5)
	xor a4, a1, a0
	sltu a5, zero, a4
	bne a5, zero, label955
	mv a1, a3
.p2align 2
label955:
	sh2add t0, a1, a1
	ld a4, 16(sp)
	slli a3, t0, 4
	add t0, a4, a3
	lw a3, 56(t0)
	bne a5, zero, label957
	mv a0, a2
.p2align 2
label957:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a2, a5, 4
	add t0, a4, a2
	mv a2, a3
	lw a5, 56(t0)
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label959
	mv a2, a1
.p2align 2
label959:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add t1, a4, a1
	mv a1, a5
	lw a3, 52(t1)
	bne t0, zero, label961
	mv a1, a0
.p2align 2
label961:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	lw a0, 52(a5)
	mv a5, a3
	xor a4, a3, a0
	sltu t0, zero, a4
	bne t0, zero, label963
	mv a5, a2
.p2align 2
label963:
	sh2add a3, a5, a5
	ld a4, 16(sp)
	slli a2, a3, 4
	add t1, a4, a2
	lw a3, 48(t1)
	bne t0, zero, label965
	mv a0, a1
.p2align 2
label965:
	sh2add a2, a0, a0
	ld a4, 16(sp)
	slli a1, a2, 4
	add t0, a4, a1
	lw a2, 48(t0)
	xor a1, a3, a2
	sltu t0, zero, a1
	bne t0, zero, label967
	mv a3, a5
.p2align 2
label967:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a1, a5, 4
	add a5, a4, a1
	lw a1, 44(a5)
	bne t0, zero, label969
	mv a2, a0
.p2align 2
label969:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a0, a5, 4
	add a5, a4, a0
	lw a0, 44(a5)
	xor a4, a1, a0
	sltu t0, zero, a4
	bne t0, zero, label971
	mv a1, a3
.p2align 2
label971:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a3, a5, 4
	add t1, a4, a3
	mv a3, a0
	lw a5, 40(t1)
	bne t0, zero, label973
	mv a3, a2
.p2align 2
label973:
	sh2add a2, a3, a3
	ld a4, 16(sp)
	slli a0, a2, 4
	add t0, a4, a0
	mv a0, a5
	lw a2, 40(t0)
	xor a4, a5, a2
	sltu t0, zero, a4
	bne t0, zero, label975
	mv a0, a1
.p2align 2
label975:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a1, a5, 4
	add a5, a4, a1
	lw a1, 36(a5)
	bne t0, zero, label977
	mv a2, a3
.p2align 2
label977:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a3, a5, 4
	add t0, a4, a3
	lw a5, 36(t0)
	xor a3, a1, a5
	sltu t0, zero, a3
	bne t0, zero, label979
	mv a1, a0
.p2align 2
label979:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a0, a3, 4
	add t1, a4, a0
	mv a0, a5
	lw a3, 32(t1)
	bne t0, zero, label981
	mv a0, a2
.p2align 2
label981:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a2, a5, 4
	add a5, a4, a2
	lw a2, 32(a5)
	xor a4, a3, a2
	sltu a5, zero, a4
	bne a5, zero, label983
	mv a3, a1
.p2align 2
label983:
	sh2add t0, a3, a3
	ld a4, 16(sp)
	slli a1, t0, 4
	add t0, a4, a1
	lw a1, 28(t0)
	bne a5, zero, label985
	mv a2, a0
.p2align 2
label985:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a0, a5, 4
	add t0, a4, a0
	lw a5, 28(t0)
	xor a0, a1, a5
	sltu t0, zero, a0
	bne t0, zero, label987
	mv a1, a3
.p2align 2
label987:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a0, a3, 4
	mv a3, a5
	add t1, a4, a0
	lw a0, 24(t1)
	bne t0, zero, label989
	mv a3, a2
.p2align 2
label989:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a2, a5, 4
	add a5, a4, a2
	lw a2, 24(a5)
	xor a4, a0, a2
	sltu a5, zero, a4
	bne a5, zero, label991
	mv a0, a1
.p2align 2
label991:
	sh2add t0, a0, a0
	ld a4, 16(sp)
	slli a1, t0, 4
	add t0, a4, a1
	lw a1, 20(t0)
	bne a5, zero, label993
	mv a2, a3
.p2align 2
label993:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a3, a5, 4
	add a5, a4, a3
	lw a3, 20(a5)
	xor a4, a1, a3
	sltu a5, zero, a4
	bne a5, zero, label995
	mv a1, a0
.p2align 2
label995:
	sh2add t0, a1, a1
	ld a4, 16(sp)
	slli a0, t0, 4
	add t0, a4, a0
	lw a0, 16(t0)
	bne a5, zero, label997
	mv a3, a2
.p2align 2
label997:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a2, a5, 4
	add a5, a4, a2
	lw a2, 16(a5)
	xor a4, a0, a2
	sltu a5, zero, a4
	bne a5, zero, label999
	mv a0, a1
.p2align 2
label999:
	sh2add t0, a0, a0
	ld a4, 16(sp)
	slli a1, t0, 4
	add t0, a4, a1
	lw a1, 12(t0)
	bne a5, zero, label1001
	mv a2, a3
.p2align 2
label1001:
	sh2add a5, a2, a2
	ld a4, 16(sp)
	slli a3, a5, 4
	add t0, a4, a3
	lw a5, 12(t0)
	xor a3, a1, a5
	sltu t0, zero, a3
	bne t0, zero, label1003
	mv a1, a0
.p2align 2
label1003:
	sh2add a3, a1, a1
	ld a4, 16(sp)
	slli a0, a3, 4
	add t1, a4, a0
	mv a0, a5
	lw a3, 8(t1)
	bne t0, zero, label1005
	mv a0, a2
.p2align 2
label1005:
	sh2add a5, a0, a0
	ld a4, 16(sp)
	slli a2, a5, 4
	add t0, a4, a2
	mv a2, a3
	lw a5, 8(t0)
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label1007
	mv a2, a1
.p2align 2
label1007:
	sh2add a3, a2, a2
	ld a4, 16(sp)
	slli a1, a3, 4
	add t1, a4, a1
	mv a1, a5
	lw a3, 4(t1)
	bne t0, zero, label1009
	mv a1, a0
.p2align 2
label1009:
	sh2add a5, a1, a1
	ld a4, 16(sp)
	slli a0, a5, 4
	add t0, a4, a0
	mv a0, a3
	lw a5, 4(t0)
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label1011
	mv a0, a2
.p2align 2
label1011:
	sh2add a3, a0, a0
	ld a4, 16(sp)
	slli a2, a3, 4
	mv a3, a5
	add t1, a4, a2
	lw a2, 0(t1)
	bne t0, zero, label1013
	mv a3, a1
.p2align 2
label1013:
	sh2add a5, a3, a3
	ld a4, 16(sp)
	slli a1, a5, 4
	add a5, a4, a1
	mv a1, a2
	lw a3, 0(a5)
	bne a2, a3, label1015
	mv a1, a0
.p2align 2
label1015:
	sh2add a2, a1, a1
	ld a4, 16(sp)
	slli a0, a2, 4
	add a1, a4, a0
	lw a0, 0(a1)
	j label167
.p2align 2
label170:
	sh2add t0, a2, a2
	ld a4, 16(sp)
	slli a5, t0, 4
	add t0, a4, a5
	sh2add a5, a1, t0
	lw a4, 0(a5)
	bne a4, zero, label171
	mv a5, zero
	mv a3, a4
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label170
	beq a0, a2, label410
	j label169
.p2align 2
label174:
	jal getch
	sh2add a4, s5, s5
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	li a3, 10
	addw s5, s4, a2
	bltu a1, a3, label659
	mv a0, s5
	subw a2, zero, s5
	mv a1, a2
	bne s3, zero, label933
	mv a1, s5
	sh2add a0, s5, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label935
	mv a0, s5
	mv a3, s5
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	sh2add a5, s5, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label170
	beq s5, s2, label410
	j label169
.p2align 2
label659:
	mv s4, a0
	j label174
.p2align 2
label177:
	jal getch
	li s3, 1
	li a2, 45
	addiw a1, a0, -48
	beq s4, a2, label1019
	mv s3, s2
.p2align 2
label1019:
	li a2, 9
	bgtu a1, a2, label667
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label353
	j label1049
.p2align 2
label667:
	mv s4, a0
	mv s2, s3
	j label177
label180:
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
label171:
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label1017
	mv a3, a2
.p2align 2
label1017:
	addiw a1, a1, -1
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label170
	beq a0, a2, label410
	j label169
.p2align 2
label116:
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	bge s4, a0, label116
	li a1, 1
	bne s4, a1, label261
	j label144
