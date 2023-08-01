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
	mv a3, a1
pcrel92:
	auipc a4, %pcrel_hi(dep)
	sd ra, 0(sp)
	addi a1, a4, %pcrel_lo(pcrel92)
	sd s0, 8(sp)
	sh2add a4, a0, a0
	sh2add a2, a0, a1
	addiw s0, a3, 1
	sd s1, 16(sp)
	slli a5, a4, 4
pcrel93:
	auipc a1, %pcrel_hi(f)
	sd s2, 24(sp)
	sd s3, 32(sp)
	li s3, -1
	sd s4, 40(sp)
	sw a3, 0(a2)
pcrel94:
	auipc a3, %pcrel_hi(next)
	addi a2, a1, %pcrel_lo(pcrel93)
	addi s2, a3, %pcrel_lo(pcrel94)
	add a1, a2, a5
pcrel95:
	auipc a5, %pcrel_hi(to)
	lw a4, 0(a1)
	addi s1, a5, %pcrel_lo(pcrel95)
	beq a4, zero, label4
	mv a3, zero
.p2align 2
label2:
	sh2add a5, a3, a1
	lw a4, 0(a5)
	sh2add t0, a4, a4
	slli a5, t0, 4
	add t1, a2, a5
	sh2add t0, a3, t1
	addiw a3, a3, 1
	sh2add a5, a3, a1
	lw a4, 0(t0)
	sw a4, 0(a5)
	bne a4, zero, label2
label4:
	auipc a2, %pcrel_hi(head)
	addi a1, a2, %pcrel_lo(label4)
	sh2add a0, a0, a1
	lw s4, 0(a0)
	beq s4, s3, label7
.p2align 2
label5:
	sh2add a1, s4, s1
	lw a0, 0(a1)
	mv a1, s0
	jal tree
	sh2add a0, s4, s2
	lw s4, 0(a0)
	bne s4, s3, label5
label7:
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
	sd s2, 8(sp)
	sd s3, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s7, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li s6, -1
	li s0, 10
pcrel1107:
	auipc a2, %pcrel_hi(to)
pcrel1108:
	auipc a4, %pcrel_hi(next)
pcrel1109:
	auipc a3, %pcrel_hi(head)
	addiw a1, a0, -48
pcrel1110:
	auipc s7, %pcrel_hi(dep)
	addi s2, a2, %pcrel_lo(pcrel1107)
	addi s3, a4, %pcrel_lo(pcrel1108)
	addi s1, a3, %pcrel_lo(pcrel1109)
pcrel1111:
	auipc a2, %pcrel_hi(f)
	addi a4, s7, %pcrel_lo(pcrel1110)
	addi a5, a2, %pcrel_lo(pcrel1111)
	li a2, 9
	sd a5, 104(sp)
	sd a4, 112(sp)
	bleu a1, a2, label197
	mv s4, a0
	mv s5, zero
.p2align 2
label97:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s4, a2, label923
	mv a1, s5
.p2align 2
label923:
	li a2, 9
	bleu a3, a2, label205
	mv s4, a0
	mv s5, a1
	j label97
label205:
	mv s5, a1
label100:
	addiw a1, a0, -48
	bgeu a1, s0, label210
	mv s4, a0
	mv s8, zero
.p2align 2
label103:
	jal getch
	sh2add a2, s8, s8
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s8, s4, a4
	bgeu a1, s0, label106
	mv s4, a0
	j label103
label106:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label925
	mv s4, s8
label925:
	li a2, 9
	bleu a1, a2, label228
	mv s5, a0
	mv s8, zero
.p2align 2
label181:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s5, a2, label1029
	mv a1, s8
.p2align 2
label1029:
	li a2, 9
	bleu a3, a2, label674
	mv s5, a0
	mv s8, a1
	j label181
label108:
	addiw a1, a0, -48
	bgeu a1, s0, label233
	mv s5, a0
	mv s9, zero
.p2align 2
label111:
	jal getch
	sh2add a2, s9, s9
	addiw a1, a0, -48
	slliw a3, a2, 1
	addi a4, a3, -48
	addw s9, s5, a4
	bgeu a1, s0, label114
	mv s5, a0
	j label111
label674:
	mv s8, a1
	j label108
label114:
	subw a0, zero, s9
	mv s5, a0
	bne s8, zero, label927
	mv s5, s9
label927:
	li a0, 1061109567
pcrel1112:
	auipc s7, %pcrel_hi(dep)
	sw a0, %pcrel_lo(pcrel1112)(s7)
	ble s4, zero, label118
	li a0, 1
.p2align 2
label116:
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw s6, 0(a1)
	bge s4, a0, label116
