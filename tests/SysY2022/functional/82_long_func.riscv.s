.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	li a4, 1
	li a1, 2
	li a2, 4
	li a0, 8
	li a3, 256
	sd s0, 80(sp)
	addi s0, sp, 0
	sd s1, 72(sp)
	sd ra, 64(sp)
	sw a4, 0(sp)
	sw a1, 4(sp)
	sw a2, 8(sp)
	li a2, 16
	sw a0, 12(sp)
	li a0, 32
	sw a2, 16(sp)
	li a2, 64
	sw a0, 20(sp)
	li a0, 128
	sw a2, 24(sp)
	li a2, 512
	sw a0, 28(sp)
	li a0, 1024
	sw a3, 32(sp)
	slli a3, a0, 1
	sw a2, 36(sp)
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
	ble a0, zero, label191
	mv a2, zero
	li t0, 1
	mv a3, a0
	mv a5, zero
label6:
	li t1, 16
	bge a5, t1, label15
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label797
	sh2add t0, a5, s0
	lw t1, 0(t0)
	addw a2, a2, t1
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label6
label104:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label2
label15:
	beq a2, zero, label807
	mv a5, zero
	mv a3, a1
	j label106
label807:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label18
label106:
	beq a3, zero, label988
	li t2, 1
	mv a2, a3
	mv t1, zero
	mv t0, zero
	j label110
label988:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label18
label110:
	li t3, 16
	bge t0, t3, label115
	and t3, t2, a2
	andi t2, t3, 1
	beq t2, zero, label1141
	sh2add t2, t0, s0
	lw t3, 0(t2)
	addw t1, t1, t3
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label110
label18:
	beq a1, zero, label103
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label22:
	li t3, 16
	bge t1, t3, label31
	and t2, t2, t0
	andi t3, t2, 1
	beq t3, zero, label820
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a3, a3, t3
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label22
label67:
	beq t0, zero, label70
	mv a4, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label73
label70:
	li a4, 32767
	ble a1, a4, label901
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label18
label901:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label18
label73:
	li t4, 16
	bge t2, t4, label915
	j label78
label915:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label84
label78:
	andi t4, t3, 1
	beq t4, zero, label80
	j label81
label79:
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
	j label73
label80:
	andi t4, t1, 1
	beq t4, zero, label927
	j label79
label81:
	andi t4, t1, 1
	bne t4, zero, label927
	j label79
label84:
	li t3, 16
	bge a5, t3, label89
	j label99
label89:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label90:
	li t3, 16
	bge t0, t3, label946
	j label95
label946:
	mv a5, a4
	mv t0, t2
	j label67
label95:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label951
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
	j label90
label951:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label90
label99:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label100
	j label962
label927:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label73
label100:
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label84
label962:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label84
label115:
	beq t1, zero, label996
	mv t0, a4
	j label154
label996:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label118
label154:
	beq t0, zero, label1077
	mv a2, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
	j label157
label1077:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label118
label157:
	li t4, 16
	bge t2, t4, label1081
	j label181
label1081:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label162:
	li t3, 16
	bge a5, t3, label1085
	j label167
label1085:
	lw t0, 4(sp)
	mv t2, zero
	li a5, 65535
	mulw t1, t1, t0
	mv t0, zero
	j label172
label167:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label1090
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
	j label162
label181:
	andi t4, t3, 1
	beq t4, zero, label186
	andi t4, t1, 1
	bne t4, zero, label183
	j label1131
label118:
	beq t0, zero, label121
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
	j label124
label121:
	li a4, 32767
	ble a3, a4, label122
	j label1003
label124:
	li t4, 16
	bge t2, t4, label1018
	j label148
label1018:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label129:
	li t3, 16
	bge a5, t3, label1022
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label135
	j label1026
label139:
	li t3, 16
	bge t0, t3, label1041
	j label144
label1041:
	mv a5, a4
	mv t0, t2
	j label118
label144:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1046
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
	j label139
label1046:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label139
label148:
	andi t4, t3, 1
	beq t4, zero, label152
	andi t4, t1, 1
	bne t4, zero, label150
	j label1061
