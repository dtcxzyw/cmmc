.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[64] RegSpill[0] CalleeSaved[48]
	addi sp, sp, -112
	li a0, 2
	lui a4, 2
	slli a2, a0, 32
	sd ra, 0(sp)
	addi a1, a2, 1
	sd s1, 8(sp)
	slli a0, a1, 2
	addi s1, sp, 48
	sd s2, 16(sp)
	li s2, 1
	sd s3, 24(sp)
	li s3, 2
	sd s0, 32(sp)
	li s0, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	slli a1, a0, 2
	sd a0, 56(sp)
	slli a3, a1, 2
	lui a0, 1
	slli a2, a3, 2
	sd a1, 64(sp)
	slli a1, a2, 2
	sd a3, 72(sp)
	slli a3, a4, 32
	sd a2, 80(sp)
	add.uw a2, a0, a3
	sd a1, 88(sp)
	lui a0, 8
	lui a1, 4
	slli a3, a0, 32
	sd a2, 96(sp)
	add.uw a2, a1, a3
	sd a2, 104(sp)
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a3, s3
	mv a4, s2
	mv a0, s2
	mv a1, s1
	mv t0, zero
	mv a2, s2
	mv t1, s2
	mv a5, zero
	and t2, s2, s2
	andi t3, t2, 1
	bne t3, zero, label687
	j label12
.p2align 2
label1043:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2193
.p2align 2
label221:
	lw a5, 52(sp)
	lui t0, 16
	divw a4, a0, a5
	lw a5, 108(sp)
	addw a2, a4, t0
	subw a0, a2, a5
	ble a0, zero, label225
.p2align 2
label1071:
	mv a4, a1
	mv t0, zero
	mv a2, a0
	mv t1, s2
	mv a5, zero
	and t2, a0, s2
	mv a1, s1
	andi t3, t2, 1
	beq t3, zero, label12
.p2align 2
label687:
	lw t2, 0(a1)
	addiw t0, t0, 1
	addw a5, a5, t2
	srliw t2, a2, 31
	add t1, a2, t2
	sraiw a2, t1, 1
	bge t0, s0, label2311
.p2align 2
label14:
	addi a1, a1, 4
	mv t1, zero
	and t2, a2, zero
	andi t3, t2, 1
	bne t3, zero, label687
	addiw t0, t0, 1
	srliw t2, a2, 31
	add t1, a2, t2
	sraiw a2, t1, 1
	blt t0, s0, label14
.p2align 2
label714:
	bne a5, zero, label16
.p2align 2
label2138:
	mv a1, a4
	beq a3, zero, label2312
.p2align 2
label890:
	mv a2, a3
	mv t0, zero
	mv a4, a3
	mv a3, s1
	mv t1, zero
	mv t2, zero
	mv a5, a2
	mv t3, s2
	and t4, a2, s2
	andi t5, t4, 1
	bne t5, zero, label218
	j label129
.p2align 2
label2341:
	lw a5, 52(sp)
	divw a2, a2, a5
	beq a2, zero, label1043
.p2align 2
label1044:
	mv t0, a3
	mv t1, zero
	mv t2, zero
	mv a5, a2
	mv t3, s2
	and t4, a2, s2
	mv a3, s1
	andi t5, t4, 1
	beq t5, zero, label129
.p2align 2
label218:
	lw t3, 0(a3)
	addiw t1, t1, 1
	addw t2, t2, t3
	srliw t3, a5, 31
	add t4, a5, t3
	sraiw a5, t4, 1
	bge t1, s0, label2195
.p2align 2
label131:
	addi a3, a3, 4
	mv t3, zero
	and t4, a5, zero
	andi t5, t4, 1
	bne t5, zero, label218
	addiw t1, t1, 1
	srliw t3, a5, 31
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t1, s0, label131
.p2align 2
label900:
	beq t2, zero, label2168
.p2align 2
label133:
	beq a4, zero, label909
	mv a5, a4
	mv t1, s1
	mv t4, zero
	mv a3, zero
	mv t3, t0
	mv t2, a4
	andi t5, t0, 1
	beq t5, zero, label913
.p2align 2
label143:
	andi t5, t2, 1
	bne t5, zero, label918
.p2align 2
label144:
	lw t5, 0(t1)
	addw a3, a3, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label927
.p2align 2
label147:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label143
	andi t5, t2, 1
	bne t5, zero, label144
.p2align 2
label2172:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label147
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t6, t0, a5
	mv t0, a5
	andi t5, t6, 1
	bne t5, zero, label155
	j label933
.p2align 2
label2195:
	bne t2, zero, label133
.p2align 2
label2168:
	mv a3, t0
	beq a4, zero, label2170
.p2align 2
label973:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	beq t5, zero, label976
.p2align 2
label211:
	andi t5, t2, 1
	bne t5, zero, label1032
.p2align 2
label209:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t2, 31
	addw a4, a4, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2351
.p2align 2
label208:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label211
	andi t5, t2, 1
	bne t5, zero, label209
.p2align 2
label2182:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label208
	j label2351
.p2align 2
label206:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t1, 31
	addw t0, t0, t4
	add t4, t2, t6
	add t6, t1, t5
	sraiw t2, t4, 1
	sraiw t1, t6, 1
	bge t3, s0, label2187
.p2align 2
label204:
	addi a5, a5, 4
	and t5, t2, t1
	andi t4, t5, 1
	bne t4, zero, label206
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t1, 31
	add t4, t2, t6
	add t6, t1, t5
	sraiw t2, t4, 1
	sraiw t1, t6, 1
	blt t3, s0, label204
.p2align 2
label1012:
	beq t0, zero, label2184
.p2align 2
label1018:
	mv a5, t0
	mv t1, s1
	mv t4, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t3, a4
	mv a4, zero
	bne t5, zero, label211
.p2align 2
label976:
	andi t5, t2, 1
	bne t5, zero, label209
	j label2182
.p2align 2
label2179:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label2175
.p2align 2
label170:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	beq t5, zero, label2179
.p2align 2
label155:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label170
.p2align 2
label2175:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t2, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t2, t1
	andi t4, t5, 1
	beq t4, zero, label165
.p2align 2
label169:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t1, 31
	addw t0, t0, t4
	add t4, t2, t5
	add t5, t1, t6
	sraiw t2, t4, 1
	sraiw t1, t5, 1
	bge t3, s0, label2178
.p2align 2
label168:
	addi a5, a5, 4
	and t5, t2, t1
	andi t4, t5, 1
	bne t4, zero, label169
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t1, 31
	add t4, t2, t5
	add t5, t1, t6
	sraiw t2, t4, 1
	sraiw t1, t5, 1
	blt t3, s0, label168
.p2align 2
label167:
	beq t0, zero, label961
.p2align 2
label962:
	mv a5, t0
	mv t1, s1
	mv t4, zero
	mv t2, t0
	mv t0, a3
	andi t5, a3, 1
	mv t3, a3
	mv a3, zero
	bne t5, zero, label143
