.data
.text
.globl beqz
beqz:
	addi sp, sp, -8
	sd a1, 0(sp)
	bne a0, zero, label3
	sw zero, 0(a1)
label3:
	addi sp, sp, 8
	ret
.globl beqi
beqi:
	addi sp, sp, -8
	li a2, 1
	sd a1, 0(sp)
	bne a0, a2, label14
	sw zero, 0(a1)
label14:
	addi sp, sp, 8
	ret
.globl beq
beq:
	addi sp, sp, -8
	sd a2, 0(sp)
	bne a0, a1, label28
	sw zero, 0(a2)
label28:
	addi sp, sp, 8
	ret
.globl bnez
bnez:
	addi sp, sp, -8
	sd a1, 0(sp)
	beq a0, zero, label42
	sw zero, 0(a1)
label42:
	addi sp, sp, 8
	ret
.globl bnei
bnei:
	addi sp, sp, -8
	li a2, 1
	sd a1, 0(sp)
	beq a0, a2, label53
	sw zero, 0(a1)
label53:
	addi sp, sp, 8
	ret
.globl bne
bne:
	addi sp, sp, -8
	sd a2, 0(sp)
	beq a0, a1, label67
	sw zero, 0(a2)
label67:
	addi sp, sp, 8
	ret
.globl bltz
bltz:
	addi sp, sp, -8
	sd a1, 0(sp)
	bge a0, zero, label81
	sw zero, 0(a1)
label81:
	addi sp, sp, 8
	ret
.globl blti1
blti1:
	addi sp, sp, -8
	sd a1, 0(sp)
	bgt a0, zero, label93
	sw zero, 0(a1)
label93:
	addi sp, sp, 8
	ret
.globl blti2
blti2:
	addi sp, sp, -8
	li a2, 10
	sd a1, 0(sp)
	bge a0, a2, label104
	sw zero, 0(a1)
label104:
	addi sp, sp, 8
	ret
.globl blt
blt:
	addi sp, sp, -8
	sd a2, 0(sp)
	bge a0, a1, label118
	sw zero, 0(a2)
label118:
	addi sp, sp, 8
	ret
.globl bgez
bgez:
	addi sp, sp, -8
	sd a1, 0(sp)
	blt a0, zero, label132
	sw zero, 0(a1)
label132:
	addi sp, sp, 8
	ret
.globl bgei1
bgei1:
	addi sp, sp, -8
	sd a1, 0(sp)
	ble a0, zero, label143
	sw zero, 0(a1)
label143:
	addi sp, sp, 8
	ret
.globl bgei2
bgei2:
	addi sp, sp, -8
	li a2, 9
	sd a1, 0(sp)
	ble a0, a2, label154
	sw zero, 0(a1)
label154:
	addi sp, sp, 8
	ret
.globl bge
bge:
	addi sp, sp, -8
	sd a2, 0(sp)
	blt a0, a1, label167
	sw zero, 0(a2)
label167:
	addi sp, sp, 8
	ret
.globl bgtz
bgtz:
	addi sp, sp, -8
	sd a1, 0(sp)
	ble a0, zero, label180
	sw zero, 0(a1)
label180:
	addi sp, sp, 8
	ret
.globl bgti1
bgti1:
	addi sp, sp, -8
	sd a1, 0(sp)
	blt a0, zero, label191
	sw zero, 0(a1)
label191:
	addi sp, sp, 8
	ret
.globl bgti2
bgti2:
	addi sp, sp, -8
	li a2, 10
	sd a1, 0(sp)
	ble a0, a2, label202
	sw zero, 0(a1)
label202:
	addi sp, sp, 8
	ret
.globl bgt
bgt:
	addi sp, sp, -8
	sd a2, 0(sp)
	ble a0, a1, label215
	sw zero, 0(a2)
label215:
	addi sp, sp, 8
	ret
.globl blez
blez:
	addi sp, sp, -8
	sd a1, 0(sp)
	bgt a0, zero, label229
	sw zero, 0(a1)
label229:
	addi sp, sp, 8
	ret
.globl blei1
blei1:
	addi sp, sp, -8
	sd a1, 0(sp)
	bge a0, zero, label240
	sw zero, 0(a1)
label240:
	addi sp, sp, 8
	ret
.globl blei2
blei2:
	addi sp, sp, -8
	li a2, 11
	sd a1, 0(sp)
	bge a0, a2, label252
	sw zero, 0(a1)
label252:
	addi sp, sp, 8
	ret
.globl ble
ble:
	addi sp, sp, -8
	sd a2, 0(sp)
	bgt a0, a1, label266
	sw zero, 0(a2)
label266:
	addi sp, sp, 8
	ret
.globl bfeq
bfeq:
	addi sp, sp, -8
	feq.s a0, f10, f11
	sd a2, 0(sp)
	beq a0, zero, label279
	sw zero, 0(a2)
label279:
	addi sp, sp, 8
	ret
.globl bfne
bfne:
	addi sp, sp, -8
	feq.s a0, f10, f11
	sd a2, 0(sp)
	bne a0, zero, label294
	sw zero, 0(a2)
label294:
	addi sp, sp, 8
	ret
.globl bflt
bflt:
	addi sp, sp, -8
	fle.s a0, f11, f10
	sd a2, 0(sp)
	bne a0, zero, label308
	sw zero, 0(a2)
label308:
	addi sp, sp, 8
	ret
.globl bfle
bfle:
	addi sp, sp, -8
	flt.s a0, f11, f10
	sd a2, 0(sp)
	bne a0, zero, label322
	sw zero, 0(a2)
label322:
	addi sp, sp, 8
	ret
.globl bfge
bfge:
	addi sp, sp, -8
	flt.s a0, f10, f11
	sd a2, 0(sp)
	bne a0, zero, label336
	sw zero, 0(a2)
label336:
	addi sp, sp, 8
	ret
.globl bfgt
bfgt:
	addi sp, sp, -8
	fle.s a0, f10, f11
	sd a2, 0(sp)
	bne a0, zero, label350
	sw zero, 0(a2)
label350:
	addi sp, sp, 8
	ret