label152:
	andi t4, t1, 1
	beq t4, zero, label150
	j label1061
label135:
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label129
label150:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label124
label172:
	li t3, 16
	bge t0, t3, label1104
	j label177
label1104:
	mv a5, a2
	mv t0, t2
	j label154
label177:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label178
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
	j label172
label178:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label172
label183:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label157
label1090:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label162
label1061:
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
	j label124
label1026:
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t3, t2, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t2, t3
	add t3, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t3, 1
	j label129
label1131:
	sh2add t4, t2, s0
	lw t5, 0(t4)
	addw a2, a2, t5
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label157
label186:
	andi t4, t1, 1
	beq t4, zero, label183
	j label1131
label820:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label22
label1022:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label139
label1141:
	srliw t3, a2, 31
	addiw t0, t0, 1
	add t2, a2, t3
	sraiw a2, t2, 1
	mv t2, zero
	j label110
label31:
	beq a3, zero, label830
	mv t0, a4
label32:
	beq t0, zero, label830
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label35:
	li t4, 16
	bge t2, t4, label838
	j label59
label838:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label40:
	li t3, 16
	bge a5, t3, label45
	j label55
label45:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
label46:
	li t3, 16
	bge t0, t3, label849
	j label51
label849:
	mv a5, a3
	mv t0, t2
	j label32
label51:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label854
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
	j label46
label854:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label46
label55:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label866
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label40
label59:
	andi t4, t3, 1
	beq t4, zero, label62
	j label64
label62:
	andi t4, t1, 1
	beq t4, zero, label60
label883:
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
	j label35
label64:
	andi t4, t1, 1
	bne t4, zero, label60
	j label883
label60:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label35
label866:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label40
label830:
	mv a3, a5
	mv a5, a4
	mv t0, a4
	j label67
label797:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label6
label1003:
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label106
label122:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label106
label103:
	li a1, 32767
	ble a0, a1, label104
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label2
label191:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	li a4, 1
	li a1, 2
	mv a0, a4
label192:
	ble a0, zero, label381
	mv a2, zero
	li t0, 1
	mv a3, a0
	mv a5, zero
label196:
	li t1, 16
	bge a5, t1, label201
	j label377
label375:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label192
label377:
	and t1, t0, a3
	andi t0, t1, 1
	beq t0, zero, label1504
	sh2add t1, a5, s0
	lw t0, 0(t1)
	addw a2, a2, t0
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label196
label201:
	beq a2, zero, label1159
	mv a5, zero
	mv a3, a1
	j label202
label1159:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label289
label202:
	beq a3, zero, label1163
	mv a2, zero
	li t2, 1
	mv t0, a3
	mv t1, zero
	j label206
label1163:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label289
label206:
	li t3, 16
	bge t1, t3, label215
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label1172
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a2, a2, t3
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label206
label215:
	beq a2, zero, label1182
	mv t0, a4
	j label254
label1182:
	mv a2, a5
	mv a5, a4
	mv t0, a4
label218:
	beq t0, zero, label251
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label221:
	li t4, 16
	bge t2, t4, label1190
	j label226
label1190:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label232
label226:
	andi t4, t3, 1
	beq t4, zero, label227
	j label231
label1197:
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
	j label221
label231:
	andi t4, t1, 1
	bne t4, zero, label1198
	j label1197
label232:
	li t3, 16
	bge a5, t3, label237
	j label247
label237:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
label238:
	li t3, 16
	bge t0, t3, label1221
	j label243
label1221:
	mv a5, a4
	mv t0, t2
	j label218
label243:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label244
	j label1225
label244:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label238
label247:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label248
	j label1237
label1198:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label221
label248:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label232
label254:
	beq t0, zero, label1263
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
	j label257
label1263:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label218
label257:
	li t4, 16
	bge t2, t4, label1267
	j label262
label1267:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label268
label262:
	andi t4, t3, 1
	beq t4, zero, label266
	j label267
label266:
	andi t4, t1, 1
	beq t4, zero, label264
label1281:
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
	j label257