label118:
	li a1, 1
	beq s4, a1, label119
	mv s6, zero
	li s7, 1
.p2align 2
label156:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label596
	j label595
.p2align 2
label1022:
	mv a0, s11
.p2align 2
label1023:
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
	bne s4, s7, label156
	j label119
.p2align 2
label641:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1023
	j label1022
label595:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label601
label600:
	mv s10, zero
	j label162
.p2align 2
label601:
	mv s10, zero
	j label175
.p2align 2
label666:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label601
	j label600
.p2align 2
label175:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s0, label162
	mv s8, a0
	j label175
.p2align 2
label162:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1021
	mv s8, s10
.p2align 2
label1021:
	li a2, 9
	bleu a1, a2, label609
	mv s10, a0
	mv s9, zero
.p2align 2
label172:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s10, a2, label1025
	mv a1, s9
.p2align 2
label1025:
	li a2, 9
	bleu a3, a2, label649
	mv s10, a0
	mv s9, a1
	j label172
label614:
	mv s11, zero
	j label167
.p2align 2
label615:
	mv s10, a0
	mv s11, zero
	j label169
label167:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label1023
	j label1022
.p2align 2
label649:
	mv s9, a1
	addiw a1, a0, -48
	bltu a1, s0, label615
	j label614
.p2align 2
label169:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s11, s10, a2
	bgeu a1, s0, label641
	mv s10, a0
	j label169
label609:
	mv s9, zero
	addiw a1, a0, -48
	bltu a1, s0, label615
	j label614
label119:
	li a0, 1
	li a1, 1
	jal tree
	bne s5, zero, label265
	j label155
label228:
	mv s8, zero
	j label108
label155:
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s7, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
label265:
	mv s1, s5
.p2align 2
label120:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bgtu a1, a2, label271
	j label270
.p2align 2
label341:
	mv a0, a2
.p2align 2
label145:
	jal putint
	mv a0, s0
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label120
	j label155
.p2align 2
label1048:
	beq a0, a2, label341
.p2align 2
label147:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	sh2add t0, a0, a0
	slli a1, a3, 4
	slli t1, t0, 4
	add a3, a5, a1
	add a4, a5, t1
	lw a1, 76(a3)
	lw a3, 76(a4)
	xor a5, a1, a3
	sltu t0, zero, a5
	bne t0, zero, label941
	mv a1, a2
.p2align 2
label941:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a2, a4, 4
	add t1, a5, a2
	mv a2, a3
	lw a4, 72(t1)
	bne t0, zero, label943
	mv a2, a0
