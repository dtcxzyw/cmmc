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
.p2align 2
tree:
	addi sp, sp, -48
	mv a2, a0
pcrel95:
	auipc a3, %pcrel_hi(dep)
pcrel96:
	auipc t1, %pcrel_hi(f)
	sd ra, 0(sp)
	sh2add a5, a0, a0
	addi a0, a3, %pcrel_lo(pcrel95)
	slli t0, a5, 4
	sd s0, 8(sp)
	addi a3, t1, %pcrel_lo(pcrel96)
	sh2add a4, a2, a0
pcrel97:
	auipc a5, %pcrel_hi(to)
	addiw s0, a1, 1
	add a0, a3, t0
	sd s1, 16(sp)
	addi s1, a5, %pcrel_lo(pcrel97)
	sd s2, 24(sp)
	sd s3, 32(sp)
	li s3, -1
	sd s4, 40(sp)
	sw a1, 0(a4)
pcrel98:
	auipc a1, %pcrel_hi(next)
	lw a4, 0(a0)
	addi s2, a1, %pcrel_lo(pcrel98)
	beq a4, zero, label7
	mv a1, a0
	mv a4, zero
.p2align 2
label3:
	lw a5, 0(a1)
	sh2add t0, a5, a5
	slli t1, t0, 4
	add t3, a3, t1
	sh2add t2, a4, t3
	addiw a4, a4, 1
	sh2add t0, a4, a0
	lw a5, 0(t2)
	sw a5, 0(t0)
	beq a5, zero, label7
	addi a1, a1, 4
	j label3
label7:
	auipc a3, %pcrel_hi(head)
	addi a0, a3, %pcrel_lo(label7)
	sh2add a1, a2, a0
	lw s4, 0(a1)
	beq s4, s3, label10
.p2align 2
label8:
	sh2add a2, s4, s1
	lw a0, 0(a2)
	mv a1, s0
	jal tree
	sh2add a0, s4, s2
	lw s4, 0(a0)
	bne s4, s3, label8
label10:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s7, 48(sp)
	sd s4, 56(sp)
	sd s3, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s6, -1
	addiw a1, a0, -48
pcrel1115:
	auipc a3, %pcrel_hi(to)
pcrel1116:
	auipc a2, %pcrel_hi(next)
	li s0, 10
pcrel1117:
	auipc s7, %pcrel_hi(dep)
	addi s5, a3, %pcrel_lo(pcrel1115)
	addi s1, a2, %pcrel_lo(pcrel1116)
	addi a4, s7, %pcrel_lo(pcrel1117)
pcrel1118:
	auipc a3, %pcrel_hi(head)
pcrel1119:
	auipc a2, %pcrel_hi(f)
	addi s2, a3, %pcrel_lo(pcrel1118)
	addi t0, a2, %pcrel_lo(pcrel1119)
	li a2, 9
	sd t0, 104(sp)
	sd a4, 112(sp)
	bleu a1, a2, label206
	mv s3, a0
	mv s4, zero
.p2align 2
label190:
	jal getch
	li a1, 1
	li a2, 45
	addiw a3, a0, -48
	beq s3, a2, label1037
	mv a1, s4
.p2align 2
label1037:
	li a2, 9
	bleu a3, a2, label682
	mv s3, a0
	mv s4, a1
	j label190
label100:
	addiw a1, a0, -48
	bgeu a1, s0, label211
	mv s3, a0
	mv s8, zero
	j label103
label682:
	mv s4, a1
	j label100
.p2align 2
label103:
	jal getch
	sh2add a4, s8, s8
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s8, s3, a2
	bgeu a1, s0, label106
	mv s3, a0
	j label103
label106:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s3, a2
	bne s4, zero, label930
	mv s3, s8
label930:
	li a2, 9
	bleu a1, a2, label229
	mv s4, a0
	mv s8, zero
.p2align 2
label108:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s4, a2, label932
	mv a1, s8
.p2align 2
label932:
	li a2, 9
	bleu a3, a2, label237
	mv s4, a0
	mv s8, a1
	j label108
label237:
	mv s8, a1
label111:
	addiw a2, a0, -48
	bgeu a2, s0, label242
	mv s4, a0
	mv s9, zero
