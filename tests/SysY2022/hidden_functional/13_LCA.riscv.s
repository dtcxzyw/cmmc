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
	sh2add a5, a0, a0
	sd ra, 0(sp)
	addi a2, a4, %pcrel_lo(pcrel92)
	slli t0, a5, 4
pcrel93:
	auipc a4, %pcrel_hi(f)
	sh2add a1, a0, a2
	sd s0, 8(sp)
pcrel94:
	auipc a5, %pcrel_hi(to)
	addi a2, a4, %pcrel_lo(pcrel93)
	addiw s0, a3, 1
	sd s1, 16(sp)
	addi s1, a5, %pcrel_lo(pcrel94)
	sd s2, 24(sp)
	sd s3, 32(sp)
	li s3, -1
	sd s4, 40(sp)
	sw a3, 0(a1)
pcrel95:
	auipc a3, %pcrel_hi(next)
	add a1, a2, t0
	addi s2, a3, %pcrel_lo(pcrel95)
	lw a4, 0(a1)
	beq a4, zero, label4
	mv a3, zero
.p2align 2
label2:
	sh2add t0, a3, a1
	lw a4, 0(t0)
	sh2add t2, a4, a4
	slli a5, t2, 4
	add t1, a2, a5
	sh2add t0, a3, t1
	addiw a3, a3, 1
	sh2add a5, a3, a1
	lw a4, 0(t0)
	sw a4, 0(a5)
	bne a4, zero, label2
label4:
	auipc a4, %pcrel_hi(head)
	addi a1, a4, %pcrel_lo(label4)
	sh2add a2, a0, a1
	lw s4, 0(a2)
	beq s4, s3, label7
.p2align 2
label5:
	sh2add a2, s4, s1
	lw a0, 0(a2)
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
	addiw a1, a0, -48
pcrel1121:
	auipc a3, %pcrel_hi(to)
pcrel1122:
	auipc a2, %pcrel_hi(next)
pcrel1123:
	auipc s7, %pcrel_hi(dep)
	addi s2, a3, %pcrel_lo(pcrel1121)
	addi s3, a2, %pcrel_lo(pcrel1122)
	addi a4, s7, %pcrel_lo(pcrel1123)
pcrel1124:
	auipc a3, %pcrel_hi(head)
pcrel1125:
	auipc a2, %pcrel_hi(f)
	addi s1, a3, %pcrel_lo(pcrel1124)
	addi t0, a2, %pcrel_lo(pcrel1125)
	li a2, 9
	sd t0, 104(sp)
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
	beq s4, a2, label1030
	mv a1, s5
.p2align 2
label1030:
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
	addiw a2, a0, -48
	bgeu a2, s0, label233
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
	lui a1, 259060
	addiw a0, a1, -193
pcrel1126:
	auipc s7, %pcrel_hi(dep)
	sw a0, %pcrel_lo(pcrel1126)(s7)
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
label933:
	mv a0, s11
.p2align 2
label934:
	sh2add a3, s6, s2
	addiw s7, s7, 1
	sh2add a1, a0, a0
	sw a0, 0(a3)
	slli a2, a1, 4
	ld t0, 104(sp)
	sh2add a1, s8, s1
	add a0, t0, a2
	lw a3, 0(a1)
	sh2add a2, s6, s3
	sw a3, 0(a2)
	sw s6, 0(a1)
	addiw s6, s6, 1
	sw s8, 0(a0)
	bne s4, s7, label117
	j label142
.p2align 2
label313:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label934
	j label933
.p2align 2
label139:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label936
	mv a1, s9
.p2align 2
label936:
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
	bne s9, zero, label930
	mv s8, s10
.p2align 2
label930:
	li a2, 9
	bleu a1, a2, label273
	mv s9, a0
	mv s10, zero
.p2align 2
label125:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label932
	mv a1, s10
.p2align 2
label932:
	li a2, 9
	bleu a3, a2, label281
	mv s9, a0
	mv s10, a1
	j label125
.p2align 2
label281:
	mv s9, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1046
.p2align 2
label287:
	mv s10, a0
	mv s11, zero
.p2align 2
label133:
	jal getch
	sh2add a3, s11, s11
	addiw a1, a0, -48
	slliw a4, a3, 1
	addi a2, a4, -48
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
label1046:
	mv s11, zero
	j label131
label128:
	addiw a2, a0, -48
	bltu a2, s0, label287
	j label1046
label131:
	subw a1, zero, s11
	mv a0, a1
	bne s9, zero, label934
	j label933
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
	sh2add a5, a2, a2
	ld t0, 104(sp)
	slli a4, a5, 4
	add t1, t0, a4
	sh2add t2, a1, t1
	lw a5, 0(t2)
	bne a5, zero, label171
	addiw a1, a1, -1
	ld a4, 112(sp)
	sh2add t0, a0, a4
	sh2add t1, a2, a4
	lw a5, 0(t1)
	lw a3, 0(t0)
	bgt a5, a3, label168
	j label1052