label267:
	andi t4, t1, 1
	bne t4, zero, label264
	j label1281
label268:
	li t3, 16
	bge a5, t3, label1291
	j label273
label1291:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label278
label273:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label1296
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
	j label268
label278:
	li t3, 16
	bge t0, t3, label1310
	j label283
label1310:
	mv a5, a2
	mv t0, t2
	j label254
label283:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1315
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
	j label278
label1315:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label278
label264:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label257
label1296:
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	j label268
label227:
	andi t4, t1, 1
	beq t4, zero, label1198
	j label1197
label1237:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label232
label1225:
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
	j label238
label289:
	beq a1, zero, label374
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
label293:
	li t3, 16
	bge t1, t3, label302
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label1335
	sh2add t2, t1, s0
	lw t3, 0(t2)
	addw a3, a3, t3
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label293
label302:
	beq a3, zero, label1345
	mv t0, a4
	j label303
label342:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label289
label374:
	li a1, 32767
	ble a0, a1, label375
	j label1488
label303:
	beq t0, zero, label1345
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label306:
	li t4, 16
	bge t2, t4, label1353
	j label311
label1353:
	mv t1, zero
	mv t2, a5
	mv a5, zero
	j label317
label311:
	andi t4, t3, 1
	beq t4, zero, label312
	j label316
label1360:
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
	j label306
label316:
	andi t4, t1, 1
	bne t4, zero, label1361
	j label1360
label317:
	li t3, 16
	bge a5, t3, label1377
	j label322
label1377:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
	j label327
label322:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label323
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
	j label317
label327:
	li t3, 16
	bge t0, t3, label1396
	j label332
label1396:
	mv a5, a3
	mv t0, t2
	j label303
label332:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label1401
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label327
label1401:
	srliw t3, t1, 31
	srliw t4, a5, 31
	addiw t0, t0, 1
	add t5, t1, t3
	add t3, a5, t4
	sraiw t1, t5, 1
	sraiw a5, t3, 1
	j label327
label323:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label317
label1361:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label306
label312:
	andi t4, t1, 1
	beq t4, zero, label1361
	j label1360
label1335:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label293
label1172:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label206
label1345:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label338:
	beq t0, zero, label341
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label344:
	li t4, 16
	bge t2, t4, label1430
	j label349
label1430:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label355
label349:
	andi t4, t3, 1
	beq t4, zero, label353
	j label354
label352:
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
	j label344
label354:
	andi t4, t1, 1
	bne t4, zero, label350
	j label352
label355:
	li t3, 16
	bge a5, t3, label360
	j label370
label361:
	li t3, 16
	bge t0, t3, label1461
	j label366
label1461:
	mv a5, a4
	mv t0, t2
	j label338
label366:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label367
	j label1465
label367:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label361
label370:
	and t3, t0, t1
	andi t4, t3, 1
	beq t4, zero, label371
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label355
label350:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label344
label371:
	srliw t4, t1, 31
	addiw a5, a5, 1
	add t3, t1, t4
	srliw t4, t0, 31
	sraiw t1, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label355
label353:
	andi t4, t1, 1
	beq t4, zero, label350
	j label352
label1465:
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
	j label361
label360:
	lw t0, 4(sp)
	li a5, 65535
	mulw t1, t2, t0
	mv t0, zero
	mv t2, zero
	j label361
label341:
	li a4, 32767
	ble a1, a4, label342
	j label1415
label1504:
	srliw t0, a3, 31
	addiw a5, a5, 1
	add t1, a3, t0
	mv t0, zero
	sraiw a3, t1, 1
	j label196
label1415:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label289
label251:
	li a4, 32767
	ble a3, a4, label1249
	lw a4, 4(sp)
	lui t0, 16
	lw t1, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t0
	subw a3, a4, t1
	mv a4, a5
	mv a5, a2
	j label202
label1249:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label202
label1488:
	lw a1, 4(sp)
	lui a3, 16
	lw a4, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a3
	subw a0, a1, a4
	mv a4, a2
	mv a1, a5
	j label192
