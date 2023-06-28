.data
.section .rodata
.bss
.text
.globl i32_select_0_or_neg1
i32_select_0_or_neg1:
	sltu a0, zero, a0
	subw a0, zero, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
