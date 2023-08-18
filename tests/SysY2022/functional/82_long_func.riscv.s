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
	slli a2, a1, 2
	lui a0, 1
	slli a3, a2, 2
	sd a1, 64(sp)
	slli a1, a3, 2
	sd a2, 72(sp)
	slli a2, a4, 32
	sd a3, 80(sp)
	add.uw a3, a0, a2
	sd a1, 88(sp)
	lui a0, 8
	lui a1, 4
	slli a2, a0, 32
	sd a3, 96(sp)
	add.uw a3, a1, a2
	sd a3, 104(sp)
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a3, s3
	mv a4, s2
	mv a0, s2
	mv a1, s1
	mv t0, zero
	mv a5, s2
	mv t1, s2
	mv a2, zero
	and t3, s2, s2
	andi t2, t3, 1
	bne t2, zero, label687
	j label12
label2265:
	lui t0, 8
	addiw a5, t0, -1
	bgt a2, a5, label217
label2416:
	lw a5, 52(sp)
	divw a2, a2, a5
	bne a2, zero, label1044
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2274
label221:
	lw a5, 52(sp)
	lui t0, 16
	divw a4, a0, a5
	lw a5, 108(sp)
	addw a2, a4, t0
	subw a0, a2, a5
	ble a0, zero, label225
label1071:
	mv a4, a1
	mv t0, zero
	mv a5, a0
	mv t1, s2
	mv a2, zero
	and t3, a0, s2
	mv a1, s1
	andi t2, t3, 1
	beq t2, zero, label12
label687:
	lw t1, 0(a1)
	addiw t0, t0, 1
	addw a2, a2, t1
	mv t1, a5
	bge a5, zero, label2031
label2030:
	addiw t1, t1, 1
label2031:
	sraiw a5, t1, 1
	bge t0, s0, label714
	addi a1, a1, 4
	mv t1, zero
	and t3, a5, zero
	andi t2, t3, 1
	bne t2, zero, label687
	addiw t0, t0, 1
	mv t1, a5
	bge a5, zero, label2031
	j label2030
label2251:
	lui t0, 8
	addiw a5, t0, -1
	ble a2, a5, label2416
label217:
	lw t1, 52(sp)
	lui t2, 16
	divw a5, a2, t1
	lw t1, 108(sp)
	addw t0, a5, t2
	subw a2, t0, t1
	beq a2, zero, label2275
label1044:
	mv t0, a3
	mv t1, zero
	mv a5, zero
	mv t2, a2
	mv t3, s2
	and t4, a2, s2
	mv a3, s1
	andi t5, t4, 1
	bne t5, zero, label218
label129:
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2062
	j label2061
label218:
	lw t3, 0(a3)
	addiw t1, t1, 1
	addw a5, a5, t3
	mv t3, t2
	bge t2, zero, label2062
label2061:
	addiw t3, t3, 1
label2062:
	sraiw t2, t3, 1
	bge t1, s0, label900
	addi a3, a3, 4
	mv t3, zero
	and t4, t2, zero
	andi t5, t4, 1
	bne t5, zero, label218
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2062
	j label2061
label900:
	beq a5, zero, label2249
	beq a4, zero, label909
	mv a5, a4
	mv t1, s1
	mv t3, zero
	mv a3, zero
	mv t4, t0
	mv t2, a4
	andi t5, t0, 1
	bne t5, zero, label143
label913:
	andi t5, t2, 1
	beq t5, zero, label2253
label144:
	lw t5, 0(t1)
	addw a3, a3, t5
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2064
label2417:
	addiw t6, t6, 1
label2064:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2066
	addiw t5, t2, 1
label2066:
	sraiw t2, t5, 1
	bge t3, s0, label927
	addi t1, t1, 4
	andi t5, t4, 1
	bne t5, zero, label143
	andi t5, t2, 1
	bne t5, zero, label144
label2253:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2064
	j label2417
label167:
	beq t0, zero, label961
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a3
	mv t4, a3
	andi t5, a3, 1
	mv a3, zero
	beq t5, zero, label913
label143:
	andi t5, t2, 1
	beq t5, zero, label144
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2064
	j label2417
label927:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t6, t0, a5
	andi t0, t6, 1
	bne t0, zero, label155
	mv a5, zero
	li t0, 1
	mv t5, t4
	bge t4, zero, label2068
	j label2256
label155:
	lw t0, 0(t1)
	addw a5, t5, t0
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2068
label2256:
	addiw t5, t5, 1
label2068:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2070
	addiw t3, t2, 1
label2070:
	sraiw t2, t3, 1
	bge t0, s0, label158
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	bne t0, zero, label155
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2068
	j label2256
label158:
	lw t0, 52(sp)
	mv t1, zero
	lui t5, 16
	addiw t2, t5, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t3, t2
	andi t5, t4, 1
	beq t5, zero, label165
label169:
	lw t4, 0(a5)
	addiw t1, t1, 1
	mv t5, t3
	addw t0, t0, t4
	bge t3, zero, label2073
label2072:
	addiw t5, t5, 1
label2073:
	sraiw t3, t5, 1
	mv t4, t2
	bge t2, zero, label2075
	addiw t4, t2, 1
label2075:
	sraiw t2, t4, 1
	bge t1, s0, label167
	addi a5, a5, 4
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label169
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2073
	j label2072
label165:
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2073
	j label2072
label2249:
	mv a3, t0
	beq a4, zero, label2251
label973:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv a4, zero
	mv t4, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label211
label976:
	andi t5, t2, 1
	beq t5, zero, label2263
label209:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a4, a4, t5
	mv t5, t4
	bge t4, zero, label2077
label2424:
	addiw t5, t5, 1
label2077:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2079
	addiw t6, t2, 1