.p2align 2
label913:
	andi t5, t2, 1
	bne t5, zero, label144
	j label2172
.p2align 2
label2351:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label192
	li t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label207
	j label2183
.p2align 2
label192:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2183
.p2align 2
label207:
	addi t1, t1, 4
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label192
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label207
.p2align 2
label2183:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t2, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t2, t1
	andi t4, t5, 1
	bne t4, zero, label206
	li t3, 1
	srliw t6, t2, 31
	srliw t5, t1, 31
	add t4, t2, t6
	add t6, t1, t5
	sraiw t2, t4, 1
	sraiw t1, t6, 1
	blt t3, s0, label204
	j label1012
.p2align 2
label165:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t1, 31
	add t4, t2, t5
	add t5, t1, t6
	sraiw t2, t4, 1
	sraiw t1, t5, 1
	blt t3, s0, label168
	j label167
.p2align 2
label1032:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label208
	j label2351
.p2align 2
label927:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t6, t0, a5
	mv t0, a5
	andi t5, t6, 1
	bne t5, zero, label155
.p2align 2
label933:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label170
	j label2175
.p2align 2
label918:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label147
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t6, t2, a5
	andi t5, t6, 1
	bne t5, zero, label155
	j label933
.p2align 2
label129:
	addiw t1, t1, 1
	srliw t3, a5, 31
	add t4, a5, t3
	sraiw a5, t4, 1
	blt t1, s0, label131
	j label900
.p2align 2
label2184:
	lui t0, 8
	addiw a5, t0, -1
	ble a2, a5, label2341
.p2align 2
label217:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a2, a5, t1
	bne a2, zero, label1044
	j label2194
.p2align 2
label961:
	bne a4, zero, label973
	j label2176
.p2align 2
label12:
	addiw t0, t0, 1
	srliw t2, a2, 31
	add t1, a2, t2
	sraiw a2, t1, 1
	blt t0, s0, label14
	j label714
.p2align 2
label2170:
	lui t0, 8
	addiw a5, t0, -1
	bgt a2, a5, label217
	j label2341
.p2align 2
label2194:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label221
.p2align 2
label2193:
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label1071
	j label225
.p2align 2
label2311:
	beq a5, zero, label2138
.p2align 2
label16:
	beq a3, zero, label723
	mv a1, a3
	mv a2, zero
	j label17
.p2align 2
label2149:
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label36
.p2align 2
label2141:
	lw a5, 52(sp)
	divw a1, a1, a5
	beq a1, zero, label750
.p2align 2
label17:
	mv a5, s1
	mv t1, zero
	mv t2, zero
	mv t0, a1
	mv t3, s2
	and t5, a1, s2
	andi t4, t5, 1
	bne t4, zero, label116
	li t1, 1
	srliw t4, a1, 31
	add t3, a1, t4
	sraiw t0, t3, 1
	blt t1, s0, label115
	j label29
.p2align 2
label116:
	lw t4, 0(a5)
	addiw t1, t1, 1
	addw t2, t2, t4
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t1, s0, label2167
.p2align 2
label115:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label116
	addiw t1, t1, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t1, s0, label115
.p2align 2
label29:
	beq t2, zero, label30
.p2align 2
label76:
	beq a4, zero, label823
	mv a5, a4
	mv t0, a2
	mv t1, s1
	mv t4, zero
	mv a2, zero
	mv t3, t0
	mv t2, a4
	andi t5, t0, 1
	bne t5, zero, label86
	j label827
.p2align 2
label2158:
	andi t5, t2, 1
	beq t5, zero, label2156
.p2align 2
label87:
	lw t5, 0(t1)
	addw a2, a2, t5
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	bge t4, s0, label841
.p2align 2
label90:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2158
.p2align 2
label86:
	andi t5, t2, 1
	beq t5, zero, label87
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label90
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label98
	j label847
.p2align 2
label2160:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label2159
.p2align 2
label101:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label2160
.p2align 2
label98:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label101
	lw t0, 52(sp)
	mv t3, zero
	lui t5, 16
	addiw t1, t5, -1
	mulw t2, a5, t0
	and t4, t2, t1
	mv t0, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label109
.p2align 2
label865:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t1, 31
	add t4, t2, t5
	add t5, t1, t6
	sraiw t2, t4, 1
	sraiw t1, t5, 1
	blt t3, s0, label112
	j label2161
.p2align 2
label2159:
	lw t0, 52(sp)
	mv t3, zero
	lui t5, 16
	addiw t1, t5, -1
	mulw t2, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t2, t1
	andi t5, t4, 1
	beq t5, zero, label865
.p2align 2
label109:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t1, 31
	add t4, t2, t5
	add t5, t1, t6
	sraiw t2, t4, 1
	sraiw t1, t5, 1
	bge t3, s0, label874
.p2align 2
label112:
	addi a5, a5, 4
	and t4, t2, t1
	andi t5, t4, 1
	bne t5, zero, label109
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t6, t1, 31
	add t4, t2, t5
	add t5, t1, t6
	sraiw t2, t4, 1
	sraiw t1, t5, 1
	blt t3, s0, label112
.p2align 2
label2161:
	bne t0, zero, label880
	j label2162
.p2align 2
label2156:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label90
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label98
	j label847
.p2align 2
label874:
	beq t0, zero, label2162
.p2align 2
label880:
	mv a5, t0
	mv t1, s1
	mv t4, zero
	mv t2, t0
	mv t0, a2
	andi t5, a2, 1
	mv t3, a2
	mv a2, zero
	bne t5, zero, label86
.p2align 2
label827:
	andi t5, t2, 1
	bne t5, zero, label87
	j label2156
.p2align 2
label841:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	mv a5, zero
	andi t4, t5, 1
	bne t4, zero, label98
.p2align 2
label847:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label101
	j label2159
.p2align 2
label30:
	beq a4, zero, label742
.p2align 2
label743:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t4, zero
	mv t2, a4
	andi t5, a4, 1
	mv t3, a4
	mv a4, zero
	bne t5, zero, label74
	j label764
.p2align 2
label2147:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t2, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t2, t1
	andi t5, t4, 1
	beq t5, zero, label796
.p2align 2
label68:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t1, 31
	add t6, t2, t5
	add t5, t1, t4
	sraiw t2, t6, 1
	sraiw t1, t5, 1
	bge t3, s0, label805
.p2align 2
label71:
	addi a5, a5, 4
	and t4, t2, t1
	andi t5, t4, 1
	bne t5, zero, label68
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t1, 31
	add t6, t2, t5
	add t5, t1, t4
	sraiw t2, t6, 1
	sraiw t1, t5, 1
	blt t3, s0, label71
.p2align 2
label2148:
	beq t0, zero, label2149
.p2align 2
label811:
	mv a5, t0
	mv t1, s1
	mv t4, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t3, a4
	mv a4, zero
	bne t5, zero, label74
