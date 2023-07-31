.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl beqz
beqz:
.p2align 2
	bne a0, zero, label3
	sw zero, 0(a1)
label3:
	ret
.globl beqi
beqi:
.p2align 2
	li a2, 1
	bne a0, a2, label13
	sw zero, 0(a1)
label13:
	ret
.globl beq
beq:
.p2align 2
	bne a0, a1, label25
	sw zero, 0(a2)
label25:
	ret
.globl bnez
bnez:
.p2align 2
	beq a0, zero, label37
	sw zero, 0(a1)
label37:
	ret
.globl bnei
bnei:
.p2align 2
	li a2, 1
	beq a0, a2, label47
	sw zero, 0(a1)
label47:
	ret
.globl bne
bne:
.p2align 2
	beq a0, a1, label59
	sw zero, 0(a2)
label59:
	ret
.globl bltz
bltz:
.p2align 2
	bge a0, zero, label71
	sw zero, 0(a1)
label71:
	ret
.globl blti1
blti1:
.p2align 2
	bgt a0, zero, label81
	sw zero, 0(a1)
label81:
	ret
.globl blti2
blti2:
.p2align 2
	li a2, 10
	bge a0, a2, label91
	sw zero, 0(a1)
label91:
	ret
.globl blt
blt:
.p2align 2
	bge a0, a1, label102
	sw zero, 0(a2)
label102:
	ret
.globl bgez
bgez:
.p2align 2
	blt a0, zero, label113
	sw zero, 0(a1)
label113:
	ret
.globl bgei1
bgei1:
.p2align 2
	ble a0, zero, label124
	sw zero, 0(a1)
label124:
	ret
.globl bgei2
bgei2:
.p2align 2
	li a2, 9
	ble a0, a2, label134
	sw zero, 0(a1)
label134:
	ret
.globl bge
bge:
.p2align 2
	blt a0, a1, label146
	sw zero, 0(a2)
label146:
	ret
.globl bgtz
bgtz:
.p2align 2
	ble a0, zero, label158
	sw zero, 0(a1)
label158:
	ret
.globl bgti1
bgti1:
.p2align 2
	blt a0, zero, label168
	sw zero, 0(a1)
label168:
	ret
.globl bgti2
bgti2:
.p2align 2
	li a2, 10
	ble a0, a2, label179
	sw zero, 0(a1)
label179:
	ret
.globl bgt
bgt:
.p2align 2
	ble a0, a1, label191
	sw zero, 0(a2)
label191:
	ret
.globl blez
blez:
.p2align 2
	bgt a0, zero, label202
	sw zero, 0(a1)
label202:
	ret
.globl blei1
blei1:
.p2align 2
	bge a0, zero, label212
	sw zero, 0(a1)
label212:
	ret
.globl blei2
blei2:
.p2align 2
	li a2, 11
	bge a0, a2, label222
	sw zero, 0(a1)
label222:
	ret
.globl ble
ble:
.p2align 2
	bgt a0, a1, label233
	sw zero, 0(a2)
label233:
	ret
.globl bfeq
bfeq:
.p2align 2
	feq.s a1, f10, f11
	beq a1, zero, label245
	sw zero, 0(a0)
label245:
	ret
.globl bfne
bfne:
.p2align 2
	feq.s a1, f10, f11
	bne a1, zero, label256
	sw zero, 0(a0)
label256:
	ret
.globl bflt
bflt:
.p2align 2
	flt.s a1, f10, f11
	beq a1, zero, label269
	sw zero, 0(a0)
label269:
	ret
.globl bfle
bfle:
.p2align 2
	fle.s a1, f10, f11
	beq a1, zero, label280
	sw zero, 0(a0)
label280:
	ret
.globl bfge
bfge:
.p2align 2
	fle.s a1, f11, f10
	beq a1, zero, label291
	sw zero, 0(a0)
label291:
	ret
.globl bfgt
bfgt:
.p2align 2
	flt.s a1, f11, f10
	beq a1, zero, label302
	sw zero, 0(a0)
label302:
	ret
.globl normal_srem
normal_srem:
.p2align 2
	li a2, 1152921497
	mul a1, a0, a2
	srli a4, a1, 63
	srai a3, a1, 60
	li a1, 1000000007
	add a2, a4, a3
	mulw a3, a2, a1
	subw a2, a0, a3
	mv a0, a2
	bge a2, zero, label327
	addw a0, a2, a1
label327:
	ret
