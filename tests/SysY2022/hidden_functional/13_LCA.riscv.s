.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
f:
	.zero	800400
.p2align 3
dep:
	.zero	40020
.p2align 3
to:
	.zero	40020
.p2align 3
next:
	.zero	40020
.p2align 3
head:
	.zero	40020
.text
.p2align 2
tree:
	addi sp, sp, -48
	mv a2, a0
pcrel96:
	auipc a5, %pcrel_hi(dep)
pcrel97:
	auipc t1, %pcrel_hi(f)
	sh2add t0, a0, a0
	addi a0, a5, %pcrel_lo(pcrel96)
	sd ra, 0(sp)
	slli a5, t0, 4
	sh2add a4, a2, a0
	sd s0, 8(sp)
	addiw s0, a1, 1
	sd s1, 16(sp)
pcrel98:
	auipc a3, %pcrel_hi(next)
	sd s2, 24(sp)
	addi s2, a3, %pcrel_lo(pcrel98)
	sd s3, 32(sp)
	li s3, -1
	sd s4, 40(sp)
	sw a1, 0(a4)
	addi a1, t1, %pcrel_lo(pcrel97)
	add a4, a1, a5
pcrel99:
	auipc a5, %pcrel_hi(to)
	lw a0, 0(a4)
	addi s1, a5, %pcrel_lo(pcrel99)
	beq a0, zero, label8
	mv a0, a4
	mv a3, zero
.p2align 2
label3:
	lw a5, 0(a4)
	addi a4, a0, 4
	sh2add t2, a5, a5
	slli t3, t2, 4
	add t1, a1, t3
	sh2add t0, a3, t1
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
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getch
	li a2, 9
	li s0, -1
pcrel1204:
	auipc a3, %pcrel_hi(next)
	addiw a1, a0, -48
	addi s1, a3, %pcrel_lo(pcrel1204)
	bleu a1, a2, label214
	mv s2, a0
	mv s3, zero
.p2align 2
label101:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label1035
	mv a1, s3
label1035:
	li a2, 9
	bleu a3, a2, label222
	mv s2, a0
	mv s3, a1
	j label101
label222:
	mv s3, a1
label104:
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label227
	mv s2, a0
	mv s4, zero
	j label208
.p2align 2
label761:
	mv s2, a0
.p2align 2
label208:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s4, s2, a4
	bltu a1, a2, label761
label107:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label1037
	mv s2, s4
label1037:
	addiw s5, s2, -2
	addiw s6, s2, -17
	li a2, 9
	bleu a1, a2, label238
	mv s3, a0
	mv s4, zero
	j label205
.p2align 2
label752:
	mv s3, a0
	mv s4, a1
.p2align 2
label205:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label1142
	mv a1, s4
label1142:
	li a2, 9
	bgtu a3, a2, label752
	mv s4, a1
label109:
	addiw a1, a0, -48
	li a2, 10
	bgeu a1, a2, label243
	mv s3, a0
	mv s7, zero
.p2align 2
label112:
	jal getch
	sh2add a2, s7, s7
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s7, s3, a3
	bgeu a1, a2, label115
	mv s3, a0
	j label112
label115:
	subw a0, zero, s7
	mv s3, a0
	bne s4, zero, label1039
	mv s3, s7
label1039:
	auipc a0, %pcrel_hi(dep)
	lui a2, 259060
pcrel1205:
	auipc a3, %pcrel_hi(head)
	addi a5, a0, %pcrel_lo(label1039)
	addiw a1, a2, -193
	addi s4, a3, %pcrel_lo(pcrel1205)
	sd a5, 104(sp)
	sw a1, %pcrel_lo(label1039)(a0)
	ble s2, zero, label139
	addiw a2, s2, 1
	li a1, 4
	ble a2, a1, label268
	li a3, 16
	ble s5, a3, label272
	addi a0, s4, 4
	li a1, 1
	j label128
.p2align 2
label131:
	addi a0, a0, 64
.p2align 2
label128:
	addiw a1, a1, 16
	sw s0, 0(a0)
	sw s0, 4(a0)
	sw s0, 8(a0)
	sw s0, 12(a0)
	sw s0, 16(a0)
	sw s0, 20(a0)
	sw s0, 24(a0)
	sw s0, 28(a0)
	sw s0, 32(a0)
	sw s0, 36(a0)
	sw s0, 40(a0)
	sw s0, 44(a0)
	sw s0, 48(a0)
	sw s0, 52(a0)
	sw s0, 56(a0)
	sw s0, 60(a0)
	bgt s6, a1, label131
	mv a0, a1