.p2align 2
label114:
	jal getch
	sh2add a3, s9, s9
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s9, s4, a2
	bgeu a1, s0, label117
	mv s4, a0
	j label114
label117:
	subw a0, zero, s9
	mv s4, a0
	bne s8, zero, label934
	mv s4, s9
label934:
	lui a1, 259060
	addiw a0, a1, -193
pcrel1120:
	auipc s7, %pcrel_hi(dep)
	sw a0, %pcrel_lo(pcrel1120)(s7)
	ble s3, zero, label119
	addi a0, s2, 4
	li a1, 1
.p2align 2
label186:
	sw s6, 0(a0)
	addiw a1, a1, 1
	blt s3, a1, label119
	addi a0, a0, 4
	j label186
label119:
	li a0, 1
	bne s3, a0, label157
	j label120
label229:
	mv s8, zero
	j label111
label211:
	mv s8, zero
	j label106
label157:
	mv s6, zero
	li s7, 1
.p2align 2
label158:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label597
	mv s8, a0
	mv s9, zero
	j label182
.p2align 2
label633:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1033
.p2align 2
label1060:
	mv a0, s11
.p2align 2
label1033:
	sw a0, 0(s5)
	sh2add a1, a0, a0
	addiw s7, s7, 1
	slli a2, a1, 4
	ld t0, 104(sp)
	sh2add a1, s8, s2
	add a0, t0, a2
	lw a3, 0(a1)
	sh2add a2, s6, s1
	sw a3, 0(a2)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	beq s3, s7, label120
	addi s5, s5, 4
	j label158
.p2align 2
label182:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label1035
	mv a1, s9
.p2align 2
label1035:
	li a2, 9
	bleu a3, a2, label667
	mv s8, a0
	mv s9, a1
	j label182
label602:
	mv s10, zero
	j label165
.p2align 2
label603:
	mv s10, zero
.p2align 2
label179:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, s0, label165
	mv s8, a0
	j label179
.p2align 2
label667:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label603
	j label602
.p2align 2
label165:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1029
	mv s8, s10
.p2align 2
label1029:
	li a2, 9
	bleu a1, a2, label611
	mv s9, a0
	mv s10, zero
.p2align 2
label167:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label1031
	mv a1, s10
.p2align 2
label1031:
	li a2, 9
	bleu a3, a2, label619
	mv s9, a0
	mv s10, a1
	j label167
.p2align 2
label619:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1059
.p2align 2
label625:
	mv s10, a0
	mv s11, zero
.p2align 2
label173:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, s0, label633
	mv s10, a0
	j label173
label597:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label603
	j label602
label120:
	li a0, 1
	li a1, 1
	jal tree
	bne s4, zero, label267
	j label121
label611:
	mv s9, zero
	j label170
label1059:
	mv s11, zero
	j label176
label170:
	addiw a2, a0, -48
	bltu a2, s0, label625
	j label1059
label176:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1033
	j label1060
label206:
	mv s4, zero
	j label100
label267:
	mv s1, s4
	j label122
label121:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s7, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label122:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label272
	mv s2, a0
	mv s3, zero
	j label124
.p2align 2
label146:
	sh2add a5, a2, a2
	ld t0, 104(sp)
	slli a4, a5, 4
	add t1, t0, a4
	sh2add t2, a1, t1
	lw a5, 0(t2)
	bne a5, zero, label149
	addiw a1, a1, -1
	ld a4, 112(sp)
	sh2add t1, a0, a4
	sh2add t0, a2, a4
	lw a5, 0(t0)
	lw a3, 0(t1)
	bgt a5, a3, label146
	j label1056
.p2align 2
label149:
	ld a4, 112(sp)
	mv t0, a5
	sh2add t2, a5, a4
	lw t1, 0(t2)
	ble a3, t1, label949
	mv t0, a2
.p2align 2
label949:
	mv a2, t0
	addiw a1, a1, -1
	ld a4, 112(sp)
	sh2add t1, a0, a4
	sh2add t0, t0, a4
	lw a5, 0(t0)
	lw a3, 0(t1)
	bgt a5, a3, label146
	bne a0, a2, label151
.p2align 2
label358:
	mv a0, a2
.p2align 2
label152:
	jal putint
	mv a0, s0
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label122
	j label121
.p2align 2
label124:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label937
	mv a1, s3
