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
pcrel94:
	auipc a5, %pcrel_hi(dep)
pcrel95:
	auipc t1, %pcrel_hi(f)
	sh2add t0, a0, a0
	addi a0, a5, %pcrel_lo(pcrel94)
	sd ra, 0(sp)
	slli a5, t0, 4
	sh2add a4, a2, a0
	sd s0, 8(sp)
	addiw s0, a1, 1
	sd s1, 16(sp)
pcrel96:
	auipc a3, %pcrel_hi(next)
	sd s2, 24(sp)
	addi s2, a3, %pcrel_lo(pcrel96)
	sd s3, 32(sp)
	li s3, -1
	sd s4, 40(sp)
	sw a1, 0(a4)
	addi a1, t1, %pcrel_lo(pcrel95)
	add a4, a1, a5
pcrel97:
	auipc a5, %pcrel_hi(to)
	lw a0, 0(a4)
	addi s1, a5, %pcrel_lo(pcrel97)
	beq a0, zero, label8
	mv a0, a4
	mv a3, zero
.p2align 2
label3:
	lw a5, 0(a4)
	addi a4, a0, 4
	sh2add t3, a5, a5
	slli t1, t3, 4
	add t2, a1, t1
	sh2add t0, a3, t2
	addiw a3, a3, 1
	lw a5, 0(t0)
	sw a5, 4(a0)
	beq a5, zero, label8
	addi a0, a0, 4
	j label3
label8:
	auipc a4, %pcrel_hi(head)
	addi a1, a4, %pcrel_lo(label8)
	sh2add a0, a2, a1
	lw s4, 0(a0)
	beq s4, s3, label11
.p2align 2
label9:
	sh2add a2, s4, s1
	lw a0, 0(a2)
	mv a1, s0
	jal tree
	sh2add a0, s4, s2
	lw s4, 0(a0)
	bne s4, s3, label9
label11:
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
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s0, -1
pcrel1137:
	auipc a3, %pcrel_hi(next)
pcrel1138:
	auipc a2, %pcrel_hi(to)
	addiw a1, a0, -48
	addi s1, a3, %pcrel_lo(pcrel1137)
	addi s5, a2, %pcrel_lo(pcrel1138)
	li a2, 9
	bleu a1, a2, label199
	mv s2, a0
	mv s3, zero
	j label189
.p2align 2
label1046:
	mv a1, s3
.p2align 2
label1047:
	li a2, 9
	bleu a3, a2, label688
	mv s2, a0
	mv s3, a1
.p2align 2
label189:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label1047
	j label1046
label688:
	mv s3, a1
label99:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label204
	mv s2, a0
	mv s4, zero
.p2align 2
label102:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label105
	mv s2, a0
	j label102
label105:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label940
	mv s2, s4
label940:
	li a2, 9
	bleu a1, a2, label222
	mv s3, a0
	mv s4, zero
	j label107
.p2align 2
label942:
	li a2, 9
	bleu a3, a2, label230
	mv s3, a0
	mv s4, a1
.p2align 2
label107:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label942
	mv a1, s4
	j label942
label230:
	mv s4, a1
label110:
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label235
	mv s3, a0
	mv s6, zero
.p2align 2
label113:
	jal getch
	sh2add a2, s6, s6
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s6, s3, a3
	bgeu a1, a2, label116
	mv s3, a0
	j label113
label116:
	subw a0, zero, s6
	mv s3, a0
	bne s4, zero, label944
	mv s3, s6
label944:
	auipc a0, %pcrel_hi(dep)
	lui a2, 259060
pcrel1139:
	auipc a3, %pcrel_hi(head)
	addi a5, a0, %pcrel_lo(label944)
	addiw a1, a2, -193
	addi s4, a3, %pcrel_lo(pcrel1139)
	sd a5, 104(sp)
	sw a1, %pcrel_lo(label944)(a0)
	ble s2, zero, label118
	addi a0, s4, 4
	li a1, 1
.p2align 2
label185:
	addiw a1, a1, 1
	sw s0, 0(a0)
	blt s2, a1, label118
	addi a0, a0, 4
	j label185