label2079:
	sraiw t2, t6, 1
	bge t3, s0, label185
	addi t1, t1, 4
	andi t5, t4, 1
	bne t5, zero, label211
	andi t5, t2, 1
	bne t5, zero, label209
label2263:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2077
	j label2424
label185:
	mv t1, s1
	mv t2, zero
	mv t3, t0
	mv t0, a5
	mv a5, zero
	and t5, t3, t0
	andi t4, t5, 1
	beq t4, zero, label988
label192:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2081
label2264:
	addiw t4, t4, 1
label2081:
	sraiw t3, t4, 1
	mv t5, t0
	bge t0, zero, label2083
	addiw t5, t0, 1
label2083:
	sraiw t0, t5, 1
	bge t2, s0, label195
	addi t1, t1, 4
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label192
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2081
	j label2264
label1012:
	beq t0, zero, label2265
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	beq t5, zero, label976
label211:
	andi t5, t2, 1
	beq t5, zero, label209
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2077
	j label2424
label195:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label206
	li t2, 1
	mv t4, t3
	bge t3, zero, label2086
	j label2085
label206:
	lw t4, 0(a5)
	addiw t2, t2, 1
	addw t0, t0, t4
	mv t4, t3
	bge t3, zero, label2086
label2085:
	addiw t4, t4, 1
label2086:
	sraiw t3, t4, 1
	mv t5, t1
	bge t1, zero, label2088
	addiw t5, t1, 1
label2088:
	sraiw t1, t5, 1
	bge t2, s0, label1012
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label206
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2086
	j label2085
label714:
	beq a2, zero, label2219
	beq a3, zero, label723
	mv a1, a3
	mv a2, zero
	j label17
label2230:
	lui t1, 8
	addiw a5, t1, -1
	ble a1, a5, label2222
label36:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a1, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a1, a5, t1
	beq a1, zero, label2224
label17:
	mv a5, s1
	mv t1, zero
	mv t0, zero
	mv t2, a1
	mv t3, s2
	and t5, a1, s2
	andi t4, t5, 1
	bne t4, zero, label116
	li t1, 1
	mv t3, a1
	bge a1, zero, label2033
	j label2032
label116:
	lw t4, 0(a5)
	addiw t1, t1, 1
	mv t3, t2
	addw t0, t0, t4
	bge t2, zero, label2033
label2032:
	addiw t3, t3, 1
label2033:
	sraiw t2, t3, 1
	bge t1, s0, label29
	addi a5, a5, 4
	mv t3, zero
	and t5, t2, zero
	andi t4, t5, 1
	bne t4, zero, label116
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2033
	j label2032
label29:
	bne t0, zero, label76
	beq a4, zero, label742
label743:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv t2, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label74
	j label764
label805:
	beq t0, zero, label2230
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label74
label764:
	andi t5, t2, 1
	beq t5, zero, label2226
label47:
	lw t5, 0(t1)
	addw a4, a4, t5
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2036
label2397:
	addiw t6, t6, 1
label2036:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2038
	addiw t5, t2, 1
label2038:
	sraiw t2, t5, 1
	bge t3, s0, label773
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2227
label74:
	andi t5, t2, 1
	beq t5, zero, label47
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2036
	j label2397
label773:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t6, t0, a5
	andi t0, t6, 1
	beq t0, zero, label779
label58:
	lw t0, 0(t1)
	addw a5, t5, t0
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2040
label2228:
	addiw t5, t5, 1
label2040:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2042
	addiw t3, t2, 1
label2042:
	sraiw t2, t3, 1
	bge t0, s0, label61
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	bne t0, zero, label58
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2040
	j label2228
label2227:
	andi t5, t2, 1
	bne t5, zero, label47
label2226:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2036
	j label2397
label61:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t4, t3, t1
	andi t5, t4, 1
	bne t5, zero, label68
	li t2, 1
	mv t4, t3
	bge t3, zero, label2045
	j label2229
label68:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2045
label2229:
	addiw t4, t4, 1
label2045:
	sraiw t3, t4, 1
	mv t5, t1
	bge t1, zero, label2047
	addiw t5, t1, 1
label2047:
	sraiw t1, t5, 1
	bge t2, s0, label805
	addi a5, a5, 4
	and t4, t3, t1
	andi t5, t4, 1
	bne t5, zero, label68
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2045
	j label2229
label779:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2040
	j label2228
label2222:
	lw a5, 52(sp)
	divw a1, a1, a5
	bne a1, zero, label17
	mv a1, a2
	bne a3, zero, label890
	j label2393
label76:
	beq a4, zero, label823
	mv a5, a4
	mv t0, a2
	mv t1, s1
	mv t3, zero
	mv a2, zero
	mv t4, t0
	mv t2, a4
	andi t5, t0, 1
	bne t5, zero, label86
	j label827
label874:
	beq t0, zero, label2243
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a2
	mv t4, a2
	andi t5, a2, 1
	mv a2, zero
	beq t5, zero, label827
label86:
	andi t5, t2, 1
	bne t5, zero, label832
label87:
	lw t5, 0(t1)
	addw a2, a2, t5
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2049
label2404:
	addiw t6, t6, 1
label2049:
	sraiw t4, t6, 1
	mv t5, t2
	bge t2, zero, label2051
	addiw t5, t2, 1
label2051:
	sraiw t2, t5, 1
	bge t3, s0, label841
	addi t1, t1, 4
	andi t5, t4, 1
	bne t5, zero, label86
	andi t5, t2, 1
	bne t5, zero, label87
label2237:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2049
	j label2404
label841:
	mv t1, s1
	mv t2, zero
	mv t3, t0
	mv t0, a5
	and t5, t3, a5
	mv a5, zero
	andi t4, t5, 1
	beq t4, zero, label847