.p2align 2
label943:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a0, a3, 4
	add t0, a5, a0
	mv a0, a4
	lw a3, 72(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label945
	mv a0, a1
.p2align 2
label945:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a1, a4, 4
	add t1, a5, a1
	mv a1, a3
	lw a4, 68(t1)
	bne t0, zero, label947
	mv a1, a2
.p2align 2
label947:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a2, a3, 4
	add a3, a5, a2
	lw a2, 68(a3)
	mv a3, a4
	xor a5, a4, a2
	sltu t0, zero, a5
	bne t0, zero, label949
	mv a3, a0
.p2align 2
label949:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a0, a4, 4
	add t1, a5, a0
	lw a4, 64(t1)
	bne t0, zero, label951
	mv a2, a1
.p2align 2
label951:
	sh2add a1, a2, a2
	ld a5, 104(sp)
	slli a0, a1, 4
	add a1, a5, a0
	lw a0, 64(a1)
	mv a1, a4
	xor a5, a4, a0
	sltu t0, zero, a5
	bne t0, zero, label953
	mv a1, a3
.p2align 2
label953:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a3, a4, 4
	add t1, a5, a3
	lw a4, 60(t1)
	bne t0, zero, label955
	mv a0, a2
.p2align 2
label955:
	sh2add a3, a0, a0
	ld a5, 104(sp)
	slli a2, a3, 4
	add t0, a5, a2
	mv a2, a4
	lw a3, 60(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label957
	mv a2, a1
.p2align 2
label957:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a1, a4, 4
	add t1, a5, a1
	mv a1, a3
	lw a4, 56(t1)
	bne t0, zero, label959
	mv a1, a0
.p2align 2
label959:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	add a3, a5, a0
	lw a0, 56(a3)
	mv a3, a4
	xor a5, a4, a0
	sltu t0, zero, a5
	bne t0, zero, label961
	mv a3, a2
.p2align 2
label961:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 52(a4)
	bne t0, zero, label963
	mv a0, a1
.p2align 2
label963:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a1, a4, 4
	add t0, a5, a1
	lw a1, 52(t0)
	xor a4, a2, a1
	sltu t0, zero, a4
	bne t0, zero, label965
	mv a2, a3
.p2align 2
label965:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add t1, a5, a3
	lw a4, 48(t1)
	bne t0, zero, label967
	mv a1, a0
.p2align 2
label967:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	add t0, a5, a0
	mv a0, a4
	lw a3, 48(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label969
	mv a0, a2
.p2align 2
label969:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a2, a4, 4
	add t1, a5, a2
	mv a2, a3
	lw a4, 44(t1)
	bne t0, zero, label971
	mv a2, a1
.p2align 2
label971:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a1, a3, 4
	add a3, a5, a1
	lw a1, 44(a3)
	mv a3, a4
	xor a5, a4, a1
	sltu t0, zero, a5
	bne t0, zero, label973
	mv a3, a0
.p2align 2
label973:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a0, a4, 4
	add a4, a5, a0
	lw a0, 40(a4)
	bne t0, zero, label975
	mv a1, a2
.p2align 2
label975:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a2, a4, 4
	add t0, a5, a2
	lw a2, 40(t0)
	xor a4, a0, a2
	sltu t0, zero, a4
	bne t0, zero, label977
	mv a0, a3
.p2align 2
label977:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a3, a4, 4
	add t1, a5, a3
	lw a4, 36(t1)
	bne t0, zero, label979
	mv a2, a1
.p2align 2
label979:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a1, a3, 4
	add t0, a5, a1
	mv a1, a4
	lw a3, 36(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label981
	mv a1, a0
.p2align 2
label981:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a0, a4, 4
	add t1, a5, a0
	mv a0, a3
	lw a4, 32(t1)
	bne t0, zero, label983
	mv a0, a2
.p2align 2
label983:
	sh2add a3, a0, a0
	ld a5, 104(sp)
	slli a2, a3, 4
	add t0, a5, a2
	mv a2, a4
	lw a3, 32(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label985
	mv a2, a1
.p2align 2
label985:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a1, a4, 4
	add a4, a5, a1
	lw a1, 28(a4)
	bne t0, zero, label987
	mv a3, a0
.p2align 2
label987:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a0, a4, 4
	add a4, a5, a0
	lw a0, 28(a4)
	xor a5, a1, a0
	sltu a4, zero, a5
	bne a4, zero, label989
	mv a1, a2
.p2align 2
label989:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a2, t0, 4
	add t0, a5, a2
	lw a2, 24(t0)
	bne a4, zero, label991
	mv a0, a3
.p2align 2
label991:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 24(a4)
	xor a5, a2, a3
	sltu t0, zero, a5
	bne t0, zero, label993
	mv a2, a1
.p2align 2
label993:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a1, a4, 4
	add t1, a5, a1
	mv a1, a3
	lw a4, 20(t1)
	bne t0, zero, label995
	mv a1, a0
.p2align 2
label995:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	add t0, a5, a0
	mv a0, a4
	lw a3, 20(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label997
	mv a0, a2
.p2align 2
label997:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a2, a4, 4
	add t1, a5, a2
	mv a2, a3
	lw a4, 16(t1)
	bne t0, zero, label999
	mv a2, a1
.p2align 2
label999:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a1, a3, 4
	add t0, a5, a1
	mv a1, a4
	lw a3, 16(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label1001
	mv a1, a0
.p2align 2
label1001:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a0, a4, 4
	add t1, a5, a0
	mv a0, a3
	lw a4, 12(t1)
	bne t0, zero, label1003
	mv a0, a2
.p2align 2
label1003:
	sh2add a3, a0, a0
	ld a5, 104(sp)
	slli a2, a3, 4
	add t0, a5, a2
	mv a2, a4
	lw a3, 12(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label1005
	mv a2, a1
.p2align 2
label1005:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a1, a4, 4
	add t1, a5, a1
	mv a1, a3
	lw a4, 8(t1)
	bne t0, zero, label1007
	mv a1, a0
.p2align 2
label1007:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	add t0, a5, a0
	mv a0, a4
	lw a3, 8(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label1009
	mv a0, a2
.p2align 2
label1009:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a2, a4, 4
	add t1, a5, a2
	mv a2, a3
	lw a4, 4(t1)
	bne t0, zero, label1011
	mv a2, a1
.p2align 2
label1011:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a1, a3, 4
	add t0, a5, a1
	mv a1, a4
	lw a3, 4(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label1013
	mv a1, a0
.p2align 2
label1013:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a0, a4, 4
	add a4, a5, a0
	lw a0, 0(a4)
	bne t0, zero, label1015
	mv a3, a2
.p2align 2
label1015:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	mv a2, a0
	lw a3, 0(a4)
	bne a0, a3, label1017
	mv a2, a1
.p2align 2
label1017:
	sh2add a1, a2, a2
	ld a5, 104(sp)
	slli a0, a1, 4
	add a1, a5, a0
	lw a0, 0(a1)
	j label145
.p2align 2
label148:
	sh2add t0, a2, a2
	ld a5, 104(sp)
	slli a4, t0, 4
	add t0, a5, a4
	sh2add a4, a1, t0
	lw a5, 0(a4)
	bne a5, zero, label151
	addiw a1, a1, -1
	ld a4, 112(sp)
	sh2add a3, a2, a4
	sh2add a4, a0, a4
	lw a5, 0(a3)
	lw a3, 0(a4)
	bgt a5, a3, label148
	j label1048
.p2align 2
label151:
	ld a4, 112(sp)
	sh2add t1, a5, a4
	mv a4, a5
	lw t0, 0(t1)
	ble a3, t0, label1019
	mv a4, a2
.p2align 2
label1019:
	mv a2, a4
	addiw a1, a1, -1
	ld a4, 112(sp)
	sh2add a3, a2, a4
	sh2add a4, a0, a4
	lw a5, 0(a3)
	lw a3, 0(a4)
	bgt a5, a3, label148
	beq a0, a2, label341
	j label147
label270:
	mv s3, zero
	j label125
label1045:
	mv s4, zero
	j label128
label125:
	addiw a1, a0, -48
	bltu a1, s0, label284
	j label1045
.p2align 2
label128:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label931
	mv s2, s4
.p2align 2
label931:
	li a2, 9
	bleu a1, a2, label292
	mv s4, a0
	mv s3, zero
.p2align 2
label130:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s4, a2, label933
	mv a1, s3
.p2align 2
label933:
	li a2, 9
	bleu a3, a2, label300
	mv s4, a0
	mv s3, a1
	j label130
.p2align 2
label300:
	mv s3, a1
	addiw a1, a0, -48
	bgeu a1, s0, label1046
.p2align 2
label306:
	mv s4, a0
	mv s5, zero
.p2align 2
label136:
	jal getch
	sh2add a4, s5, s5
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s5, s4, a2
	bgeu a1, s0, label314
	mv s4, a0
	j label136
.p2align 2
label278:
	mv s3, a1
	addiw a1, a0, -48
	bgeu a1, s0, label1045
.p2align 2
label284:
	mv s2, a0
	mv s4, zero
.p2align 2
label152:
	jal getch
	sh2add a3, s4, s4
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s4, s2, a2
	bgeu a1, s0, label128
	mv s2, a0
	j label152
.p2align 2
label314:
	subw a0, zero, s5
	mv a1, a0
	beq s3, zero, label1047
.p2align 2
label935:
	ld a4, 112(sp)
	sh2add a2, s2, a4
	sh2add a0, a1, a4
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label937
	mv a0, a1
.p2align 2
label937:
	mv a3, a1
	bne a2, zero, label939
	mv a3, s2
.p2align 2
label939:
	li a1, 19
	mv a2, a3
	ld a4, 112(sp)
	sh2add a3, a3, a4
	sh2add a4, a0, a4
	lw a5, 0(a3)
	lw a3, 0(a4)
	bgt a5, a3, label148
label144:
	beq a0, a2, label341
	j label147
.p2align 2
label1047:
	mv a1, s5
	ld a4, 112(sp)
	sh2add a2, s2, a4
	sh2add a0, s5, a4
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label937
	mv a0, s5
	mv a3, s5
	mv a3, s2
	li a1, 19
	mv a2, s2
	ld a4, 112(sp)
	sh2add a3, s2, a4
	sh2add a4, s5, a4
	lw a5, 0(a3)
	lw a3, 0(a4)
	bgt a5, a3, label148
	j label144
label292:
	mv s3, zero
	j label133
label1046:
	mv s5, zero
	j label139
label133:
	addiw a1, a0, -48
	bltu a1, s0, label306
	j label1046
label139:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label935
	mv a1, s5
	j label935
.p2align 2
label271:
	mv s2, a0
	mv s3, zero
.p2align 2
label122:
	jal getch
	li a1, 1
	li a2, 45
	addiw a3, a0, -48
	beq s2, a2, label929
	mv a1, s3
.p2align 2
label929:
	li a2, 9
	bleu a3, a2, label278
	mv s2, a0
	mv s3, a1
	j label122
label210:
	mv s8, zero
	j label106
label233:
	mv s9, zero
	j label114
.p2align 2
label596:
	mv s8, a0
	mv s9, zero
.p2align 2
label178:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label1027
	mv a1, s9
.p2align 2
label1027:
	li a2, 9
	bleu a3, a2, label666
	mv s8, a0
	mv s9, a1
	j label178
label197:
	mv s5, zero
	j label100
