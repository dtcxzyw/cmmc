.data
.text
.globl select_i32_neg1_or_0
select_i32_neg1_or_0:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl select_i32_neg1_or_0_zeroext
select_i32_neg1_or_0_zeroext:
	li a1, 4294967295
	and a0, a0, a1
	ret