.p2align 2
label764:
	andi t5, t2, 1
	bne t5, zero, label47
	j label2145
.p2align 2
label2146:
	andi t5, t2, 1
	beq t5, zero, label2145
.p2align 2
label47:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	bge t4, s0, label773
.p2align 2
label50:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2146
.p2align 2
label74:
	andi t5, t2, 1
	beq t5, zero, label47
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label50
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t6, t0, a5
	mv t0, a5
	andi t5, t6, 1
	beq t5, zero, label779
.p2align 2
label58:
	lw t5, 0(t1)
	addw a5, t4, t5
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t0, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	bge t3, s0, label2147
.p2align 2
label73:
	addi t1, t1, 4
	mv t4, a5
	and t6, t2, t0
	andi t5, t6, 1
	bne t5, zero, label58
	addiw t3, t3, 1
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
	j label2147
.p2align 2
label2145:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw a6, t2, 31
	add t5, t3, t6
	add t6, t2, a6
	sraiw t3, t5, 1
	sraiw t2, t6, 1
	blt t4, s0, label50
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t6, t0, a5
	mv t0, a5
	andi t5, t6, 1
	bne t5, zero, label58
	j label779
.p2align 2
label773:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t6, t0, a5
	mv t0, a5
	andi t5, t6, 1
	bne t5, zero, label58
.p2align 2
label779:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t0, 31
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, t0, t5
	sraiw t2, t6, 1
	sraiw t0, t4, 1
	blt t3, s0, label73
	j label2147
.p2align 2
label2167:
	bne t2, zero, label76
	j label30
.p2align 2
label2162:
	bne a4, zero, label743
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label36
	j label2141
.p2align 2
label2176:
	lui t0, 8
	addiw a5, t0, -1
	bgt a2, a5, label217
	j label2341
.p2align 2
label742:
	lui t1, 8
	addiw a5, t1, -1
	ble a1, a5, label2141
.p2align 2
label36:
	lw t1, 52(sp)
	lui t2, 16
	divw a5, a1, t1
	lw t1, 108(sp)
	addw t0, a5, t2
	subw a1, t0, t1
	bne a1, zero, label17
	j label2143
label2312:
	mv a3, zero
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label221
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label1071
label225:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	j label226
.p2align 2
label350:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bge s4, s0, label351
.p2align 2
label226:
	mv a0, s4
	mv a4, s2
	mv a3, s3
	mv a1, s1
	mv a5, zero
	mv t0, zero
	mv a2, s4
	mv t1, s2
	and t2, s4, s2
	andi t3, t2, 1
	beq t3, zero, label1075
.p2align 2
label238:
	lw t1, 0(a1)
	addw t0, t0, t1
	addiw a5, a5, 1
	srliw t1, a2, 31
	add t2, a2, t1
	sraiw a2, t2, 1
	bge a5, s0, label1083
.p2align 2
label241:
	addi a1, a1, 4
	mv t1, zero
	and t2, a2, zero
	andi t3, t2, 1
	bne t3, zero, label238
	addiw a5, a5, 1
	srliw t1, a2, 31
	add t2, a2, t1
	sraiw a2, t2, 1
	blt a5, s0, label241
.p2align 2
label2197:
	bne t0, zero, label586
.p2align 2
label2363:
	mv a1, a4
	beq a3, zero, label1092
.p2align 2
label1093:
	mv a2, a3
	mv t0, zero
	mv a4, a3
	mv a3, s1
	mv t2, zero
	mv a5, a2
	mv t3, s2
	mv t1, zero
	and t4, a2, s2
	andi t5, t4, 1
	beq t5, zero, label255
.p2align 2
label344:
	lw t3, 0(a3)
	addiw t2, t2, 1
	srliw t4, a5, 31
	addw t1, t1, t3
	add t3, a5, t4
	sraiw a5, t3, 1
	bge t2, s0, label2226
.p2align 2
label343:
	addi a3, a3, 4
	mv t3, zero
	and t4, a5, zero
	andi t5, t4, 1
	bne t5, zero, label344
	addiw t2, t2, 1
	srliw t4, a5, 31
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t2, s0, label343
.p2align 2
label257:
	beq t1, zero, label1108
.p2align 2
label258:
	beq a4, zero, label1111
	mv a5, a4
	mv t1, s1
	mv t4, zero
	mv t3, t0
	mv t2, a4
	mv a3, zero
	andi t5, t0, 1
	bne t5, zero, label269
	j label1115
.p2align 2
label2210:
	andi t5, t2, 1
	beq t5, zero, label2203
.p2align 2
label268:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t3, 31
	addw a3, a3, t5
	add a6, t3, t6
	srliw t5, t2, 31
	sraiw t3, a6, 1
	add t6, t2, t5
	sraiw t2, t6, 1
	bge t4, s0, label2367
.p2align 2
label295:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2210
.p2align 2
label269:
	andi t5, t2, 1
	beq t5, zero, label268
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label295
.p2align 2
label2367:
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a5
	mv a5, zero
	and t5, t2, t0
	andi t4, t5, 1
	beq t4, zero, label279
.p2align 2
label294:
	lw t4, 0(t1)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw a5, a5, t4
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label2209
.p2align 2
label281:
	addi t1, t1, 4
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label294
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label281
.p2align 2
label1141:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t2, a5, t0
	and t4, t2, t1
	mv t0, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label293
.p2align 2
label289:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t1, 31
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	blt t3, s0, label292
	j label291
.p2align 2
label2209:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t2, a5, t0
	and t4, t2, t1
	mv t0, zero
	mv a5, s1
	andi t5, t4, 1
	beq t5, zero, label289
.p2align 2
label293:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t6, t1, 31
	addw t0, t0, t4
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	bge t3, s0, label2208
.p2align 2
label292:
	addi a5, a5, 4
	and t4, t2, t1
	andi t5, t4, 1
	bne t5, zero, label293
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t1, 31
	add t5, t2, t4
	add t4, t1, t6
	sraiw t2, t5, 1
	sraiw t1, t4, 1
	blt t3, s0, label292
.p2align 2
label291:
	bne t0, zero, label1162
	j label1161
.p2align 2
label2203:
	addiw t4, t4, 1
	srliw t6, t3, 31
	srliw t5, t2, 31
	add a6, t3, t6
	add t6, t2, t5
	sraiw t3, a6, 1
	sraiw t2, t6, 1
	blt t4, s0, label295
	j label2367
.p2align 2
label279:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label281
	j label1141
.p2align 2
label2208:
	beq t0, zero, label1161
.p2align 2
label1162:
	mv a5, t0
	mv t1, s1
	mv t4, zero
	mv t3, a3
	mv t2, t0
	mv t0, a3
	andi t5, a3, 1
	mv a3, zero
	bne t5, zero, label269
.p2align 2
label1115:
	andi t5, t2, 1
	bne t5, zero, label268
	j label2203
.p2align 2
label2226:
	bne t1, zero, label258