label119:
	ble s5, a0, label276
	sh2add a1, a0, s4
label123:
	addiw a0, a0, 4
	sw s0, 0(a1)
	sw s0, 4(a1)
	sw s0, 8(a1)
	sw s0, 12(a1)
	ble s5, a0, label132
	addi a1, a1, 16
	j label123
label132:
	ble a2, a0, label139
	sh2add a1, a0, s4
label135:
	addiw a0, a0, 1
	sw s0, 0(a1)
	ble a2, a0, label139
	addi a1, a1, 4
	j label135
label139:
	auipc a1, %pcrel_hi(f)
	li a0, 1
	addi s0, a1, %pcrel_lo(label139)
	beq s2, a0, label140
pcrel1206:
	auipc a0, %pcrel_hi(to)
	mv s6, zero
	li s7, 1
	addi s5, a0, %pcrel_lo(pcrel1206)
	j label178
.p2align 2
label734:
	subw a0, zero, s11
	mv a1, a0
	bne s9, zero, label1140
.p2align 2
label1139:
	mv a1, s11
.p2align 2
label1140:
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
	beq s2, s7, label140
	addi s5, s5, 4
.p2align 2
label178:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label671
	mv s8, a0
	mv s9, zero
.p2align 2
label182:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s8, a2, label1134
	mv a1, s9
label1134:
	li a2, 9
	bleu a3, a2, label679
	mv s8, a0
	mv s9, a1
	j label182
.p2align 2
label679:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label1162
.p2align 2
label685:
	mv s8, a0
	mv s10, zero
	j label202
.p2align 2
label744:
	mv s8, a0
.p2align 2
label202:
	jal getch
	sh2add a2, s10, s10
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s10, s8, a4
	bltu a1, a2, label744
.p2align 2
label188:
	jal getch
	subw a2, zero, s10
	addiw a1, a0, -48
	mv s8, a2
	bne s9, zero, label1136
	mv s8, s10
label1136:
	li a2, 9
	bleu a1, a2, label693
	mv s9, a0
	mv s10, zero
.p2align 2
label190:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s9, a2, label1138
	mv a1, s10
label1138:
	li a2, 9
	bleu a3, a2, label701
	mv s9, a0
	mv s10, a1
	j label190
.p2align 2
label701:
	mv s9, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label1163
.p2align 2
label707:
	mv s10, a0
	mv s11, zero
.p2align 2
label199:
	jal getch
	sh2add a2, s11, s11
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s11, s10, a3
	bgeu a1, a2, label734
	mv s10, a0
	j label199
label140:
	li a0, 1
	li a1, 1
	jal tree
	beq s3, zero, label141
	mv s1, s3
	j label142
.p2align 2
label167:
	sh2add a0, a3, a3
	slli a4, a0, 4
	sh2add a0, a1, a1
	add a5, s0, a4
	slli a4, a0, 4
	lw a2, 76(a5)
	add t1, s0, a4
	mv a0, a2
	lw a5, 76(t1)
	xor t2, a2, a5
	sltu t0, zero, t2
	bne t0, zero, label1054
	mv a0, a3
label1054:
	sh2add a2, a0, a0
	slli a3, a2, 4
	mv a2, a5
	add t1, s0, a3
	lw a4, 72(t1)
	bne t0, zero, label1056
	mv a2, a1
label1056:
	sh2add a3, a2, a2
	slli t0, a3, 4
	mv a3, a4
	add a1, s0, t0
	lw a5, 72(a1)
	xor t1, a4, a5
	sltu t0, zero, t1
	bne t0, zero, label1058
	mv a3, a0
label1058:
	sh2add a1, a3, a3
	slli t1, a1, 4
	mv a1, a5
	add a0, s0, t1
	lw a4, 68(a0)
	bne t0, zero, label1060
	mv a1, a2
label1060:
	sh2add t0, a1, a1
	slli a2, t0, 4
	add a0, s0, a2
	lw a5, 68(a0)
	mv a0, a4
	xor t1, a4, a5
	sltu t0, zero, t1
	bne t0, zero, label1062
	mv a0, a3
label1062:
	sh2add a2, a0, a0
	slli a4, a2, 4
	mv a2, a5
	add t1, s0, a4
	lw a3, 64(t1)
	bne t0, zero, label1064
	mv a2, a1
label1064:
	sh2add a4, a2, a2
	slli a1, a4, 4
	add t1, s0, a1
	mv a1, a3
	lw a5, 64(t1)
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label1066
	mv a1, a0