.p2align 2
label937:
	li a2, 9
	bleu a3, a2, label280
	mv s2, a0
	mv s3, a1
	j label124
.p2align 2
label280:
	mv s3, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1053
.p2align 2
label286:
	mv s2, a0
	mv s4, zero
.p2align 2
label130:
	jal getch
	sh2add a3, s4, s4
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s4, s2, a4
	bgeu a1, s0, label133
	mv s2, a0
	j label130
.p2align 2
label133:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label939
	mv s2, s4
.p2align 2
label939:
	li a2, 9
	bleu a1, a2, label303
	mv s3, a0
	mv s4, zero
.p2align 2
label135:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label941
	mv a1, s4
.p2align 2
label941:
	li a2, 9
	bleu a3, a2, label311
	mv s3, a0
	mv s4, a1
	j label135
.p2align 2
label311:
	mv s3, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1054
.p2align 2
label317:
	mv s4, a0
	mv s5, zero
.p2align 2
label154:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s5, s4, a3
	bgeu a1, s0, label591
	mv s4, a0
	j label154
label303:
	mv s3, zero
	j label138
label1054:
	mv s5, zero
	j label141
label138:
	addiw a2, a0, -48
	bltu a2, s0, label317
	j label1054
label141:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label943
	mv a1, s5
.p2align 2
label943:
	ld a4, 112(sp)
	sh2add a0, s2, a4
	sh2add a3, a1, a4
	lw a5, 0(a0)
	mv a0, s2
	lw t0, 0(a3)
	slt a2, a5, t0
	bne a2, zero, label945
	mv a0, a1
.p2align 2
label945:
	mv a3, a1
	bne a2, zero, label947
	mv a3, s2
.p2align 2
label947:
	li a1, 19
	mv a2, a3
	ld a4, 112(sp)
	sh2add t1, a0, a4
	sh2add t0, a3, a4
	lw a5, 0(t0)
	lw a3, 0(t1)
	bgt a5, a3, label146
label338:
	beq a0, a2, label358
	j label151
.p2align 2
label591:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label943
	mv a1, s5
	ld a4, 112(sp)
	sh2add a0, s2, a4
	sh2add a3, s5, a4
	lw a5, 0(a0)
	mv a0, s2
	lw t0, 0(a3)
	slt a2, a5, t0
	bne a2, zero, label945
	mv a0, s5
	li a1, 19
	mv a2, s2
	sh2add t1, s5, a4
	sh2add t0, s2, a4
	lw a5, 0(t0)
	lw a3, 0(t1)
	bgt a5, a3, label146
	j label338
.p2align 2
label151:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	sh2add t2, a0, a0
	slli a1, a3, 4
	slli a5, t2, 4
	add t1, t0, a1
	add a3, t0, a5
	lw a4, 76(t1)
	lw a1, 76(a3)
	mv a3, a4
	xor t1, a4, a1
	sltu a5, zero, t1
	bne a5, zero, label951
	mv a3, a2
.p2align 2
label951:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli t1, a4, 4
	mv a4, a1
	add t2, t0, t1
	lw a2, 72(t2)
	bne a5, zero, label953
	mv a4, a0
.p2align 2
label953:
	sh2add a5, a4, a4
	ld t0, 104(sp)
	slli a1, a5, 4
	add t1, t0, a1
	mv a1, a2
	lw a0, 72(t1)
	xor t2, a2, a0
	sltu a5, zero, t2
	bne a5, zero, label955
	mv a1, a3
.p2align 2
label955:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli t1, a2, 4
	mv a2, a0
	add t2, t0, t1
	lw a3, 68(t2)
	bne a5, zero, label957
	mv a2, a4
.p2align 2
label957:
	sh2add a5, a2, a2
	ld t0, 104(sp)
	slli a0, a5, 4
	add t2, t0, a0
	mv a0, a3
	lw a4, 68(t2)
	xor a5, a3, a4
	sltu t1, zero, a5
	bne t1, zero, label959
	mv a0, a1
.p2align 2
label959:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	mv a3, a4
	add t2, t0, a1
	lw a5, 64(t2)
	bne t1, zero, label961
	mv a3, a2
.p2align 2
label961:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a1, a4, 4
	add t2, t0, a1
	mv a1, a5
	lw a4, 64(t2)
	xor a2, a5, a4
	sltu t1, zero, a2
	bne t1, zero, label963
	mv a1, a0
