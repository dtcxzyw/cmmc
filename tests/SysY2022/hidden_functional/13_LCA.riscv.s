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
	li s0, 10
	addiw a1, a0, -48
	li s6, -1
pcrel1136:
	auipc a3, %pcrel_hi(to)
pcrel1137:
	auipc a2, %pcrel_hi(next)
pcrel1138:
	auipc s7, %pcrel_hi(dep)
	addi s5, a3, %pcrel_lo(pcrel1136)
	addi s1, a2, %pcrel_lo(pcrel1137)
	addi a5, s7, %pcrel_lo(pcrel1138)
pcrel1139:
	auipc a3, %pcrel_hi(head)
pcrel1140:
	auipc a2, %pcrel_hi(f)
	addi s2, a3, %pcrel_lo(pcrel1139)
	addi t0, a2, %pcrel_lo(pcrel1140)
	li a2, 9
	sd t0, 104(sp)
	sd a5, 112(sp)
	bleu a1, a2, label206
	mv s3, a0
	mv s4, zero
.p2align 2
label190:
	jal getch
	li a1, 1
	li a2, 45
	addiw a3, a0, -48
	beq s3, a2, label1045
	mv a1, s4
.p2align 2
label1045:
	li a2, 9
	bleu a3, a2, label689
	mv s3, a0
	mv s4, a1
	j label190
label100:
	addiw a1, a0, -48
	bgeu a1, s0, label211
	mv s3, a0
	mv s8, zero
.p2align 2
label187:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s8, s3, a4
	bgeu a1, s0, label103
	mv s3, a0
	j label187
label689:
	mv s4, a1
	j label100
label103:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s3, a2
	bne s4, zero, label938
	mv s3, s8
label938:
	li a2, 9
	bleu a1, a2, label220
	mv s4, a0
	mv s8, zero
.p2align 2
label105:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s4, a2, label940
	mv a1, s8
.p2align 2
label940:
	li a2, 9
	bleu a3, a2, label228
	mv s4, a0
	mv s8, a1
	j label105
label228:
	mv s8, a1
label108:
	addiw a2, a0, -48
	bgeu a2, s0, label233
	mv s4, a0
	mv s9, zero
.p2align 2
label111:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s9, s4, a3
	bgeu a1, s0, label114
	mv s4, a0
	j label111
label114:
	subw a0, zero, s9
	mv s4, a0
	bne s8, zero, label942
	mv s4, s9
label942:
	lui a1, 259060
	addiw a0, a1, -193
pcrel1141:
	auipc s7, %pcrel_hi(dep)
	sw a0, %pcrel_lo(pcrel1141)(s7)
	ble s3, zero, label121
	addi a0, s2, 4
	li a1, 1
.p2align 2
label117:
	sw s6, 0(a0)
	addiw a1, a1, 1
	blt s3, a1, label121
	addi a0, a0, 4
	j label117
label121:
	li a0, 1
	beq s3, a0, label150
	mv s6, zero
	li s7, 1
.p2align 2
label123:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label266
	mv s8, a0
	mv s9, zero
	j label147
.p2align 2
label946:
	mv a0, s11
.p2align 2
label947:
	sw a0, 0(s5)
	sh2add a1, a0, a0
	addiw s7, s7, 1
	slli a3, a1, 4
	ld t0, 104(sp)
	sh2add a1, s8, s2
	add a0, t0, a3
	lw a2, 0(a1)
	sh2add a3, s6, s1
	sw a2, 0(a3)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	beq s3, s7, label150
	addi s5, s5, 4
	j label123
.p2align 2
label311:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label947
	j label946
.p2align 2
label147:
	jal getch
	li a1, 1
	li a2, 45
	addiw a3, a0, -48
	beq s8, a2, label951
	mv a1, s9
.p2align 2
label951:
	li a2, 9
	bleu a3, a2, label336
	mv s8, a0
	mv s9, a1
	j label147
label271:
	mv s10, zero
	j label130
.p2align 2
label272:
	mv s10, zero
	j label144
.p2align 2
label336:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label272
	j label271
.p2align 2
label144:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s10, s8, a2
	bgeu a1, s0, label130
	mv s8, a0
	j label144
.p2align 2
label130:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label945
	mv s8, s10
.p2align 2
label945:
	li a2, 9
	bleu a1, a2, label280
	mv s9, a0
	mv s10, zero
.p2align 2
label141:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label949
	mv a1, s10
.p2align 2
label949:
	li a2, 9
	bleu a3, a2, label319
	mv s9, a0
	mv s10, a1
	j label141
label285:
	mv s11, zero
	j label135
.p2align 2
label286:
	mv s10, a0
	mv s11, zero
	j label138
