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
	mv a2, a0
	mv a3, a1
pcrel90:
	auipc a4, %pcrel_hi(dep)
	sd ra, 0(sp)
	addi a0, a4, %pcrel_lo(pcrel90)
	sd s0, 8(sp)
pcrel91:
	auipc a4, %pcrel_hi(f)
	sh2add a1, a2, a0
	addiw s0, a3, 1
	sd s1, 16(sp)
	addi a0, a4, %pcrel_lo(pcrel91)
	sd s2, 24(sp)
	sh2add a4, a2, a2
	sd s3, 32(sp)
	slli a5, a4, 4
	sw a3, 0(a1)
pcrel92:
	auipc a3, %pcrel_hi(to)
	mv a1, a0
	addi s1, a3, %pcrel_lo(pcrel92)
	add a0, a0, a5
pcrel93:
	auipc a3, %pcrel_hi(next)
	lw a4, 0(a0)
	addi s2, a3, %pcrel_lo(pcrel93)
	beq a4, zero, label4
	mv a3, zero
.p2align 2
label2:
	sh2add a5, a3, a0
	lw a4, 0(a5)
	sh2add t0, a4, a4
	slli a5, t0, 4
	add t1, a1, a5
	sh2add t0, a3, t1
	addiw a3, a3, 1
	sh2add a5, a3, a0
	lw a4, 0(t0)
	sw a4, 0(a5)
	bne a4, zero, label2
label4:
	auipc a1, %pcrel_hi(head)
	addi a0, a1, %pcrel_lo(label4)
	sh2add a2, a2, a0
	li a0, -1
	lw s3, 0(a2)
	beq s3, a0, label7
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
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
.globl main
main:
.p2align 2
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s3, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	addiw a1, a0, -48
pcrel1099:
	auipc a2, %pcrel_hi(to)
	addi s2, a2, %pcrel_lo(pcrel1099)
pcrel1100:
	auipc a2, %pcrel_hi(next)
	addi s3, a2, %pcrel_lo(pcrel1100)
pcrel1101:
	auipc a2, %pcrel_hi(head)
	addi s1, a2, %pcrel_lo(pcrel1101)
pcrel1102:
	auipc a2, %pcrel_hi(f)
	addi a5, a2, %pcrel_lo(pcrel1102)
pcrel1103:
	auipc a2, %pcrel_hi(dep)
	sd a5, 104(sp)
	addi s0, a2, %pcrel_lo(pcrel1103)
	li a2, 9
	bleu a1, a2, label195
	mv s4, a0
	mv s5, zero
.p2align 2
label95:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label913
	mv a2, s5
.p2align 2
label913:
	li a3, 9
	bleu a1, a3, label203
	mv s4, a0
	mv s5, a2
	j label95
label203:
	mv s5, a2
label98:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label208
	mv s4, a0
	mv s6, zero
.p2align 2
label101:
	jal getch
	sh2add a3, s6, s6
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s6, s4, a4
	bgeu a1, a2, label104
	mv s4, a0
	j label101
label104:
	jal getch
	subw a2, zero, s6
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label915
	mv s4, s6
label915:
	li a2, 9
	bleu a1, a2, label226
	mv s5, a0
	mv s6, zero
.p2align 2
label179:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s5, a3, label1019
	mv a2, s6
.p2align 2
label1019:
	li a3, 9
	bleu a1, a3, label672
	mv s5, a0
	mv s6, a2
	j label179
label106:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label232
	j label231
label672:
	mv s6, a2
	j label106
label208:
	mv s6, zero
	j label104
label195:
	mv s5, zero
	j label98
label231:
	mv s7, zero
label112:
	subw a0, zero, s7
	mv s5, a0
	bne s6, zero, label917
	mv s5, s7
label917:
	li a0, 1061109567
	sw a0, 0(s0)
	ble s4, zero, label116
	li a0, 1
.p2align 2
label114:
	sh2add a1, a0, s1
	li a2, -1
	addiw a0, a0, 1
	sw a2, 0(a1)
	bge s4, a0, label114
label116:
	li a1, 1
	beq s4, a1, label117
	mv s6, zero
	li s7, 1
.p2align 2
label154:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label593
	mv s8, a0
	mv s9, zero
	j label176
.p2align 2
label1012:
	mv a0, s11