.p2align 2
label171:
	ld a4, 112(sp)
	mv t0, a5
	sh2add t2, a5, a4
	lw t1, 0(t2)
	ble a3, t1, label950
	mv t0, a2
.p2align 2
label950:
	mv a2, t0
	addiw a1, a1, -1
	ld a4, 112(sp)
	sh2add t0, a0, a4
	sh2add t1, a2, a4
	lw a5, 0(t1)
	lw a3, 0(t0)
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
	beq s2, a2, label938
	mv a1, s3
.p2align 2
label938:
	li a2, 9
	bleu a3, a2, label348
	mv s2, a0
	mv s3, a1
	j label146
.p2align 2
label348:
	mv s3, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1049
.p2align 2
label354:
	mv s2, a0
	mv s4, zero
.p2align 2
label152:
	jal getch
	sh2add a3, s4, s4
	addiw a1, a0, -48
	slliw a2, a3, 1
	addi a4, a2, -48
	addw s4, s2, a4
	bgeu a1, s0, label155
	mv s2, a0
	j label152
.p2align 2
label155:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label940
	mv s2, s4
.p2align 2
label940:
	li a2, 9
	bleu a1, a2, label371
	mv s3, a0
	mv s4, zero
.p2align 2
label157:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label942
	mv a1, s4
.p2align 2
label942:
	li a2, 9
	bleu a3, a2, label379
	mv s3, a0
	mv s4, a1
	j label157
.p2align 2
label379:
	mv s3, a1
	addiw a2, a0, -48
	bgeu a2, s0, label1050
.p2align 2
label385:
	mv s4, a0
	mv s5, zero
.p2align 2
label176:
	jal getch
	sh2add a4, s5, s5
	addiw a1, a0, -48
	slliw a3, a4, 1
	addi a2, a3, -48
	addw s5, s4, a2
	bgeu a1, s0, label659
	mv s4, a0
	j label176
label371:
	mv s3, zero
	j label160
label1050:
	mv s5, zero
	j label163
label160:
	addiw a2, a0, -48
	bltu a2, s0, label385
	j label1050
label163:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label944
	mv a1, s5
.p2align 2
label944:
	ld a4, 112(sp)
	sh2add a0, s2, a4
	sh2add a3, a1, a4
	lw a5, 0(a0)
	mv a0, s2
	lw t0, 0(a3)
	slt a2, a5, t0
	bne a2, zero, label946
	mv a0, a1
.p2align 2
label946:
	mv a3, a1
	bne a2, zero, label948
	mv a3, s2
.p2align 2
label948:
	li a1, 19
	mv a2, a3
	ld a4, 112(sp)
	sh2add t0, a0, a4
	sh2add t1, a3, a4
	lw a5, 0(t1)
	lw a3, 0(t0)
	bgt a5, a3, label168
label406:
	beq a0, a2, label426
	j label173
.p2align 2
label659:
	subw a0, zero, s5
	mv a1, a0
	bne s3, zero, label944
	mv a1, s5
	ld a4, 112(sp)
	sh2add a0, s2, a4
	sh2add a3, s5, a4
	lw a5, 0(a0)
	mv a0, s2
	lw t0, 0(a3)
	slt a2, a5, t0
	bne a2, zero, label946
	mv a0, s5
	mv a3, s5
	mv a3, s2
	li a1, 19
	mv a2, s2
	sh2add t0, s5, a4
	sh2add t1, s2, a4
	lw a5, 0(t1)
	lw a3, 0(t0)
	bgt a5, a3, label168
	j label406
.p2align 2
label173:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	sh2add a5, a0, a0
	slli a1, a4, 4
	add a3, t0, a1
	slli a1, a5, 4
	add t2, t0, a1
	lw a4, 76(a3)
	mv a1, a4
	lw a3, 76(t2)
	xor t1, a4, a3
	sltu a5, zero, t1
	bne a5, zero, label952
	mv a1, a2
.p2align 2
label952:
	sh2add a4, a1, a1
	ld t0, 104(sp)
	mv a2, a3
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 72(t2)
	bne a5, zero, label954
	mv a2, a0
.p2align 2
label954:
	sh2add a3, a2, a2
	ld t0, 104(sp)
	slli a0, a3, 4
	add t2, t0, a0
	mv a0, a4
	lw a3, 72(t2)
	xor a5, a4, a3
	sltu t1, zero, a5
	bne t1, zero, label956
	mv a0, a1
.p2align 2
label956:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	slli a1, a4, 4
	mv a4, a3
	add t2, t0, a1
	lw a5, 68(t2)
	bne t1, zero, label958
	mv a4, a2
