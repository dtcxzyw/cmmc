.data
.section .rodata
.bss
.text
.globl select_unsigned_lt_10_8_13
select_unsigned_lt_10_8_13:
	sltiu a1, a0, 10
	li a0, 8
	bne a1, zero, label8
	li a0, 13
label8:
	li a1, 4294967295
	and a0, a0, a1
	ret