label118:
	auipc a0, %pcrel_hi(f)
	li a1, 1
	addi s0, a0, %pcrel_lo(label118)
	beq s2, a1, label147
	mv s6, zero
	li s7, 1
	j label120
.p2align 2
label320:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label953
.p2align 2
label1064:
	mv a1, s11
.p2align 2
label953:
	sh2add a2, a1, a1
	sw a1, 0(s5)
	addiw s7, s7, 1
	slli a3, a2, 4
	sh2add a1, s6, s1
	add a0, s0, a3
	sh2add a2, s8, s4
	lw a3, 0(a2)
	sw a3, 0(a1)
	sw s6, 0(a2)
	addiw s6, s6, 1
	sw s8, 0(a0)
	beq s2, s7, label147
	addi s5, s5, 4
.p2align 2
label120:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label267
	mv s8, a0
	mv s9, zero
	j label124
.p2align 2
label946:
	mv a1, s9
.p2align 2
label947:
	li a2, 9
	bleu a3, a2, label275
	mv s8, a0
	mv s9, a1
.p2align 2
label124:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label947
	j label946
.p2align 2
label275:
	mv s8, a0
	mv s9, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label1062
.p2align 2
label281:
	mv s10, zero
.p2align 2
label130:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bgeu a1, a2, label133
	mv s8, a0
	j label130
.p2align 2
label133:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label949
	mv s8, s10
.p2align 2
label949:
	li a2, 9
	bleu a1, a2, label298
	mv s9, a0
	mv s10, zero
	j label135
.p2align 2
label951:
	li a2, 9
	bleu a3, a2, label306
	mv s9, a0
	mv s10, a1
.p2align 2
label135:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label951
	mv a1, s10
	j label951
.p2align 2
label306:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label1063
.p2align 2
label312:
	mv s10, a0
	mv s11, zero
.p2align 2
label141:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, a2, label320
	mv s10, a0
	j label141
label147:
	li a0, 1
	li a1, 1
	jal tree
	beq s3, zero, label183
	mv s1, s3
	j label148
.p2align 2
label167:
	sh2add a0, a3, a3
	sh2add a5, a1, a1
	slli a2, a0, 4
	slli t1, a5, 4
	add t0, s0, a2
	add a2, s0, t1
	lw a4, 76(t0)
	lw a0, 76(a2)
	mv a2, a4
	xor t0, a4, a0
	sltu a5, zero, t0
	bne a5, zero, label963
	mv a2, a3
.p2align 2
label963:
	sh2add t2, a2, a2
	mv a3, a0
	slli t0, t2, 4
	add t1, s0, t0
	lw a4, 72(t1)
	bne a5, zero, label965
	mv a3, a1
.p2align 2
label965:
	sh2add t0, a3, a3
	slli t1, t0, 4
	add a0, s0, t1
	lw a5, 72(a0)
	mv a0, a4
	xor a1, a4, a5
	sltu t0, zero, a1
	bne t0, zero, label967
	mv a0, a2
.p2align 2
label967:
	sh2add a1, a0, a0
	slli t1, a1, 4
	mv a1, a5
	add a2, s0, t1
	lw a4, 68(a2)
	bne t0, zero, label969
	mv a1, a3
.p2align 2
label969:
	sh2add t0, a1, a1
	slli a5, t0, 4
	add a2, s0, a5
	lw a3, 68(a2)
	mv a2, a4
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label971
	mv a2, a0
.p2align 2
label971:
	sh2add t1, a2, a2
	mv a0, a3
	slli t0, t1, 4
	add t2, s0, t0
	lw a4, 64(t2)
	bne a5, zero, label973
	mv a0, a1
.p2align 2
label973:
	sh2add a3, a0, a0
	slli a1, a3, 4
	add t1, s0, a1
	mv a1, a4
	lw a5, 64(t1)
	xor a3, a4, a5
	sltu t0, zero, a3
	bne t0, zero, label975
	mv a1, a2
.p2align 2
label975:
	sh2add a3, a1, a1
	slli a4, a3, 4
	mv a3, a5
	add t1, s0, a4
	lw a2, 60(t1)
	bne t0, zero, label977
	mv a3, a0