label381:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	li s1, 2
label382:
	li a0, 16
	bge s1, a0, label1514
	li a1, 2
	li a4, 1
	mv a0, s1
	j label579
label1514:
	mv a1, zero
label384:
	li a0, 16
	bge a1, a0, label1518
	li a2, 2
	li a5, 1
	mv a0, a1
	j label388
label1518:
	mv a0, zero
	j label386
label388:
	ble a0, zero, label577
	li t1, 1
	mv a3, a0
	mv t0, zero
	mv a4, zero
label392:
	li t2, 16
	bge a4, t2, label401
	and t2, t1, a3
	andi t1, t2, 1
	beq t1, zero, label1531
	sh2add t2, a4, s0
	lw t1, 0(t2)
	addw t0, t0, t1
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t2, a3, t1
	mv t1, zero
	sraiw a3, t2, 1
	j label392
label579:
	ble a0, zero, label583
	mv a2, zero
	li t0, 1
	mv a3, a0
	mv a5, zero
	j label584
label583:
	mv a0, a4
	jal putint
	li a0, 10
	jal putch
	addiw s1, s1, 1
	j label382
label584:
	li t1, 16
	bge a5, t1, label589
	and t2, t0, a3
	andi t0, t2, 1
	beq t0, zero, label766
	j label2246
label589:
	beq a2, zero, label1902
	mv a5, zero
	mv a3, a1
	j label590
label1902:
	mv a2, a4
	mv a4, a1
	mv a5, zero
	j label677
label590:
	beq a3, zero, label1906
	mv a2, zero
	li t2, 1
	mv t0, a3
	mv t1, zero
	j label594
label1906:
	mv a2, a5
	mv a4, a1
	mv a5, zero
	j label677
label594:
	li t3, 16
	bge t1, t3, label599
	j label671
label599:
	beq a2, zero, label1914
	mv t0, a4
	j label638
label1914:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label602
label671:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label2059
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a2, a2, t2
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label594
label602:
	beq t0, zero, label605
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label608:
	li t4, 16
	bge t2, t4, label1936
	j label632
label1936:
	mv t1, a5
	mv t2, zero
	mv a5, zero
label613:
	li t3, 16
	bge a5, t3, label618
	j label628
label619:
	li t3, 16
	bge t0, t3, label1947
	j label624
label1947:
	mv a5, a4
	mv t0, t2
	j label602
label624:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label625
	j label1951
label625:
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label619
label628:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label629
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
	j label613
label632:
	andi t4, t3, 1
	beq t4, zero, label635
	andi t4, t1, 1
	bne t4, zero, label1980
	j label1979
label635:
	andi t4, t1, 1
	beq t4, zero, label1980
	j label1979
label1980:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label608
label629:
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	j label613
label638:
	beq t0, zero, label1995
	mv t1, t0
	mv t3, a5
	mv a2, zero
	mv t2, zero
	j label641
label1995:
	mv a2, a5
	mv a5, a4
	mv t0, a4
	j label602
label641:
	li t4, 16
	bge t2, t4, label1999
	j label646
label1999:
	mv t1, a5
	mv t2, zero
	mv a5, zero
	j label652
label646:
	andi t4, t3, 1
	beq t4, zero, label648
	andi t4, t1, 1
	bne t4, zero, label2008
label2007:
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
	j label641
label648:
	andi t4, t1, 1
	beq t4, zero, label2008
	j label2007
label652:
	li t3, 16
	bge a5, t3, label2023
	j label657
label2023:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label662
label657:
	and t4, t0, t1
	andi t3, t4, 1
	beq t3, zero, label658
	j label2027
label662:
	li t3, 16
	bge t0, t3, label2042
	j label667
label2042:
	mv a5, a2
	mv t0, t2
	j label638
label667:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2047
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
	j label662
label2047:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label662
label1979:
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
	j label608
label1951:
	sh2add t4, t0, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, a5, 31
	addiw t0, t0, 1
	add t4, t1, t3
	add t3, a5, t5
	sraiw t1, t4, 1
	sraiw a5, t3, 1
	j label619