.p2align 2
label1013:
	sh2add a1, s6, s2
	addiw s7, s7, 1
	sh2add a3, s6, s3
	sw a0, 0(a1)
	ld a5, 104(sp)
	sh2add a0, a0, a0
	slli a1, a0, 4
	add a0, a5, a1
	sh2add a1, s8, s1
	lw a2, 0(a1)
	sw a2, 0(a3)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	bne s4, s7, label154
	j label117
.p2align 2
label639:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1013
	j label1012
.p2align 2
label176:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s8, a3, label1017
	mv a2, s9
.p2align 2
label1017:
	li a3, 9
	bleu a1, a3, label664
	mv s8, a0
	mv s9, a2
	j label176
label598:
	mv s10, zero
	j label160
.p2align 2
label599:
	mv s10, zero
.p2align 2
label173:
	jal getch
	sh2add a3, s10, s10
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	li a2, 10
	addw s10, s8, a4
	bgeu a1, a2, label160
	mv s8, a0
	j label173
.p2align 2
label664:
	mv s8, a0
	mv s9, a2
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label599
	j label598
.p2align 2
label160:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1011
	mv s8, s10
.p2align 2
label1011:
	li a2, 9
	bleu a1, a2, label607
	mv s10, a0
	mv s9, zero
.p2align 2
label170:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s10, a3, label1015
	mv a2, s9
.p2align 2
label1015:
	li a3, 9
	bleu a1, a3, label647
	mv s10, a0
	mv s9, a2
	j label170
label612:
	mv s11, zero
	j label165
.p2align 2
label613:
	mv s10, a0
	mv s11, zero
	j label167
label165:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1013
	j label1012
.p2align 2
label167:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s11, s10, a4
	bgeu a1, a2, label639
	mv s10, a0
	j label167
.p2align 2
label647:
	mv s9, a2
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label613
	j label612
label117:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label153
	mv s1, s5
.p2align 2
label118:
	jal getch
	li a1, 9
	mv s2, a0
	addiw a0, a0, -48
	bleu a0, a1, label268
	mv s3, zero
	j label120
label290:
	mv s3, zero
	j label131
label1035:
	mv s5, zero
	j label137
label131:
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label304
	j label1035
label137:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label925
	mv a1, s5
.p2align 2
label925:
	sh2add a0, a1, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label927
	mv a0, a1
.p2align 2
label927:
	mv a3, a1
	bne a2, zero, label929
	mv a3, s2
.p2align 2
label929:
	li a1, 19
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label146
label142:
	bne a0, a2, label145
.p2align 2
label339:
	mv a0, a2
.p2align 2
label143:
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label118
label153:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
label120:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s2, a3, label919
	mv a2, s3
.p2align 2
label919:
	li a3, 9
	bleu a1, a3, label276
	mv s2, a0
	mv s3, a2
	j label120
.p2align 2
label145:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	sh2add a4, a0, a0
	slli a1, a3, 4
	add a3, a5, a1
	lw a1, 76(a3)
	slli a3, a4, 4
	add a5, a5, a3
	mv a3, a1
	lw a4, 76(a5)
	xor t1, a1, a4
	sltu t0, zero, t1
	bne t0, zero, label931
	mv a3, a2
.p2align 2
label931:
	sh2add a2, a3, a3
	ld a5, 104(sp)
	slli a1, a2, 4
	mv a2, a4
	add t1, a5, a1
	lw a1, 72(t1)
	bne t0, zero, label933
	mv a2, a0
.p2align 2
label933:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a0, a4, 4
	add t0, a5, a0
	lw a4, 72(t0)
	xor a0, a1, a4
	sltu t0, zero, a0
	bne t0, zero, label935
	mv a1, a3
.p2align 2
label935:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	mv a3, a4
	add t1, a5, a0
	lw a0, 68(t1)
	bne t0, zero, label937
	mv a3, a2
.p2align 2
label937:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 68(a4)
	xor a5, a0, a2
	sltu a4, zero, a5
	bne a4, zero, label939
	mv a0, a1
.p2align 2
label939:
	sh2add t0, a0, a0
	ld a5, 104(sp)
	slli a1, t0, 4
	add t0, a5, a1
	lw a1, 64(t0)
	bne a4, zero, label941
	mv a2, a3
.p2align 2
label941:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 64(a4)
	xor a5, a1, a3
	sltu a4, zero, a5
	bne a4, zero, label943
	mv a1, a0
.p2align 2
label943:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a0, t0, 4
	add t0, a5, a0
	lw a0, 60(t0)
	bne a4, zero, label945
	mv a3, a2
.p2align 2
label945:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 60(a4)
	xor a5, a0, a2
	sltu a4, zero, a5
	bne a4, zero, label947
	mv a0, a1
