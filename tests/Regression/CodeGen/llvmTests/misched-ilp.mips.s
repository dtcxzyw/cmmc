.data
.text
.globl ilpsched
ilpsched:
	mtc1 $a2, $f4
	mtc1 $a3, $f6
	lwc1 $f10, 16($sp)
	lwc1 $f16, 20($sp)
	add.s $f8, $f12, $f14
	add.s $f4, $f4, $f6
	add.s $f6, $f10, $f16
	sub.s $f4, $f4, $f6
	add.s $f0, $f8, $f4
	jr $ra
	nop
