.data
.text
.globl t
t:
.p2align 2
	li $t0, -65536
	or $v0, $a0, $t0
	jr $ra
	nop
.globl t2
t2:
.p2align 2
	li $t0, -131072
	or $t0, $a0, $t0
	li $t1, -65537
	and $v0, $t0, $t1
	jr $ra
	nop