.p2align 2
label1108:
	mv a3, t0
	beq a4, zero, label2201
.p2align 2
label1175:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t4, zero
	mv t2, a4
	andi t5, a4, 1
	mv t3, a4
	mv a4, zero
	bne t5, zero, label314
	j label1196
.p2align 2
label334:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t1, 31
	add t4, t2, t6
	add t6, t1, t5
	sraiw t2, t4, 1
	sraiw t1, t6, 1
	bge t3, s0, label1241
.p2align 2
label337:
	addi a5, a5, 4
	and t4, t2, t1
	andi t5, t4, 1
	bne t5, zero, label334
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t1, 31
	add t4, t2, t6
	add t6, t1, t5
	sraiw t2, t4, 1
	sraiw t1, t6, 1
	blt t3, s0, label337
.p2align 2
label2217:
	beq t0, zero, label2218
.p2align 2
label1247:
	mv a5, t0
	mv t1, s1
	mv t4, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t3, a4
	mv a4, zero
	bne t5, zero, label314
.p2align 2
label1196:
	andi t5, t2, 1
	bne t5, zero, label342
	j label2215
.p2align 2
label2223:
	andi t5, t2, 1
	beq t5, zero, label2215
.p2align 2
label342:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t2, 31
	addw a4, a4, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2380
.p2align 2
label341:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2223
.p2align 2
label314:
	andi t5, t2, 1
	beq t5, zero, label342
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label341
	j label2380
.p2align 2
label2215:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw a6, t2, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	blt t4, s0, label341
.p2align 2
label2380:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	mv t0, a5
	and t5, t2, a5
	andi t6, t5, 1
	bne t6, zero, label340
.p2align 2
label1217:
	mv a5, t4
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t0, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	bge t3, s0, label327
.p2align 2
label339:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	beq t6, zero, label1217
.p2align 2
label340:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a5, t4, t5
	srliw t4, t0, 31
	srliw t5, t2, 31
	add t6, t2, t5
	add t5, t0, t4
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	blt t3, s0, label339
.p2align 2
label327:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t2, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t2, t1
	andi t5, t4, 1
	bne t5, zero, label334
	li t3, 1
	srliw t6, t2, 31
	srliw t5, t1, 31
	add t4, t2, t6
	add t6, t1, t5
	sraiw t2, t4, 1
	sraiw t1, t6, 1
	blt t3, s0, label337
	j label2217
.p2align 2
label2218:
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label302
	lw a5, 52(sp)
	divw a2, a2, a5
	bne a2, zero, label1193
	j label2213
.p2align 2
label2202:
	lui t1, 8
	addiw a5, t1, -1
	ble a2, a5, label2212
.p2align 2
label302:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a2, a5, t1
	beq a2, zero, label1192
.p2align 2
label1193:
	mv t0, a3
	mv t2, zero
	mv a5, a2
	mv t3, s2
	mv t1, zero
	and t4, a2, s2
	mv a3, s1
	andi t5, t4, 1
	bne t5, zero, label344
.p2align 2
label255:
	addiw t2, t2, 1
	srliw t4, a5, 31
	add t3, a5, t4
	sraiw a5, t3, 1
	blt t2, s0, label343
	j label257
.p2align 2
label1161:
	bne a4, zero, label1175
	j label2206
label351:
	mv a0, s1
	mv a1, zero
label352:
	bge a1, s0, label1275
	ble a1, zero, label582
	mv a2, a1
	mv t0, s2
	mv a5, s3
	mv a3, s1
	mv t1, zero
	mv t2, zero
	mv a4, a1
	mv t3, s2
	and t5, a1, s2
	andi t4, t5, 1
	beq t4, zero, label1284
.p2align 2
label366:
	lw t3, 0(a3)
	addw t2, t2, t3
	addiw t1, t1, 1
	srliw t4, a4, 31
	add t3, a4, t4
	sraiw a4, t3, 1
	bge t1, s0, label369
.p2align 2
label580:
	addi a3, a3, 4
	mv t3, zero
	and t5, a4, zero
	andi t4, t5, 1
	bne t4, zero, label366
	addiw t1, t1, 1
	srliw t4, a4, 31
	add t3, a4, t4
	sraiw a4, t3, 1
	blt t1, s0, label580
.p2align 2
label2227:
	bne t2, zero, label370
.p2align 2
label1297:
	mv a3, t0
	beq a5, zero, label2228
.p2align 2
label1467:
	mv a4, a5
	mv t2, zero
	mv t0, a5
	mv t3, zero
	mv t4, zero
	mv t5, s2
	and t6, a5, s2
	mv t1, a5
	mv a5, s1
	andi a6, t6, 1
	bne a6, zero, label490
	j label1494
.p2align 2
label2417:
	lw t1, 52(sp)
	divw a4, a4, t1
	beq a4, zero, label1644
.p2align 2
label1645:
	mv t2, a5
	mv t3, zero
	mv t4, zero
	mv t1, a4
	mv t5, s2
	and t6, a4, s2
	mv a5, s1
	andi a6, t6, 1
	beq a6, zero, label1494
.p2align 2
label490:
	lw t5, 0(a5)
	addw t4, t4, t5
	addiw t3, t3, 1
	srliw t6, t1, 31
	add t5, t1, t6
	sraiw t1, t5, 1
	bge t3, s0, label493
.p2align 2
label579:
	addi a5, a5, 4
	mv t5, zero
	and t6, t1, zero
	andi a6, t6, 1
	bne a6, zero, label490
	addiw t3, t3, 1
	srliw t6, t1, 31
	add t5, t1, t6
	sraiw t1, t5, 1
	blt t3, s0, label579
.p2align 2
label2258:
	bne t4, zero, label494
	j label1507
.p2align 2
label493:
	bne t4, zero, label494
.p2align 2
label1507:
	mv a5, t2
	beq t0, zero, label2259
.p2align 2
label1574:
	mv t1, t0
	mv t2, t0
	mv t3, s1
	mv t6, zero
	mv t0, zero
	mv t5, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label544
	j label1577
.p2align 2
label2274:
	andi a6, t4, 1
	beq a6, zero, label2271
.p2align 2
label546:
	lw a6, 0(t3)
	addw t0, t0, a6
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw a6, t4, 31
	add s4, t5, a7
	add a7, t4, a6
	sraiw t5, s4, 1
	sraiw t4, a7, 1
	bge t6, s0, label1595
.p2align 2
label549:
	addi t3, t3, 4
	andi a6, t5, 1
	beq a6, zero, label2274
.p2align 2
label544:
	andi a6, t4, 1
	beq a6, zero, label546
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw a6, t4, 31
	add s4, t5, a7
	add a7, t4, a6
	sraiw t5, s4, 1
	sraiw t4, a7, 1
	blt t6, s0, label549
.p2align 2
label2427:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a6, t4, t1
	andi a7, a6, 1
	beq a7, zero, label1601