label98:
	lw t4, 0(t1)
	addw a5, a5, t4
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2053
label2240:
	addiw t5, t5, 1
label2053:
	sraiw t3, t5, 1
	mv t4, t0
	bge t0, zero, label2055
	addiw t4, t0, 1
label2055:
	sraiw t0, t4, 1
	bge t2, s0, label856
	addi t1, t1, 4
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label98
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2053
	j label2240
label832:
	addiw t3, t3, 1
	mv t6, t4
	bge t4, zero, label2049
	j label2404
label856:
	lw t0, 52(sp)
	mv t1, zero
	lui t5, 16
	addiw t2, t5, -1
	mulw t3, a5, t0
	and t4, t3, t2
	mv t0, zero
	mv a5, s1
	andi t5, t4, 1
	bne t5, zero, label109
	li t1, 1
	mv t4, t3
	bge t3, zero, label2058
	j label2242
label109:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t1, t1, 1
	mv t4, t3
	bge t3, zero, label2058
label2242:
	addiw t4, t4, 1
label2058:
	sraiw t3, t4, 1
	mv t5, t2
	bge t2, zero, label2060
	addiw t5, t2, 1
label2060:
	sraiw t2, t5, 1
	bge t1, s0, label874
	addi a5, a5, 4
	and t4, t3, t2
	andi t5, t4, 1
	bne t5, zero, label109
	addiw t1, t1, 1
	mv t4, t3
	bge t3, zero, label2058
	j label2242
label847:
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2053
	j label2240
label827:
	andi t5, t2, 1
	bne t5, zero, label87
	j label2237
label2219:
	mv a1, a4
	beq a3, zero, label2393
label890:
	mv a2, a3
	mv t0, zero
	mv a4, a3
	mv a3, s1
	mv t1, zero
	mv a5, zero
	mv t2, a2
	mv t3, s2
	and t4, a2, s2
	andi t5, t4, 1
	bne t5, zero, label218
	j label129
label12:
	addiw t0, t0, 1
	mv t1, a5
	bge a5, zero, label2031
	j label2030
label2275:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label221
label2274:
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label1071
	j label225
label961:
	bne a4, zero, label973
	lui t0, 8
	addiw a5, t0, -1
	bgt a2, a5, label217
	j label2416
label2243:
	bne a4, zero, label743
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label36
	j label2222
label2224:
	mv a1, a2
	bne a3, zero, label890
label2393:
	mv a3, zero
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label221
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label1071
	j label225
label723:
	mv a1, zero
	bne a3, zero, label890
	j label2393
label225:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s4, s3
	j label226
label350:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	bge s4, s0, label351
label226:
	mv a0, s4
	mv a4, s2
	mv a3, s3
	mv a1, s1
	mv a5, zero
	mv a2, zero
	mv t0, s4
	mv t1, s2
	and t2, s4, s2
	andi t3, t2, 1
	beq t3, zero, label1075
label238:
	lw t1, 0(a1)
	addw a2, a2, t1
	addiw a5, a5, 1
	mv t1, t0
	bge t0, zero, label2092
label2278:
	addiw t1, t1, 1
label2092:
	sraiw t0, t1, 1
	bge a5, s0, label1083
	addi a1, a1, 4
	mv t1, zero
	and t2, t0, zero
	andi t3, t2, 1
	bne t3, zero, label238
	addiw a5, a5, 1
	mv t1, t0
	bge t0, zero, label2092
	j label2278
label1083:
	bne a2, zero, label586
	mv a1, a4
	beq a3, zero, label1092
label1093:
	mv a2, a3
	mv t0, zero
	mv a4, a3
	mv a3, s1
	mv t2, zero
	mv t1, a2
	mv t3, s2
	mv a5, zero
	and t5, a2, s2
	andi t4, t5, 1
	beq t4, zero, label255
label344:
	lw t3, 0(a3)
	addiw t2, t2, 1
	addw a5, a5, t3
	mv t3, t1
	bge t1, zero, label2094
label2093:
	addiw t3, t3, 1
label2094:
	sraiw t1, t3, 1
	bge t2, s0, label257
	addi a3, a3, 4
	mv t3, zero
	and t5, t1, zero
	andi t4, t5, 1
	bne t4, zero, label344
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2094
	j label2093
label257:
	bne a5, zero, label258
	mv a3, t0
	beq a4, zero, label2282
label1175:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv t2, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label314
	j label1196
label1241:
	beq t0, zero, label2299
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	beq t5, zero, label1196
label314:
	andi t5, t2, 1
	bne t5, zero, label1201
label342:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a4, a4, t5
	mv t5, t4
	bge t4, zero, label2110
label2448:
	addiw t5, t5, 1
label2110:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2112
	addiw t6, t2, 1
label2112:
	sraiw t2, t6, 1
	bge t3, s0, label318
	addi t1, t1, 4
	andi t5, t4, 1
	bne t5, zero, label314
	andi t5, t2, 1
	bne t5, zero, label342
label2296:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2110
	j label2448
label318:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t0, t0, a5
	andi t6, t0, 1
	beq t6, zero, label1217
label340:
	lw t0, 0(t1)
	addw a5, t5, t0
	mv t5, t4
	addiw t0, t3, 1
	bge t4, zero, label2114
label2113:
	addiw t5, t5, 1
label2114:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2116
	addiw t3, t2, 1
label2116:
	sraiw t2, t3, 1
	bge t0, s0, label327
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t0, t4, t2
	andi t6, t0, 1
	bne t6, zero, label340
label1217:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2114
	j label2113
label1201:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2110
	j label2448
label327:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label334
	li t2, 1
	mv t5, t3
	bge t3, zero, label2119
	j label2298
