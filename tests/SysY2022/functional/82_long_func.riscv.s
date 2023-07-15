.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	li a4, 1
	li a1, 2
	li a0, 4
	li a2, 8
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a4, 0(sp)
	sw a1, 4(sp)
	sw a0, 8(sp)
	li a0, 16
	sw a2, 12(sp)
	li a2, 32
	sw a0, 16(sp)
	li a0, 64
	sw a2, 20(sp)
	li a2, 128
	sw a0, 24(sp)
	li a0, 256
	sw a2, 28(sp)
	li a2, 512
	sw a0, 32(sp)
	li a0, 1024
	sw a2, 36(sp)
	slli a3, a0, 1
	lui a2, 1
	sw a0, 40(sp)
	lui a0, 2
	sw a3, 44(sp)
	sw a2, 48(sp)
	lui a2, 4
	sw a0, 52(sp)
	lui a0, 8
	sw a2, 56(sp)
	sw a0, 60(sp)
	mv a0, zero
label2:
	ble a0, zero, label195
	mv a2, zero
	li t0, 1
	mv a3, a0
	mv a5, zero
label6:
	li t1, 16
	bge a5, t1, label15
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label12
	j label812
label109:
	li a1, 32767
	ble a0, a1, label110
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label2
label110:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label2
label15:
	beq a2, zero, label823
	mv a5, zero
	mv a3, a1
	j label16
label823:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label105
label16:
	beq a3, zero, label827
	mv a2, zero
	li t2, 1
	mv t0, a3
	mv t1, zero
	j label20
label827:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label105
label20:
	li t3, 16
	bge t1, t3, label29
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label26
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a2, a2, t3
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label20
label105:
	beq a1, zero, label109
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label112:
	li t3, 16
	bge t1, t3, label121
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label1021
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label112
label1105:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label105
label121:
	beq a3, zero, label1031
	mv t0, a4
label122:
	beq t0, zero, label1031
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label125:
	li t4, 16
	bge t2, t4, label1039
	j label130
label1039:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label137
label130:
	andi t4, t3, 1
	beq t4, zero, label135
	andi t4, t1, 1
	bne t4, zero, label1048
label1047:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label125
label137:
	li t3, 16
	bge a5, t3, label142
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label1091
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label137
label1091:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label137
label1048:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label125
label135:
	andi t4, t1, 1
	beq t4, zero, label1048
	j label1047
label1021:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label112
label142:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label143:
	li t3, 16
	bge t0, t3, label1074
	j label148
label1074:
	mv a5, a3
	mv t0, t2
	j label122
label148:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1079
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label143
label1079:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label143
label26:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label20
label1031:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label158:
	beq t0, zero, label161
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label164:
	li t4, 16
	bge t2, t4, label1120
	j label169
label1120:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label176
label169:
	andi t4, t3, 1
	beq t4, zero, label174
	andi t4, t1, 1
	bne t4, zero, label170
	j label1131
label176:
	li t3, 16
	bge a5, t3, label1148
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1153
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label176
label186:
	li t3, 16
	bge t0, t3, label1167
	j label191
label1167:
	mv a5, a4
	mv t0, t2
	j label158
label191:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label192
	j label1171
label192:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label186
label170:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label164
label1153:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label176
label174:
	andi t4, t1, 1
	beq t4, zero, label170
	j label1139
label1171:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label186
label1139:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label164
label1131:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label164
label1148:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label186
label161:
	li a4, 32767
	ble a1, a4, label1106
	j label1105
label1106:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label105
label12:
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label6
label29:
	beq a2, zero, label846
	mv t0, a4
	j label69
label846:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label32:
	beq t0, zero, label35
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label38
label35:
	li a4, 32767
	ble a3, a4, label854
	j label853
label854:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label16
label38:
	li t4, 16
	bge t2, t4, label868
	j label43
label868:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label50
label43:
	andi t4, t3, 1
	beq t4, zero, label48
	andi t4, t1, 1
	bne t4, zero, label877
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label38
label50:
	li t3, 16
	bge a5, t3, label896
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label901
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label50
label60:
	li t3, 16
	bge t0, t3, label915
	j label65
