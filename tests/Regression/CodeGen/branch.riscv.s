.data
.text
.globl beqz
beqz:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	bne a0, zero, label3
	sw zero, 0(a1)
label3:
	addi sp, sp, 8
	ret
.globl beqi
beqi:
	addi sp, sp, -8
	mv t1, a1
	li t2, 1
	sd a1, 0(sp)
	bne a0, t2, label13
	sw zero, 0(a1)
label13:
	addi sp, sp, 8
	ret
.globl beq
beq:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	bne a0, a1, label26
	sw zero, 0(a2)
label26:
	addi sp, sp, 8
	ret
.globl bnez
bnez:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	beq a0, zero, label38
	sw zero, 0(a1)
label38:
	addi sp, sp, 8
	ret
.globl bnei
bnei:
	addi sp, sp, -8
	mv t1, a1
	li t2, 1
	sd a1, 0(sp)
	beq a0, t2, label48
	sw zero, 0(a1)
label48:
	addi sp, sp, 8
	ret
.globl bne
bne:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	beq a0, a1, label61
	sw zero, 0(a2)
label61:
	addi sp, sp, 8
	ret
.globl bltz
bltz:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	bge a0, zero, label73
	sw zero, 0(a1)
label73:
	addi sp, sp, 8
	ret
.globl blti1
blti1:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	bgt a0, zero, label84
	sw zero, 0(a1)
label84:
	addi sp, sp, 8
	ret
.globl blti2
blti2:
	addi sp, sp, -8
	mv t1, a1
	li t2, 10
	sd a1, 0(sp)
	bge a0, t2, label94
	sw zero, 0(a1)
label94:
	addi sp, sp, 8
	ret
.globl blt
blt:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	bge a0, a1, label107
	sw zero, 0(a2)
label107:
	addi sp, sp, 8
	ret
.globl bgez
bgez:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	blt a0, zero, label119
	sw zero, 0(a1)
label119:
	addi sp, sp, 8
	ret
.globl bgei1
bgei1:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	ble a0, zero, label129
	sw zero, 0(a1)
label129:
	addi sp, sp, 8
	ret
.globl bgei2
bgei2:
	addi sp, sp, -8
	mv t1, a1
	li t2, 9
	sd a1, 0(sp)
	ble a0, t2, label139
	sw zero, 0(a1)
label139:
	addi sp, sp, 8
	ret
.globl bge
bge:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	blt a0, a1, label151
	sw zero, 0(a2)
label151:
	addi sp, sp, 8
	ret
.globl bgtz
bgtz:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	ble a0, zero, label162
	sw zero, 0(a1)
label162:
	addi sp, sp, 8
	ret
.globl bgti1
bgti1:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	blt a0, zero, label172
	sw zero, 0(a1)
label172:
	addi sp, sp, 8
	ret
.globl bgti2
bgti2:
	addi sp, sp, -8
	mv t1, a1
	li t2, 10
	sd a1, 0(sp)
	ble a0, t2, label182
	sw zero, 0(a1)
label182:
	addi sp, sp, 8
	ret
.globl bgt
bgt:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	ble a0, a1, label194
	sw zero, 0(a2)
label194:
	addi sp, sp, 8
	ret
.globl blez
blez:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	bgt a0, zero, label206
	sw zero, 0(a1)
label206:
	addi sp, sp, 8
	ret
.globl blei1
blei1:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	bge a0, zero, label216
	sw zero, 0(a1)
label216:
	addi sp, sp, 8
	ret
.globl blei2
blei2:
	addi sp, sp, -8
	mv t1, a1
	li t2, 11
	sd a1, 0(sp)
	bge a0, t2, label227
	sw zero, 0(a1)
label227:
	addi sp, sp, 8
	ret
.globl ble
ble:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	bgt a0, a1, label240
	sw zero, 0(a2)
label240:
	addi sp, sp, 8
	ret
.globl bfeq
bfeq:
	addi sp, sp, -8
	mv t1, a2
	feq.s t2, f10, f11
	sd a2, 0(sp)
	beq t2, zero, label251
	sw zero, 0(a2)
label251:
	addi sp, sp, 8
	ret
.globl bfne
bfne:
	addi sp, sp, -8
	mv t1, a2
	feq.s t2, f10, f11
	sd a2, 0(sp)
	bne t2, zero, label264
	sw zero, 0(a2)
label264:
	addi sp, sp, 8
	ret
.globl bflt
bflt:
	addi sp, sp, -8
	mv t1, a2
	fle.s t2, f11, f10
	sd a2, 0(sp)
	bne t2, zero, label276
	sw zero, 0(a2)
label276:
	addi sp, sp, 8
	ret
.globl bfle
bfle:
	addi sp, sp, -8
	mv t1, a2
	flt.s t2, f11, f10
	sd a2, 0(sp)
	bne t2, zero, label288
	sw zero, 0(a2)
label288:
	addi sp, sp, 8
	ret
.globl bfge
bfge:
	addi sp, sp, -8
	mv t1, a2
	flt.s t2, f10, f11
	sd a2, 0(sp)
	bne t2, zero, label300
	sw zero, 0(a2)
label300:
	addi sp, sp, 8
	ret
.globl bfgt
bfgt:
	addi sp, sp, -8
	mv t1, a2
	fle.s t2, f10, f11
	sd a2, 0(sp)
	bne t2, zero, label312
	sw zero, 0(a2)
label312:
	addi sp, sp, 8
	ret