label334:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2119
label2298:
	addiw t5, t5, 1
label2119:
	sraiw t3, t5, 1
	mv t4, t1
	bge t1, zero, label2121
	addiw t4, t1, 1
label2121:
	sraiw t1, t4, 1
	bge t2, s0, label1241
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label334
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2119
	j label2298
label1196:
	andi t5, t2, 1
	bne t5, zero, label342
	j label2296
label2299:
	lui t1, 8
	addiw a5, t1, -1
	ble a2, a5, label2301
label302:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a5, t0, t2
	subw a2, a5, t1
	beq a2, zero, label1192
label1193:
	mv t0, a3
	mv t2, zero
	mv t1, a2
	mv t3, s2
	mv a5, zero
	and t5, a2, s2
	mv a3, s1
	andi t4, t5, 1
	bne t4, zero, label344
label255:
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2094
	j label2093
label2301:
	lw a5, 52(sp)
	divw a2, a2, a5
	bne a2, zero, label1193
label2294:
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label585
	j label2281
label258:
	beq a4, zero, label1111
	mv a5, a4
	mv t1, s1
	mv t3, zero
	mv t4, t0
	mv t2, a4
	mv a3, zero
	andi t5, t0, 1
	bne t5, zero, label269
	j label1115
label291:
	beq t0, zero, label1161
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t4, a3
	mv t2, t0
	mv t0, a3
	andi t5, a3, 1
	mv a3, zero
	bne t5, zero, label269
label1115:
	andi t5, t2, 1
	beq t5, zero, label2284
label268:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a3, a3, t5
	mv t5, t4
	bge t4, zero, label2096
label2437:
	addiw t5, t5, 1
label2096:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2098
	addiw t6, t2, 1
label2098:
	sraiw t2, t6, 1
	bge t3, s0, label272
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2291
label269:
	andi t5, t2, 1
	beq t5, zero, label268
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2096
	j label2437
label2291:
	andi t5, t2, 1
	bne t5, zero, label268
label2284:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2096
	j label2437
label272:
	mv t1, s1
	mv t2, zero
	mv t3, t0
	mv t0, a5
	mv a5, zero
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label294
	li t2, 1
	mv t4, t3
	bge t3, zero, label2100
	j label2099
label294:
	lw t4, 0(t1)
	addiw t2, t2, 1
	addw a5, a5, t4
	mv t4, t3
	bge t3, zero, label2100
label2099:
	addiw t4, t4, 1
label2100:
	sraiw t3, t4, 1
	mv t5, t0
	bge t0, zero, label2102
	addiw t5, t0, 1
label2102:
	sraiw t0, t5, 1
	bge t2, s0, label1141
	addi t1, t1, 4
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label294
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2100
	j label2099
label1141:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	and t5, t3, t1
	mv t0, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label293
	li t2, 1
	mv t5, t3
	bge t3, zero, label2105
	j label2104
label293:
	lw t4, 0(a5)
	addiw t2, t2, 1
	mv t5, t3
	addw t0, t0, t4
	bge t3, zero, label2105
label2104:
	addiw t5, t5, 1
label2105:
	sraiw t3, t5, 1
	mv t4, t1
	bge t1, zero, label2107
	addiw t4, t1, 1
label2107:
	sraiw t1, t4, 1
	bge t2, s0, label291
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label293
	addiw t2, t2, 1
	mv t5, t3
	bge t3, zero, label2105
	j label2104
label2281:
	lw a2, 52(sp)
	divw a0, a0, a2
	bgt a0, zero, label1267
	j label350
label1192:
	lui a4, 8
	addiw a2, a4, -1
	ble a0, a2, label2281
label585:
	lw a5, 52(sp)
	lui t0, 16
	divw a2, a0, a5
	lw a5, 108(sp)
	addw a4, a2, t0
	subw a0, a4, a5
	ble a0, zero, label350
label1267:
	mv a4, a1
	mv a5, zero
	mv a2, zero
	mv t0, a0
	mv t1, s2
	and t2, a0, s2
	mv a1, s1
	andi t3, t2, 1
	bne t3, zero, label238
label1075:
	addiw a5, a5, 1
	mv t1, t0
	bge t0, zero, label2092
	j label2278
label586:
	beq a3, zero, label1670
	mv a1, a3
	mv a2, zero
	j label587
label1690:
	lui t0, 8
	addiw a5, t0, -1
	ble a1, a5, label2370
label646:
	lw t1, 52(sp)
	lui t2, 16
	divw a5, a1, t1
	lw t1, 108(sp)
	addw t0, a5, t2
	subw a1, t0, t1
	beq a1, zero, label2381
label587:
	mv a5, s1
	mv t2, zero
	mv t1, a1
	mv t3, s2
	mv t0, zero
	and t5, a1, s2
	andi t4, t5, 1
	beq t4, zero, label597
label686:
	lw t3, 0(a5)
	addiw t2, t2, 1
	addw t0, t0, t3
	mv t3, t1
	bge t1, zero, label2185
label2184:
	addiw t3, t3, 1
label2185:
	sraiw t1, t3, 1
	bge t2, s0, label1681
	addi a5, a5, 4
	mv t3, zero
	and t5, t1, zero
	andi t4, t5, 1
	bne t4, zero, label686
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2185
	j label2184
label1740:
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label646
label2370:
	lw a5, 52(sp)
	divw a1, a1, a5
	bne a1, zero, label587
	mv a1, a2
	bne a3, zero, label1093
	j label2379
label597:
	addiw t2, t2, 1
	mv t3, t1
	bge t1, zero, label2185
	j label2184