.p2align 2
label977:
	sh2add a5, a3, a3
	slli a0, a5, 4
	add t1, s0, a0
	mv a0, a2
	lw a4, 60(t1)
	xor a5, a2, a4
	sltu t0, zero, a5
	bne t0, zero, label979
	mv a0, a1
.p2align 2
label979:
	sh2add a2, a0, a0
	slli a1, a2, 4
	mv a2, a4
	add t1, s0, a1
	lw a5, 56(t1)
	bne t0, zero, label981
	mv a2, a3
.p2align 2
label981:
	sh2add t0, a2, a2
	slli a1, t0, 4
	add t1, s0, a1
	mv a1, a5
	lw a4, 56(t1)
	xor a3, a5, a4
	sltu t0, zero, a3
	bne t0, zero, label983
	mv a1, a0
.p2align 2
label983:
	sh2add a3, a1, a1
	slli a0, a3, 4
	mv a3, a4
	add t1, s0, a0
	lw a5, 52(t1)
	bne t0, zero, label985
	mv a3, a2
.p2align 2
label985:
	sh2add a4, a3, a3
	slli a0, a4, 4
	add t1, s0, a0
	mv a0, a5
	lw a2, 52(t1)
	xor a4, a5, a2
	sltu t0, zero, a4
	bne t0, zero, label987
	mv a0, a1
.p2align 2
label987:
	sh2add t1, a0, a0
	mv a1, a2
	slli t2, t1, 4
	add a5, s0, t2
	lw a4, 48(a5)
	bne t0, zero, label989
	mv a1, a3
.p2align 2
label989:
	sh2add a5, a1, a1
	slli a2, a5, 4
	add t1, s0, a2
	mv a2, a4
	lw a3, 48(t1)
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label991
	mv a2, a0
.p2align 2
label991:
	sh2add t0, a2, a2
	mv a0, a3
	slli t1, t0, 4
	add t2, s0, t1
	lw a4, 44(t2)
	bne a5, zero, label993
	mv a0, a1
.p2align 2
label993:
	sh2add t0, a0, a0
	slli a5, t0, 4
	add a1, s0, a5
	lw a3, 44(a1)
	mv a1, a4
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label995
	mv a1, a2
.p2align 2
label995:
	sh2add t2, a1, a1
	mv a2, a3
	slli t0, t2, 4
	add t1, s0, t0
	lw a4, 40(t1)
	bne a5, zero, label997
	mv a2, a0
.p2align 2
label997:
	sh2add a5, a2, a2
	slli a0, a5, 4
	add t1, s0, a0
	mv a0, a4
	lw a3, 40(t1)
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label999
	mv a0, a1
.p2align 2
label999:
	sh2add t2, a0, a0
	mv a1, a3
	slli t1, t2, 4
	add t0, s0, t1
	lw a4, 36(t0)
	bne a5, zero, label1001
	mv a1, a2
.p2align 2
label1001:
	sh2add a5, a1, a1
	slli a2, a5, 4
	add t1, s0, a2
	mv a2, a4
	lw a3, 36(t1)
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1003
	mv a2, a0
.p2align 2
label1003:
	sh2add t1, a2, a2
	mv a0, a3
	slli t0, t1, 4
	add t2, s0, t0
	lw a4, 32(t2)
	bne a5, zero, label1005
	mv a0, a1
.p2align 2
label1005:
	sh2add a5, a0, a0
	slli t0, a5, 4
	add a1, s0, t0
	lw a3, 32(a1)
	mv a1, a4
	xor t1, a4, a3
	sltu a5, zero, t1
	bne a5, zero, label1007
	mv a1, a2
.p2align 2
label1007:
	sh2add t2, a1, a1
	mv a2, a3
	slli t0, t2, 4
	add t1, s0, t0
	lw a4, 28(t1)
	bne a5, zero, label1009
	mv a2, a0
.p2align 2
label1009:
	sh2add a5, a2, a2
	slli t0, a5, 4
	add a0, s0, t0
	lw a3, 28(a0)
	mv a0, a4
	xor t1, a4, a3
	sltu a5, zero, t1
	bne a5, zero, label1011
	mv a0, a1
