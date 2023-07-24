.data
.text
.globl test_thumb_ldrlit
test_thumb_ldrlit:
.p2align 2
	li $v0, 12345678
	jr $ra
	nop