label1681:
	beq t0, zero, label2368
	beq a4, zero, label1771
	mv a5, a4
	mv t0, a2
	mv t1, s1
	mv t3, zero
	mv t4, a2
	mv t2, a4
	mv a2, zero
	andi t5, t4, 1
	bne t5, zero, label684
	j label657
label2383:
	andi t5, t2, 1
	beq t5, zero, label658
label685:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a2, a2, t5
	mv t5, t4
	bge t4, zero, label2201
label2200:
	addiw t5, t5, 1
label2201:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2203
	addiw t6, t2, 1
label2203:
	sraiw t2, t6, 1
	bge t3, s0, label1786
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2383
label684:
	andi t5, t2, 1
	beq t5, zero, label685
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2201
	j label2200
label1786:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t0, t0, a5
	andi t6, t0, 1
	beq t6, zero, label2506
label683:
	lw t0, 0(t1)
	addw a5, t5, t0
	mv t5, t4
	addiw t0, t3, 1
	bge t4, zero, label2205
label2204:
	addiw t5, t5, 1
label2205:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2207
	addiw t3, t2, 1
label2207:
	sraiw t2, t3, 1
	bge t0, s0, label670
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t0, t4, t2
	andi t6, t0, 1
	bne t6, zero, label683
label2506:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2205
	j label2204
label670:
	lw t0, 52(sp)
	mv t2, zero
	lui t4, 16
	addiw t1, t4, -1
	mulw t3, a5, t0
	mv t0, zero
	mv a5, s1
	and t5, t3, t1
	andi t4, t5, 1
	beq t4, zero, label677
label681:
	lw t4, 0(a5)
	addiw t2, t2, 1
	addw t0, t0, t4
	mv t4, t3
	bge t3, zero, label2210
label2209:
	addiw t4, t4, 1
label2210:
	sraiw t3, t4, 1
	mv t5, t1
	bge t1, zero, label2212
	addiw t5, t1, 1
label2212:
	sraiw t1, t5, 1
	bge t2, s0, label679
	addi a5, a5, 4
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label681
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2210
	j label2209
label658:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2201
	j label2200
label679:
	beq t0, zero, label1818
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t4, a2
	mv t2, t0
	mv t0, a2
	andi t5, a2, 1
	mv a2, zero
	bne t5, zero, label684
label657:
	andi t5, t2, 1
	bne t5, zero, label685
	j label658
label677:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2210
	j label2209
label2368:
	beq a4, zero, label1690
label1691:
	mv a5, a4
	mv t0, a4
	mv t1, s1
	mv t3, zero
	mv a4, zero
	mv t4, t0
	mv t2, a5
	andi t5, t0, 1
	bne t5, zero, label640
	j label612
label636:
	beq t0, zero, label1740
	mv a5, t0
	mv t1, s1
	mv t3, zero
	mv t2, t0
	mv t0, a4
	andi t5, a4, 1
	mv t4, a4
	mv a4, zero
	bne t5, zero, label640
label612:
	andi t5, t2, 1
	beq t5, zero, label613
label639:
	lw t5, 0(t1)
	addiw t3, t3, 1
	addw a4, a4, t5
	mv t5, t4
	bge t4, zero, label2187
label2186:
	addiw t5, t5, 1
label2187:
	sraiw t4, t5, 1
	mv t6, t2
	bge t2, zero, label2189
	addiw t6, t2, 1
label2189:
	sraiw t2, t6, 1
	bge t3, s0, label1705
	addi t1, t1, 4
	andi t5, t4, 1
	beq t5, zero, label2371
label640:
	andi t5, t2, 1
	beq t5, zero, label639
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2187
	j label2186
label2371:
	andi t5, t2, 1
	bne t5, zero, label639
label613:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2187
	j label2186
label1161:
	bne a4, zero, label1175
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label302
	j label2293
label2282:
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label302
label2293:
	lw a5, 52(sp)
	divw a2, a2, a5
	bne a2, zero, label1193
	j label2294
label1818:
	bne a4, zero, label1691
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label646
	j label2370
label1111:
	mv a3, t0
	bne a4, zero, label1175
	lui t1, 8
	addiw a5, t1, -1
	bgt a2, a5, label302
	j label2293
label2381:
	mv a1, a2
	bne a3, zero, label1093
label2379:
	mv a3, zero
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label585
	j label2281
label1771:
	bne a4, zero, label1691
	lui t0, 8
	addiw a5, t0, -1
	bgt a1, a5, label646
	j label2370
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
	mv a4, zero
	mv t2, a1
	mv t3, s2
	and t5, a1, s2
	andi t4, t5, 1
	bne t4, zero, label366
	j label1284
label1644:
	lui t1, 8
	addiw a4, t1, -1
	ble a2, a4, label2362
label475:
	lw t1, 52(sp)
	lui t2, 16
	divw t0, a2, t1
	lw t1, 108(sp)
	addw a4, t0, t2
	subw a2, a4, t1
	ble a2, zero, label478
label1482:
	mv t0, a3
	mv t1, zero
	mv a4, zero
	mv t2, a2
	mv t3, s2
	and t5, a2, s2
	mv a3, s1
	andi t4, t5, 1
	beq t4, zero, label1284
label366:
	lw t3, 0(a3)
	addw a4, a4, t3
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2124
label2308:
	addiw t3, t3, 1
label2124:
	sraiw t2, t3, 1
	bge t1, s0, label369
	addi a3, a3, 4
	mv t3, zero
	and t5, t2, zero
	andi t4, t5, 1
	bne t4, zero, label366
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2124
	j label2308
label2357:
	lui t2, 8
	addiw t1, t2, -1
	ble a4, t1, label2475