label1066:
	sh2add t2, a1, a1
	mv a0, a5
	slli t1, t2, 4
	add a3, s0, t1
	lw a4, 60(a3)
	bne t0, zero, label1068
	mv a0, a2
label1068:
	sh2add a3, a0, a0
	slli a2, a3, 4
	mv a3, a4
	add t2, s0, a2
	lw a5, 60(t2)
	xor t1, a4, a5
	sltu t0, zero, t1
	bne t0, zero, label1070
	mv a3, a1
label1070:
	sh2add a2, a3, a3
	slli t1, a2, 4
	mv a2, a5
	add a1, s0, t1
	lw a4, 56(a1)
	bne t0, zero, label1072
	mv a2, a0
label1072:
	sh2add a1, a2, a2
	slli t0, a1, 4
	mv a1, a4
	add t1, s0, t0
	lw a5, 56(t1)
	xor a0, a4, a5
	sltu t0, zero, a0
	bne t0, zero, label1074
	mv a1, a3
label1074:
	sh2add a0, a1, a1
	slli a4, a0, 4
	mv a0, a5
	add t1, s0, a4
	lw a3, 52(t1)
	bne t0, zero, label1076
	mv a0, a2
label1076:
	sh2add a5, a0, a0
	slli t1, a5, 4
	add a2, s0, t1
	lw a4, 52(a2)
	mv a2, a3
	xor t0, a3, a4
	sltu a5, zero, t0
	bne a5, zero, label1078
	mv a2, a1
label1078:
	sh2add a3, a2, a2
	slli t1, a3, 4
	mv a3, a4
	add t0, s0, t1
	lw a1, 48(t0)
	bne a5, zero, label1080
	mv a3, a0
label1080:
	sh2add a4, a3, a3
	slli a5, a4, 4
	mv a4, a1
	add t0, s0, a5
	lw a0, 48(t0)
	xor t1, a1, a0
	sltu a5, zero, t1
	bne a5, zero, label1082
	mv a4, a2
label1082:
	sh2add a1, a4, a4
	slli t1, a1, 4
	mv a1, a0
	add t0, s0, t1
	lw a2, 44(t0)
	bne a5, zero, label1084
	mv a1, a3
label1084:
	sh2add t1, a1, a1
	slli t0, t1, 4
	add a0, s0, t0
	lw a5, 44(a0)
	mv a0, a2
	xor a3, a2, a5
	sltu t0, zero, a3
	bne t0, zero, label1086
	mv a0, a4
label1086:
	sh2add a2, a0, a0
	slli t1, a2, 4
	mv a2, a5
	add a4, s0, t1
	lw a3, 40(a4)
	bne t0, zero, label1088
	mv a2, a1
label1088:
	sh2add a4, a2, a2
	slli t0, a4, 4
	add a1, s0, t0
	lw a5, 40(a1)
	mv a1, a3
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label1090
	mv a1, a0
label1090:
	sh2add a3, a1, a1
	slli t1, a3, 4
	mv a3, a5
	add a0, s0, t1
	lw a4, 36(a0)
	bne t0, zero, label1092
	mv a3, a2
label1092:
	sh2add a5, a3, a3
	slli t1, a5, 4
	add a0, s0, t1
	lw a2, 36(a0)
	mv a0, a4
	xor t0, a4, a2
	sltu a5, zero, t0
	bne a5, zero, label1094
	mv a0, a1
label1094:
	sh2add t1, a0, a0
	mv a1, a2
	slli t2, t1, 4
	add t0, s0, t2
	lw a4, 32(t0)
	bne a5, zero, label1096
	mv a1, a3
label1096:
	sh2add a2, a1, a1
	slli t0, a2, 4
	mv a2, a4
	add t1, s0, t0
	lw a5, 32(t1)
	xor a3, a4, a5
	sltu t0, zero, a3
	bne t0, zero, label1098
	mv a2, a0
label1098:
	sh2add a4, a2, a2
	mv a0, a5
	slli t2, a4, 4
	add t1, s0, t2
	lw a3, 28(t1)
	bne t0, zero, label1100
	mv a0, a1
label1100:
	sh2add a5, a0, a0
	slli a1, a5, 4
	add t1, s0, a1
	mv a1, a3
	lw a4, 28(t1)
	xor t0, a3, a4
	sltu a5, zero, t0
	bne a5, zero, label1102
	mv a1, a2