.p2align 2
label1011:
	sh2add a4, a0, a0
	slli a1, a4, 4
	mv a4, a3
	add t1, s0, a1
	lw t0, 24(t1)
	bne a5, zero, label1013
	mv a4, a2
.p2align 2
label1013:
	sh2add t1, a4, a4
	slli a1, t1, 4
	add a3, s0, a1
	mv a1, t0
	lw a5, 24(a3)
	xor a2, t0, a5
	sltu t1, zero, a2
	bne t1, zero, label1015
	mv a1, a0
.p2align 2
label1015:
	sh2add a3, a1, a1
	slli t0, a3, 4
	mv a3, a5
	add a0, s0, t0
	lw a2, 20(a0)
	bne t1, zero, label1017
	mv a3, a4
.p2align 2
label1017:
	sh2add a5, a3, a3
	slli t0, a5, 4
	add a0, s0, t0
	lw a4, 20(a0)
	mv a0, a2
	xor a5, a2, a4
	sltu t0, zero, a5
	bne t0, zero, label1019
	mv a0, a1
.p2align 2
label1019:
	sh2add a2, a0, a0
	slli t1, a2, 4
	mv a2, a4
	add a1, s0, t1
	lw a5, 16(a1)
	bne t0, zero, label1021
	mv a2, a3
.p2align 2
label1021:
	sh2add a1, a2, a2
	slli t1, a1, 4
	mv a1, a5
	add t0, s0, t1
	lw a4, 16(t0)
	xor a3, a5, a4
	sltu t1, zero, a3
	bne t1, zero, label1023
	mv a1, a0
.p2align 2
label1023:
	sh2add a3, a1, a1
	slli a5, a3, 4
	mv a3, a4
	add a0, s0, a5
	lw t0, 12(a0)
	bne t1, zero, label1025
	mv a3, a2
.p2align 2
label1025:
	sh2add a0, a3, a3
	slli a4, a0, 4
	mv a0, t0
	add t2, s0, a4
	lw a5, 12(t2)
	xor a2, t0, a5
	sltu t1, zero, a2
	bne t1, zero, label1027
	mv a0, a1
.p2align 2
label1027:
	sh2add a2, a0, a0
	slli a1, a2, 4
	mv a2, a5
	add t0, s0, a1
	lw a4, 8(t0)
	bne t1, zero, label1029
	mv a2, a3
.p2align 2
label1029:
	sh2add a5, a2, a2
	slli t1, a5, 4
	add a1, s0, t1
	lw a3, 8(a1)
	mv a1, a4
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1031
	mv a1, a0
.p2align 2
label1031:
	sh2add t2, a1, a1
	mv a0, a3
	slli t1, t2, 4
	add t0, s0, t1
	lw a4, 4(t0)
	bne a5, zero, label1033
	mv a0, a2
.p2align 2
label1033:
	sh2add a5, a0, a0
	slli t1, a5, 4
	add a2, s0, t1
	lw a3, 4(a2)
	mv a2, a4
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1035
	mv a2, a1
.p2align 2
label1035:
	sh2add a4, a2, a2
	slli t1, a4, 4
	mv a4, a3
	add t0, s0, t1
	lw a1, 0(t0)
	bne a5, zero, label1037
	mv a4, a0
.p2align 2
label1037:
	sh2add a5, a4, a4
	mv a0, a1
	slli t0, a5, 4
	add t1, s0, t0
	lw a3, 0(t1)
	bne a1, a3, label1039
	mv a0, a2
.p2align 2
label1039:
	sh2add a3, a0, a0
	slli a2, a3, 4
	add a1, s0, a2
	lw a0, 0(a1)
.p2align 2
label165:
	jal putint
	li a2, 10
	mv a0, a2
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label183
.p2align 2
label148:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label347
	mv s2, a0
	mv s3, zero
	j label180
.p2align 2
label1044:
	mv a1, s3
.p2align 2
label1045:
	li a2, 9
	bleu a3, a2, label673
	mv s2, a0
	mv s3, a1
.p2align 2
label180:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label1045
	j label1044
.p2align 2
label673:
	mv s2, a0
	mv s3, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label352
.p2align 2
label353:
	mv s4, zero