label578:
	lw t3, 52(sp)
	lui t4, 16
	divw t2, a4, t3
	lw t3, 108(sp)
	addw t1, t2, t4
	subw a4, t1, t3
	bne a4, zero, label1645
	lui t1, 8
	addiw a4, t1, -1
	bgt a2, a4, label475
label2362:
	lw a4, 52(sp)
	divw a2, a2, a4
	bgt a2, zero, label1482
	j label478
label2475:
	lw t1, 52(sp)
	divw a4, a4, t1
	beq a4, zero, label1644
label1645:
	mv t2, a5
	mv t3, zero
	mv t1, zero
	mv t4, a4
	mv t5, s2
	and t6, a4, s2
	mv a5, s1
	andi a6, t6, 1
	bne a6, zero, label490
label1494:
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2156
	j label2339
label490:
	lw t5, 0(a5)
	addw t1, t1, t5
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2156
label2339:
	addiw t5, t5, 1
label2156:
	sraiw t4, t5, 1
	bge t3, s0, label493
	addi a5, a5, 4
	mv t5, zero
	and t6, t4, zero
	andi a6, t6, 1
	bne a6, zero, label490
	addiw t3, t3, 1
	mv t5, t4
	bge t4, zero, label2156
	j label2339
label493:
	beq t1, zero, label1507
	beq t0, zero, label1510
	mv t1, t0
	mv t3, s1
	mv t5, zero
	mv a5, zero
	mv t6, t2
	mv t4, t0
	andi a6, t2, 1
	bne a6, zero, label505
	j label504
label2344:
	andi a6, t4, 1
	beq a6, zero, label1518
label506:
	lw a6, 0(t3)
	addw a5, a5, a6
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2158
label2342:
	addiw a6, a6, 1
label2158:
	sraiw t6, a6, 1
	mv a7, t4
	bge t4, zero, label2160
	addiw a7, t4, 1
label2160:
	sraiw t4, a7, 1
	bge t5, s0, label1532
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2344
label505:
	andi a6, t4, 1
	beq a6, zero, label506
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2158
	j label2342
label1518:
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2158
	j label2342
label1565:
	beq t2, zero, label2348
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, a5
	andi a6, a5, 1
	mv t6, a5
	mv a5, zero
	bne a6, zero, label505
label504:
	andi a6, t4, 1
	bne a6, zero, label506
	j label1518
label1532:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and a7, t2, t1
	andi t2, a7, 1
	bne t2, zero, label517
	mv t1, zero
	li t2, 1
	mv a6, t6
	bge t6, zero, label2162
	j label2345
label517:
	lw t2, 0(t3)
	addw t1, a6, t2
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2162
label2345:
	addiw a6, a6, 1
label2162:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2164
	addiw t5, t4, 1
label2164:
	sraiw t4, t5, 1
	bge t2, s0, label1547
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and a7, t6, t4
	andi t2, a7, 1
	bne t2, zero, label517
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2162
	j label2345
label1547:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	and a6, t5, t3
	mv t2, zero
	mv t1, s1
	andi t6, a6, 1
	beq t6, zero, label1556
label528:
	lw t6, 0(t1)
	addw t2, t2, t6
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2167
label2347:
	addiw a6, a6, 1
label2167:
	sraiw t5, a6, 1
	mv t6, t3
	bge t3, zero, label2169
	addiw t6, t3, 1
label2169:
	sraiw t3, t6, 1
	bge t4, s0, label1565
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label528
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2167
	j label2347
label1556:
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2167
	j label2347
label1507:
	mv a5, t2
	beq t0, zero, label2340
label1574:
	mv t1, t0
	mv t2, t0
	mv t3, s1
	mv t5, zero
	mv t0, zero
	mv t6, t2
	mv t4, t1
	andi a6, t2, 1
	bne a6, zero, label544
	j label1577
label1625:
	beq t2, zero, label2357
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, t0
	andi a6, t0, 1
	mv t6, t0
	mv t0, zero
	bne a6, zero, label544
label1577:
	andi a6, t4, 1
	beq a6, zero, label2352
label546:
	lw a6, 0(t3)
	addw t0, t0, a6
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2171
label2484:
	addiw a7, a7, 1
label2171:
	sraiw t6, a7, 1
	mv a6, t4
	bge t4, zero, label2173
	addiw a6, t4, 1
label2173:
	sraiw t4, a6, 1
	bge t5, s0, label1595
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2355
label544:
	andi a6, t4, 1
	beq a6, zero, label546
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2171
	j label2484
label1595:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and a7, t2, t1
	andi t2, a7, 1
	beq t2, zero, label1601
label557:
	lw t2, 0(t3)
	addw t1, a6, t2
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2175
label2356:
	addiw a6, a6, 1
label2175:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2177
	addiw t5, t4, 1
label2177:
	sraiw t4, t5, 1
	bge t2, s0, label560
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and a7, t6, t4
	andi t2, a7, 1
	bne t2, zero, label557
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2175
	j label2356
label2355:
	andi a6, t4, 1
	bne a6, zero, label546
label2352:
	addiw t5, t5, 1
	mv a7, t6
	bge t6, zero, label2171
	j label2484
label560:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	mv t2, zero
	mv t1, s1
	and t6, t5, t3
	andi a6, t6, 1
	bne a6, zero, label571
	li t4, 1
	mv a6, t5
	bge t5, zero, label2180
	j label2179
label571:
	lw t6, 0(t1)
	addiw t4, t4, 1
	mv a6, t5
	addw t2, t2, t6
	bge t5, zero, label2180
label2179:
	addiw a6, a6, 1
label2180:
	sraiw t5, a6, 1
	mv t6, t3
	bge t3, zero, label2182
	addiw t6, t3, 1
