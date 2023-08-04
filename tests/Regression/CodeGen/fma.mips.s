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