.p2align 2
label557:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label2275
.p2align 2
label572:
	addi t3, t3, 4
	mv t6, t1
	and a6, t4, t2
	andi a7, a6, 1
	bne a7, zero, label557
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label572
	j label2275
.p2align 2
label2271:
	addiw t6, t6, 1
	srliw a7, t5, 31
	srliw a6, t4, 31
	add s4, t5, a7
	add a7, t4, a6
	sraiw t5, s4, 1
	sraiw t4, a7, 1
	blt t6, s0, label549
	j label2427
.p2align 2
label2275:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t4, t1, t2
	mv t2, zero
	mv t1, s1
	and t6, t4, t3
	andi a6, t6, 1
	bne a6, zero, label571
	li t5, 1
	srliw a6, t4, 31
	srliw t6, t3, 31
	add a7, t4, a6
	add a6, t3, t6
	sraiw t4, a7, 1
	sraiw t3, a6, 1
	blt t5, s0, label569
	j label1625
.p2align 2
label571:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a6, t4, 31
	addw t2, t2, t6
	add a7, t4, a6
	srliw t6, t3, 31
	sraiw t4, a7, 1
	add a6, t3, t6
	sraiw t3, a6, 1
	bge t5, s0, label2279
.p2align 2
label569:
	addi t1, t1, 4
	and t6, t4, t3
	andi a6, t6, 1
	bne a6, zero, label571
	addiw t5, t5, 1
	srliw a6, t4, 31
	srliw t6, t3, 31
	add a7, t4, a6
	add a6, t3, t6
	sraiw t4, a7, 1
	sraiw t3, a6, 1
	blt t5, s0, label569
.p2align 2
label1625:
	bne t2, zero, label1631
	j label2276
.p2align 2
label2279:
	beq t2, zero, label2276
.p2align 2
label1631:
	mv t1, t2
	mv t3, s1
	mv t6, zero
	mv t4, t2
	mv t2, t0
	mv t5, t0
	andi a6, t0, 1
	mv t0, zero
	bne a6, zero, label544
.p2align 2
label1577:
	andi a6, t4, 1
	bne a6, zero, label546
	j label2271
.p2align 2
label1595:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a6, t2, t1
	mv t2, t1
	andi a7, a6, 1
	bne a7, zero, label557
.p2align 2
label1601:
	mv t1, t6
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label572
	j label2275
.p2align 2
label1494:
	addiw t3, t3, 1
	srliw t6, t1, 31
	add t5, t1, t6
	sraiw t1, t5, 1
	blt t3, s0, label579
	j label2258
.p2align 2
label2276:
	lui t3, 8
	addiw t1, t3, -1
	ble a4, t1, label2417
.p2align 2
label578:
	lw t3, 52(sp)
	lui t4, 16
	divw t2, a4, t3
	lw t3, 108(sp)
	addw t1, t2, t4
	subw a4, t1, t3
	bne a4, zero, label1645
	j label2282
.p2align 2
label494:
	beq t0, zero, label1510
	mv t1, t0
	mv t3, s1
	mv t6, zero
	mv a5, zero
	mv t5, t2
	mv t4, t0
	andi a6, t2, 1
	bne a6, zero, label505
	j label504
.p2align 2
label1565:
	beq t2, zero, label2267
.p2align 2
label1571:
	mv t1, t2
	mv t3, s1
	mv t6, zero
	mv t4, t2
	mv t2, a5
	mv t5, a5
	andi a6, a5, 1
	mv a5, zero
	beq a6, zero, label504
.p2align 2
label505:
	andi a6, t4, 1
	bne a6, zero, label1523
.p2align 2
label506:
	lw a6, 0(t3)
	addw a5, a5, a6
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	bge t6, s0, label1532
.p2align 2
label509:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label505
	andi a6, t4, 1
	bne a6, zero, label506
.p2align 2
label1518:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label509
	j label2261
.p2align 2
label1523:
	addiw t6, t6, 1
	srliw a6, t5, 31
	srliw a7, t4, 31
	add s4, t5, a6
	add a6, t4, a7
	sraiw t5, s4, 1
	sraiw t4, a6, 1
	blt t6, s0, label509
.p2align 2
label2261:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a7, t4, t1
	andi a6, a7, 1
	bne a6, zero, label517
.p2align 2
label1538:
	mv t1, t6
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label520
	j label2264
.p2align 2
label517:
	lw a6, 0(t3)
	addw t1, t6, a6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a6, t2, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	bge t5, s0, label1547
.p2align 2
label520:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label517
	addiw t5, t5, 1
	srliw a6, t2, 31
	srliw t6, t4, 31
	add a7, t4, t6
	add t6, t2, a6
	sraiw t4, a7, 1
	sraiw t2, t6, 1
	blt t5, s0, label520
.p2align 2
label2264:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t2, zero
	mulw t4, t1, t3
	addiw t3, t6, -1
	mv t1, s1
	and a6, t4, t3
	andi t6, a6, 1
	bne t6, zero, label528
.p2align 2
label1556:
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t3, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	blt t5, s0, label531
	j label2266
.p2align 2
label528:
	lw t6, 0(t1)
	addw t2, t2, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t3, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	bge t5, s0, label1565
.p2align 2
label531:
	addi t1, t1, 4
	and a6, t4, t3
	andi t6, a6, 1
	bne t6, zero, label528
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t3, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	blt t5, s0, label531
.p2align 2
label2266:
	bne t2, zero, label1571
	j label2267
.p2align 2
label504:
	andi a6, t4, 1
	bne a6, zero, label506
	j label1518
.p2align 2
label1532:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label517
	j label1538
.p2align 2
label1547:
	lw t3, 52(sp)
	mv t5, zero
	lui t6, 16
	mv t2, zero
	mulw t4, t1, t3
	addiw t3, t6, -1
	mv t1, s1
	and a6, t4, t3
	andi t6, a6, 1
	bne t6, zero, label528
	j label1556
.p2align 2
label2267:
	bne t0, zero, label1574
	j label2269
.p2align 2
label2200:
	lw a2, 52(sp)
	divw a0, a0, a2
	ble a0, zero, label350
.p2align 2
label1267:
	mv a4, a1
	mv a5, zero
	mv t0, zero
	mv a2, a0
	mv t1, s2
	and t2, a0, s2
	mv a1, s1
	andi t3, t2, 1
	bne t3, zero, label238
.p2align 2
label1075:
	addiw a5, a5, 1
	srliw t1, a2, 31
	add t2, a2, t1
	sraiw a2, t2, 1
	blt a5, s0, label241
	j label2197
.p2align 2
label1083:
	beq t0, zero, label2363
.p2align 2
label586:
	beq a3, zero, label1670
	mv a1, a3
	mv a2, zero
	j label587
.p2align 2
label1740:
	lui t0, 8
	addiw a5, t0, -1
	ble a1, a5, label2289