label2008:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label641
label658:
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	j label652
label2027:
	sh2add t4, a5, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, t1, 31
	srliw t5, t0, 31
	addiw a5, a5, 1
	add t4, t1, t3
	add t3, t0, t5
	sraiw t1, t4, 1
	sraiw t0, t3, 1
	j label652
label677:
	beq a1, zero, label681
	mv a3, zero
	li t2, 1
	mv t0, a1
	mv t1, zero
	j label684
label681:
	li a1, 32767
	ble a0, a1, label682
	j label2072
label684:
	li t3, 16
	bge t1, t3, label689
	j label761
label728:
	li a4, 32767
	ble a1, a4, label729
	j label2161
label729:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a3
	divw a1, a1, t0
	j label677
label761:
	and t3, t2, t0
	andi t2, t3, 1
	beq t2, zero, label2236
	sh2add t3, t1, s0
	lw t2, 0(t3)
	addw a3, a3, t2
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label684
label2236:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label684
label2059:
	srliw t2, t0, 31
	addiw t1, t1, 1
	add t3, t0, t2
	mv t2, zero
	sraiw t0, t3, 1
	j label594
label618:
	lw a5, 4(sp)
	mv t0, zero
	mulw t1, t2, a5
	li a5, 65535
	mv t2, zero
	j label619
label689:
	beq a3, zero, label2091
	mv t0, a4
label690:
	beq t0, zero, label2091
	mv a3, zero
	mv t1, t0
	mv t3, a5
	mv t2, zero
label693:
	li t4, 16
	bge t2, t4, label2099
	j label717
label2099:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label698:
	li t3, 16
	bge a5, t3, label703
	j label713
label704:
	li t3, 16
	bge t0, t3, label2110
	j label709
label2110:
	mv a5, a3
	mv t0, t2
	j label690
label709:
	and t4, a5, t1
	andi t3, t4, 1
	beq t3, zero, label2115
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
	j label704
label2115:
	srliw t4, t1, 31
	addiw t0, t0, 1
	add t3, t1, t4
	srliw t4, a5, 31
	sraiw t1, t3, 1
	add t3, a5, t4
	sraiw a5, t3, 1
	j label704
label713:
	and t3, t0, t2
	andi t4, t3, 1
	beq t4, zero, label714
	j label2126
label717:
	andi t4, t3, 1
	beq t4, zero, label718
	j label722
label718:
	andi t4, t1, 1
	beq t4, zero, label2142
label2141:
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
	j label693
label722:
	andi t4, t1, 1
	bne t4, zero, label2142
	j label2141
label2142:
	srliw t4, t3, 31
	addiw t2, t2, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label693
label714:
	srliw t3, t2, 31
	srliw t4, t0, 31
	addiw a5, a5, 1
	add t5, t2, t3
	add t3, t0, t4
	sraiw t2, t5, 1
	sraiw t0, t3, 1
	j label698
label2126:
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
	j label698
label703:
	lw t0, 4(sp)
	li a5, 65535
	mv t2, zero
	mulw t1, t1, t0
	mv t0, zero
	j label704
label2091:
	mv a3, a5
	mv a5, a4
	mv t0, a4
label725:
	beq t0, zero, label728
	mv t1, t0
	mv t3, a5
	mv a4, zero
	mv t2, zero
label731:
	li t4, 16
	bge t2, t4, label2176
	j label755
label2176:
	mv t1, zero
	mv t2, a5
	mv a5, zero
label736:
	li t3, 16
	bge a5, t3, label741
	j label751
label741:
	lw a5, 4(sp)
	mv t2, zero
	mv t0, zero
	mulw t1, t1, a5
	li a5, 65535
label742:
	li t3, 16
	bge t0, t3, label2187
	j label747
label2187:
	mv a5, a4
	mv t0, t2
	j label725
label747:
	and t3, a5, t1
	andi t4, t3, 1
	beq t4, zero, label2192
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
	j label742