.p2align 2
label958:
	sh2add t1, a4, a4
	ld t0, 104(sp)
	slli a1, t1, 4
	add a3, t0, a1
	mv a1, a5
	lw t1, 68(a3)
	xor a2, a5, t1
	sltu t2, zero, a2
	bne t2, zero, label960
	mv a1, a0
.p2align 2
label960:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	mv a3, t1
	slli a0, a2, 4
	add a5, t0, a0
	lw a2, 64(a5)
	bne t2, zero, label962
	mv a3, a4
.p2align 2
label962:
	sh2add a5, a3, a3
	ld t0, 104(sp)
	slli a0, a5, 4
	add t2, t0, a0
	mv a0, a2
	lw a4, 64(t2)
	xor a5, a2, a4
	sltu t1, zero, a5
	bne t1, zero, label964
	mv a0, a1
.p2align 2
label964:
	sh2add a2, a0, a0
	ld t0, 104(sp)
	slli a1, a2, 4
	mv a2, a4
	add t2, t0, a1
	lw a5, 60(t2)
	bne t1, zero, label966
	mv a2, a3
.p2align 2
label966:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli a1, a4, 4
	add t1, t0, a1
	mv a1, a5
	lw a3, 60(t1)
	xor a4, a5, a3
	sltu t2, zero, a4
	bne t2, zero, label968
	mv a1, a0
.p2align 2
label968:
	sh2add a4, a1, a1
	ld t0, 104(sp)
	slli a0, a4, 4
	mv a4, a3
	add a5, t0, a0
	lw t1, 56(a5)
	bne t2, zero, label970
	mv a4, a2
.p2align 2
label970:
	sh2add a3, a4, a4
	ld t0, 104(sp)
	slli a0, a3, 4
	add a2, t0, a0
	mv a0, t1
	lw a5, 56(a2)
	xor a3, t1, a5
	sltu t2, zero, a3
	bne t2, zero, label972
	mv a0, a1
.p2align 2
label972:
	sh2add a2, a0, a0
	ld t0, 104(sp)
	mv a3, a5
	slli a1, a2, 4
	add t1, t0, a1
	lw a2, 52(t1)
	bne t2, zero, label974
	mv a3, a4
.p2align 2
label974:
	sh2add a5, a3, a3
	ld t0, 104(sp)
	slli a1, a5, 4
	add t2, t0, a1
	mv a1, a2
	lw a4, 52(t2)
	xor a5, a2, a4
	sltu t1, zero, a5
	bne t1, zero, label976
	mv a1, a0
.p2align 2
label976:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	mv a2, a4
	add t2, t0, a0
	lw a5, 48(t2)
	bne t1, zero, label978
	mv a2, a3
.p2align 2
label978:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli a0, a4, 4
	add t2, t0, a0
	mv a0, a5
	lw a4, 48(t2)
	xor a3, a5, a4
	sltu t1, zero, a3
	bne t1, zero, label980
	mv a0, a1
.p2align 2
label980:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	mv a3, a4
	add t2, t0, a1
	lw a5, 44(t2)
	bne t1, zero, label982
	mv a3, a2
.p2align 2
label982:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a1, a4, 4
	add t2, t0, a1
	mv a1, a5
	lw a4, 44(t2)
	xor a2, a5, a4
	sltu t1, zero, a2
	bne t1, zero, label984
	mv a1, a0
.p2align 2
label984:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	mv a2, a4
	add t2, t0, a0
	lw a5, 40(t2)
	bne t1, zero, label986
	mv a2, a3
.p2align 2
label986:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli a0, a4, 4
	add t1, t0, a0
	mv a0, a5
	lw a4, 40(t1)
	xor a3, a5, a4
	sltu t2, zero, a3
	bne t2, zero, label988
	mv a0, a1
.p2align 2
label988:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	mv a3, a4
	add a5, t0, a1
	lw t1, 36(a5)
	bne t2, zero, label990
	mv a3, a2
.p2align 2
label990:
	sh2add a5, a3, a3
	ld t0, 104(sp)
	slli a1, a5, 4
	add a4, t0, a1
	mv a1, t1
	lw a5, 36(a4)
	xor a2, t1, a5
	sltu t2, zero, a2
	bne t2, zero, label992
	mv a1, a0
.p2align 2
label992:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	mv a2, a5
	add t1, t0, a0
	lw a4, 32(t1)
	bne t2, zero, label994
	mv a2, a3
.p2align 2
label994:
	sh2add a5, a2, a2
	ld t0, 104(sp)
	slli a0, a5, 4
	add t2, t0, a0
	mv a0, a4
	lw a5, 32(t2)
	xor a3, a4, a5
	sltu t1, zero, a3
	bne t1, zero, label996
	mv a0, a1
