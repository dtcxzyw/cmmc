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
.globl blti
blti:
	addi sp, sp, -8
	mv t1, a1
	li t2, 1
	sd a1, 0(sp)
	bge a0, t2, label84
	sw zero, 0(a1)
label84:
	addi sp, sp, 8
	ret
.globl blt
blt:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	bge a0, a1, label96
	sw zero, 0(a2)
label96:
	addi sp, sp, 8
	ret
.globl bgez
bgez:
	addi sp, sp, -8
	mv t1, a1
	li t2, -1
	sd a1, 0(sp)
	ble a0, t2, label108
	sw zero, 0(a1)
label108:
	addi sp, sp, 8
	ret
.globl bgei
bgei:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	ble a0, zero, label120
	sw zero, 0(a1)
label120:
	addi sp, sp, 8
	ret
.globl bge
bge:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	blt a0, a1, label130
	sw zero, 0(a2)
label130:
	addi sp, sp, 8
	ret
.globl bgtz
bgtz:
	addi sp, sp, -8
	mv t1, a1
	sd a1, 0(sp)
	ble a0, zero, label141
	sw zero, 0(a1)
label141:
	addi sp, sp, 8
	ret
.globl bgti
bgti:
	addi sp, sp, -8
	mv t1, a1
	li t2, 1
	sd a1, 0(sp)
	ble a0, t2, label151
	sw zero, 0(a1)
label151:
	addi sp, sp, 8
	ret
.globl bgt
bgt:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	ble a0, a1, label163
	sw zero, 0(a2)
label163:
	addi sp, sp, 8
	ret
.globl blez
blez:
	addi sp, sp, -8
	mv t1, a1
	li t2, 1
	sd a1, 0(sp)
	bge a0, t2, label175
	sw zero, 0(a1)
label175:
	addi sp, sp, 8
	ret
.globl blei
blei:
	addi sp, sp, -8
	mv t1, a1
	li t2, 2
	sd a1, 0(sp)
	bge a0, t2, label187
	sw zero, 0(a1)
label187:
	addi sp, sp, 8
	ret
.globl ble
ble:
	addi sp, sp, -8
	mv t1, a2
	sd a2, 0(sp)
	bgt a0, a1, label200
	sw zero, 0(a2)
label200:
	addi sp, sp, 8
	ret
.globl bfeq
bfeq:
	addi sp, sp, -8
	mv t1, a2
	feq.s t2, f10, f11
	xori t2, t2, 1
	sd a2, 0(sp)
	bne t2, zero, label211
	sw zero, 0(a2)
label211:
	addi sp, sp, 8
	ret
.globl bfne
bfne:
	addi sp, sp, -8
	mv t1, a2
	feq.s t2, f10, f11
	sd a2, 0(sp)
	bne t2, zero, label223
	sw zero, 0(a2)
label223:
	addi sp, sp, 8
	ret
.globl bflt
bflt:
	addi sp, sp, -8
	mv t1, a2
	fle.s t2, f11, f10
	sd a2, 0(sp)
	bne t2, zero, label235
	sw zero, 0(a2)
label235:
	addi sp, sp, 8
	ret
.globl bfle
bfle:
	addi sp, sp, -8
	mv t1, a2
	flt.s t2, f11, f10
	sd a2, 0(sp)
	bne t2, zero, label247
	sw zero, 0(a2)
label247:
	addi sp, sp, 8
	ret
.globl bfge
bfge:
	addi sp, sp, -8
	mv t1, a2
	flt.s t2, f10, f11
	sd a2, 0(sp)
	bne t2, zero, label259
	sw zero, 0(a2)
label259:
	addi sp, sp, 8
	ret
.globl bfgt
bfgt:
	addi sp, sp, -8
	mv t1, a2
	fle.s t2, f10, f11
	sd a2, 0(sp)
	bne t2, zero, label271
	sw zero, 0(a2)
label271:
	addi sp, sp, 8
	ret
