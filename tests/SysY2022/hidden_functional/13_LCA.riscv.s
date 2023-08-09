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
pcrel1137:
	auipc a3, %pcrel_hi(next)
	li s0, -1
pcrel1138:
	auipc a2, %pcrel_hi(to)
	addiw a1, a0, -48
	addi s1, a3, %pcrel_lo(pcrel1137)
	addi s5, a2, %pcrel_lo(pcrel1138)
	li a2, 9
	bleu a1, a2, label200
	mv s2, a0
	mv s3, zero
	j label100
.p2align 2
label941:
	li a2, 9
	bleu a3, a2, label208
	mv s2, a0
	mv s3, a1
.p2align 2
label100:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label941
	mv a1, s3
	j label941
label208:
	mv s3, a1
label103:
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label213
	mv s2, a0
	mv s4, zero
	j label190
.p2align 2
label690:
	mv s2, a0
.p2align 2
label190:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bltu a1, a2, label690
label106:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label943
	mv s2, s4
label943:
	li a2, 9
	bleu a1, a2, label222
	mv s3, a0
	mv s4, zero
	j label187
.p2align 2
label1047:
	mv a1, s4
.p2align 2
label1048:
	li a2, 9
	bleu a3, a2, label680
	mv s3, a0
	mv s4, a1
.p2align 2
label187:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label1048
	j label1047
label680:
	mv s4, a1
label108:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label227
	mv s3, a0
	mv s6, zero
.p2align 2
label184:
	jal getch
	sh2add a2, s6, s6
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s6, s3, a4
	bgeu a1, a2, label111
	mv s3, a0
	j label184
label111:
	subw a0, zero, s6
	mv s3, a0
	bne s4, zero, label945
	mv s3, s6
label945:
	auipc a0, %pcrel_hi(dep)
	lui a2, 259060
pcrel1139:
	auipc a3, %pcrel_hi(head)
	addi a5, a0, %pcrel_lo(label945)
	addiw a1, a2, -193
	addi s4, a3, %pcrel_lo(pcrel1139)
	sd a5, 104(sp)
	sw a1, %pcrel_lo(label945)(a0)
	ble s2, zero, label118
	addi a0, s4, 4
	li a1, 1
.p2align 2
label114:
	sw s0, 0(a0)
	addiw a1, a1, 1
	blt s2, a1, label118
	addi a0, a0, 4
	j label114
label118:
	auipc a2, %pcrel_hi(f)
	li a0, 1
	addi s0, a2, %pcrel_lo(label118)
	beq s2, a0, label147
	mv s6, zero
	li s7, 1
	j label120
.p2align 2
label295:
	mv s10, a0
.p2align 2
label135:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s11, s10, a3
	bltu a1, a2, label295
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label950
.p2align 2
label1063:
	mv a1, s11
.p2align 2
label950:
	sw a1, 0(s5)
	sh2add a2, a1, a1
	addiw s7, s7, 1
	sh2add a1, s8, s4
	slli a3, a2, 4
	lw a2, 0(a1)
	add a0, s0, a3
	sh2add a3, s6, s1
	sw a2, 0(a3)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	beq s2, s7, label147
	addi s5, s5, 4
.p2align 2
label120:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label257
	mv s8, a0
	mv s9, zero
	j label144
.p2align 2
label954:
	li a2, 9
	bleu a3, a2, label327
	mv s8, a0
	mv s9, a1
.p2align 2
label144:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label954
	mv a1, s9
	j label954
.p2align 2
label327:
	mv s8, a0
	mv s9, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label262
.p2align 2
label263:
	mv s10, zero
	j label127
.p2align 2
label272:
	mv s8, a0
.p2align 2
label127:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s10, s8, a3
	bltu a1, a2, label272
.p2align 2
label130:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label948
	mv s8, s10
.p2align 2
label948:
	li a2, 9
	bleu a1, a2, label280
	mv s9, a0
	mv s10, zero
	j label141
.p2align 2
label952:
	li a2, 9
	bleu a3, a2, label319
	mv s9, a0
	mv s10, a1
.p2align 2
label141:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label952
	mv a1, s10
	j label952
.p2align 2
label319:
	mv s9, a1
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label285
.p2align 2
label286:
	mv s10, a0
	mv s11, zero
	j label135
label147:
	li a0, 1
	li a1, 1
	jal tree
	beq s3, zero, label183
	mv s1, s3
	j label148
.p2align 2
label169:
	ld a5, 104(sp)
	addiw a2, a2, -1
	sh2add t0, a3, a5
	lw a4, 0(t0)
	bge a0, a4, label412