label915:
	mv a5, a4
	mv t0, t2
	j label32
label65:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label920
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label60
label920:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label60
label877:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label38
label901:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label50
label69:
	beq t0, zero, label931
	mv a2, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label72
label931:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label32
label72:
	li t4, 16
	bge t2, t4, label935
	j label77
label935:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label84
label77:
	andi t4, t3, 1
	beq t4, zero, label78
	andi t4, t1, 1
	bne t4, zero, label943
	j label942
label84:
	li t3, 16
	bge a5, t3, label89
	j label99
label89:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
label90:
	li t3, 16
	bge t0, t3, label970
	j label95
label970:
	mv a5, a2
	mv t0, t2
	j label69
label95:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label96
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label90
label96:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label90
label99:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label100
	j label986
label943:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label72
label100:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label84
label48:
	andi t4, t1, 1
	beq t4, zero, label877
	j label887
label78:
	andi t4, t1, 1
	beq t4, zero, label943
	j label942
label986:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label84
label887:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label38
label942:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a2, a2, t4
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label72
label896:
	lw t0, 4(sp)
	mv t2, zero
	li a5, 65535
	mulw t1, t1, t0
	mv t0, zero
	j label60
label812:
	sh2add t0, a5, s0
	lw t1, 0(t0)
	addw a2, a2, t1
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label6
label853:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label16
label195:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	li a4, 1
	li a1, 2
	mv a0, a4
label196:
	ble a0, zero, label389
	li t0, 1
	mv a2, a0
	mv a5, zero
	mv a3, zero
label200:
	li t1, 16
	bge a3, t1, label205
	j label385
label205:
	beq a5, zero, label1191
	mv a5, zero
	mv a3, a1
	j label206
label1191:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label295
label206:
	beq a3, zero, label1195
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label210
label1195:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label295
label210:
	li t3, 16
	bge t0, t3, label219
	and t2, t2, a2
	andi t3, t2, 1
	beq t3, zero, label1204
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label210
label219:
	beq t1, zero, label1214
	mv t0, a4
	j label220
label300:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label196
label385:
	and t2, t0, a2
	andi t0, t2, 1
	beq t0, zero, label386
	j label1551
label220:
	beq t0, zero, label1214
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label223:
	li t4, 16
	bge t2, t4, label1222
	j label228
label1222:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label235
label228:
	andi t4, t3, 1
	beq t4, zero, label231
	j label233
label231:
	andi t4, t1, 1
	beq t4, zero, label229
	j label1232
label233:
	andi t4, t1, 1
	bne t4, zero, label229
	j label1232
label235:
	li t3, 16
	bge a5, t3, label1250
	j label240
label1250:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label245
label240:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1255
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label235
label245:
	li t3, 16
	bge t0, t3, label1269
	j label250
label1269:
	mv a5, a2
	mv t0, t2
	j label220
label250:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label1274
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label245
label1274:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label245
label229:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label223
label1255:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label235
label1232:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a2, a2, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label223
label295:
	beq a1, zero, label299
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label302:
	li t3, 16
	bge t1, t3, label307
	j label381
label307:
	beq a3, zero, label1388
	mv t0, a4
	j label347
label1388:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label310
label314:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label295
label381:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label1541
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a3, a3, t3
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label302
label310:
	beq t0, zero, label313
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label316
label313:
	li a4, 32767
	ble a1, a4, label314
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	mv a5, a3
	j label295
label316:
	li t4, 16
	bge t2, t4, label1410
	j label340
label1410:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label321:
	li t3, 16
	bge a5, t3, label1414
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label327
	j label1418
label331:
	li t3, 16
	bge t0, t3, label1433
	j label336
label1433:
	mv a5, a4
	mv t0, t2
	j label310
label336:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label337
	j label1437
label337:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label331
label340:
	andi t4, t3, 1
	beq t4, zero, label345
	andi t4, t1, 1
	bne t4, zero, label341
	j label1456
label341:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label316
label327:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label321
label347:
	beq t0, zero, label1473
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label350
label1473:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label310
label350:
	li t4, 16
	bge t2, t4, label1477
	j label374
label1477:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label355:
	li t3, 16
	bge a5, t3, label1481
	j label360
