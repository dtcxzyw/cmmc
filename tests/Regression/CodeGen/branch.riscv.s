.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl beqz
beqz:
	bne a0, zero, label3
	sw zero, 0(a1)
label3:
	ret
.p2align 2
.globl beqi
beqi:
	li a2, 1
	bne a0, a2, label13
	sw zero, 0(a1)
label13:
	ret
.p2align 2
.globl beq
beq:
	bne a0, a1, label25
	sw zero, 0(a2)
label25:
	ret
.p2align 2
.globl bnez
bnez:
	beq a0, zero, label37
	sw zero, 0(a1)
label37:
	ret
.p2align 2
.globl bnei
bnei:
	li a2, 1
	beq a0, a2, label47
	sw zero, 0(a1)
label47:
	ret
.p2align 2
.globl bne
bne:
	beq a0, a1, label59
	sw zero, 0(a2)
label59:
	ret
.p2align 2
.globl bltz
bltz:
	bge a0, zero, label71
	sw zero, 0(a1)
label71:
	ret
.p2align 2
.globl blti1
blti1:
	bgt a0, zero, label81
	sw zero, 0(a1)
label81:
	ret
.p2align 2
.globl blti2
blti2:
	li a2, 10
	bge a0, a2, label91
	sw zero, 0(a1)
label91:
	ret
.p2align 2
.globl blt
blt:
	bge a0, a1, label102
	sw zero, 0(a2)
label102:
	ret
.p2align 2
.globl bgez
bgez:
	blt a0, zero, label113
	sw zero, 0(a1)
label113:
	ret
.p2align 2
.globl bgei1
bgei1:
	ble a0, zero, label124
	sw zero, 0(a1)
label124:
	ret
.p2align 2
.globl bgei2
bgei2:
	li a2, 9
	ble a0, a2, label134
	sw zero, 0(a1)
label134:
	ret
.p2align 2
.globl bge
bge:
	blt a0, a1, label146
	sw zero, 0(a2)
label146:
	ret
.p2align 2
.globl bgtz
bgtz:
	ble a0, zero, label158
	sw zero, 0(a1)
label158:
	ret
.p2align 2
.globl bgti1
bgti1:
	blt a0, zero, label168
	sw zero, 0(a1)
label168:
	ret
.p2align 2
.globl bgti2
bgti2:
	li a2, 10
	ble a0, a2, label179
	sw zero, 0(a1)
label179:
	ret
.p2align 2
.globl bgt
bgt:
	ble a0, a1, label191
	sw zero, 0(a2)
label191:
	ret
.p2align 2
.globl blez
blez:
	bgt a0, zero, label202
	sw zero, 0(a1)
label202:
	ret
.p2align 2
.globl blei1
blei1:
	bge a0, zero, label212
	sw zero, 0(a1)
label212:
	ret
.p2align 2
.globl blei2
blei2:
	li a2, 11
	bge a0, a2, label222
	sw zero, 0(a1)
label222:
	ret
.p2align 2
.globl ble
ble:
	bgt a0, a1, label233
	sw zero, 0(a2)
label233:
	ret
.p2align 2
.globl bfeq
bfeq:
	feq.s a1, f10, f11
	beq a1, zero, label245
	sw zero, 0(a0)
label245:
	ret
.p2align 2
.globl bfne
bfne:
	feq.s a1, f10, f11
	bne a1, zero, label256
	sw zero, 0(a0)
label256:
	ret
.p2align 2
.globl bflt
bflt:
	flt.s a1, f10, f11
	beq a1, zero, label269
	sw zero, 0(a0)
label269:
	ret
.p2align 2
.globl bfle
bfle:
	fle.s a1, f10, f11
	beq a1, zero, label280
	sw zero, 0(a0)
label280:
	ret
.p2align 2
.globl bfge
bfge:
	fle.s a1, f11, f10
	beq a1, zero, label291
	sw zero, 0(a0)
label291:
	ret
.p2align 2
.globl bfgt
bfgt:
	flt.s a1, f11, f10
	beq a1, zero, label302
	sw zero, 0(a0)
label302:
	ret
.p2align 2
.globl normal_srem
normal_srem:
	lui a4, 281475
	lui a5, 244141
	addiw a2, a4, -103
	mul a1, a0, a2
	srli a4, a1, 63
	srai a3, a1, 60
	addiw a1, a5, -1529
	add a2, a4, a3
	mulw a4, a2, a1
	subw a3, a0, a4
	mv a0, a3
	bge a3, zero, label329
	addw a0, a3, a1
label329:
	ret