.p2align 2
label166:
	sh2add a4, a3, a3
	slli t0, a4, 4
	add a5, s0, t0
	sh2add t1, a2, a5
	lw a4, 0(t1)
	beq a4, zero, label169
	ld a5, 104(sp)
	mv t0, a4
	sh2add t2, a4, a5
	lw t1, 0(t2)
	ble a0, t1, label966
	mv t0, a3
.p2align 2
label966:
	mv a3, t0
	addiw a2, a2, -1
	ld a5, 104(sp)
	sh2add t0, t0, a5
	lw a4, 0(t0)
	blt a0, a4, label166
	bne a1, a3, label174
.p2align 2
label422:
	mv a0, a3
.p2align 2
label175:
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
	bleu a1, a2, label337
	mv s2, a0
	mv s3, zero
	j label180
.p2align 2
label1045:
	mv a1, s3
.p2align 2
label1046:
	li a2, 9
	bleu a3, a2, label663
	mv s2, a0
	mv s3, a1
.p2align 2
label180:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label1046
	j label1045
.p2align 2
label663:
	mv s2, a0
	mv s3, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label342
.p2align 2
label343:
	mv s4, zero
	j label177
.p2align 2
label656:
	mv s2, a0
.p2align 2
label177:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bltu a1, a2, label656
.p2align 2
label153:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label956
	mv s2, s4
.p2align 2
label956:
	li a2, 9
	bleu a1, a2, label351
	mv s3, a0
	mv s4, zero
	j label155
.p2align 2
label957:
	mv a1, s4
.p2align 2
label958:
	li a2, 9
	bleu a3, a2, label359
	mv s3, a0
	mv s4, a1
.p2align 2
label155:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label958
	j label957
.p2align 2
label359:
	mv s3, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label1066
.p2align 2
label365:
	mv s4, a0
	mv s5, zero
	j label161
.p2align 2
label374:
	mv s4, a0
.p2align 2
label161:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, a2, label374
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label960
	mv a0, s5
	ld a5, 104(sp)
	sh2add a3, s2, a5
	sh2add a1, s5, a5
	lw a4, 0(a3)
	mv a3, s5
	lw t0, 0(a1)
	slt a2, a4, t0
	bne a2, zero, label962
	mv a3, s2
	sh2add t0, s2, a5
	lw a4, 0(t0)
	mv a1, s5
	sh2add a2, s5, a5
	lw a0, 0(a2)
	bgt a4, a0, label396
	j label172
label351:
	mv s3, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label365
label1066:
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label960
.p2align 2
label960:
	ld a5, 104(sp)
	sh2add a3, s2, a5
	sh2add a1, a0, a5
	lw a4, 0(a3)
	mv a3, a0
	lw t0, 0(a1)
	slt a2, a4, t0
	bne a2, zero, label962
	mv a3, s2
.p2align 2
label962:
	ld a5, 104(sp)
	mv a1, s2
	sh2add t0, a3, a5
	lw a4, 0(t0)
	bne a2, zero, label964
	mv a1, a0
.p2align 2
label964:
	ld a5, 104(sp)
	sh2add a2, a1, a5
	lw a0, 0(a2)
	ble a4, a0, label172
.p2align 2
label396:
	li a2, 19
	j label166
.p2align 2
label174:
	sh2add a4, a3, a3
	sh2add a5, a1, a1
	slli t0, a4, 4
	slli t1, a5, 4
	add a0, s0, t0
	lw a2, 76(a0)
	add a0, s0, t1
	lw a4, 76(a0)
	mv a0, a2
	xor t0, a2, a4
	sltu a5, zero, t0
	bne a5, zero, label968
	mv a0, a3
.p2align 2
label968:
	sh2add a2, a0, a0
	slli t1, a2, 4
	mv a2, a4
	add t0, s0, t1
	lw a3, 72(t0)
	bne a5, zero, label970
	mv a2, a1
.p2align 2
label970:
	sh2add a5, a2, a2
	slli a1, a5, 4
	add t1, s0, a1
	mv a1, a3
	lw a4, 72(t1)
	xor t0, a3, a4
	sltu a5, zero, t0
	bne a5, zero, label972
	mv a1, a0
.p2align 2
label972:
	sh2add t0, a1, a1
	mv a0, a4
	slli t2, t0, 4
	add t1, s0, t2
	lw a3, 68(t1)
	bne a5, zero, label974
	mv a0, a2
.p2align 2
label974:
	sh2add a5, a0, a0
	slli a2, a5, 4
	add t1, s0, a2
	mv a2, a3
	lw a4, 68(t1)
	xor t0, a3, a4
	sltu a5, zero, t0
	bne a5, zero, label976
	mv a2, a1