.p2align 2
label963:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	mv a2, a4
	add t2, t0, a0
	lw a5, 60(t2)
	bne t1, zero, label965
	mv a2, a3
.p2align 2
label965:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli a0, a4, 4
	add t2, t0, a0
	mv a0, a5
	lw a3, 60(t2)
	xor a4, a5, a3
	sltu t1, zero, a4
	bne t1, zero, label967
	mv a0, a1
.p2align 2
label967:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	mv a1, a3
	slli a5, a4, 4
	add t2, t0, a5
	lw a4, 56(t2)
	bne t1, zero, label969
	mv a1, a2
.p2align 2
label969:
	sh2add a3, a1, a1
	ld t0, 104(sp)
	slli a2, a3, 4
	add t2, t0, a2
	mv a2, a4
	lw a3, 56(t2)
	xor t1, a4, a3
	sltu a5, zero, t1
	bne a5, zero, label971
	mv a2, a0
.p2align 2
label971:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	mv a0, a3
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 52(t2)
	bne a5, zero, label973
	mv a0, a1
.p2align 2
label973:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	add t2, t0, a1
	mv a1, a4
	lw a5, 52(t2)
	xor a3, a4, a5
	sltu t1, zero, a3
	bne t1, zero, label975
	mv a1, a2
.p2align 2
label975:
	sh2add a3, a1, a1
	ld t0, 104(sp)
	slli a4, a3, 4
	mv a3, a5
	add t2, t0, a4
	lw a2, 48(t2)
	bne t1, zero, label977
	mv a3, a0
.p2align 2
label977:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a0, a4, 4
	add t2, t0, a0
	mv a0, a2
	lw a4, 48(t2)
	xor a5, a2, a4
	sltu t1, zero, a5
	bne t1, zero, label979
	mv a0, a1
.p2align 2
label979:
	sh2add a2, a0, a0
	ld t0, 104(sp)
	slli a1, a2, 4
	mv a2, a4
	add t2, t0, a1
	lw a5, 44(t2)
	bne t1, zero, label981
	mv a2, a3
.p2align 2
label981:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli a1, a4, 4
	add t2, t0, a1
	mv a1, a5
	lw a3, 44(t2)
	xor t1, a5, a3
	sltu a4, zero, t1
	bne a4, zero, label983
	mv a1, a0
.p2align 2
label983:
	sh2add a5, a1, a1
	ld t0, 104(sp)
	mv a0, a3
	slli t1, a5, 4
	add t2, t0, t1
	lw a5, 40(t2)
	bne a4, zero, label985
	mv a0, a2
.p2align 2
label985:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a2, a3, 4
	add t2, t0, a2
	mv a2, a5
	lw a4, 40(t2)
	xor a3, a5, a4
	sltu t1, zero, a3
	bne t1, zero, label987
	mv a2, a1
.p2align 2
label987:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	slli a5, a3, 4
	mv a3, a4
	add t2, t0, a5
	lw a1, 36(t2)
	bne t1, zero, label989
	mv a3, a0
.p2align 2
label989:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a0, a4, 4
	add t2, t0, a0
	mv a0, a1
	lw a4, 36(t2)
	xor a5, a1, a4
	sltu t1, zero, a5
	bne t1, zero, label991
	mv a0, a2
.p2align 2
label991:
	sh2add a1, a0, a0
	ld t0, 104(sp)
	slli a2, a1, 4
	mv a1, a4
	add t2, t0, a2
	lw a5, 32(t2)
	bne t1, zero, label993
	mv a1, a3
.p2align 2
label993:
	sh2add a4, a1, a1
	ld t0, 104(sp)
	slli a2, a4, 4
	add a3, t0, a2
	mv a2, a5
	lw a4, 32(a3)
	xor t2, a5, a4
	sltu t1, zero, t2
	bne t1, zero, label995
	mv a2, a0
.p2align 2
label995:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	mv a0, a4
	slli a5, a3, 4
	add t2, t0, a5
	lw a3, 28(t2)
	bne t1, zero, label997
	mv a0, a1
.p2align 2
label997:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	slli a1, a4, 4
	add t2, t0, a1
	mv a1, a3
	lw a4, 28(t2)
	xor t1, a3, a4
	sltu a5, zero, t1
	bne a5, zero, label999
	mv a1, a2
