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
pcrel93:
	auipc a5, %pcrel_hi(dep)
pcrel94:
	auipc t1, %pcrel_hi(f)
	addi a0, a5, %pcrel_lo(pcrel93)
	sd ra, 0(sp)
	sh2add a5, a2, a2
	sh2add a4, a2, a0
	sd s0, 8(sp)
	slli t0, a5, 4
	addiw s0, a1, 1
	sd s1, 16(sp)
pcrel95:
	auipc a5, %pcrel_hi(to)
pcrel96:
	auipc a3, %pcrel_hi(next)
	addi s1, a5, %pcrel_lo(pcrel95)
	sd s2, 24(sp)
	addi s2, a3, %pcrel_lo(pcrel96)
	sd s3, 32(sp)
	li s3, -1
	sd s4, 40(sp)
	sw a1, 0(a4)
	addi a1, t1, %pcrel_lo(pcrel94)
	add a0, a1, t0
	lw a4, 0(a0)
	beq a4, zero, label7
	mv a3, zero
.p2align 2
label3:
	lw a4, 0(a0)
	sh2add t2, a4, a4
	slli t0, t2, 4
	add t1, a1, t0
	sh2add a5, a3, t1
	addiw a3, a3, 1
	lw a4, 0(a5)
	sw a4, 4(a0)
	beq a4, zero, label7
	addi a0, a0, 4
	j label3
label7:
	auipc a4, %pcrel_hi(head)
	addi a1, a4, %pcrel_lo(label7)
	sh2add a0, a2, a1
	lw s4, 0(a0)
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
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
pcrel1135:
	auipc a3, %pcrel_hi(next)
	li s0, -1
pcrel1136:
	auipc a2, %pcrel_hi(to)
	addiw a1, a0, -48
	addi s1, a3, %pcrel_lo(pcrel1135)
	addi s5, a2, %pcrel_lo(pcrel1136)
	li a2, 9
	bleu a1, a2, label198
	mv s2, a0
	mv s3, zero
	j label188
.p2align 2
label1046:
	li a2, 9
	bleu a3, a2, label687
	mv s2, a0
	mv s3, a1
.p2align 2
label188:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label1046
	mv a1, s3
	j label1046
label687:
	mv s3, a1
label98:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label203
	mv s2, a0
	mv s4, zero
.p2align 2
label101:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bgeu a1, a2, label104
	mv s2, a0
	j label101
label104:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label939
	mv s2, s4
label939:
	li a2, 9
	bleu a1, a2, label221
	mv s3, a0
	mv s4, zero
	j label106
.p2align 2
label941:
	li a2, 9
	bleu a3, a2, label229
	mv s3, a0
	mv s4, a1
.p2align 2
label106:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label941
	mv a1, s4
	j label941
label229:
	mv s4, a1
label109:
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label234
	mv s3, a0
	mv s6, zero
	j label112
.p2align 2
label244:
	mv s3, a0
.p2align 2
label112:
	jal getch
	sh2add a2, s6, s6
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s6, s3, a4
	bltu a1, a2, label244
label115:
	subw a0, zero, s6
	mv s3, a0
	bne s4, zero, label943
	mv s3, s6
label943:
	auipc a0, %pcrel_hi(dep)
	lui a2, 259060
pcrel1137:
	auipc a3, %pcrel_hi(head)
	addi a5, a0, %pcrel_lo(label943)
	addiw a1, a2, -193
	addi s4, a3, %pcrel_lo(pcrel1137)
	sd a5, 104(sp)
	sw a1, %pcrel_lo(label943)(a0)
	ble s2, zero, label117
	addi a0, s4, 4
	li a1, 1
.p2align 2
label184:
	addiw a1, a1, 1
	sw s0, 0(a0)
	blt s2, a1, label117
	addi a0, a0, 4
	j label184
label117:
	auipc a0, %pcrel_hi(f)
	li a1, 1
	addi s0, a0, %pcrel_lo(label117)
	beq s2, a1, label146
	mv s6, zero
	li s7, 1
	j label119