label1481:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label365
label360:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label361
	j label1485
label365:
	li t3, 16
	bge t0, t3, label1500
	j label370
label1500:
	mv a5, a3
	mv t0, t2
	j label347
label370:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label371
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label365
label371:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label365
label374:
	andi t4, t3, 1
	beq t4, zero, label375
	j label377
label375:
	andi t4, t1, 1
	beq t4, zero, label1520
	j label1519
label377:
	andi t4, t1, 1
	bne t4, zero, label1520
	j label1519
label1520:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label350
label361:
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label355
label1418:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label321
label345:
	andi t4, t1, 1
	beq t4, zero, label341
	j label1456
label1437:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label331
label1485:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	addiw a5, a5, 1
	add t4, t2, t3
	srliw t3, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label355
label1456:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label316
label1519:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a3, a3, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label350
label1414:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label331
label1541:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label302
label1204:
	srliw t2, a2, 31
	addiw t0, t0, 1
	add t3, a2, t2
	mv t2, zero
	sraiw a2, t3, 1
	j label210
label386:
	srliw t0, a2, 31
	addiw a3, a3, 1
	add t1, a2, t0
	mv t0, zero
	sraiw a2, t1, 1
	j label200
label1214:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label256:
	beq t0, zero, label259
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label262
label259:
	li a4, 32767
	ble a3, a4, label260
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label206
label260:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label206
label262:
	li t4, 16
	bge t2, t4, label1303
	j label286
label1303:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label267:
	li t3, 16
	bge a5, t3, label1307
	j label272
label1307:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label277
label272:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label273
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label267
label277:
	li t3, 16
	bge t0, t3, label1326
	j label282
label1326:
	mv a5, a4
	mv t0, t2
	j label256
label282:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label283
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label277
label283:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label277
label286:
	andi t4, t3, 1
	beq t4, zero, label289
	andi t4, t1, 1
	bne t4, zero, label287
	j label1348
label287:
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label262
label273:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label267
label289:
	andi t4, t1, 1
	beq t4, zero, label287
label1348:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	srliw t6, t1, 31
	addiw t2, t2, 1
	add t5, t3, t4
	add t4, t1, t6
	sraiw t3, t5, 1
	sraiw t1, t4, 1
	j label262
label1551:
	sh2add t1, a3, s0
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t0, a2, 31
	addiw a3, a3, 1
	add t1, a2, t0
	mv t0, zero
	sraiw a2, t1, 1
	j label200
label299:
	li a1, 32767
	ble a0, a1, label300
	lw a1, 4(sp)
	lui a3, 16
	lw a4, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a3
	subw a0, a1, a4
	mv a4, a2
	mv a1, a5
	j label196
label389:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	li s1, 2
label390:
	li a0, 16
	bge s1, a0, label1562
	li a1, 2
	li a4, 1
	mv a0, s1
	j label591
label1562:
	mv a1, zero
label392:
	li a0, 16
	bge a1, a0, label1566
	li a2, 2
	li a5, 1
	mv a0, a1
	j label396
label1566:
	mv a0, zero
	j label394
label396:
	ble a0, zero, label589
	li t1, 1
	mv a3, a0
	mv t0, zero
	mv a4, zero
label400:
	li t2, 16
	bge a4, t2, label409
	and t2, t1, a3
	andi t1, t2, 1
	beq t1, zero, label1579
	sh2add t2, a4, s0
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t2, a3, 31
	addiw a4, a4, 1
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label400
label591:
	ble a0, zero, label784
	li t0, 1
	mv a2, a0
	mv a5, zero
	mv a3, zero
label595:
	li t1, 16
	bge a3, t1, label604
	and t1, t0, a2
	andi t0, t1, 1
	beq t0, zero, label601
	sh2add t1, a3, s0
	lw t0, 0(t1)
	addw a5, a5, t0
	srliw t1, a2, 31
	addiw a3, a3, 1
	add t0, a2, t1
	sraiw a2, t0, 1
	mv t0, zero
	j label595
label784:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	j label390
label604:
	beq a5, zero, label1976
	mv a5, zero
	mv a3, a1
	j label605