.p2align 2
label646:
	lw t1, 52(sp)
	lui t2, 16
	divw a5, a1, t1
	lw t1, 108(sp)
	addw t0, a5, t2
	subw a1, t0, t1
	beq a1, zero, label2300
.p2align 2
label587:
	mv a5, s1
	mv t2, zero
	mv t0, a1
	mv t3, s2
	mv t1, zero
	and t5, a1, s2
	andi t4, t5, 1
	beq t4, zero, label597
.p2align 2
label686:
	lw t3, 0(a5)
	addiw t2, t2, 1
	srliw t4, t0, 31
	addw t1, t1, t3
	add t3, t0, t4
	sraiw t0, t3, 1
	bge t2, s0, label2310
.p2align 2
label599:
	addi a5, a5, 4
	mv t3, zero
	and t5, t0, zero
	andi t4, t5, 1
	bne t4, zero, label686
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label599
.p2align 2
label1681:
	beq t1, zero, label2287
.p2align 2
label647:
	beq a4, zero, label1771
	mv a5, a4
	mv t0, a2
	mv t1, s1
	mv t4, zero
	mv t3, a2
	mv t2, a4
	mv a2, zero
	andi t5, t3, 1
	bne t5, zero, label684
	j label657
.p2align 2
label2309:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	beq t6, zero, label2454
.p2align 2
label683:
	lw t5, 0(t1)
	addiw t3, t3, 1
	srliw t6, t0, 31
	addw a5, t4, t5
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	bge t3, s0, label670
.p2align 2
label682:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label683
.p2align 2
label2454:
	mv a5, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t6, t0, 31
	add t5, t2, t4
	add t4, t0, t6
	sraiw t2, t5, 1
	sraiw t0, t4, 1
	blt t3, s0, label682
.p2align 2
label670:
	lw t0, 52(sp)
	mv t3, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t2, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t2, t1
	andi t5, t4, 1
	beq t5, zero, label677
.p2align 2
label681:
	lw t4, 0(a5)
	addiw t3, t3, 1
	srliw t6, t2, 31
	addw t0, t0, t4
	add t5, t2, t6
	srliw t4, t1, 31
	sraiw t2, t5, 1
	add t6, t1, t4
	sraiw t1, t6, 1
	bge t3, s0, label2305
.p2align 2
label680:
	addi a5, a5, 4
	and t4, t2, t1
	andi t5, t4, 1
	bne t5, zero, label681
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t1, 31
	add t5, t2, t6
	add t6, t1, t4
	sraiw t2, t5, 1
	sraiw t1, t6, 1
	blt t3, s0, label680
.p2align 2
label679:
	beq t0, zero, label1818
.p2align 2
label1819:
	mv a5, t0
	mv t1, s1
	mv t4, zero
	mv t3, a2
	mv t2, t0
	mv t0, a2
	andi t5, a2, 1
	mv a2, zero
	beq t5, zero, label657
.p2align 2
label684:
	andi t5, t2, 1
	beq t5, zero, label685
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label660
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	bne t6, zero, label683
	j label2454
.p2align 2
label657:
	andi t5, t2, 1
	beq t5, zero, label658
.p2align 2
label685:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw t6, t2, 31
	addw a2, a2, t5
	srliw t5, t3, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	bge t4, s0, label2309
.p2align 2
label660:
	addi t1, t1, 4
	andi t5, t3, 1
	bne t5, zero, label684
	andi t5, t2, 1
	bne t5, zero, label685
.p2align 2
label658:
	addiw t4, t4, 1
	srliw t5, t3, 31
	srliw t6, t2, 31
	add a6, t3, t5
	add t5, t2, t6
	sraiw t3, a6, 1
	sraiw t2, t5, 1
	blt t4, s0, label660
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	bne t6, zero, label683
	j label2454
.p2align 2
label677:
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t4, t1, 31
	add t5, t2, t6
	add t6, t1, t4
	sraiw t2, t5, 1
	sraiw t1, t6, 1
	blt t3, s0, label680
	j label679
.p2align 2
label2310:
	bne t1, zero, label647
.p2align 2
label2287:
	beq a4, zero, label1690
.p2align 2
label1691:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t4, zero
	mv a4, zero
	mv t3, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label640
	j label612
.p2align 2
label636:
	beq t0, zero, label1740
.p2align 2
label1741:
	mv a5, t0
	mv t1, s1
	mv t4, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t3, a4
	mv a4, zero
	bne t5, zero, label640
.p2align 2
label612:
	andi t5, t2, 1
	beq t5, zero, label613
.p2align 2
label639:
	lw t5, 0(t1)
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	addw a4, a4, t5
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	bge t4, s0, label2296
.p2align 2
label615:
	addi t1, t1, 4
	andi t5, t3, 1
	beq t5, zero, label2290
.p2align 2
label640:
	andi t5, t2, 1
	beq t5, zero, label639
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label615
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	bne t6, zero, label638
	j label2442
.p2align 2
label2296:
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	beq t6, zero, label2442
.p2align 2
label638:
	lw t5, 0(t1)
	addiw t3, t3, 1
	srliw t6, t2, 31
	addw a5, t4, t5
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	bge t3, s0, label2295
.p2align 2
label625:
	addi t1, t1, 4
	mv t4, a5
	and t5, t2, t0
	andi t6, t5, 1
	bne t6, zero, label638
.p2align 2
label2442:
	mv a5, t4
	addiw t3, t3, 1
	srliw t6, t2, 31
	srliw t5, t0, 31
	add t4, t2, t6
	add t6, t0, t5
	sraiw t2, t4, 1
	sraiw t0, t6, 1
	blt t3, s0, label625
	lw t1, 52(sp)
	mv t3, zero
	mv t0, zero
	lui t5, 16
	mulw t2, a5, t1
	addiw t1, t5, -1
	mv a5, s1
	and t4, t2, t1
	andi t5, t4, 1
	bne t5, zero, label633
	j label1727
.p2align 2
label2295:
	lw t1, 52(sp)
	mv t3, zero
	mv t0, zero
	lui t5, 16
	mulw t2, a5, t1
	addiw t1, t5, -1
	mv a5, s1
	and t4, t2, t1
	andi t5, t4, 1
	beq t5, zero, label1727
.p2align 2
label633:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t1, 31
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	bge t3, s0, label636
.p2align 2
label637:
	addi a5, a5, 4
	and t4, t2, t1
	andi t5, t4, 1
	bne t5, zero, label633
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t1, 31
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	blt t3, s0, label637
.p2align 2
label2292:
	bne t0, zero, label1741
	j label1740
.p2align 2
label2290:
	andi t5, t2, 1
	bne t5, zero, label639
.p2align 2
label613:
	addiw t4, t4, 1
	srliw a6, t3, 31
	srliw t6, t2, 31
	add t5, t3, a6
	add a6, t2, t6
	sraiw t3, t5, 1
	sraiw t2, a6, 1
	blt t4, s0, label615
	mv t1, s1
	mv t3, zero
	mv t4, zero
	mv t2, t0
	and t5, t0, a5
	mv t0, a5
	andi t6, t5, 1
	bne t6, zero, label638
	j label2442