.p2align 2
label311:
	mv s10, a0
.p2align 2
label137:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s11, s10, a4
	bltu a1, a2, label311
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label952
.p2align 2
label1063:
	mv a1, s11
.p2align 2
label952:
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
	beq s2, s7, label146
	addi s5, s5, 4
.p2align 2
label119:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label266
	mv s8, a0
	mv s9, zero
	j label123
.p2align 2
label945:
	mv a1, s9
.p2align 2
label946:
	li a2, 9
	bleu a3, a2, label274
	mv s8, a0
	mv s9, a1
.p2align 2
label123:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label946
	j label945
.p2align 2
label274:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label1061
.p2align 2
label280:
	mv s8, a0
	mv s10, zero
.p2align 2
label143:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bgeu a1, a2, label129
	mv s8, a0
	j label143
.p2align 2
label129:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label948
	mv s8, s10
.p2align 2
label948:
	li a2, 9
	bleu a1, a2, label288
	mv s9, a0
	mv s10, zero
	j label131
.p2align 2
label949:
	mv a1, s10
.p2align 2
label950:
	li a2, 9
	bleu a3, a2, label296
	mv s9, a0
	mv s10, a1
.p2align 2
label131:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label950
	j label949
.p2align 2
label296:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label1062
.p2align 2
label302:
	mv s10, a0
	mv s11, zero
	j label137
label288:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label302
label1062:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label952
	j label1063
label266:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label280
label1061:
	mv s10, zero
	j label129
label146:
	li a0, 1
	li a1, 1
	jal tree
	beq s3, zero, label182
	mv s1, s3
	j label147
.p2align 2
label165:
	ld a5, 104(sp)
	addiw a2, a2, -1
	sh2add t0, a3, a5
	lw a4, 0(t0)
	blt a0, a4, label162
	bne a1, a3, label172
.p2align 2
label423:
	mv a0, a3
.p2align 2
label170:
	jal putint
	li a2, 10
	mv a0, a2
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label182
.p2align 2
label147:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label346
	mv s2, a0
	mv s3, zero
	j label179
.p2align 2
label1044:
	li a2, 9
	bleu a3, a2, label672
	mv s2, a0
	mv s3, a1
.p2align 2
label179:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label1044
	mv a1, s3
	j label1044
.p2align 2
label961:
	mv t0, a3
.p2align 2
label962:
	mv a3, t0
	addiw a2, a2, -1
	ld a5, 104(sp)
	sh2add t0, t0, a5
	lw a4, 0(t0)
	bge a0, a4, label1066
.p2align 2
label162:
	sh2add a4, a3, a3
	slli t0, a4, 4
	add a5, s0, t0
	sh2add t1, a2, a5
	lw a4, 0(t1)
	beq a4, zero, label165
	ld a5, 104(sp)
	mv t0, a4
	sh2add t2, a4, a5
	lw t1, 0(t2)
	ble a0, t1, label962
	j label961
.p2align 2
label672:
	mv s3, a1
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label351
.p2align 2
label352:
	mv s2, a0
	mv s4, zero
	j label176
.p2align 2
label665:
	mv s2, a0
.p2align 2
label176:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s4, s2, a3
	bltu a1, a2, label665
.p2align 2
label152:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label954
	mv s2, s4
.p2align 2
label954:
	li a2, 9
	bleu a1, a2, label360
	mv s3, a0
	mv s4, zero
	j label173
.p2align 2
label1042:
	li a2, 9
	bleu a3, a2, label655
	mv s3, a0
	mv s4, a1
.p2align 2
label173:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label1042
	mv a1, s4
	j label1042
.p2align 2
label655:
	mv s3, a1
	li a2, 10
	addiw a1, a0, -48
	bgeu a1, a2, label365
.p2align 2
label366:
	mv s4, a0
	mv s5, zero
	j label157
.p2align 2
label375:
	mv s4, a0
