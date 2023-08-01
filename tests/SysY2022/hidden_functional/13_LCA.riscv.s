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
	addiw a1, a0, -48
pcrel1120:
	auipc a3, %pcrel_hi(to)
pcrel1121:
	auipc a2, %pcrel_hi(next)
	li s0, 10
pcrel1122:
	auipc s7, %pcrel_hi(dep)
	addi s2, a3, %pcrel_lo(pcrel1120)
	addi s3, a2, %pcrel_lo(pcrel1121)
	addi a4, s7, %pcrel_lo(pcrel1122)
pcrel1123:
	auipc a3, %pcrel_hi(head)
pcrel1124:
	auipc a2, %pcrel_hi(f)
	addi s1, a3, %pcrel_lo(pcrel1123)
	addi a5, a2, %pcrel_lo(pcrel1124)
	li a2, 9
	sd a5, 104(sp)
	sd a4, 112(sp)
	bleu a1, a2, label197
	mv s4, a0
	mv s5, zero
.p2align 2
label181:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s4, a2, label1029
	mv a1, s5
.p2align 2
label1029:
	li a2, 9
	bleu a3, a2, label674
	mv s4, a0
	mv s5, a1
	j label181
label97:
	addiw a1, a0, -48
	bgeu a1, s0, label202
	mv s4, a0
	mv s8, zero
	j label100
label674:
	mv s5, a1
	j label97
.p2align 2
label100:
	jal getch
	sh2add a3, s8, s8
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
	addw s8, s4, a2
	bgeu a1, s0, label103
	mv s4, a0
	j label100
label103:
	jal getch
	subw a2, zero, s8
	addiw a1, a0, -48
	mv s4, a2
	bne s5, zero, label923
	mv s4, s8
label923:
	li a2, 9
	bleu a1, a2, label220
	mv s5, a0
	mv s8, zero
.p2align 2
label105:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s5, a2, label925
	mv a1, s8
.p2align 2
label925:
	li a2, 9
	bleu a3, a2, label228
	mv s5, a0
	mv s8, a1
	j label105
label228:
	mv s8, a1
label108:
	addiw a1, a0, -48
	bgeu a1, s0, label233
	mv s5, a0
	mv s9, zero
.p2align 2
label111:
	jal getch
	sh2add a4, s9, s9
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s9, s5, a2
	bgeu a1, s0, label114
	mv s5, a0
	j label111
label114:
	subw a0, zero, s9
	mv s5, a0
	bne s8, zero, label927
	mv s5, s9
label927:
	li a0, 1061109567
pcrel1125:
	auipc s7, %pcrel_hi(dep)
	sw a0, %pcrel_lo(pcrel1125)(s7)
	ble s4, zero, label116
	li a0, 1
	j label179
label116:
	li a1, 1
	bne s4, a1, label254
	j label142
.p2align 2
label179:
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw s6, 0(a1)
	bge s4, a0, label179
	j label116
label197:
	mv s5, zero
	j label97
label220:
	mv s8, zero
	j label108
label254:
	mv s6, zero
	li s7, 1
.p2align 2
label117:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label259
	mv s8, a0
	mv s9, zero
	j label139
.p2align 2
label932:
	mv a0, s11
.p2align 2
label933:
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
	bne s4, s7, label117
	j label142
.p2align 2
label313:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label933
	j label932
.p2align 2
label139:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label935
	mv a1, s9
.p2align 2
label935:
	li a2, 9
	bleu a3, a2, label330
	mv s8, a0
	mv s9, a1
	j label139
label264:
	mv s10, zero
	j label123
.p2align 2
label265:
	mv s10, zero
	j label136
.p2align 2
label330:
	mv s8, a0
	mv s9, a1
	addiw a0, a0, -48
	bltu a0, s0, label265
	j label264
.p2align 2
label136:
	jal getch
	sh2add a4, s10, s10
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s10, s8, a3
	bgeu a1, s0, label123
	mv s8, a0
	j label136
.p2align 2
label123:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label929
	mv s8, s10
.p2align 2
label929:
	li a2, 9
	bleu a1, a2, label273
	mv s10, a0
	mv s9, zero
.p2align 2
label125:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s10, a2, label931
	mv a1, s9
.p2align 2
label931:
	li a2, 9
	bleu a3, a2, label281
	mv s10, a0
	mv s9, a1
	j label125
.p2align 2
label281:
	mv s9, a1
	addiw a1, a0, -48
	bgeu a1, s0, label1045