label135:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label947
	j label946
.p2align 2
label319:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label286
	j label285
.p2align 2
label138:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bgeu a1, s0, label311
	mv s10, a0
	j label138
label266:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label272
	j label271
label280:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label286
	j label285
label150:
	li a0, 1
	li a1, 1
	jal tree
	beq s4, zero, label186
	mv s1, s4
.p2align 2
label151:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label347
	j label346
.p2align 2
label171:
	jal putint
	mv a0, s0
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label151
	j label186
.p2align 2
label173:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	sh2add a5, a1, a1
	slli a0, a4, 4
	slli t2, a5, 4
	add a2, t0, a0
	lw a4, 76(a2)
	add a2, t0, t2
	lw a0, 76(a2)
	mv a2, a4
	xor t1, a4, a0
	sltu a5, zero, t1
	bne a5, zero, label963
	mv a2, a3
.p2align 2
label963:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	mv a3, a0
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 72(t2)
	bne a5, zero, label965
	mv a3, a1
.p2align 2
label965:
	sh2add a5, a3, a3
	ld t0, 104(sp)
	slli a0, a5, 4
	add t2, t0, a0
	mv a0, a4
	lw a1, 72(t2)
	xor t1, a4, a1
	sltu a5, zero, t1
	bne a5, zero, label967
	mv a0, a2
.p2align 2
label967:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	slli t1, a4, 4
	mv a4, a1
	add t2, t0, t1
	lw a2, 68(t2)
	bne a5, zero, label969
	mv a4, a3
.p2align 2
label969:
	sh2add t1, a4, a4
	ld t0, 104(sp)
	slli a1, t1, 4
	add a5, t0, a1
	mv a1, a2
	lw a3, 68(a5)
	xor t2, a2, a3
	sltu t1, zero, t2
	bne t1, zero, label971
	mv a1, a0
.p2align 2
label971:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	mv a2, a3
	add t2, t0, a0
	lw a5, 64(t2)
	bne t1, zero, label973
	mv a2, a4
.p2align 2
label973:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	slli a0, a3, 4
	add t2, t0, a0
	mv a0, a5
	lw a3, 64(t2)
	xor a4, a5, a3
	sltu t1, zero, a4
	bne t1, zero, label975
	mv a0, a1
.p2align 2
label975:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	mv a1, a3
	slli a5, a4, 4
	add t2, t0, a5
	lw a4, 60(t2)
	bne t1, zero, label977
	mv a1, a2
.p2align 2
label977:
	sh2add a3, a1, a1
	ld t0, 104(sp)
	slli a2, a3, 4
	add t2, t0, a2
	mv a2, a4
	lw a3, 60(t2)
	xor a5, a4, a3
	sltu t1, zero, a5
	bne t1, zero, label979
	mv a2, a0
.p2align 2
label979:
	sh2add a5, a2, a2
	ld t0, 104(sp)
	mv a0, a3
	slli a4, a5, 4
	add t2, t0, a4
	lw a5, 56(t2)
	bne t1, zero, label981
	mv a0, a1
.p2align 2
label981:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	add a4, t0, a1
	lw a3, 56(a4)
	mv a4, a5
	xor t2, a5, a3
	sltu t1, zero, t2
	bne t1, zero, label983
	mv a4, a2
.p2align 2
label983:
	sh2add a1, a4, a4
	ld t0, 104(sp)
	slli a2, a1, 4
	mv a1, a3
	add t2, t0, a2
	lw a5, 52(t2)
	bne t1, zero, label985
	mv a1, a0
.p2align 2
label985:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	add a3, t0, a0
	lw a2, 52(a3)
	mv a3, a5
	xor t2, a5, a2
	sltu t1, zero, t2
	bne t1, zero, label987
	mv a3, a4
.p2align 2
label987:
	sh2add a0, a3, a3
	ld t0, 104(sp)
	slli a4, a0, 4
	mv a0, a2
	add t2, t0, a4
	lw a5, 48(t2)
	bne t1, zero, label989
	mv a0, a1
.p2align 2
label989:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	slli a1, a4, 4
	add a2, t0, a1
	lw a4, 48(a2)
	mv a2, a5
	xor t2, a5, a4
	sltu t1, zero, t2
	bne t1, zero, label991
	mv a2, a3
.p2align 2
label991:
	sh2add a1, a2, a2
	ld t0, 104(sp)
	slli a5, a1, 4
	mv a1, a4
	add t2, t0, a5
	lw a3, 44(t2)
	bne t1, zero, label993
	mv a1, a0
