.data
.section .rodata
.bss
.text
.globl dont_crash
dont_crash:
	ret
.globl main128
main128:
	mv a0, zero
	ret
.globl main4k
main4k:
	mv a0, zero
	ret
.globl main4k_win64
main4k_win64:
	mv a0, zero
	ret