label1976:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label694
label605:
	beq a3, zero, label1980
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label609
label1980:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label694
label609:
	li t3, 16
	bge t0, t3, label614
	j label688
label614:
	beq t1, zero, label1988
	mv t0, a4
	j label615
label688:
	and t2, t2, a2
	andi t3, t2, 1
	beq t3, zero, label689
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label609
label615:
	beq t0, zero, label1988
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
label618:
	li t4, 16
	bge t2, t4, label1996
	j label642
label1996:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label623:
	li t3, 16
	bge a5, t3, label2000
	j label628
label2000:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label633
label628:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label2005
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label623
label633:
	li t3, 16
	bge t0, t3, label2019
	j label638
label2019:
	mv a5, a2
	mv t0, t2
	j label615
label638:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2024
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label633
label2024:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label633
label642:
	andi t4, t3, 1
	beq t4, zero, label643
	j label645
label2038:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a2, a2, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label618
label645:
	andi t4, t1, 1
	bne t4, zero, label2039
	j label2038
label2005:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label623
label2039:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label618
label643:
	andi t4, t1, 1
	beq t4, zero, label2039
	j label2038
label694:
	beq a1, zero, label698
	li t2, 1
	mv a3, a1
	mv t1, zero
	mv t0, zero
	j label701
label698:
	li a1, 32767
	ble a0, a1, label2155
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label591
label2155:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label591
label701:
	li t3, 16
	bge t0, t3, label706
	j label780
label712:
	li a4, 32767
	ble a1, a4, label713
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t0
	subw a1, a4, t1
	mv a4, a5
	mv a5, a3
	j label694
label713:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label694
label780:
	and t3, t2, a3
	andi t2, t3, 1
	beq t2, zero, label2326
	sh2add t3, t0, s0
	lw t2, 0(t3)
	addw t1, t1, t2
	srliw t2, a3, 31
	addiw t0, t0, 1
	add t3, a3, t2
	mv t2, zero
	sraiw a3, t3, 1
	j label701
label706:
	beq t1, zero, label2173
	mv t0, a4
	j label746
label2173:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label709
label746:
	beq t0, zero, label2258
	mv t1, t0
	mv t3, a5
	mv a3, zero
	mv t2, zero
	j label749
label2258:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label709
label749:
	li t4, 16
	bge t2, t4, label2262
	j label773
label2262:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label754:
	li t3, 16
	bge a5, t3, label759
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label2290
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label754
label773:
	andi t4, t3, 1
	beq t4, zero, label776
	j label778
label776:
	andi t4, t1, 1
	beq t4, zero, label774
label2307:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a3, a3, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label749
label778:
	andi t4, t1, 1
	bne t4, zero, label774
	j label2307
label709:
	beq t0, zero, label712
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label715:
	li t4, 16
	bge t2, t4, label2195
	j label720
label2195:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label727
label720:
	andi t4, t3, 1
	beq t4, zero, label725
	andi t4, t1, 1
	bne t4, zero, label721
	j label2206
label727:
	li t3, 16
	bge a5, t3, label732
	j label742
label733:
	li t3, 16
	bge t0, t3, label2230
	j label738
label2230:
	mv a5, a4
	mv t0, t2
	j label709
label738:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label739
	j label2234
label739:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label733
label742:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label743
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	j label727
label721:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label715
label743:
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	j label727
label774:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label749
label2290:
	srliw t3, t1, 31
	addiw a5, a5, 1
	add t4, t1, t3
	srliw t3, t0, 31
	sraiw t1, t4, 1
	add t4, t0, t3
	sraiw t0, t4, 1
	j label754
label725:
	andi t4, t1, 1
	beq t4, zero, label721
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label715
label2234:
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label733
label2206:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label715
label732:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label733
label2326:
	srliw t2, a3, 31
	addiw t0, t0, 1
	add t3, a3, t2
	mv t2, zero
	sraiw a3, t3, 1
	j label701
label759:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
label760:
	li t3, 16
	bge t0, t3, label2273
	j label765
label2273:
	mv a5, a3
	mv t0, t2
	j label746
label765:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label766
	sh2add t3, t0, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label760