label2192:
	srliw t3, t1, 31
	addiw t0, t0, 1
	add t4, t1, t3
	srliw t3, a5, 31
	sraiw t1, t4, 1
	add t4, a5, t3
	sraiw a5, t4, 1
	j label742
label751:
	and t4, t0, t2
	andi t3, t4, 1
	beq t3, zero, label2204
	sh2add t3, a5, s0
	lw t4, 0(t3)
	addw t1, t1, t4
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label736
label755:
	andi t4, t3, 1
	beq t4, zero, label758
	j label760
label758:
	andi t4, t1, 1
	beq t4, zero, label756
label2221:
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
	j label731
label760:
	andi t4, t1, 1
	bne t4, zero, label756
	j label2221
label756:
	srliw t5, t3, 31
	addiw t2, t2, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label731
label2204:
	srliw t4, t2, 31
	addiw a5, a5, 1
	add t3, t2, t4
	srliw t4, t0, 31
	sraiw t2, t3, 1
	add t3, t0, t4
	sraiw t0, t3, 1
	j label736
label766:
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label584
label401:
	beq t0, zero, label1541
	mv t0, zero
	mv a4, a2
	j label402
label1541:
	mv a3, a5
	mv a5, a2
	mv t0, zero
	j label489
label402:
	beq a4, zero, label1545
	li t3, 1
	mv a3, a4
	mv t2, zero
	mv t1, zero
	j label406
label1545:
	mv a3, t0
	mv a5, a2
	mv t0, zero
	j label489
label406:
	li t4, 16
	bge t1, t4, label415
	and t4, t3, a3
	andi t3, t4, 1
	beq t3, zero, label412
	j label1553
label415:
	beq t2, zero, label1564
	mv t1, a5
label416:
	beq t1, zero, label1564
	mv t2, t1
	mv t4, t0
	mv a3, zero
	mv t3, zero
label419:
	li t5, 16
	bge t3, t5, label1572
	j label443
label1572:
	mv t2, t0
	mv t3, zero
	mv t0, zero
label424:
	li t4, 16
	bge t0, t4, label1576
	j label429
label1576:
	lw t1, 4(sp)
	li t0, 65535
	mulw t2, t3, t1
	mv t1, zero
	mv t3, zero
	j label434
label429:
	and t4, t1, t2
	andi t5, t4, 1
	beq t5, zero, label1581
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
	j label424
label434:
	li t4, 16
	bge t1, t4, label1595
	j label439
label1595:
	mv t0, a3
	mv t1, t3
	j label416
label439:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label1600
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
	j label434
label1600:
	srliw t5, t2, 31
	addiw t1, t1, 1
	add t4, t2, t5
	srliw t5, t0, 31
	sraiw t2, t4, 1
	add t4, t0, t5
	sraiw t0, t4, 1
	j label434
label443:
	andi t5, t4, 1
	beq t5, zero, label448
	andi t5, t2, 1
	bne t5, zero, label444
	j label1618
label448:
	andi t5, t2, 1
	beq t5, zero, label444
	j label1618
label1581:
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label424
label444:
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label419
label1618:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a3, a3, t6
	srliw t5, t4, 31
	srliw a6, t2, 31
	addiw t3, t3, 1
	add t6, t4, t5
	add t5, t2, a6
	sraiw t4, t6, 1
	sraiw t2, t5, 1
	j label419
label489:
	beq a2, zero, label574
	li t3, 1
	mv a4, a2
	mv t2, zero
	mv t1, zero
label493:
	li t4, 16
	bge t1, t4, label498
	j label570
label1846:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a4
	divw a2, a2, t1
	j label489
label570:
	and t4, t3, a4
	andi t3, t4, 1
	beq t3, zero, label571
	j label1860
label574:
	li a2, 32767
	ble a0, a2, label1871
	j label1870
label571:
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label493
label1860:
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t4, a4, 31
	addiw t1, t1, 1
	add t3, a4, t4
	sraiw a4, t3, 1
	mv t3, zero
	j label493
label412:
	srliw t3, a3, 31
	addiw t1, t1, 1
	add t4, a3, t3
	mv t3, zero
	sraiw a3, t4, 1
	j label406