.p2align 2
label1727:
	addiw t3, t3, 1
	srliw t4, t2, 31
	srliw t5, t1, 31
	add t6, t2, t4
	add t4, t1, t5
	sraiw t2, t6, 1
	sraiw t1, t4, 1
	blt t3, s0, label637
	j label2292
.p2align 2
label2289:
	lw a5, 52(sp)
	divw a1, a1, a5
	bne a1, zero, label587
	j label1758
.p2align 2
label597:
	addiw t2, t2, 1
	srliw t4, t0, 31
	add t3, t0, t4
	sraiw t0, t3, 1
	blt t2, s0, label599
	j label1681
.p2align 2
label1818:
	bne a4, zero, label1691
	j label2303
.p2align 2
label2213:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label585
	j label2200
.p2align 2
label1192:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2200
.p2align 2
label585:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	subw a0, a4, a5
	bgt a0, zero, label1267
	j label350
.p2align 2
label2201:
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label302
.p2align 2
label2212:
	lw a5, 52(sp)
	divw a2, a2, a5
	bne a2, zero, label1193
	j label2213
.p2align 2
label1690:
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label646
	j label2289
.p2align 2
label2206:
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label302
	j label2212
.p2align 2
label2303:
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label646
	j label2289
.p2align 2
label369:
	beq t2, zero, label1297
.p2align 2
label370:
	beq a5, zero, label1300
	mv a3, a5
	mv a4, zero
	j label371
.p2align 2
label2248:
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label466
.p2align 2
label2392:
	lw t1, 52(sp)
	divw a3, a3, t1
.p2align 2
label467:
	beq a3, zero, label1459
.p2align 2
label371:
	mv t1, s1
	mv t4, zero
	mv t2, a3
	mv t5, s2
	mv t3, zero
	and a6, a3, s2
	andi t6, a6, 1
	bne t6, zero, label381
	li t4, 1
	srliw t5, a3, 31
	add t6, a3, t5
	sraiw t2, t6, 1
	blt t4, s0, label470
	j label2229
.p2align 2
label381:
	lw t5, 0(t1)
	addw t3, t3, t5
	addiw t4, t4, 1
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	bge t4, s0, label384
.p2align 2
label470:
	addi t1, t1, 4
	mv t5, zero
	and a6, t2, zero
	andi t6, a6, 1
	bne t6, zero, label381
	addiw t4, t4, 1
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t2, t6, 1
	blt t4, s0, label470
.p2align 2
label2229:
	beq t3, zero, label1318
.p2align 2
label385:
	beq t0, zero, label1321
	mv t1, t0
	mv t2, a4
	mv t3, s1
	mv t6, zero
	mv a4, zero
	mv t5, t2
	mv t4, t0
	andi a6, t2, 1
	bne a6, zero, label423
	j label1325
.p2align 2
label407:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t4, t1, t2
	mv t2, zero
	mv t1, s1
	and a6, t4, t3
	andi t6, a6, 1
	beq t6, zero, label1353
.p2align 2
label414:
	lw t6, 0(t1)
	addw t2, t2, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t3, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	bge t5, s0, label1362
.p2align 2
label417:
	addi t1, t1, 4
	and a6, t4, t3
	andi t6, a6, 1
	bne t6, zero, label414
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t3, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	blt t5, s0, label417
.p2align 2
label2234:
	beq t2, zero, label2235
.p2align 2
label1368:
	mv t1, t2
	mv t3, s1
	mv t6, zero
	mv t4, t2
	mv t2, a4
	andi a6, a4, 1
	mv t5, a4
	mv a4, zero
	beq a6, zero, label1325
.p2align 2
label423:
	andi a6, t4, 1
	bne a6, zero, label1381
.p2align 2
label421:
	lw a6, 0(t3)
	addiw t6, t6, 1
	addw a4, a4, a6
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	bge t6, s0, label2240
.p2align 2
label397:
	addi t3, t3, 4
	andi a6, t5, 1
	bne a6, zero, label423
	andi a6, t4, 1
	bne a6, zero, label421
.p2align 2
label2232:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label397
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label420
	j label2238
.p2align 2
label2240:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label420
.p2align 2
label2238:
	mv t1, t6
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t2, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	bge t5, s0, label407
.p2align 2
label419:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	beq a6, zero, label2238
.p2align 2
label420:
	lw a6, 0(t3)
	addiw t5, t5, 1
	srliw a7, t2, 31
	addw t1, t6, a6
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t2, a7
	sraiw t4, a6, 1
	sraiw t2, t6, 1
	blt t5, s0, label419
	j label407
.p2align 2
label1325:
	andi a6, t4, 1
	bne a6, zero, label421
	j label2232
.p2align 2
label1381:
	addiw t6, t6, 1
	srliw a6, t5, 31
	add a7, t5, a6
	srliw a6, t4, 31
	sraiw t5, a7, 1
	add a7, t4, a6
	sraiw t4, a7, 1
	blt t6, s0, label397
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	bne a6, zero, label420
	j label2238
.p2align 2
label1318:
	beq t0, zero, label2230
.p2align 2
label1385:
	mv t1, t0
	mv t2, t0
	mv t3, s1
	mv t6, zero
	mv t5, t0
	mv t4, t0
	mv t0, zero
	andi a6, t5, 1
	bne a6, zero, label435
	j label1388
.p2align 2
label461:
	lw t6, 0(t1)
	addiw t5, t5, 1
	srliw a7, t3, 31
	addw t2, t2, t6
	srliw t6, t4, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	bge t5, s0, label2251
.p2align 2
label459:
	addi t1, t1, 4
	and t6, t4, t3
	andi a6, t6, 1
	bne a6, zero, label461
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t3, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	blt t5, s0, label459
.p2align 2
label1434:
	beq t2, zero, label2248
.p2align 2
label1440:
	mv t1, t2
	mv t3, s1
	mv t6, zero
	mv t5, t0
	mv t4, t2
	mv t2, t0
	andi a6, t0, 1
	mv t0, zero
	bne a6, zero, label435
.p2align 2
label1388:
	andi a6, t4, 1
	beq a6, zero, label2244
.p2align 2
label436:
	lw a6, 0(t3)
	addiw t6, t6, 1
	srliw a7, t5, 31
	addw t0, t0, a6
	add a6, t5, a7
	srliw a7, t4, 31
	sraiw t5, a6, 1
	add a6, t4, a7
	sraiw t4, a6, 1
	bge t6, s0, label2245
.p2align 2
label440:
	addi t3, t3, 4
	andi a6, t5, 1
	beq a6, zero, label2247
.p2align 2
label435:
	andi a6, t4, 1
	beq a6, zero, label436
	addiw t6, t6, 1
	srliw a7, t5, 31
	add a6, t5, a7
	srliw a7, t4, 31
	sraiw t5, a6, 1
	add a6, t4, a7
	sraiw t4, a6, 1
	blt t6, s0, label440
	j label2245