.p2align 2
label993:
	sh2add a4, a1, a1
	ld t0, 104(sp)
	slli a0, a4, 4
	add t2, t0, a0
	mv a0, a3
	lw a5, 44(t2)
	xor a4, a3, a5
	sltu t1, zero, a4
	bne t1, zero, label995
	mv a0, a2
.p2align 2
label995:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	mv a2, a5
	slli a3, a4, 4
	add t2, t0, a3
	lw a4, 40(t2)
	bne t1, zero, label997
	mv a2, a1
.p2align 2
label997:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	slli a1, a3, 4
	add a5, t0, a1
	mv a1, a4
	lw a3, 40(a5)
	xor t2, a4, a3
	sltu t1, zero, t2
	bne t1, zero, label999
	mv a1, a0
.p2align 2
label999:
	sh2add a5, a1, a1
	ld t0, 104(sp)
	mv a0, a3
	slli a4, a5, 4
	add t2, t0, a4
	lw a5, 36(t2)
	bne t1, zero, label1001
	mv a0, a2
.p2align 2
label1001:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a2, a3, 4
	add t2, t0, a2
	mv a2, a5
	lw a4, 36(t2)
	xor a3, a5, a4
	sltu t1, zero, a3
	bne t1, zero, label1003
	mv a2, a1
.p2align 2
label1003:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	slli a5, a3, 4
	mv a3, a4
	add t2, t0, a5
	lw a1, 32(t2)
	bne t1, zero, label1005
	mv a3, a0
.p2align 2
label1005:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a0, a4, 4
	add t2, t0, a0
	mv a0, a1
	lw a4, 32(t2)
	xor a5, a1, a4
	sltu t1, zero, a5
	bne t1, zero, label1007
	mv a0, a2
.p2align 2
label1007:
	sh2add a1, a0, a0
	ld t0, 104(sp)
	slli a2, a1, 4
	mv a1, a4
	add t2, t0, a2
	lw a5, 28(t2)
	bne t1, zero, label1009
	mv a1, a3
.p2align 2
label1009:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a3, a2, 4
	add t2, t0, a3
	mv a3, a5
	lw a2, 28(t2)
	xor a4, a5, a2
	sltu t1, zero, a4
	bne t1, zero, label1011
	mv a3, a0
.p2align 2
label1011:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	mv a0, a2
	slli a5, a4, 4
	add t2, t0, a5
	lw a4, 24(t2)
	bne t1, zero, label1013
	mv a0, a1
.p2align 2
label1013:
	sh2add a5, a0, a0
	ld t0, 104(sp)
	slli a2, a5, 4
	add t2, t0, a2
	mv a2, a4
	lw a1, 24(t2)
	xor t1, a4, a1
	sltu a5, zero, t1
	bne a5, zero, label1015
	mv a2, a3
.p2align 2
label1015:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	mv a3, a1
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 20(t2)
	bne a5, zero, label1017
	mv a3, a0
.p2align 2
label1017:
	sh2add a5, a3, a3
	ld t0, 104(sp)
	slli a1, a5, 4
	add t2, t0, a1
	mv a1, a4
	lw a0, 20(t2)
	xor t1, a4, a0
	sltu a5, zero, t1
	bne a5, zero, label1019
	mv a1, a2
.p2align 2
label1019:
	sh2add a4, a1, a1
	ld t0, 104(sp)
	mv a2, a0
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 16(t2)
	bne a5, zero, label1021
	mv a2, a3
.p2align 2
label1021:
	sh2add a5, a2, a2
	ld t0, 104(sp)
	slli a0, a5, 4
	add t2, t0, a0
	mv a0, a4
	lw a3, 16(t2)
	xor t1, a4, a3
	sltu a5, zero, t1
	bne a5, zero, label1023
	mv a0, a1
.p2align 2
label1023:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	mv a1, a3
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 12(t2)
	bne a5, zero, label1025
	mv a1, a2
.p2align 2
label1025:
	sh2add a3, a1, a1
	ld t0, 104(sp)
	slli a2, a3, 4
	add t2, t0, a2
	mv a2, a4
	lw a3, 12(t2)
	xor t1, a4, a3
	sltu a5, zero, t1
	bne a5, zero, label1027
	mv a2, a0
.p2align 2
label1027:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	mv a0, a3
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 8(t2)
	bne a5, zero, label1029
	mv a0, a1
.p2align 2
label1029:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	add t2, t0, a1
	mv a1, a4
	lw a3, 8(t2)
	xor t1, a4, a3
	sltu a5, zero, t1
	bne a5, zero, label1031
	mv a1, a2
.p2align 2
label1031:
	sh2add a4, a1, a1
	ld t0, 104(sp)
	mv a2, a3
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 4(t2)
	bne a5, zero, label1033
	mv a2, a0