.p2align 2
label177:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s4, s2, a4
	bgeu a1, a2, label153
	mv s2, a0
	j label177
.p2align 2
label153:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label955
	mv s2, s4
.p2align 2
label955:
	li a2, 9
	bleu a1, a2, label361
	mv s3, a0
	mv s4, zero
	j label174
.p2align 2
label1043:
	li a2, 9
	bleu a3, a2, label656
	mv s3, a0
	mv s4, a1
.p2align 2
label174:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label1043
	mv a1, s4
	j label1043
.p2align 2
label656:
	mv s3, a1
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label366
.p2align 2
label367:
	mv s4, a0
	mv s5, zero
	j label158
.p2align 2
label376:
	mv s4, a0
.p2align 2
label158:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, a2, label376
	subw a1, zero, s5
	mv a0, a1
	beq s3, zero, label1065
.p2align 2
label957:
	ld a5, 104(sp)
	sh2add a3, s2, a5
	sh2add a1, a0, a5
	lw a4, 0(a3)
	mv a3, a0
	lw t0, 0(a1)
	slt a2, a4, t0
	bne a2, zero, label959
	mv a3, s2
.p2align 2
label959:
	ld a5, 104(sp)
	mv a1, s2
	sh2add t0, a3, a5
	lw a4, 0(t0)
	bne a2, zero, label961
	mv a1, a0
.p2align 2
label961:
	ld a5, 104(sp)
	sh2add a2, a1, a5
	lw a0, 0(a2)
	ble a4, a0, label163
.p2align 2
label398:
	li a2, 19
	sh2add a4, a3, a3
	slli a5, a4, 4
	add t0, s0, a5
	sh2add t1, a2, t0
	lw a4, 0(t1)
	bne a4, zero, label173
	ld a5, 104(sp)
	addiw a2, a2, -1
	sh2add t0, a3, a5
	lw a4, 0(t0)
	blt a0, a4, label168
	j label643
.p2align 2
label1040:
	mv a4, a3
.p2align 2
label1041:
	mv a3, a4
	addiw a2, a2, -1
	ld a5, 104(sp)
	sh2add t0, a4, a5
	lw a4, 0(t0)
	bge a0, a4, label1068
.p2align 2
label168:
	sh2add a4, a3, a3
	slli a5, a4, 4
	add t0, s0, a5
	sh2add t1, a2, t0
	lw a4, 0(t1)
	beq a4, zero, label171
.p2align 2
label173:
	ld a5, 104(sp)
	sh2add t1, a4, a5
	lw t0, 0(t1)
	ble a0, t0, label1041
	j label1040
.p2align 2
label171:
	ld a5, 104(sp)
	addiw a2, a2, -1
	sh2add t0, a3, a5
	lw a4, 0(t0)
	blt a0, a4, label168
.p2align 2
label643:
	bne a1, a3, label167
.p2align 2
label402:
	mv a0, a3
	j label165
.p2align 2
label1065:
	mv a0, s5
	ld a5, 104(sp)
	sh2add a3, s2, a5
	sh2add a1, s5, a5
	lw a4, 0(a3)
	mv a3, s5
	lw t0, 0(a1)
	slt a2, a4, t0
	bne a2, zero, label959
	mv a3, s2
	sh2add t0, s2, a5
	lw a4, 0(t0)
	mv a1, s5
	sh2add a2, s5, a5
	lw a0, 0(a2)
	bgt a4, a0, label398
	j label163
.p2align 2
label1068:
	beq a1, a3, label402
	j label167
label267:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	li a2, 10
	bltu a0, a2, label281
label1062:
	mv s10, zero
	j label133
label298:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label312
label1063:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label953
	j label1064
label347:
	mv s2, a0
	mv s3, zero
	addiw a0, a0, -48
	li a2, 10
	bltu a0, a2, label353
	j label352
label366:
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label957
	j label957
label361:
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label367
	j label366
label183:
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label352:
	mv s4, zero
	j label153
label163:
	beq a1, a3, label402
	j label167
label235:
	mv s6, zero
	j label116
label204:
	mv s4, zero
	j label105
label222:
	mv s4, zero
	j label110
label199:
	mv s3, zero
	j label99