.p2align 2
label157:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s5, s4, a4
	bltu a1, a2, label375
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label956
	mv a0, s5
	ld a5, 104(sp)
	sh2add a3, s2, a5
	sh2add a1, s5, a5
	lw a4, 0(a3)
	mv a3, s5
	lw t0, 0(a1)
	slt a2, a4, t0
	bne a2, zero, label958
	mv a3, s2
	sh2add t0, s2, a5
	lw a4, 0(t0)
	mv a1, s5
	sh2add a2, s5, a5
	lw a0, 0(a2)
	bgt a4, a0, label397
	j label168
label365:
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label956
.p2align 2
label956:
	ld a5, 104(sp)
	sh2add a3, s2, a5
	sh2add a1, a0, a5
	lw a4, 0(a3)
	mv a3, a0
	lw t0, 0(a1)
	slt a2, a4, t0
	bne a2, zero, label958
	mv a3, s2
.p2align 2
label958:
	ld a5, 104(sp)
	mv a1, s2
	sh2add t0, a3, a5
	lw a4, 0(t0)
	bne a2, zero, label960
	mv a1, a0
.p2align 2
label960:
	ld a5, 104(sp)
	sh2add a2, a1, a5
	lw a0, 0(a2)
	ble a4, a0, label168
.p2align 2
label397:
	li a2, 19
	j label162
.p2align 2
label1066:
	beq a1, a3, label423
.p2align 2
label172:
	sh2add a5, a3, a3
	slli a4, a5, 4
	sh2add a5, a1, a1
	add a2, s0, a4
	slli t0, a5, 4
	lw a0, 76(a2)
	add a2, s0, t0
	lw a4, 76(a2)
	mv a2, a0
	xor a5, a0, a4
	sltu t0, zero, a5
	bne t0, zero, label964
	mv a2, a3
.p2align 2
label964:
	sh2add a0, a2, a2
	slli t1, a0, 4
	mv a0, a4
	add a3, s0, t1
	lw a5, 72(a3)
	bne t0, zero, label966
	mv a0, a1
.p2align 2
label966:
	sh2add a4, a0, a0
	slli t0, a4, 4
	add a1, s0, t0
	lw a3, 72(a1)
	mv a1, a5
	xor t1, a5, a3
	sltu a4, zero, t1
	bne a4, zero, label968
	mv a1, a2
.p2align 2
label968:
	sh2add t2, a1, a1
	mv a2, a3
	slli t0, t2, 4
	add t1, s0, t0
	lw a5, 68(t1)
	bne a4, zero, label970
	mv a2, a0
.p2align 2
label970:
	sh2add a3, a2, a2
	slli t0, a3, 4
	mv a3, a5
	add t1, s0, t0
	lw a4, 68(t1)
	xor a0, a5, a4
	sltu t0, zero, a0
	bne t0, zero, label972
	mv a3, a1
.p2align 2
label972:
	sh2add a0, a3, a3
	slli a1, a0, 4
	mv a0, a4
	add t1, s0, a1
	lw a5, 64(t1)
	bne t0, zero, label974
	mv a0, a2
.p2align 2
label974:
	sh2add a1, a0, a0
	slli t0, a1, 4
	mv a1, a5
	add t1, s0, t0
	lw a4, 64(t1)
	xor a2, a5, a4
	sltu t0, zero, a2
	bne t0, zero, label976
	mv a1, a3
.p2align 2
label976:
	sh2add a2, a1, a1
	slli t1, a2, 4
	mv a2, a4
	add a3, s0, t1
	lw a5, 60(a3)
	bne t0, zero, label978
	mv a2, a0
.p2align 2
label978:
	sh2add a4, a2, a2
	slli a0, a4, 4
	add t1, s0, a0
	mv a0, a5
	lw a3, 60(t1)
	xor a4, a5, a3
	sltu t0, zero, a4
	bne t0, zero, label980
	mv a0, a1
.p2align 2
label980:
	sh2add a5, a0, a0
	mv a1, a3
	slli t1, a5, 4
	add t2, s0, t1
	lw a4, 56(t2)
	bne t0, zero, label982
	mv a1, a2