.p2align 2
label287:
	mv s10, a0
	mv s11, zero
.p2align 2
label133:
	jal getch
	sh2add a4, s11, s11
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s11, s10, a2
	bgeu a1, s0, label313
	mv s10, a0
	j label133
label259:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	bltu a0, s0, label265
	j label264
label273:
	mv s9, zero
	j label128
label1045:
	mv s11, zero
	j label131
label128:
	addiw a1, a0, -48
	bltu a1, s0, label287
	j label1045
label131:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label933
	j label932
label142:
	li a0, 1
	li a1, 1
	jal tree
	beq s5, zero, label143
	mv s1, s5
	j label144
label143:
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
.p2align 2
label144:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label340
	mv s2, a0
	mv s3, zero
	j label146
.p2align 2
label168:
	sh2add t0, a2, a2
	ld a5, 104(sp)
	slli a4, t0, 4
	add t0, a5, a4
	sh2add a4, a1, t0
	lw a5, 0(a4)
	bne a5, zero, label171
	addiw a1, a1, -1
	ld a4, 112(sp)
	sh2add a3, a2, a4
	sh2add a4, a0, a4
	lw a5, 0(a3)
	lw a3, 0(a4)
	bgt a5, a3, label168
	j label1051
.p2align 2
label171:
	ld a4, 112(sp)
	sh2add t1, a5, a4
	mv a4, a5
	lw t0, 0(t1)
	ble a3, t0, label949
	mv a4, a2
.p2align 2
label949:
	mv a2, a4
	addiw a1, a1, -1
	ld a4, 112(sp)
	sh2add a3, a2, a4
	sh2add a4, a0, a4
	lw a5, 0(a3)
	lw a3, 0(a4)
	bgt a5, a3, label168
	bne a0, a2, label173
.p2align 2
label426:
	mv a0, a2
.p2align 2
label174:
	jal putint
	mv a0, s0
	jal putch
	addiw s1, s1, -1
	bne s1, zero, label144
	j label143
.p2align 2
label146:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label937
	mv a1, s3
.p2align 2
label937:
	li a2, 9
	bleu a3, a2, label348
	mv s2, a0
	mv s3, a1
	j label146
.p2align 2
label348:
	mv s3, a1
	addiw a1, a0, -48
	bgeu a1, s0, label1048
.p2align 2
label354:
	mv s2, a0
	mv s4, zero
.p2align 2
label152:
	jal getch
	sh2add a4, s4, s4
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s4, s2, a3
	bgeu a1, s0, label155
	mv s2, a0
	j label152
.p2align 2
label155:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label939
	mv s2, s4
.p2align 2
label939:
	li a2, 9
	bleu a1, a2, label371
	mv s4, a0
	mv s3, zero
.p2align 2
label157:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s4, a2, label941
	mv a1, s3
.p2align 2
label941:
	li a2, 9
	bleu a3, a2, label379
	mv s4, a0
	mv s3, a1
	j label157
.p2align 2
label379:
	mv s3, a1
	addiw a1, a0, -48
	bgeu a1, s0, label1049
.p2align 2
label385:
	mv s4, a0
	mv s5, zero
.p2align 2
label176:
	jal getch
	sh2add a4, s5, s5
	addiw a1, a0, -48
	slliw a2, a4, 1
	addi a3, a2, -48
	addw s5, s4, a3
	bgeu a1, s0, label659
	mv s4, a0
	j label176
label371:
	mv s3, zero
	j label160
label1049:
	mv s5, zero
	j label163
label160:
	addiw a1, a0, -48
	bltu a1, s0, label385
	j label1049
label163:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label943
	mv a1, s5
.p2align 2
label943:
	ld a4, 112(sp)
	sh2add a2, s2, a4
	sh2add a0, a1, a4
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
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
	sh2add a3, a3, a4
	sh2add a4, a0, a4
	lw a5, 0(a3)
	lw a3, 0(a4)
	bgt a5, a3, label168
label406:
	beq a0, a2, label426
	j label173
.p2align 2
label659:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label943
	mv a1, s5
	ld a4, 112(sp)
	sh2add a2, s2, a4
	sh2add a0, s5, a4
	lw a3, 0(a2)
	lw a4, 0(a0)
	mv a0, s2
	slt a2, a3, a4
	bne a2, zero, label945
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
	bgt a5, a3, label168
	j label406