.p2align 2
label996:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	mv a3, a5
	add t2, t0, a1
	lw a4, 28(t2)
	bne t1, zero, label998
	mv a3, a2
.p2align 2
label998:
	sh2add a5, a3, a3
	ld t0, 104(sp)
	slli a1, a5, 4
	add a2, t0, a1
	mv a1, a4
	lw t1, 28(a2)
	xor a5, a4, t1
	sltu t2, zero, a5
	bne t2, zero, label1000
	mv a1, a0
.p2align 2
label1000:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	mv a2, t1
	add a4, t0, a0
	lw a5, 24(a4)
	bne t2, zero, label1002
	mv a2, a3
.p2align 2
label1002:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli a0, a4, 4
	add a3, t0, a0
	mv a0, a5
	lw a4, 24(a3)
	xor t1, a5, a4
	sltu t2, zero, t1
	bne t2, zero, label1004
	mv a0, a1
.p2align 2
label1004:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	mv a3, a4
	add a5, t0, a1
	lw t1, 20(a5)
	bne t2, zero, label1006
	mv a3, a2
.p2align 2
label1006:
	sh2add a4, a3, a3
	ld t0, 104(sp)
	slli a1, a4, 4
	add a2, t0, a1
	mv a1, t1
	lw a5, 20(a2)
	xor a4, t1, a5
	sltu t2, zero, a4
	bne t2, zero, label1008
	mv a1, a0
.p2align 2
label1008:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	mv a2, a5
	add t1, t0, a0
	lw a4, 16(t1)
	bne t2, zero, label1010
	mv a2, a3
.p2align 2
label1010:
	sh2add a5, a2, a2
	ld t0, 104(sp)
	slli a0, a5, 4
	add t2, t0, a0
	mv a0, a4
	lw a5, 16(t2)
	xor a3, a4, a5
	sltu t1, zero, a3
	bne t1, zero, label1012
	mv a0, a1
.p2align 2
label1012:
	sh2add a3, a0, a0
	ld t0, 104(sp)
	slli a1, a3, 4
	mv a3, a5
	add t2, t0, a1
	lw a4, 12(t2)
	bne t1, zero, label1014
	mv a3, a2
.p2align 2
label1014:
	sh2add a5, a3, a3
	ld t0, 104(sp)
	slli a1, a5, 4
	add t2, t0, a1
	mv a1, a4
	lw a5, 12(t2)
	xor a2, a4, a5
	sltu t1, zero, a2
	bne t1, zero, label1016
	mv a1, a0
.p2align 2
label1016:
	sh2add a2, a1, a1
	ld t0, 104(sp)
	slli a0, a2, 4
	mv a2, a5
	add t2, t0, a0
	lw a4, 8(t2)
	bne t1, zero, label1018
	mv a2, a3
.p2align 2
label1018:
	sh2add a5, a2, a2
	ld t0, 104(sp)
	slli a0, a5, 4
	add t1, t0, a0
	mv a0, a4
	lw a3, 8(t1)
	xor t2, a4, a3
	sltu a5, zero, t2
	bne a5, zero, label1020
	mv a0, a1
.p2align 2
label1020:
	sh2add a4, a0, a0
	ld t0, 104(sp)
	mv a1, a3
	slli t1, a4, 4
	add t2, t0, t1
	lw a4, 4(t2)
	bne a5, zero, label1022
	mv a1, a2
.p2align 2
label1022:
	sh2add a3, a1, a1
	ld t0, 104(sp)
	slli a2, a3, 4
	add t2, t0, a2
	mv a2, a4
	lw a3, 4(t2)
	xor t1, a4, a3
	sltu a5, zero, t1
	bne a5, zero, label1024
	mv a2, a0
.p2align 2
label1024:
	sh2add a4, a2, a2
	ld t0, 104(sp)
	slli t1, a4, 4
	mv a4, a3
	add t2, t0, t1
	lw a0, 0(t2)
	bne a5, zero, label1026
	mv a4, a1
.p2align 2
label1026:
	sh2add a5, a4, a4
	ld t0, 104(sp)
	mv a1, a0
	slli a3, a5, 4
	add t1, t0, a3
	lw a4, 0(t1)
	bne a0, a4, label1028
	mv a1, a2
.p2align 2
label1028:
	sh2add a0, a1, a1
	ld t0, 104(sp)
	slli a2, a0, 4
	add a1, t0, a2
	lw a0, 0(a1)
	j label174
.p2align 2
label1052:
	beq a0, a2, label426
	j label173
label340:
	mv s3, zero
	j label149
label1049:
	mv s4, zero
	j label155
label149:
	addiw a2, a0, -48
	bltu a2, s0, label354
	j label1049
label202:
	mv s8, zero
	j label103
label233:
	mv s9, zero
	j label114
