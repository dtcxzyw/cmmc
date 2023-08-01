.data
.text
.p2align 2
.globl test_thumb_ldrlit
test_thumb_ldrlit:
	li $v0, 12345678
	jr $ra
	nop