label766:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label760
label689:
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label609
label601:
	srliw t1, a2, 31
	addiw a3, a3, 1
	add t0, a2, t1
	sraiw a2, t0, 1
	mv t0, zero
	j label595
label409:
	beq t0, zero, label1589
	mv t0, zero
	mv a4, a2
	j label502
label1589:
	mv a3, a5
	mv a5, a2
	mv t0, zero
	j label412
label502:
	beq a4, zero, label1778
	li t3, 1
	mv a3, a4
	mv t2, zero
	mv t1, zero
	j label506
label1778:
	mv a3, t0
	mv a5, a2
	mv t0, zero
	j label412
label506:
	li t4, 16
	bge t1, t4, label515
	and t4, t3, a3
	andi t3, t4, 1
	beq t3, zero, label1787
	sh2add t3, t1, s0
	lw t4, 0(t3)
	addw t2, t2, t4
	srliw t3, a3, 31
	addiw t1, t1, 1
	add t4, a3, t3
	mv t3, zero
	sraiw a3, t4, 1
	j label506
label515:
	beq t2, zero, label1797
	mv t1, a5
label516:
	beq t1, zero, label1797
	mv t2, t1
	mv t4, t0
	mv a3, zero
	mv t3, zero
label519:
	li t5, 16
	bge t3, t5, label1805
	j label524
label1805:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label531
label524:
	andi t5, t4, 1
	beq t5, zero, label527
	j label529
label527:
	andi t5, t2, 1
	beq t5, zero, label525
label1815:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a3, a3, t6
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label519
label529:
	andi t5, t2, 1
	bne t5, zero, label525
	j label1815
label531:
	li t4, 16
	bge t0, t4, label1833
	j label536
label1833:
	lw t1, 4(sp)
	li t0, 65535
	mv t3, zero
	mulw t2, t2, t1
	mv t1, zero
	j label541
label536:
	and t4, t1, t3
	andi t5, t4, 1
	beq t5, zero, label1838
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t2, t2, t4
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label531
label541:
	li t4, 16
	bge t1, t4, label1852
	j label546
label1852:
	mv t0, a3
	mv t1, t3
	j label516
label546:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1857
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label541
label1857:
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label541
label525:
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label519
label1838:
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label531
label412:
	beq a2, zero, label416
	li t3, 1
	mv a4, a2
	mv t2, zero
	mv t1, zero
	j label419
label416:
	li a2, 32767
	ble a0, a2, label417
	j label1596
label419:
	li t4, 16
	bge t1, t4, label424
	j label498
label431:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a4
	divw a2, a2, t1
	j label412
label498:
	and t4, t3, a4
	andi t3, t4, 1
	beq t3, zero, label1768
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label419
label424:
	beq t2, zero, label1615
	mv t1, a5
	j label464
label1615:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label427
label464:
	beq t1, zero, label1700
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
	j label467
label1700:
	mv a4, t0
	mv t0, a5
	mv t1, a5
	j label427
label467:
	li t5, 16
	bge t3, t5, label1704
	j label472
label1704:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label479
label472:
	andi t5, t4, 1
	beq t5, zero, label475
	andi t5, t2, 1
	bne t5, zero, label473
	j label1714
label479:
	li t4, 16
	bge t0, t4, label484
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label495
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label479
label427:
	beq t1, zero, label430
	mv a5, zero
	mv t2, t1
	mv t4, t0
	mv t3, zero
	j label433
label430:
	li a5, 32767
	ble a2, a5, label431
	lw a5, 4(sp)
	lui t1, 16
	lw t2, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t1
	subw a2, a5, t2
	mv a5, t0
	mv t0, a4
	j label412
label433:
	li t5, 16
	bge t3, t5, label1637
	j label438
label1637:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label445
label438:
	andi t5, t4, 1
	beq t5, zero, label439
	andi t5, t2, 1
	bne t5, zero, label1645
	j label1644
label445:
	li t4, 16
	bge t0, t4, label1665
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label451
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t2, t2, t5
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label445
label455:
	li t4, 16
	bge t1, t4, label1684
	j label460
label1684:
	mv t0, a5
	mv t1, t3
	j label427