.p2align 2
label947:
	sh2add t0, a0, a0
	ld a5, 104(sp)
	slli a1, t0, 4
	add t0, a5, a1
	lw a1, 56(t0)
	bne a4, zero, label949
	mv a2, a3
.p2align 2
label949:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 56(a4)
	xor a5, a1, a3
	sltu a4, zero, a5
	bne a4, zero, label951
	mv a1, a0
.p2align 2
label951:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a0, t0, 4
	add t0, a5, a0
	lw a0, 52(t0)
	bne a4, zero, label953
	mv a3, a2
.p2align 2
label953:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 52(a4)
	xor a5, a0, a2
	sltu a4, zero, a5
	bne a4, zero, label955
	mv a0, a1
.p2align 2
label955:
	sh2add t0, a0, a0
	ld a5, 104(sp)
	slli a1, t0, 4
	add t0, a5, a1
	lw a1, 48(t0)
	bne a4, zero, label957
	mv a2, a3
.p2align 2
label957:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 48(a4)
	xor a5, a1, a3
	sltu a4, zero, a5
	bne a4, zero, label959
	mv a1, a0
.p2align 2
label959:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a0, t0, 4
	add t0, a5, a0
	lw a0, 44(t0)
	bne a4, zero, label961
	mv a3, a2
.p2align 2
label961:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 44(a4)
	xor a5, a0, a2
	sltu a4, zero, a5
	bne a4, zero, label963
	mv a0, a1
.p2align 2
label963:
	sh2add t0, a0, a0
	ld a5, 104(sp)
	slli a1, t0, 4
	add t0, a5, a1
	lw a1, 40(t0)
	bne a4, zero, label965
	mv a2, a3
.p2align 2
label965:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add t0, a5, a3
	lw a3, 40(t0)
	xor a4, a1, a3
	sltu t0, zero, a4
	bne t0, zero, label967
	mv a1, a0
.p2align 2
label967:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a0, a4, 4
	mv a4, a3
	add t1, a5, a0
	lw a0, 36(t1)
	bne t0, zero, label969
	mv a4, a2
.p2align 2
label969:
	sh2add a3, a4, a4
	ld a5, 104(sp)
	slli a2, a3, 4
	add a3, a5, a2
	lw a2, 36(a3)
	xor a5, a0, a2
	sltu t0, zero, a5
	bne t0, zero, label971
	mv a0, a1
.p2align 2
label971:
	sh2add a3, a0, a0
	ld a5, 104(sp)
	slli a1, a3, 4
	mv a3, a2
	add t1, a5, a1
	lw a1, 32(t1)
	bne t0, zero, label973
	mv a3, a4
.p2align 2
label973:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 32(a4)
	xor a5, a1, a2
	sltu a4, zero, a5
	bne a4, zero, label975
	mv a1, a0
.p2align 2
label975:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a0, t0, 4
	add t0, a5, a0
	lw a0, 28(t0)
	bne a4, zero, label977
	mv a2, a3
.p2align 2
label977:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 28(a4)
	xor a5, a0, a3
	sltu t0, zero, a5
	bne t0, zero, label979
	mv a0, a1
.p2align 2
label979:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a1, a4, 4
	mv a4, a3
	add t1, a5, a1
	lw a1, 24(t1)
	bne t0, zero, label981
	mv a4, a2
.p2align 2
label981:
	sh2add a3, a4, a4
	ld a5, 104(sp)
	slli a2, a3, 4
	add t0, a5, a2
	lw a2, 24(t0)
	xor a3, a1, a2
	sltu t0, zero, a3
	bne t0, zero, label983
	mv a1, a0
.p2align 2
label983:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	mv a3, a2
	add t1, a5, a0
	lw a0, 20(t1)
	bne t0, zero, label985
	mv a3, a4
.p2align 2
label985:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 20(a4)
	xor a5, a0, a2
	sltu a4, zero, a5
	bne a4, zero, label987
	mv a0, a1
.p2align 2
label987:
	sh2add t0, a0, a0
	ld a5, 104(sp)
	slli a1, t0, 4
	add t0, a5, a1
	lw a1, 16(t0)
	bne a4, zero, label989
	mv a2, a3
.p2align 2
label989:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 16(a4)
	xor a5, a1, a3
	sltu a4, zero, a5
	bne a4, zero, label991
	mv a1, a0
.p2align 2
label991:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a0, t0, 4
	add t0, a5, a0
	lw a0, 12(t0)
	bne a4, zero, label993
	mv a3, a2
