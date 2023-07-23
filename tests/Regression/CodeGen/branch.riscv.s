.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl beqz
beqz:
	beq a0, zero, label2
label3:
	ret
label2:
	sw zero, 0(a1)
	j label3
.globl beqi
beqi:
	li a2, 1
	beq a0, a2, label11
label12:
	ret
label11:
	sw zero, 0(a1)
	j label12
.globl beq
beq:
	beq a0, a1, label22
label23:
	ret
label22:
	sw zero, 0(a2)
	j label23
.globl bnez
bnez:
	bne a0, zero, label33
label34:
	ret
label33:
	sw zero, 0(a1)
	j label34
.globl bnei
bnei:
	li a2, 1
	bne a0, a2, label42
label43:
	ret
label42:
	sw zero, 0(a1)
	j label43
.globl bne
bne:
	bne a0, a1, label53
label54:
	ret
label53:
	sw zero, 0(a2)
	j label54
.globl bltz
bltz:
	blt a0, zero, label64
label65:
	ret
label64:
	sw zero, 0(a1)
	j label65
.globl blti1
blti1:
	ble a0, zero, label73
label74:
	ret
label73:
	sw zero, 0(a1)
	j label74
.globl blti2
blti2:
	li a2, 10
	blt a0, a2, label82
label83:
	ret
label82:
	sw zero, 0(a1)
	j label83
.globl blt
blt:
	blt a0, a1, label92
label93:
	ret
label92:
	sw zero, 0(a2)
	j label93
.globl bgez
bgez:
	bge a0, zero, label102
label103:
	ret
label102:
	sw zero, 0(a1)
	j label103
.globl bgei1
bgei1:
	bgt a0, zero, label112
label113:
	ret
label112:
	sw zero, 0(a1)
	j label113
.globl bgei2
bgei2:
	li a2, 9
	bgt a0, a2, label121
label122:
	ret
label121:
	sw zero, 0(a1)
	j label122
.globl bge
bge:
	bge a0, a1, label132
label133:
	ret
label132:
	sw zero, 0(a2)
	j label133
.globl bgtz
bgtz:
	bgt a0, zero, label143
label144:
	ret
label143:
	sw zero, 0(a1)
	j label144
.globl bgti1
bgti1:
	bge a0, zero, label152
label153:
	ret
label152:
	sw zero, 0(a1)
	j label153
.globl bgti2
bgti2:
	li a2, 10
	bgt a0, a2, label162
label163:
	ret
label162:
	sw zero, 0(a1)
	j label163
.globl bgt
bgt:
	bgt a0, a1, label173
label174:
	ret
label173:
	sw zero, 0(a2)
	j label174
.globl blez
blez:
	ble a0, zero, label183
label184:
	ret
label183:
	sw zero, 0(a1)
	j label184
.globl blei1
blei1:
	blt a0, zero, label192
label193:
	ret
label192:
	sw zero, 0(a1)
	j label193
.globl blei2
blei2:
	li a2, 11
	blt a0, a2, label201
label202:
	ret
label201:
	sw zero, 0(a1)
	j label202
.globl ble
ble:
	ble a0, a1, label211
label212:
	ret
label211:
	sw zero, 0(a2)
	j label212
.globl bfeq
bfeq:
	feq.s a1, f10, f11
	bne a1, zero, label222
label223:
	ret
label222:
	sw zero, 0(a0)
	j label223
.globl bfne
bfne:
	feq.s a1, f10, f11
	beq a1, zero, label232
label233:
	ret
label232:
	sw zero, 0(a0)
	j label233
.globl bflt
bflt:
	flt.s a1, f10, f11
	bne a1, zero, label244
label245:
	ret
label244:
	sw zero, 0(a0)
	j label245
.globl bfle
bfle:
	fle.s a1, f10, f11
	bne a1, zero, label254
label255:
	ret
label254:
	sw zero, 0(a0)
	j label255
.globl bfge
bfge:
	fle.s a1, f11, f10
	bne a1, zero, label264
label265:
	ret
label264:
	sw zero, 0(a0)
	j label265
.globl bfgt
bfgt:
	flt.s a1, f11, f10
	bne a1, zero, label274
label275:
	ret
label274:
	sw zero, 0(a0)
	j label275
.globl normal_srem
normal_srem:
	li a3, 1152921497
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 60
	add a1, a3, a2
	li a2, 1000000007
	mulw a3, a1, a2
	subw a1, a0, a3
	addw a2, a1, a2
	mv a0, a2
	blt a1, zero, label299
	mv a0, a1
label299:
	ret
