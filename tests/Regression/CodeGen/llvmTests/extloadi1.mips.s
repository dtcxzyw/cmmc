.data
.bss
.align 4
.globl handler_installed_6144_b
handler_installed_6144_b:
	.zero	4
.text
.globl __mf_sigusr1_respond
__mf_sigusr1_respond:
.p2align 2
	jr $ra
	nop