label460:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1689
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label455
label1689:
	srliw t4, t2, 31
	addiw t1, t1, 1
	add t5, t2, t4
	srliw t4, t0, 31
	sraiw t2, t5, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label455
label1645:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label433
label451:
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label445
label439:
	andi t5, t2, 1
	beq t5, zero, label1645
label1644:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label433
label473:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label467
label495:
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label479
label475:
	andi t5, t2, 1
	beq t5, zero, label473
label1714:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a4, a4, t5
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label467
label1665:
	lw t1, 4(sp)
	li t0, 65535
	mv t3, zero
	mulw t2, t2, t1
	mv t1, zero
	j label455
label1768:
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label419
label484:
	lw t0, 4(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
label485:
	li t4, 16
	bge t1, t4, label1739
	j label490
label1739:
	mv t0, a4
	mv t1, t3
	j label464
label490:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1744
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label485
label1744:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label485
label1787:
	srliw t3, a3, 31
	addiw t1, t1, 1
	add t4, a3, t3
	mv t3, zero
	sraiw a3, t4, 1
	j label506
label1988:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label651:
	beq t0, zero, label654
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label657:
	li t4, 16
	bge t2, t4, label2077
	j label662
label2077:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label669
label662:
	andi t4, t3, 1
	beq t4, zero, label665
	j label667
label665:
	andi t4, t1, 1
	beq t4, zero, label663
	j label2087
label667:
	andi t4, t1, 1
	bne t4, zero, label663
	j label2096
label669:
	li t3, 16
	bge a5, t3, label674
	j label684
label675:
	li t3, 16
	bge t0, t3, label2112
	j label680
label2112:
	mv a5, a4
	mv t0, t2
	j label651
label680:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label681
	j label2116
label681:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label675
label684:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label2129
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t1, t1, t3
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label669
label663:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label657
label2129:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label669
label2116:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label675
label2096:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a4, a4, t5
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label657
label2087:
	sh2add t5, t2, s0
	lw t4, 0(t5)
	addw a4, a4, t4
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label657
label674:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label675
label654:
	li a4, 32767
	ble a3, a4, label655
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label605
label655:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label605
label1579:
	srliw t2, a3, 31
	addiw a4, a4, 1
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label400
label1797:
	mv a3, t0
	mv t0, a5
	mv t1, a5
label552:
	beq t1, zero, label555
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label558:
	li t5, 16
	bge t3, t5, label1886
	j label563
label1886:
	mv t2, t0
	mv t3, zero
	mv t0, zero
	j label570
label563:
	andi t5, t4, 1
	beq t5, zero, label568
	andi t5, t2, 1
	bne t5, zero, label564
label1897:
	sh2add t6, t3, s0
	lw t5, 0(t6)
	addw a5, a5, t5
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label558
label568:
	andi t5, t2, 1
	beq t5, zero, label564
	j label1897
label570:
	li t4, 16
	bge t0, t4, label1914
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label1919
	sh2add t4, t0, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	j label570
label580:
	li t4, 16
	bge t1, t4, label1933
	j label585
label1933:
	mv t0, a5
	mv t1, t3
	j label552
label585:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1938
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label580
label1938:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label580
label564:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label558
label1919:
	srliw t4, t2, 31
	srliw t5, t1, 31
	addiw t0, t0, 1
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	j label570
label1914:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label580
label555:
	li a5, 32767
	ble a4, a5, label1872
	lw a5, 4(sp)
	lui t2, 16
	lw t1, 60(sp)
	divw a4, a4, a5
	addw a5, a4, t2
	subw a4, a5, t1
	mv a5, t0
	mv t0, a3
	j label502
label1872:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a3
	divw a4, a4, t1
	j label502
label417:
	lw a4, 4(sp)
	mv a2, t0
	mv a5, a3
	divw a0, a0, a4
	j label396
label1596:
	lw a2, 4(sp)
	lui a4, 16
	lw a5, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a4
	subw a0, a2, a5
	mv a5, a3
	mv a2, t0
	j label396
label394:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
label589:
	sh2add a0, a1, s0
	lw a2, 0(a0)
	beq a5, a2, label590
	li a0, 1
	j label394
label590:
	addiw a1, a1, 1
	j label392