label2182:
	sraiw t3, t6, 1
	bge t4, s0, label1625
	addi t1, t1, 4
	and t6, t5, t3
	andi a6, t6, 1
	bne a6, zero, label571
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2180
	j label2179
label1601:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2175
	j label2356
label369:
	bne a4, zero, label370
	mv a3, t0
	beq a5, zero, label2309
label1467:
	mv a4, a5
	mv t2, zero
	mv t0, a5
	mv t3, zero
	mv t1, zero
	mv t5, s2
	and t6, a5, s2
	mv t4, a5
	mv a5, s1
	andi a6, t6, 1
	bne a6, zero, label490
	j label1494
label370:
	beq a5, zero, label1300
	mv a3, a5
	mv a4, zero
	j label371
label2311:
	lui t2, 8
	addiw t1, t2, -1
	ble a3, t1, label2456
label466:
	lw t3, 52(sp)
	lui t4, 16
	divw t2, a3, t3
	lw t3, 108(sp)
	addw t1, t2, t4
	subw a3, t1, t3
label467:
	beq a3, zero, label1459
label371:
	mv t1, s1
	mv t4, zero
	mv t3, a3
	mv t5, s2
	mv t2, zero
	and a6, a3, s2
	andi t6, a6, 1
	bne t6, zero, label381
	li t4, 1
	mv t5, a3
	bge a3, zero, label2126
	j label2310
label381:
	lw t5, 0(t1)
	addw t2, t2, t5
	addiw t4, t4, 1
	mv t5, t3
	bge t3, zero, label2126
label2310:
	addiw t5, t5, 1
label2126:
	sraiw t3, t5, 1
	bge t4, s0, label384
	addi t1, t1, 4
	mv t5, zero
	and a6, t3, zero
	andi t6, a6, 1
	bne t6, zero, label381
	addiw t4, t4, 1
	mv t5, t3
	bge t3, zero, label2126
	j label2310
label384:
	bne t2, zero, label385
	beq t0, zero, label2311
label1385:
	mv t1, t0
	mv t2, t0
	mv t3, s1
	mv t5, zero
	mv t6, t0
	mv t4, t0
	mv t0, zero
	andi a6, t6, 1
	bne a6, zero, label435
	j label1388
label1434:
	beq t2, zero, label2329
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t6, t0
	mv t4, t2
	mv t2, t0
	andi a6, t0, 1
	mv t0, zero
	bne a6, zero, label435
label1388:
	andi a6, t4, 1
	beq a6, zero, label2325
label436:
	lw a6, 0(t3)
	addiw t5, t5, 1
	addw t0, t0, a6
	mv a6, t6
	bge t6, zero, label2141
label2464:
	addiw a6, a6, 1
label2141:
	sraiw t6, a6, 1
	mv a7, t4
	bge t4, zero, label2143
	addiw a7, t4, 1
label2143:
	sraiw t4, a7, 1
	bge t5, s0, label1406
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2328
label435:
	andi a6, t4, 1
	beq a6, zero, label436
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2141
	j label2464
label2328:
	andi a6, t4, 1
	bne a6, zero, label436
label2325:
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2141
	j label2464
label385:
	beq t0, zero, label1321
	mv t1, t0
	mv t2, a4
	mv t3, s1
	mv t5, zero
	mv a4, zero
	mv t6, t2
	mv t4, t0
	andi a6, t2, 1
	bne a6, zero, label423
	j label1325
label2314:
	andi a6, t4, 1
	beq a6, zero, label2313
label421:
	lw a6, 0(t3)
	addiw t5, t5, 1
	addw a4, a4, a6
	mv a6, t6
	bge t6, zero, label2128
label2457:
	addiw a6, a6, 1
label2128:
	sraiw t6, a6, 1
	mv a7, t4
	bge t4, zero, label2130
	addiw a7, t4, 1
label2130:
	sraiw t4, a7, 1
	bge t5, s0, label1332
	addi t3, t3, 4
	andi a6, t6, 1
	beq a6, zero, label2314
label423:
	andi a6, t4, 1
	beq a6, zero, label421
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2128
	j label2457
label1332:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and t2, t2, t1
	andi a7, t2, 1
	beq a7, zero, label2458
label420:
	lw t2, 0(t3)
	addw t1, a6, t2
	mv a6, t6
	addiw t2, t5, 1
	bge t6, zero, label2132
label2131:
	addiw a6, a6, 1
label2132:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2134
	addiw t5, t4, 1
label2134:
	sraiw t4, t5, 1
	bge t2, s0, label407
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and t2, t6, t4
	andi a7, t2, 1
	bne a7, zero, label420
label2458:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2132
	j label2131
label407:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	mv t2, zero
	mv t1, s1
	and a6, t5, t3
	andi t6, a6, 1
	beq t6, zero, label1353
label414:
	lw t6, 0(t1)
	addw t2, t2, t6
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2137
label2315:
	addiw a6, a6, 1
label2137:
	sraiw t5, a6, 1
	mv t6, t3
	bge t3, zero, label2139
	addiw t6, t3, 1
label2139:
	sraiw t3, t6, 1
	bge t4, s0, label1362
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label414
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2137
	j label2315
label2313:
	addiw t5, t5, 1
	mv a6, t6
	bge t6, zero, label2128
	j label2457
label1362:
	beq t2, zero, label2316
	mv t1, t2
	mv t3, s1
	mv t5, zero
	mv t4, t2
	mv t2, a4
	andi a6, a4, 1
	mv t6, a4
	mv a4, zero
	bne a6, zero, label423
label1325:
	andi a6, t4, 1
	bne a6, zero, label421
	j label2313
label2329:
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label466
label2456:
	lw t1, 52(sp)
	divw a3, a3, t1
	j label467
label1284:
	addiw t1, t1, 1
	mv t3, t2
	bge t2, zero, label2124
	j label2308