label2161:
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a1, a1, a4
	addw a4, a1, t1
	subw a1, a4, t0
	mv a4, a5
	mv a5, a3
	j label677
label2246:
	sh2add t1, a5, s0
	lw t0, 0(t1)
	addw a2, a2, t0
	srliw t1, a3, 31
	addiw a5, a5, 1
	add t0, a3, t1
	sraiw a3, t0, 1
	mv t0, zero
	j label584
label605:
	li a4, 32767
	ble a3, a4, label1922
	lw a4, 4(sp)
	lui t1, 16
	lw t0, 60(sp)
	divw a3, a3, a4
	addw a4, a3, t1
	subw a3, a4, t0
	mv a4, a5
	mv a5, a2
	j label590
label1922:
	lw t0, 4(sp)
	mv a4, a5
	mv a5, a2
	divw a3, a3, t0
	j label590
label1553:
	sh2add t4, t1, s0
	lw t3, 0(t4)
	addw t2, t2, t3
	srliw t3, a3, 31
	addiw t1, t1, 1
	add t4, a3, t3
	mv t3, zero
	sraiw a3, t4, 1
	j label406
label498:
	beq t2, zero, label1716
	mv t1, a5
label499:
	beq t1, zero, label1716
	mv t2, t1
	mv t4, t0
	mv a4, zero
	mv t3, zero
label502:
	li t5, 16
	bge t3, t5, label1724
	j label507
label1724:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label513
label507:
	andi t5, t4, 1
	beq t5, zero, label509
	andi t5, t2, 1
	bne t5, zero, label510
	j label508
label513:
	li t4, 16
	bge t0, t4, label1748
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label519
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
	j label513
label523:
	li t4, 16
	bge t1, t4, label1767
	j label528
label1767:
	mv t0, a4
	mv t1, t3
	j label499
label528:
	and t5, t0, t2
	andi t4, t5, 1
	beq t4, zero, label1772
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	j label523
label1772:
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	j label523
label510:
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label502
label519:
	srliw t4, t3, 31
	addiw t0, t0, 1
	add t5, t3, t4
	srliw t4, t1, 31
	sraiw t3, t5, 1
	add t5, t1, t4
	sraiw t1, t5, 1
	j label513
label508:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a4, a4, t6
	srliw t5, t4, 31
	addiw t3, t3, 1
	add t6, t4, t5
	srliw t5, t2, 31
	sraiw t4, t6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	j label502
label509:
	andi t5, t2, 1
	beq t5, zero, label510
	j label508
label1748:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
	j label523
label1716:
	mv a4, t0
	mv t0, a5
	mv t1, a5
label534:
	beq t1, zero, label567
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label537:
	li t5, 16
	bge t3, t5, label1787
	j label561
label1787:
	mv t2, t0
	mv t3, zero
	mv t0, zero
label542:
	li t4, 16
	bge t0, t4, label547
	j label557
label548:
	li t4, 16
	bge t1, t4, label1798
	j label553
label1798:
	mv t0, a5
	mv t1, t3
	j label534
label553:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label554
	j label1802
label554:
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	j label548
label557:
	and t5, t1, t2
	andi t4, t5, 1
	beq t4, zero, label558
	sh2add t5, t0, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label542
label561:
	andi t5, t4, 1
	beq t5, zero, label562
	andi t5, t2, 1
	bne t5, zero, label1830
	j label1829
label567:
	li t1, 32767
	ble a2, t1, label1846
	j label1845
label1830:
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label537
label558:
	srliw t5, t2, 31
	addiw t0, t0, 1
	add t4, t2, t5
	srliw t5, t1, 31
	sraiw t2, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label542
label1802:
	sh2add t4, t1, s0
	lw t5, 0(t4)
	addw t3, t3, t5
	srliw t4, t2, 31
	srliw t6, t0, 31
	addiw t1, t1, 1
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	j label548
label562:
	andi t5, t2, 1
	beq t5, zero, label1830