.p2align 2
label173:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	sh2add t0, a0, a0
	slli a1, a3, 4
	slli a4, t0, 4
	add a3, a5, a1
	add a5, a5, a4
	lw a1, 76(a3)
	lw a3, 76(a5)
	xor a4, a1, a3
	sltu t0, zero, a4
	bne t0, zero, label951
	mv a1, a2
.p2align 2
label951:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a2, a4, 4
	add t1, a5, a2
	mv a2, a3
	lw a4, 72(t1)
	bne t0, zero, label953
	mv a2, a0
.p2align 2
label953:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a0, a3, 4
	add t0, a5, a0
	mv a0, a4
	lw a3, 72(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label955
	mv a0, a1
.p2align 2
label955:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a1, a4, 4
	mv a4, a3
	add t1, a5, a1
	lw a1, 68(t1)
	bne t0, zero, label957
	mv a4, a2
.p2align 2
label957:
	sh2add a3, a4, a4
	ld a5, 104(sp)
	slli a2, a3, 4
	add t0, a5, a2
	lw a2, 68(t0)
	xor a3, a1, a2
	sltu t0, zero, a3
	bne t0, zero, label959
	mv a1, a0
.p2align 2
label959:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	mv a3, a2
	add t1, a5, a0
	lw a0, 64(t1)
	bne t0, zero, label961
	mv a3, a4
.p2align 2
label961:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 64(a4)
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
	lw a1, 60(t0)
	bne a4, zero, label965
	mv a2, a3
.p2align 2
label965:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add t0, a5, a3
	lw a4, 60(t0)
	xor a3, a1, a4
	sltu t0, zero, a3
	bne t0, zero, label967
	mv a1, a0
.p2align 2
label967:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	add t1, a5, a0
	mv a0, a4
	lw a3, 56(t1)
	bne t0, zero, label969
	mv a0, a2
.p2align 2
label969:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a2, a4, 4
	add t0, a5, a2
	mv a2, a3
	lw a4, 56(t0)
	xor a5, a3, a4
	sltu t0, zero, a5
	bne t0, zero, label971
	mv a2, a1
.p2align 2
label971:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a1, a3, 4
	add t1, a5, a1
	mv a1, a4
	lw a3, 52(t1)
	bne t0, zero, label973
	mv a1, a0
.p2align 2
label973:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a0, a4, 4
	add t0, a5, a0
	mv a0, a3
	lw a4, 52(t0)
	xor a5, a3, a4
	sltu t1, zero, a5
	bne t1, zero, label975
	mv a0, a2
.p2align 2
label975:
	sh2add a3, a0, a0
	ld a5, 104(sp)
	slli a2, a3, 4
	add a3, a5, a2
	mv a2, a4
	lw t0, 48(a3)
	bne t1, zero, label977
	mv a2, a1
.p2align 2
label977:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a1, a3, 4
	add t1, a5, a1
	mv a1, t0
	lw a3, 48(t1)
	xor a4, t0, a3
	sltu t1, zero, a4
	bne t1, zero, label979
	mv a1, a0
.p2align 2
label979:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a0, a4, 4
	add t0, a5, a0
	mv a0, a3
	lw a4, 44(t0)
	bne t1, zero, label981
	mv a0, a2
.p2align 2
label981:
	sh2add a3, a0, a0
	ld a5, 104(sp)
	slli a2, a3, 4
	add t0, a5, a2
	mv a2, a4
	lw a3, 44(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label983
	mv a2, a1
.p2align 2
label983:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a1, a4, 4
	add t1, a5, a1
	mv a1, a3
	lw a4, 40(t1)
	bne t0, zero, label985
	mv a1, a0
.p2align 2
label985:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a0, a3, 4
	add t0, a5, a0
	mv a0, a4
	lw a3, 40(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label987
	mv a0, a2
.p2align 2
label987:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a2, a4, 4
	add t1, a5, a2
	mv a2, a3
	lw a4, 36(t1)
	bne t0, zero, label989
	mv a2, a1
.p2align 2
label989:
	sh2add a3, a2, a2
	ld a5, 104(sp)
	slli a1, a3, 4
	add t0, a5, a1
	mv a1, a4
	lw a3, 36(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label991
	mv a1, a0
.p2align 2
label991:
	sh2add a4, a1, a1
	ld a5, 104(sp)
	slli a0, a4, 4
	add a4, a5, a0
	lw a0, 32(a4)
	bne t0, zero, label993
	mv a3, a2
.p2align 2
label993:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add t0, a5, a2
	lw a2, 32(t0)
	xor a4, a0, a2
	sltu t0, zero, a4
	bne t0, zero, label995
	mv a0, a1
.p2align 2
label995:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a1, a4, 4
	mv a4, a2
	add t1, a5, a1
	lw a1, 28(t1)
	bne t0, zero, label997
	mv a4, a3
.p2align 2
label997:
	sh2add a3, a4, a4
	ld a5, 104(sp)
	slli a2, a3, 4
	add a3, a5, a2
	lw a2, 28(a3)
	xor a5, a1, a2
	sltu a3, zero, a5
	bne a3, zero, label999
	mv a1, a0
.p2align 2
label999:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a0, t0, 4
	add t0, a5, a0
	lw a0, 24(t0)
	bne a3, zero, label1001
	mv a2, a4
.p2align 2
label1001:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 24(a4)
	xor a5, a0, a3
	sltu a4, zero, a5
	bne a4, zero, label1003
	mv a0, a1
.p2align 2
label1003:
	sh2add t0, a0, a0
	ld a5, 104(sp)
	slli a1, t0, 4
	add t0, a5, a1
	lw a1, 20(t0)
	bne a4, zero, label1005
	mv a3, a2
.p2align 2
label1005:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 20(a4)
	xor a5, a1, a2
	sltu a4, zero, a5
	bne a4, zero, label1007
	mv a1, a0
.p2align 2
label1007:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a0, t0, 4
	add t0, a5, a0
	lw a0, 16(t0)
	bne a4, zero, label1009
	mv a2, a3
.p2align 2
label1009:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 16(a4)
	xor a5, a0, a3
	sltu a4, zero, a5
	bne a4, zero, label1011
	mv a0, a1
.p2align 2
label1011:
	sh2add t0, a0, a0
	ld a5, 104(sp)
	slli a1, t0, 4
	add t0, a5, a1
	lw a1, 12(t0)
	bne a4, zero, label1013
	mv a3, a2
.p2align 2
label1013:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a2, a4, 4
	add a4, a5, a2
	lw a2, 12(a4)
	xor a5, a1, a2
	sltu a4, zero, a5
	bne a4, zero, label1015
	mv a1, a0
.p2align 2
label1015:
	sh2add t0, a1, a1
	ld a5, 104(sp)
	slli a0, t0, 4
	add t0, a5, a0
	lw a0, 8(t0)
	bne a4, zero, label1017
	mv a2, a3
.p2align 2
label1017:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a3, a4, 4
	add a4, a5, a3
	lw a3, 8(a4)
	xor a5, a0, a3
	sltu t0, zero, a5
	bne t0, zero, label1019
	mv a0, a1
.p2align 2
label1019:
	sh2add a4, a0, a0
	ld a5, 104(sp)
	slli a1, a4, 4
	add t1, a5, a1
	mv a1, a3
	lw a4, 4(t1)
	bne t0, zero, label1021
	mv a1, a2
.p2align 2
label1021:
	sh2add a3, a1, a1
	ld a5, 104(sp)
	slli a2, a3, 4
	add t0, a5, a2
	mv a2, a4
	lw a3, 4(t0)
	xor a5, a4, a3
	sltu t0, zero, a5
	bne t0, zero, label1023
	mv a2, a0
.p2align 2
label1023:
	sh2add a4, a2, a2
	ld a5, 104(sp)
	slli a0, a4, 4
	add a4, a5, a0
	lw a0, 0(a4)
	bne t0, zero, label1025
	mv a3, a1
.p2align 2
label1025:
	sh2add a4, a3, a3
	ld a5, 104(sp)
	slli a1, a4, 4
	add a4, a5, a1
	mv a1, a0
	lw a3, 0(a4)
	bne a0, a3, label1027
	mv a1, a2
.p2align 2
label1027:
	sh2add a2, a1, a1
	ld a5, 104(sp)
	slli a0, a2, 4
	add a1, a5, a0
	lw a0, 0(a1)
	j label174
.p2align 2
label1051:
	beq a0, a2, label426
	j label173
label340:
	mv s3, zero
	j label149
label1048:
	mv s4, zero
	j label155
label149:
	addiw a1, a0, -48
	bltu a1, s0, label354
	j label1048
label202:
	mv s8, zero
	j label103
label233:
	mv s9, zero
	j label114