.p2align 2
label993:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 12(a4)
	xor a5, a0, a2
	sltu a4, zero, a5
	bne a4, zero, label995
	mv a0, a1
.p2align 2
label995:
	sh2add t0, a0, a0
	ld a5, 104(sp)
	slli a1, t0, 4
	add t0, a5, a1
	lw a1, 8(t0)
	bne a4, zero, label997
	mv a2, a3
.p2align 2
label997:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 8(a4)
	xor a5, a1, a3
	sltu t0, zero, a5
	bne t0, zero, label999
	mv a1, a0
.p2align 2
label999:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a0, a4, 4
	add t1, a5, a0
	mv a0, a3
	lw a4, 4(t1)
	bne t0, zero, label1001
	mv a0, a2
.p2align 2
label1001:
	sh2add a3, a0, a0
	ld a5, 104(sp)
	slli a2, a3, 4
	add t0, a5, a2
	mv a2, a4
	lw a3, 4(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label1003
	mv a2, a1
.p2align 2
label1003:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a1, a4, 4
	add a4, a5, a1
	lw a1, 0(a4)
	bne t0, zero, label1005
	mv a3, a0
.p2align 2
label1005:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a0, a4, 4
	add a4, a5, a0
	mv a0, a1
	lw a3, 0(a4)
	bne a1, a3, label1007
	mv a0, a2
.p2align 2
label1007:
	sh2add a1, a0, a0
	ld a5, 104(sp)
	slli a0, a1, 4
	add a1, a5, a0
	lw a0, 0(a1)
	j label143
.p2align 2
label146:
	sh2add t0, a2, a2
	ld a5, 104(sp)
	slli a4, t0, 4
	add t1, a5, a4
	sh2add t0, a1, t1
	lw a4, 0(t0)
	bne a4, zero, label147
	mv a5, zero
	mv a3, a4
	mv a3, a2
	addiw a1, a1, -1
	sh2add a3, a2, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label146
	j label1044
.p2align 2
label147:
	sh2add a5, a4, s0
	lw t0, 0(a5)
	slt a3, t0, a3
	xori a5, a3, 1
	mv a3, a4
	bne a5, zero, label1009
	mv a3, a2
.p2align 2
label1009:
	addiw a1, a1, -1
	mv a2, a3
	sh2add a3, a3, s0
	sh2add a5, a0, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label146
	beq a0, a2, label339
	j label145
.p2align 2
label276:
	mv s2, a0
	mv s3, a2
	addiw a0, a0, -48
	li a1, 10
	bgeu a0, a1, label1034
.p2align 2
label282:
	mv s4, zero
.p2align 2
label150:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label126
	mv s2, a0
	j label150
.p2align 2
label126:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label921
	mv s2, s4
.p2align 2
label921:
	li a2, 9
	bleu a1, a2, label290
	mv s4, a0
	mv s3, zero
.p2align 2
label128:
	jal getch
	li a2, 1
	li a3, 45
	addiw a1, a0, -48
	beq s4, a3, label923
	mv a2, s3
.p2align 2
label923:
	li a3, 9
	bleu a1, a3, label298
	mv s4, a0
	mv s3, a2
	j label128
.p2align 2
label298:
	mv s3, a2
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label1035
.p2align 2
label304:
	mv s4, a0
	mv s5, zero
.p2align 2
label134:
	jal getch
	sh2add a4, s5, s5
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	li a2, 10
	addw s5, s4, a3
	bgeu a1, a2, label312
	mv s4, a0
	j label134
.p2align 2
label312:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label925
	mv a1, s5
	sh2add a0, s5, s0
	sh2add a2, s2, s0
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label927
	mv a0, s5
	mv a3, s5
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add a3, s2, s0
	sh2add a5, s5, s0
	lw a4, 0(a3)
	lw a3, 0(a5)
	bgt a4, a3, label146
	j label142
.p2align 2
label1044:
	beq a0, a2, label339
	j label145
label593:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	li a1, 10
	bltu a0, a1, label599
	j label598
label607:
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label613
	j label612
label268:
	mv s3, zero
	j label123
label1034:
	mv s4, zero
	j label126
label123:
	addiw a0, s2, -48
	li a1, 10
	bltu a0, a1, label282
	j label1034
label232:
	mv s5, a0
	mv s7, zero
.p2align 2
label109:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s7, s5, a3
	bgeu a1, a2, label112
	mv s5, a0
	j label109
label226:
	mv s6, zero
	j label106