label2348:
	bne t0, zero, label1574
	lui t2, 8
	addiw t1, t2, -1
	bgt a4, t1, label578
	j label2475
label2316:
	bne t0, zero, label1385
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label466
	j label2456
label1459:
	mv a3, a4
	bne a5, zero, label1467
label2309:
	mv a5, zero
	lui t1, 8
	addiw a4, t1, -1
	bgt a2, a4, label475
	lw a4, 52(sp)
	divw a2, a2, a4
	bgt a2, zero, label1482
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
	j label2309
label1510:
	mv a5, t2
	bne t0, zero, label1574
	lui t2, 8
	addiw t1, t2, -1
	bgt a4, t1, label578
	j label2475
label909:
	mv a3, t0
	bne a4, zero, label973
	lui t0, 8
	addiw a5, t0, -1
	bgt a2, a5, label217
	j label2416
label1321:
	bne t0, zero, label1385
	lui t2, 8
	addiw t1, t2, -1
	bgt a3, t1, label466
	j label2456
label823:
	bne a4, zero, label743
label742:
	lui t1, 8
	addiw a5, t1, -1
	bgt a1, a5, label36
	j label2222
label1670:
	mv a1, zero
	bne a3, zero, label1093
label1092:
	mv a3, zero
	lui a4, 8
	addiw a2, a4, -1
	bgt a0, a2, label585
	j label2281
label582:
	lw a2, 0(a0)
	bne a2, s2, label1487
label1486:
	addiw a1, a1, 1
	addi a0, a0, 4
	j label352
label1353:
	addiw t4, t4, 1
	mv a6, t5
	bge t5, zero, label2137
	j label2315
label1705:
	mv t1, s1
	mv t3, zero
	mv t5, zero
	mv t4, t0
	mv t2, a5
	and t6, t0, a5
	andi t0, t6, 1
	bne t0, zero, label638
label2498:
	mv a5, t5
	addiw t0, t3, 1
	mv t5, t4
	bge t4, zero, label2191
label2190:
	addiw t5, t5, 1
label2191:
	sraiw t4, t5, 1
	mv t3, t2
	bge t2, zero, label2193
	addiw t3, t2, 1
label2193:
	sraiw t2, t3, 1
	bge t0, s0, label1718
	addi t1, t1, 4
	mv t3, t0
	mv t5, a5
	and t6, t4, t2
	andi t0, t6, 1
	beq t0, zero, label2498
label638:
	lw t0, 0(t1)
	addw a5, t5, t0
	mv t5, t4
	addiw t0, t3, 1
	bge t4, zero, label2191
	j label2190
label1718:
	lw t0, 52(sp)
	mv t1, zero
	lui t4, 16
	addiw t2, t4, -1
	mulw t3, a5, t0
	and t5, t3, t2
	mv t0, zero
	mv a5, s1
	andi t4, t5, 1
	bne t4, zero, label633
	li t1, 1
	mv t5, t3
	bge t3, zero, label2196
	j label2373
label633:
	lw t4, 0(a5)
	addw t0, t0, t4
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2196
label2373:
	addiw t5, t5, 1
label2196:
	sraiw t3, t5, 1
	mv t4, t2
	bge t2, zero, label2198
	addiw t4, t2, 1
label2198:
	sraiw t2, t4, 1
	bge t1, s0, label636
	addi a5, a5, 4
	and t5, t3, t2
	andi t4, t5, 1
	bne t4, zero, label633
	addiw t1, t1, 1
	mv t5, t3
	bge t3, zero, label2196
	j label2373
label1406:
	mv t3, s1
	mv t5, zero
	mv a6, zero
	mv t6, t2
	mv t4, t1
	and t2, t2, t1
	andi a7, t2, 1
	bne a7, zero, label463
label2465:
	mv t1, a6
	addiw t2, t5, 1
	mv a6, t6
	bge t6, zero, label2145
label2144:
	addiw a6, a6, 1
label2145:
	sraiw t6, a6, 1
	mv t5, t4
	bge t4, zero, label2147
	addiw t5, t4, 1
label2147:
	sraiw t4, t5, 1
	bge t2, s0, label450
	addi t3, t3, 4
	mv t5, t2
	mv a6, t1
	and t2, t6, t4
	andi a7, t2, 1
	beq a7, zero, label2465
label463:
	lw t2, 0(t3)
	addw t1, a6, t2
	mv a6, t6
	addiw t2, t5, 1
	bge t6, zero, label2145
	j label2144
label450:
	lw t2, 52(sp)
	mv t4, zero
	lui t6, 16
	addiw t3, t6, -1
	mulw t5, t1, t2
	mv t2, zero
	mv t1, s1
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label461
	li t4, 1
	mv t6, t5
	bge t5, zero, label2150
	j label2149
label461:
	lw t6, 0(t1)
	addiw t4, t4, 1
	addw t2, t2, t6
	mv t6, t5
	bge t5, zero, label2150
label2149:
	addiw t6, t6, 1
label2150:
	sraiw t5, t6, 1
	mv a6, t3
	bge t3, zero, label2152
	addiw a6, t3, 1
label2152:
	sraiw t3, a6, 1
	bge t4, s0, label1434
	addi t1, t1, 4
	and a6, t5, t3
	andi t6, a6, 1
	bne t6, zero, label461
	addiw t4, t4, 1
	mv t6, t5
	bge t5, zero, label2150
	j label2149
label1275:
	mv a0, zero
	j label583
label988:
	addiw t2, t2, 1
	mv t4, t3
	bge t3, zero, label2081
	j label2264
label2340:
	lui t2, 8
	addiw t1, t2, -1
	bgt a4, t1, label578
	j label2475