label1102:
	sh2add t1, a1, a1
	mv a2, a4
	slli t0, t1, 4
	add t2, s0, t0
	lw a3, 24(t2)
	bne a5, zero, label1104
	mv a2, a0
label1104:
	sh2add a4, a2, a2
	slli t0, a4, 4
	add a0, s0, t0
	lw a5, 24(a0)
	mv a0, a3
	xor a4, a3, a5
	sltu t0, zero, a4
	bne t0, zero, label1106
	mv a0, a1
label1106:
	sh2add a3, a0, a0
	slli a1, a3, 4
	mv a3, a5
	add t1, s0, a1
	lw a4, 20(t1)
	bne t0, zero, label1108
	mv a3, a2
label1108:
	sh2add t1, a3, a3
	slli t0, t1, 4
	add a1, s0, t0
	lw a5, 20(a1)
	mv a1, a4
	xor a2, a4, a5
	sltu t0, zero, a2
	bne t0, zero, label1110
	mv a1, a0
label1110:
	sh2add t1, a1, a1
	mv a0, a5
	slli t2, t1, 4
	add a4, s0, t2
	lw a2, 16(a4)
	bne t0, zero, label1112
	mv a0, a3
label1112:
	sh2add t0, a0, a0
	slli a3, t0, 4
	add a4, s0, a3
	mv a3, a2
	lw a5, 16(a4)
	xor t1, a2, a5
	sltu t0, zero, t1
	bne t0, zero, label1114
	mv a3, a1
label1114:
	sh2add a2, a3, a3
	slli a1, a2, 4
	mv a2, a5
	add t1, s0, a1
	lw a4, 12(t1)
	bne t0, zero, label1116
	mv a2, a0
label1116:
	sh2add a5, a2, a2
	slli t0, a5, 4
	add a1, s0, t0
	lw a0, 12(a1)
	mv a1, a4
	xor t1, a4, a0
	sltu a5, zero, t1
	bne a5, zero, label1118
	mv a1, a3
label1118:
	sh2add t1, a1, a1
	mv a3, a0
	slli t2, t1, 4
	add t0, s0, t2
	lw a4, 8(t0)
	bne a5, zero, label1120
	mv a3, a2
label1120:
	sh2add a0, a3, a3
	slli a5, a0, 4
	mv a0, a4
	add t0, s0, a5
	lw a2, 8(t0)
	xor t1, a4, a2
	sltu a5, zero, t1
	bne a5, zero, label1122
	mv a0, a1
label1122:
	sh2add t1, a0, a0
	mv a1, a2
	slli t2, t1, 4
	add t0, s0, t2
	lw a4, 4(t0)
	bne a5, zero, label1124
	mv a1, a3
label1124:
	sh2add a2, a1, a1
	slli a5, a2, 4
	mv a2, a4
	add t1, s0, a5
	lw a3, 4(t1)
	xor t0, a4, a3
	sltu a5, zero, t0
	bne a5, zero, label1126
	mv a2, a0
label1126:
	sh2add a4, a2, a2
	slli t0, a4, 4
	mv a4, a3
	add t1, s0, t0
	lw a0, 0(t1)
	bne a5, zero, label1128
	mv a4, a1
label1128:
	sh2add t1, a4, a4
	mv a1, a0
	slli t0, t1, 4
	add a5, s0, t0
	lw a3, 0(a5)
	bne a0, a3, label1130
	mv a1, a2
label1130:
	sh2add a3, a1, a1
	slli a4, a3, 4
	add a2, s0, a4
	lw a0, 0(a2)
.p2align 2
label165:
	jal putint
	li a2, 10
	mv a0, a2
	jal putch
	addiw s1, s1, -1
	beq s1, zero, label141
.p2align 2
label142:
	jal getch
	li a2, 9
	addiw a1, a0, -48
	bleu a1, a2, label337
	mv s2, a0
	mv s3, zero
	j label174
.p2align 2
label664:
	mv s2, a0
	mv s3, a1
.p2align 2
label174:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s2, a2, label1132
	mv a1, s3
label1132:
	li a2, 9
	bgtu a3, a2, label664
	mv s2, a0
	mv s3, a1
	li a2, 10
	addiw a0, a0, -48
	bgeu a0, a2, label342
.p2align 2
label343:
	mv s4, zero
	j label171
.p2align 2
label656:
	mv s2, a0
.p2align 2
label171:
	jal getch
	sh2add a2, s4, s4
	addiw a1, a0, -48
	slliw a3, a2, 1
	li a2, 10
	addi a4, a3, -48
	addw s4, s2, a4
	bltu a1, a2, label656
