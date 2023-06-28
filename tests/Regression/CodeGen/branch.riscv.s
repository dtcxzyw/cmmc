.data
.section .rodata
.bss
.text
.globl beqz
beqz:
	bne a0, zero, label3
	sw zero, 0(a1)
label3:
	ret
.globl beqi
beqi:
	li a2, 1
	bne a0, a2, label12
	sw zero, 0(a1)
label12:
	ret
.globl beq
beq:
	bne a0, a1, label23
	sw zero, 0(a2)
label23:
	ret
.globl bnez
bnez:
	beq a0, zero, label34
	sw zero, 0(a1)
label34:
	ret
.globl bnei
bnei:
	li a2, 1
	beq a0, a2, label43
	sw zero, 0(a1)
label43:
	ret
.globl bne
bne:
	beq a0, a1, label54
	sw zero, 0(a2)
label54:
	ret
.globl bltz
bltz:
	bge a0, zero, label65
	sw zero, 0(a1)
label65:
	ret
.globl blti1
blti1:
	bgt a0, zero, label75
	sw zero, 0(a1)
label75:
	ret
.globl blti2
blti2:
	li a2, 10
	bge a0, a2, label84
	sw zero, 0(a1)
label84:
	ret
.globl blt
blt:
	bge a0, a1, label95
	sw zero, 0(a2)
label95:
	ret
.globl bgez
bgez:
	blt a0, zero, label106
	sw zero, 0(a1)
label106:
	ret
.globl bgei1
bgei1:
	ble a0, zero, label115
	sw zero, 0(a1)
label115:
	ret
.globl bgei2
bgei2:
	li a2, 9
	ble a0, a2, label124
	sw zero, 0(a1)
label124:
	ret
.globl bge
bge:
	blt a0, a1, label134
	sw zero, 0(a2)
label134:
	ret
.globl bgtz
bgtz:
	ble a0, zero, label144
	sw zero, 0(a1)
label144:
	ret
.globl bgti1
bgti1:
	blt a0, zero, label153
	sw zero, 0(a1)
label153:
	ret
.globl bgti2
bgti2:
	li a2, 10
	ble a0, a2, label162
	sw zero, 0(a1)
label162:
	ret
.globl bgt
bgt:
	ble a0, a1, label172
	sw zero, 0(a2)
label172:
	ret
.globl blez
blez:
	bgt a0, zero, label183
	sw zero, 0(a1)
label183:
	ret
.globl blei1
blei1:
	bge a0, zero, label192
	sw zero, 0(a1)
label192:
	ret
.globl blei2
blei2:
	li a2, 11
	bge a0, a2, label202
	sw zero, 0(a1)
label202:
	ret
.globl ble
ble:
	bgt a0, a1, label213
	sw zero, 0(a2)
label213:
	ret
.globl bfeq
bfeq:
	feq.s a0, f10, f11
	bne a0, zero, label222
label223:
	ret
label222:
	sw zero, 0(a2)
	j label223
.globl bfne
bfne:
	feq.s a0, f10, f11
	beq a0, zero, label232
label233:
	ret
label232:
	sw zero, 0(a2)
	j label233
.globl bflt
bflt:
	flt.s a0, f10, f11
	bne a0, zero, label244
label245:
	ret
label244:
	sw zero, 0(a2)
	j label245
.globl bfle
bfle:
	fle.s a0, f10, f11
	bne a0, zero, label254
label255:
	ret
label254:
	sw zero, 0(a2)
	j label255
.globl bfge
bfge:
	fle.s a0, f11, f10
	bne a0, zero, label264
label265:
	ret
label264:
	sw zero, 0(a2)
	j label265
.globl bfgt
bfgt:
	flt.s a0, f11, f10
	bne a0, zero, label274
label275:
	ret
label274:
	sw zero, 0(a2)
	j label275