.p2align 2
label999:
	sh2add a3, a1, a1
	ld t0, 104(sp)
	mv a2, a4
	slli t1, a3, 4
	add t2, t0, t1
	lw a3, 24(t2)
	bne a5, zero, label1001
	mv a2, a0
.p2align 2
label1001:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli a0, a4, 4
	add a5, t0, a0
	mv a0, a3
	lw a4, 24(a5)
	xor t2, a3, a4
	sltu t1, zero, t2
	bne t1, zero, label1003
	mv a0, a1
.p2align 2
label1003:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	mv a3, a4
	add t2, t0, a1
	lw a5, 20(t2)
	bne t1, zero, label1005
	mv a3, a2
.p2align 2
label1005:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a1, a4, 4
	add t1, t0, a1
	mv a1, a5
	lw a2, 20(t1)
	xor a4, a5, a2
	sltu t2, zero, a4
	bne t2, zero, label1007
	mv a1, a0
.p2align 2
label1007:
	sh2add a4, a1, a1
	ld t0, 104(sp)
	slli a0, a4, 4
	mv a4, a2
	add a5, t0, a0
	lw t1, 16(a5)
	bne t2, zero, label1009
	mv a4, a3
.p2align 2
label1009:
	sh2add a2, a4, a4
	ld t0, 104(sp)
	slli a0, a2, 4
	add a3, t0, a0
	mv a0, t1
	lw a5, 16(a3)
	xor a2, t1, a5
	sltu t2, zero, a2
	bne t2, zero, label1011
	mv a0, a1
.p2align 2
label1011:
	sh2add a2, a0, a0
	ld t0, 104(sp)
	slli a1, a2, 4
	mv a2, a5
	add t1, t0, a1
	lw a3, 12(t1)
	bne t2, zero, label1013
	mv a2, a4
.p2align 2
label1013:
	sh2add a5, a2, a2
	ld t0, 104(sp)
	slli a1, a5, 4
	add t2, t0, a1
	mv a1, a3
	lw a5, 12(t2)
	xor a4, a3, a5
	sltu t1, zero, a4
	bne t1, zero, label1015
	mv a1, a0
.p2align 2
label1015:
	sh2add a3, a1, a1
	ld t0, 104(sp)
	slli a0, a3, 4
	mv a3, a5
	add t2, t0, a0
	lw a4, 8(t2)
	bne t1, zero, label1017
	mv a3, a2
.p2align 2
label1017:
	sh2add a5, a3, a3
	ld t0, 104(sp)
	slli a0, a5, 4
	add t1, t0, a0
	mv a0, a4
	lw a2, 8(t1)
	xor t2, a4, a2
	sltu a5, zero, t2
	bne a5, zero, label1019
	mv a0, a1
.p2align 2
label1019:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	mv a1, a2
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 4(t2)
	bne a5, zero, label1021
	mv a1, a3
.p2align 2
label1021:
	sh2add a5, a1, a1
	ld t0, 104(sp)
	slli a2, a5, 4
	add t1, t0, a2
	mv a2, a4
	lw a3, 4(t1)
	xor t2, a4, a3
	sltu a5, zero, t2
	bne a5, zero, label1023
	mv a2, a0
.p2align 2
label1023:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli t1, a4, 4
	mv a4, a3
	add t2, t0, t1
	lw a0, 0(t2)
	bne a5, zero, label1025
	mv a4, a1
.p2align 2
label1025:
	sh2add a3, a4, a4
	ld t0, 104(sp)
	mv a1, a0
	slli a5, a3, 4
	add a4, t0, a5
	lw a3, 0(a4)
	bne a0, a3, label1027
	mv a1, a2
.p2align 2
label1027:
	sh2add a0, a1, a1
	ld t0, 104(sp)
	slli a2, a0, 4
	add a1, t0, a2
	lw a0, 0(a1)
	j label152
.p2align 2
label1056:
	beq a0, a2, label358
	j label151
label272:
	mv s3, zero
	j label127
label1053:
	mv s4, zero
	j label133
label127:
	addiw a2, a0, -48
	bltu a2, s0, label286
	j label1053
label242:
	mv s9, zero
	j label117