.p2align 2
label2247:
	andi a6, t4, 1
	bne a6, zero, label436
.p2align 2
label2244:
	addiw t6, t6, 1
	srliw a7, t5, 31
	add a6, t5, a7
	srliw a7, t4, 31
	sraiw t5, a6, 1
	add a6, t4, a7
	sraiw t4, a6, 1
	blt t6, s0, label440
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	and a7, t2, t1
	mv t2, t1
	andi a6, a7, 1
	beq a6, zero, label2405
.p2align 2
label463:
	lw a6, 0(t3)
	addiw t5, t5, 1
	srliw a7, t4, 31
	addw t1, t6, a6
	srliw t6, t2, 31
	add a6, t4, a7
	add a7, t2, t6
	sraiw t4, a6, 1
	sraiw t2, a7, 1
	bge t5, s0, label450
.p2align 2
label462:
	addi t3, t3, 4
	mv t6, t1
	and a7, t4, t2
	andi a6, a7, 1
	bne a6, zero, label463
.p2align 2
label2405:
	mv t1, t6
	addiw t5, t5, 1
	srliw a7, t4, 31
	srliw t6, t2, 31
	add a6, t4, a7
	add a7, t2, t6
	sraiw t4, a6, 1
	sraiw t2, a7, 1
	blt t5, s0, label462
.p2align 2
label450:
	lw t2, 52(sp)
	mv t5, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t4, t1, t2
	mv t2, zero
	mv t1, s1
	and t6, t4, t3
	andi a6, t6, 1
	bne a6, zero, label461
	li t5, 1
	srliw t6, t4, 31
	srliw a7, t3, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	blt t5, s0, label459
	j label1434
.p2align 2
label2245:
	mv t3, s1
	mv t5, zero
	mv t6, zero
	mv t4, t2
	mv t2, t1
	and a7, t4, t1
	andi a6, a7, 1
	bne a6, zero, label463
	j label2405
.p2align 2
label384:
	bne t3, zero, label385
	j label1318
.p2align 2
label2235:
	bne t0, zero, label1385
	j label2237
label2228:
	mv a5, zero
	lui t1, 8
	addiw a4, t1, -1
	ble a2, a4, label1470
.p2align 2
label475:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a4, t0, t2
	subw a2, a4, t1
	ble a2, zero, label478
.p2align 2
label1482:
	mv t0, a3
	mv t1, zero
	mv t2, zero
	mv a4, a2
	mv t3, s2
	and t5, a2, s2
	mv a3, s1
	andi t4, t5, 1
	bne t4, zero, label366
.p2align 2
label1284:
	addiw t1, t1, 1
	srliw t4, a4, 31
	add t3, a4, t4
	sraiw a4, t3, 1
	blt t1, s0, label580
	j label2227
.p2align 2
label2269:
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label578
	j label2417
.p2align 2
label1644:
	lui t1, 8
	addiw a4, t1, -1
	bgt a2, a4, label475
.p2align 2
label2281:
	lw a4, 52(sp)
	divw a2, a2, a4
	bgt a2, zero, label1482
	j label478
.p2align 2
label2282:
	lui t1, 8
	addiw a4, t1, -1
	bgt a2, a4, label475
	j label2281
.p2align 2
label2237:
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label466
	j label2392
.p2align 2
label2230:
	lui t2, 8
	addiw t1, t2, -1
	ble a3, t1, label2392
.p2align 2
label466:
	lw t3, 52(sp)
	lui t4, 16
	divw t1, a3, t3
	lw t3, 108(sp)
	addw t2, t1, t4
	subw a3, t2, t3
	j label467
label478:
	lw a2, 0(a0)
	beq a3, a2, label1486
label1487:
	mv a0, s2
label583:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s0, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
label1300:
	mv a3, zero
	bne a5, zero, label1467
	j label2228
label723:
	mv a1, zero
	bne a3, zero, label890
	j label2312
.p2align 2
label1092:
	mv a3, zero
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label585
	j label2200
label582:
	lw a2, 0(a0)
	bne a2, s2, label1487
label1486:
	addiw a1, a1, 1
	addi a0, a0, 4
	j label352
.p2align 2
label1321:
	bne t0, zero, label1385
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label466
	j label2392
.p2align 2
label1241:
	bne t0, zero, label1247
	j label2218
.p2align 2
label2187:
	bne t0, zero, label1018
	j label2184
.p2align 2
label2259:
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label578
	j label2417
.p2align 2
label1758:
	mv a1, a2
	bne a3, zero, label1093
.p2align 2
label2298:
	mv a3, zero
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label585
	j label2200
.p2align 2
label2305:
	bne t0, zero, label1819
	j label1818
.p2align 2
label805:
	bne t0, zero, label811
	j label2149
.p2align 2
label909:
	mv a3, t0
	bne a4, zero, label973
	lui t0, 8
	addiw a5, t0, -1
	bgt a2, a5, label217
	j label2341
.p2align 2
label2178:
	bne t0, zero, label962
	j label961
.p2align 2
label1670:
	mv a1, zero
	bne a3, zero, label1093
	j label1092
.p2align 2
label796:
	addiw t3, t3, 1
	srliw t5, t2, 31
	srliw t4, t1, 31
	add t6, t2, t5
	add t5, t1, t4
	sraiw t2, t6, 1
	sraiw t1, t5, 1
	blt t3, s0, label71
	j label2148
.p2align 2
label823:
	bne a4, zero, label743
	j label742
.p2align 2
label2143:
	mv a1, a2
	bne a3, zero, label890
	j label2312
label1275:
	mv a0, zero
	j label583
.p2align 2
label2251:
	bne t2, zero, label1440
	j label2248
.p2align 2
label1111:
	mv a3, t0
	bne a4, zero, label1175
	j label2202
.p2align 2
label1362:
	bne t2, zero, label1368
	j label2235
.p2align 2
label750:
	mv a1, a2
	bne a3, zero, label890
	j label2312
.p2align 2
label2300:
	mv a1, a2
	bne a3, zero, label1093
	j label2298
label1470:
	lw a4, 52(sp)
	divw a2, a2, a4
	bgt a2, zero, label1482
	j label478
.p2align 2
label1459:
	mv a3, a4
	bne a5, zero, label1467
	j label2228
.p2align 2
label1353:
	addiw t5, t5, 1
	srliw t6, t4, 31
	srliw a7, t3, 31
	add a6, t4, t6
	add t6, t3, a7
	sraiw t4, a6, 1
	sraiw t3, t6, 1
	blt t5, s0, label417
	j label2234
.p2align 2
label1510:
	mv a5, t2
	bne t0, zero, label1574
	lui t3, 8
	addiw t1, t3, -1
	bgt a4, t1, label578
	j label2417
.p2align 2
label1771:
	bne a4, zero, label1691
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label646
	j label2289