.p2align 2
label976:
	sh2add t2, a2, a2
	mv a1, a4
	slli t1, t2, 4
	add t0, s0, t1
	lw a3, 64(t0)
	bne a5, zero, label978
	mv a1, a0
.p2align 2
label978:
	sh2add a4, a1, a1
	slli a5, a4, 4
	mv a4, a3
	add t1, s0, a5
	lw a0, 64(t1)
	xor t0, a3, a0
	sltu a5, zero, t0
	bne a5, zero, label980
	mv a4, a2
.p2align 2
label980:
	sh2add a3, a4, a4
	slli t0, a3, 4
	mv a3, a0
	add t1, s0, t0
	lw a2, 60(t1)
	bne a5, zero, label982
	mv a3, a1
.p2align 2
label982:
	sh2add a5, a3, a3
	slli a0, a5, 4
	add t1, s0, a0
	mv a0, a2
	lw a1, 60(t1)
	xor t0, a2, a1
	sltu a5, zero, t0
	bne a5, zero, label984
	mv a0, a4
.p2align 2
label984:
	sh2add a2, a0, a0
	slli t0, a2, 4
	mv a2, a1
	add t1, s0, t0
	lw a4, 56(t1)
	bne a5, zero, label986
	mv a2, a3
.p2align 2
label986:
	sh2add t0, a2, a2
	slli a1, t0, 4
	add t1, s0, a1
	mv a1, a4
	lw a5, 56(t1)
	xor a3, a4, a5
	sltu t0, zero, a3
	bne t0, zero, label988
	mv a1, a0
.p2align 2
label988:
	sh2add t2, a1, a1
	mv a0, a5
	slli t1, t2, 4
	add a4, s0, t1
	lw a3, 52(a4)
	bne t0, zero, label990
	mv a0, a2
.p2align 2
label990:
	sh2add a5, a0, a0
	slli t0, a5, 4
	add a2, s0, t0
	lw a4, 52(a2)
	mv a2, a3
	xor t1, a3, a4
	sltu a5, zero, t1
	bne a5, zero, label992
	mv a2, a1
.p2align 2
label992:
	sh2add t2, a2, a2
	mv a1, a4
	slli t0, t2, 4
	add t1, s0, t0
	lw a3, 48(t1)
	bne a5, zero, label994
	mv a1, a0
.p2align 2
label994:
	sh2add a4, a1, a1
	slli t0, a4, 4
	add a0, s0, t0
	lw a5, 48(a0)
	mv a0, a3
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label996
	mv a0, a2
.p2align 2
label996:
	sh2add a3, a0, a0
	mv a2, a5
	slli t2, a3, 4
	add t1, s0, t2
	lw a4, 44(t1)
	bne t0, zero, label998
	mv a2, a1
.p2align 2
label998:
	sh2add a5, a2, a2
	slli t0, a5, 4
	add a3, s0, t0
	lw a1, 44(a3)
	mv a3, a4
	xor a5, a4, a1
	sltu t0, zero, a5
	bne t0, zero, label1000
	mv a3, a0
.p2align 2
label1000:
	sh2add t2, a3, a3
	mv a0, a1
	slli a4, t2, 4
	add t1, s0, a4
	lw a5, 40(t1)
	bne t0, zero, label1002
	mv a0, a2
.p2align 2
label1002:
	sh2add t0, a0, a0
	slli a1, t0, 4
	add t1, s0, a1
	mv a1, a5
	lw a4, 40(t1)
	xor a2, a5, a4
	sltu t0, zero, a2
	bne t0, zero, label1004
	mv a1, a3
.p2align 2
label1004:
	sh2add a2, a1, a1
	slli a5, a2, 4
	mv a2, a4
	add t1, s0, a5
	lw a3, 36(t1)
	bne t0, zero, label1006
	mv a2, a0
.p2align 2
label1006:
	sh2add a5, a2, a2
	slli t1, a5, 4
	add a4, s0, t1
	lw a0, 36(a4)
	mv a4, a3
	xor t0, a3, a0
	sltu a5, zero, t0
	bne a5, zero, label1008
	mv a4, a1
.p2align 2
label1008:
	sh2add a3, a4, a4
	slli t1, a3, 4
	mv a3, a0
	add t0, s0, t1
	lw a1, 32(t0)
	bne a5, zero, label1010
	mv a3, a2
.p2align 2
label1010:
	sh2add a5, a3, a3
	slli t1, a5, 4
	add a0, s0, t1
	lw a2, 32(a0)
	mv a0, a1
	xor t0, a1, a2
	sltu a5, zero, t0
	bne a5, zero, label1012
	mv a0, a4
