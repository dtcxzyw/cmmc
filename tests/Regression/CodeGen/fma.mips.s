.data
.text
.p2align 2
.globl fmadd1
fmadd1:
	mtc1 $a2, $f4
	mul.s $f6, $f12, $f14
	add.s $f0, $f6, $f4
	jr $ra
	nop
.p2align 2
.globl fmadd2
fmadd2:
	mtc1 $a2, $f4
	mul.s $f6, $f12, $f14
	add.s $f0, $f4, $f6
	jr $ra
	nop
.p2align 2
.globl fmsub
fmsub:
	mtc1 $a2, $f4
	mul.s $f6, $f12, $f14
	sub.s $f0, $f6, $f4
	jr $ra
	nop
.p2align 2
.globl fnmadd
fnmadd:
	mtc1 $a2, $f4
	mul.s $f6, $f12, $f14
	neg.s $f6, $f6
	sub.s $f0, $f6, $f4
	jr $ra
	nop
.p2align 2
.globl fnmsub
fnmsub:
	mtc1 $a2, $f4
	mul.s $f6, $f12, $f14
	neg.s $f6, $f6
	add.s $f0, $f6, $f4
	jr $ra
	nop