.p2align 2
label982:
	sh2add t0, a1, a1
	slli a3, t0, 4
	add a5, s0, a3
	mv a3, a4
	lw a2, 56(a5)
	xor t1, a4, a2
	sltu t0, zero, t1
	bne t0, zero, label984
	mv a3, a0
.p2align 2
label984:
	sh2add t2, a3, a3
	mv a0, a2
	slli a4, t2, 4
	add t1, s0, a4
	lw a5, 52(t1)
	bne t0, zero, label986
	mv a0, a1
.p2align 2
label986:
	sh2add t0, a0, a0
	slli a1, t0, 4
	add a2, s0, a1
	lw a4, 52(a2)
	mv a2, a5
	xor t1, a5, a4
	sltu t0, zero, t1
	bne t0, zero, label988
	mv a2, a3
.p2align 2
label988:
	sh2add a1, a2, a2
	slli t1, a1, 4
	mv a1, a4
	add a5, s0, t1
	lw a3, 48(a5)
	bne t0, zero, label990
	mv a1, a0
.p2align 2
label990:
	sh2add t0, a1, a1
	slli a0, t0, 4
	add a5, s0, a0
	mv a0, a3
	lw a4, 48(a5)
	xor t1, a3, a4
	sltu t0, zero, t1
	bne t0, zero, label992
	mv a0, a2
.p2align 2
label992:
	sh2add a3, a0, a0
	mv a2, a4
	slli t2, a3, 4
	add t1, s0, t2
	lw a5, 44(t1)
	bne t0, zero, label994
	mv a2, a1
.p2align 2
label994:
	sh2add t0, a2, a2
	slli a3, t0, 4
	add t1, s0, a3
	mv a3, a5
	lw a4, 44(t1)
	xor a1, a5, a4
	sltu t0, zero, a1
	bne t0, zero, label996
	mv a3, a0
.p2align 2
label996:
	sh2add a1, a3, a3
	slli t1, a1, 4
	mv a1, a4
	add a5, s0, t1
	lw a0, 40(a5)
	bne t0, zero, label998
	mv a1, a2
.p2align 2
label998:
	sh2add a5, a1, a1
	slli a2, a5, 4
	add t0, s0, a2
	mv a2, a0
	lw a4, 40(t0)
	xor t1, a0, a4
	sltu a5, zero, t1
	bne a5, zero, label1000
	mv a2, a3
.p2align 2
label1000:
	sh2add a0, a2, a2
	slli t0, a0, 4
	mv a0, a4
	add t1, s0, t0
	lw a3, 36(t1)
	bne a5, zero, label1002
	mv a0, a1
.p2align 2
label1002:
	sh2add a4, a0, a0
	slli t0, a4, 4
	add a1, s0, t0
	lw a5, 36(a1)
	mv a1, a3
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label1004
	mv a1, a2
.p2align 2
label1004:
	sh2add a3, a1, a1
	slli a2, a3, 4
	mv a3, a5
	add t1, s0, a2
	lw a4, 32(t1)
	bne t0, zero, label1006
	mv a3, a0
.p2align 2
label1006:
	sh2add a2, a3, a3
	slli a5, a2, 4
	mv a2, a4
	add t1, s0, a5
	lw a0, 32(t1)
	xor t0, a4, a0
	sltu a5, zero, t0
	bne a5, zero, label1008
	mv a2, a1
.p2align 2
label1008:
	sh2add t2, a2, a2
	mv a1, a0
	slli t0, t2, 4
	add t1, s0, t0
	lw a4, 28(t1)
	bne a5, zero, label1010
	mv a1, a3
.p2align 2
label1010:
	sh2add t0, a1, a1
	slli a3, t0, 4
	add a0, s0, a3
	lw a5, 28(a0)
	mv a0, a4
	xor t1, a4, a5
	sltu t0, zero, t1
	bne t0, zero, label1012
	mv a0, a2
.p2align 2
label1012:
	sh2add t1, a0, a0
	mv a2, a5
	slli t2, t1, 4
	add a4, s0, t2
	lw a3, 24(a4)
	bne t0, zero, label1014
	mv a2, a1
