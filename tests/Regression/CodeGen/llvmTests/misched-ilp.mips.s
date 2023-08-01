.data
.text
.p2align 2
.globl ilpsched
ilpsched:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	lwc1 $f8, 16($sp)
	lwc1 $f10, 20($sp)
	add.s $f4, $f4, $f6
	add.s $f6, $f8, $f10
	sub.s $f4, $f4, $f6
	add.s $f6, $f12, $f14
	add.s $f0, $f6, $f4
	jr $ra
	nop