label1829:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t6, t4, 31
	addiw t3, t3, 1
	add t5, t4, t6
	srliw t6, t2, 31
	sraiw t4, t5, 1
	add t5, t2, t6
	sraiw t2, t5, 1
	j label537
label547:
	lw t0, 4(sp)
	mv t1, zero
	mulw t2, t3, t0
	li t0, 65535
	mv t3, zero
	j label548
label1531:
	srliw t1, a3, 31
	addiw a4, a4, 1
	add t2, a3, t1
	mv t1, zero
	sraiw a3, t2, 1
	j label392
label1845:
	lw a5, 4(sp)
	lui t2, 16
	lw t1, 60(sp)
	divw a2, a2, a5
	addw a5, a2, t2
	subw a2, a5, t1
	mv a5, t0
	mv t0, a4
	j label489
label1564:
	mv a3, t0
	mv t0, a5
	mv t1, a5
label451:
	beq t1, zero, label484
	mv t2, t1
	mv t4, t0
	mv a5, zero
	mv t3, zero
label454:
	li t5, 16
	bge t3, t5, label1635
	j label459
label1635:
	mv t2, zero
	mv t3, t0
	mv t0, zero
	j label465
label459:
	andi t5, t4, 1
	beq t5, zero, label461
	j label464
label460:
	sh2add t5, t3, s0
	lw t6, 0(t5)
	addw a5, a5, t6
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label454
label464:
	andi t5, t2, 1
	bne t5, zero, label462
	j label460
label465:
	li t4, 16
	bge t0, t4, label470
	j label480
label471:
	li t4, 16
	bge t1, t4, label1666
	j label476
label1666:
	mv t0, a5
	mv t1, t3
	j label451
label476:
	and t4, t0, t2
	andi t5, t4, 1
	beq t5, zero, label477
	sh2add t5, t1, s0
	lw t4, 0(t5)
	addw t3, t3, t4
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	j label471
label477:
	srliw t4, t2, 31
	srliw t5, t0, 31
	addiw t1, t1, 1
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	j label471
label480:
	and t5, t1, t3
	andi t4, t5, 1
	beq t4, zero, label481
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
	j label465
label462:
	srliw t5, t4, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	add a6, t4, t5
	add t5, t2, t6
	sraiw t4, a6, 1
	sraiw t2, t5, 1
	j label454
label481:
	srliw t5, t3, 31
	addiw t0, t0, 1
	add t4, t3, t5
	srliw t5, t1, 31
	sraiw t3, t4, 1
	add t4, t1, t5
	sraiw t1, t4, 1
	j label465
label461:
	andi t5, t2, 1
	beq t5, zero, label462
	j label460
label470:
	lw t0, 4(sp)
	mv t3, zero
	mv t1, zero
	mulw t2, t2, t0
	li t0, 65535
	j label471
label484:
	li a5, 32767
	ble a4, a5, label1694
	lw a5, 4(sp)
	lui t2, 16
	lw t1, 60(sp)
	divw a4, a4, a5
	addw a5, a4, t2
	subw a4, a5, t1
	mv a5, t0
	mv t0, a3
	j label402
label1694:
	lw t1, 4(sp)
	mv a5, t0
	mv t0, a3
	divw a4, a4, t1
	j label402
label2072:
	lw a1, 4(sp)
	lui a4, 16
	lw a3, 60(sp)
	divw a0, a0, a1
	addw a1, a0, a4
	mv a4, a2
	subw a0, a1, a3
	mv a1, a5
	j label579
label682:
	lw a3, 4(sp)
	mv a1, a5
	mv a4, a2
	divw a0, a0, a3
	j label579
label1870:
	lw a2, 4(sp)
	lui a5, 16
	lw a4, 60(sp)
	divw a0, a0, a2
	addw a2, a0, a5
	mv a5, a3
	subw a0, a2, a4
	mv a2, t0
	j label388
label1871:
	lw a4, 4(sp)
	mv a2, t0
	mv a5, a3
	divw a0, a0, a4
	j label388
label386:
	ld ra, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
label577:
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a5, a2, label578
	li a0, 1
	j label386
label578:
	addiw a1, a1, 1
	j label384