.p2align 2
label1014:
	sh2add a5, a2, a2
	slli a1, a5, 4
	add t0, s0, a1
	mv a1, a3
	lw a4, 24(t0)
	xor t1, a3, a4
	sltu a5, zero, t1
	bne a5, zero, label1016
	mv a1, a0
.p2align 2
label1016:
	sh2add t1, a1, a1
	mv a0, a4
	slli t0, t1, 4
	add t2, s0, t0
	lw a3, 20(t2)
	bne a5, zero, label1018
	mv a0, a2
.p2align 2
label1018:
	sh2add t0, a0, a0
	slli a5, t0, 4
	add a2, s0, a5
	lw a4, 20(a2)
	mv a2, a3
	xor t0, a3, a4
	sltu a5, zero, t0
	bne a5, zero, label1020
	mv a2, a1
.p2align 2
label1020:
	sh2add t0, a2, a2
	mv a1, a4
	slli t1, t0, 4
	add t2, s0, t1
	lw a3, 16(t2)
	bne a5, zero, label1022
	mv a1, a0
.p2align 2
label1022:
	sh2add a5, a1, a1
	slli t1, a5, 4
	add a0, s0, t1
	lw a4, 16(a0)
	mv a0, a3
	xor t0, a3, a4
	sltu a5, zero, t0
	bne a5, zero, label1024
	mv a0, a2
.p2align 2
label1024:
	sh2add t0, a0, a0
	mv a2, a4
	slli t2, t0, 4
	add t1, s0, t2
	lw a3, 12(t1)
	bne a5, zero, label1026
	mv a2, a1
.p2align 2
label1026:
	sh2add t0, a2, a2
	slli a5, t0, 4
	add a1, s0, a5
	lw a4, 12(a1)
	mv a1, a3
	xor t0, a3, a4
	sltu a5, zero, t0
	bne a5, zero, label1028
	mv a1, a0
.p2align 2
label1028:
	sh2add t2, a1, a1
	mv a0, a4
	slli t1, t2, 4
	add t0, s0, t1
	lw a3, 8(t0)
	bne a5, zero, label1030
	mv a0, a2
.p2align 2
label1030:
	sh2add a5, a0, a0
	slli a2, a5, 4
	add t1, s0, a2
	mv a2, a3
	lw a4, 8(t1)
	xor a5, a3, a4
	sltu t0, zero, a5
	bne t0, zero, label1032
	mv a2, a1
.p2align 2
label1032:
	sh2add t1, a2, a2
	mv a1, a4
	slli t2, t1, 4
	add a3, s0, t2
	lw a5, 4(a3)
	bne t0, zero, label1034
	mv a1, a0
.p2align 2
label1034:
	sh2add a4, a1, a1
	slli a0, a4, 4
	add t1, s0, a0
	mv a0, a5
	lw a3, 4(t1)
	xor t0, a5, a3
	sltu a4, zero, t0
	bne a4, zero, label1036
	mv a0, a2
.p2align 2
label1036:
	sh2add a5, a0, a0
	slli t0, a5, 4
	mv a5, a3
	add t1, s0, t0
	lw a2, 0(t1)
	bne a4, zero, label1038
	mv a5, a1
.p2align 2
label1038:
	sh2add a4, a5, a5
	mv a1, a2
	slli t0, a4, 4
	add t1, s0, t0
	lw a3, 0(t1)
	bne a2, a3, label1040
	mv a1, a0
.p2align 2
label1040:
	sh2add a4, a1, a1
	slli a2, a4, 4
	add a3, s0, a2
	lw a0, 0(a3)
	j label170
label360:
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label366
	j label365
label346:
	mv s3, zero
	addiw a1, a0, -48
	li a2, 10
	bltu a1, a2, label352
	j label351
label182:
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
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label351:
	mv s4, zero
	j label152
label168:
	beq a1, a3, label423
	j label172
label234:
	mv s6, zero
	j label115
label198:
	mv s3, zero
	j label98
label203:
	mv s4, zero
	j label104
label221:
	mv s4, zero
	j label109