.p2align 2
label1012:
	sh2add a1, a0, a0
	slli t1, a1, 4
	mv a1, a2
	add t0, s0, t1
	lw a4, 28(t0)
	bne a5, zero, label1014
	mv a1, a3
.p2align 2
label1014:
	sh2add a5, a1, a1
	slli t1, a5, 4
	add a2, s0, t1
	lw a3, 28(a2)
	mv a2, a4
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1016
	mv a2, a0
.p2align 2
label1016:
	sh2add t0, a2, a2
	mv a0, a3
	slli t1, t0, 4
	add t2, s0, t1
	lw a4, 24(t2)
	bne a5, zero, label1018
	mv a0, a1
.p2align 2
label1018:
	sh2add a5, a0, a0
	slli t1, a5, 4
	add a1, s0, t1
	lw a3, 24(a1)
	mv a1, a4
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1020
	mv a1, a2
.p2align 2
label1020:
	sh2add t2, a1, a1
	mv a2, a3
	slli t0, t2, 4
	add t1, s0, t0
	lw a4, 20(t1)
	bne a5, zero, label1022
	mv a2, a0
.p2align 2
label1022:
	sh2add a5, a2, a2
	slli a0, a5, 4
	add t1, s0, a0
	mv a0, a4
	lw a3, 20(t1)
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1024
	mv a0, a1
.p2align 2
label1024:
	sh2add t0, a0, a0
	mv a1, a3
	slli t1, t0, 4
	add t2, s0, t1
	lw a4, 16(t2)
	bne a5, zero, label1026
	mv a1, a2
.p2align 2
label1026:
	sh2add a5, a1, a1
	slli a3, a5, 4
	add t1, s0, a3
	mv a3, a4
	lw a2, 16(t1)
	xor t0, a4, a2
	sltu a5, zero, t0
	bne a5, zero, label1028
	mv a3, a0
.p2align 2
label1028:
	sh2add t1, a3, a3
	mv a0, a2
	slli t2, t1, 4
	add t0, s0, t2
	lw a4, 12(t0)
	bne a5, zero, label1030
	mv a0, a1
.p2align 2
label1030:
	sh2add a2, a0, a0
	slli t0, a2, 4
	mv a2, a4
	add t1, s0, t0
	lw a5, 12(t1)
	xor a1, a4, a5
	sltu t0, zero, a1
	bne t0, zero, label1032
	mv a2, a3
.p2align 2
label1032:
	sh2add a1, a2, a2
	slli t1, a1, 4
	mv a1, a5
	add a3, s0, t1
	lw a4, 8(a3)
	bne t0, zero, label1034
	mv a1, a0
.p2align 2
label1034:
	sh2add a5, a1, a1
	slli t1, a5, 4
	add a0, s0, t1
	lw a3, 8(a0)
	mv a0, a4
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1036
	mv a0, a2
.p2align 2
label1036:
	sh2add t2, a0, a0
	mv a2, a3
	slli t0, t2, 4
	add t1, s0, t0
	lw a4, 4(t1)
	bne a5, zero, label1038
	mv a2, a1
.p2align 2
label1038:
	sh2add a5, a2, a2
	slli a1, a5, 4
	add t1, s0, a1
	mv a1, a4
	lw a3, 4(t1)
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1040
	mv a1, a0
.p2align 2
label1040:
	sh2add a4, a1, a1
	slli t0, a4, 4
	mv a4, a3
	add t1, s0, t0
	lw a0, 0(t1)
	bne a5, zero, label1042
	mv a4, a2
.p2align 2
label1042:
	sh2add t1, a4, a4
	mv a2, a0
	slli a5, t1, 4
	add t0, s0, a5
	lw a3, 0(t0)
	bne a0, a3, label1044
	mv a2, a1
.p2align 2
label1044:
	sh2add a4, a2, a2
	slli a3, a4, 4
	add a1, s0, a3
	lw a0, 0(a1)
	j label175
.p2align 2
label412:
	beq a1, a3, label422
	j label174
label257:
	mv s8, a0
	mv s9, zero
	addiw a0, a0, -48
	li a2, 10
	bltu a0, a2, label263
	j label262
label285:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label950
	j label1063
label280:
	mv s9, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label286
	j label285
label337:
	mv s2, a0
	mv s3, zero
	addiw a0, a0, -48
	li a2, 10
	bltu a0, a2, label343
	j label342
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
label262:
	mv s10, zero
	j label130
label342:
	mv s4, zero
	j label153
label172:
	beq a1, a3, label422
	j label174
label227:
	mv s6, zero
	j label111
label200:
	mv s3, zero
	j label103
label222:
	mv s4, zero
	j label108
label213:
	mv s4, zero
	j label106