.p2align 2
label147:
	jal getch
	subw a2, zero, s4
	addiw a1, a0, -48
	mv s2, a2
	bne s3, zero, label1042
	mv s2, s4
label1042:
	li a2, 9
	bleu a1, a2, label351
	mv s3, a0
	mv s4, zero
.p2align 2
label149:
	jal getch
	li a2, 45
	li a1, 1
	addiw a3, a0, -48
	beq s3, a2, label1044
	mv a1, s4
label1044:
	li a2, 9
	bleu a3, a2, label359
	mv s3, a0
	mv s4, a1
	j label149
.p2align 2
label359:
	mv s3, a1
	addiw a3, a0, -48
	li a2, 10
	bgeu a3, a2, label1157
.p2align 2
label365:
	mv s4, a0
	mv s5, zero
	j label168
.p2align 2
label647:
	mv s4, a0
.p2align 2
label168:
	jal getch
	sh2add a2, s5, s5
	addiw a1, a0, -48
	slliw a4, a2, 1
	li a2, 10
	addi a3, a4, -48
	addw s5, s4, a3
	bltu a1, a2, label647
	subw a1, zero, s5
	mv a0, a1
	bne s3, zero, label1046
	mv a0, s5
	ld a5, 104(sp)
	sh2add a3, s2, a5
	sh2add a1, s5, a5
	lw a4, 0(a3)
	mv a3, s5
	lw t0, 0(a1)
	slt a2, a4, t0
	bne a2, zero, label1048
	mv a3, s2
	sh2add t0, s2, a5
	lw a4, 0(t0)
	mv a1, s5
	sh2add a2, s5, a5
	lw a0, 0(a2)
	ble a4, a0, label163
.p2align 2
label387:
	li a2, 19
	j label157
.p2align 2
label160:
	ld a5, 104(sp)
	addiw a2, a2, -1
	sh2add t0, a3, a5
	lw a4, 0(t0)
	bge a0, a4, label403
.p2align 2
label157:
	sh2add a4, a3, a3
	slli t1, a4, 4
	add t0, s0, t1
	sh2add a5, a2, t0
	lw a4, 0(a5)
	beq a4, zero, label160
	ld a5, 104(sp)
	mv t0, a4
	sh2add t2, a4, a5
	lw t1, 0(t2)
	ble a0, t1, label1052
	mv t0, a3
label1052:
	mv a3, t0
	addiw a2, a2, -1
	ld a5, 104(sp)
	sh2add t0, t0, a5
	lw a4, 0(t0)
	blt a0, a4, label157
	bne a1, a3, label167
.p2align 2
label413:
	mv a0, a3
	j label165
.p2align 2
label403:
	beq a1, a3, label413
	j label167
label351:
	mv s3, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label365
label1157:
	mv s5, zero
	mv a1, zero
	mv a0, zero
	bne s3, zero, label1046
label1046:
	ld a5, 104(sp)
	sh2add a3, s2, a5
	sh2add a1, a0, a5
	lw a4, 0(a3)
	mv a3, a0
	lw t0, 0(a1)
	slt a2, a4, t0
	bne a2, zero, label1048
	mv a3, s2
label1048:
	ld a5, 104(sp)
	mv a1, s2
	sh2add t0, a3, a5
	lw a4, 0(t0)
	bne a2, zero, label1050
	mv a1, a0
label1050:
	ld a5, 104(sp)
	sh2add a2, a1, a5
	lw a0, 0(a2)
	bgt a4, a0, label387
	j label163
label141:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
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
label337:
	mv s2, a0
	mv s3, zero
	addiw a0, a0, -48
	li a2, 10
	bltu a0, a2, label343
	j label342
label671:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label685
label1162:
	mv s10, zero
	j label188
label693:
	mv s9, zero
	addiw a3, a0, -48
	li a2, 10
	bltu a3, a2, label707
label1163:
	mv s11, zero
	mv a0, zero
	mv a1, zero
	bne s9, zero, label1140
	j label1139
label342:
	mv s4, zero
	j label147
label163:
	beq a1, a3, label413
	j label167
label243:
	mv s7, zero
	j label115
label227:
	mv s4, zero
	j label107
label214:
	mv s3, zero
	j label104
label268:
	li a0, 1
	j label132
label276:
	mv a0, a1
	j label132
label272:
	li a0, 1
	mv a1, zero
	j label119
label238:
	mv s4, zero
	j label109