.p2align 2
label1033:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	slli a0, a3, 4
	add t1, t0, a0
	mv a0, a4
	lw a3, 4(t1)
	xor t2, a4, a3
	sltu a5, zero, t2
	bne a5, zero, label1035
	mv a0, a1
.p2align 2
label1035:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	slli t1, a4, 4
	mv a4, a3
	add t2, t0, t1
	lw a1, 0(t2)
	bne a5, zero, label1037
	mv a4, a2
.p2align 2
label1037:
	sh2add a3, a4, a4
	ld t0, 104(sp)
	mv a2, a1
	slli a5, a3, 4
	add a4, t0, a5
	lw a3, 0(a4)
	bne a1, a3, label1039
	mv a2, a0
.p2align 2
label1039:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	slli a1, a3, 4
	add a2, t0, a1
	lw a0, 0(a2)
	j label171
.p2align 2
label177:
	ld a5, 112(sp)
	addiw a2, a2, -1
	sh2add t0, a3, a5
	lw a4, 0(t0)
	blt a0, a4, label174
.p2align 2
label650:
	beq a1, a3, label409
	j label173
label360:
	mv s3, zero
	j label161
label1064:
	mv s5, zero
	j label167
label161:
	addiw a2, a0, -48
	bltu a2, s0, label374
	j label1064
label167:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label957
	mv a0, s5
.p2align 2
label957:
	ld a5, 112(sp)
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
	ld a5, 112(sp)
	mv a1, s2
	sh2add t0, a3, a5
	lw a4, 0(t0)
	bne a2, zero, label961
	mv a1, a0
.p2align 2
label961:
	ld a5, 112(sp)
	sh2add a2, a1, a5
	lw a0, 0(a2)
	ble a4, a0, label169
.p2align 2
label405:
	li a2, 19
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a5, a4, 4
	add t1, t0, a5
	sh2add t2, a2, t1
	lw a4, 0(t2)
	bne a4, zero, label179
	j label1066
.p2align 2
label409:
	mv a0, a3
	j label171
.p2align 2
label174:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a5, a4, 4
	add t1, t0, a5
	sh2add t2, a2, t1
	lw a4, 0(t2)
	beq a4, zero, label177
.p2align 2
label179:
	ld a5, 112(sp)
	mv t0, a4
	sh2add t2, a4, a5
	lw t1, 0(t2)
	ble a0, t1, label1041
	mv t0, a3
.p2align 2
label1041:
	mv a3, t0
	addiw a2, a2, -1
	ld a5, 112(sp)
	sh2add t0, t0, a5
	lw a4, 0(t0)
	blt a0, a4, label174
	beq a1, a3, label409
	j label173
.p2align 2
label368:
	mv s3, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1064
.p2align 2
label374:
	mv s4, a0
	mv s5, zero
.p2align 2
label164:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	addi a3, a4, -48
	addw s5, s4, a3
	bgeu a1, s0, label382
	mv s4, a0
	j label164
.p2align 2
label382:
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label957
	mv a0, s5
	ld a5, 112(sp)
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
	bgt a4, a0, label405
	j label169
label186:
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
label346:
	mv s3, zero
	addiw a1, a0, -48
	bltu a1, s0, label352
label351:
	mv s4, zero
	j label156
.p2align 2
label352:
	mv s2, a0
	mv s4, zero
	j label180
.p2align 2
label672:
	mv s3, a1
	addiw a1, a0, -48
	bltu a1, s0, label352
	j label351
.p2align 2
label180:
	jal getch
	sh2add a3, s4, s4
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s4, s2, a4
	bgeu a1, s0, label156
	mv s2, a0
	j label180
.p2align 2
label156:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label953
	mv s2, s4
.p2align 2
label953:
	li a2, 9
	bleu a1, a2, label360
	mv s3, a0
	mv s4, zero
.p2align 2
label158:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label955
	mv a1, s4
.p2align 2
label955:
	li a2, 9
	bleu a3, a2, label368
	mv s3, a0
	mv s4, a1
	j label158
label169:
	beq a1, a3, label409
	j label173
.p2align 2
label1066:
	ld a5, 112(sp)
	addiw a2, a2, -1
	sh2add t0, a3, a5
	lw a4, 0(t0)
	blt a0, a4, label174
	j label650
label233:
	mv s9, zero
	j label114
label211:
	mv s8, zero
	j label103
.p2align 2
label347:
	mv s2, a0
	mv s3, zero
.p2align 2
label183:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label1043
	mv a1, s3
.p2align 2
label1043:
	li a2, 9
	bleu a3, a2, label672
	mv s2, a0
	mv s3, a1
	j label183
label206:
	mv s4, zero
	j label100
label220:
	mv s8, zero
	j label108
