.data
.text
.globl test_i32_srem
test_i32_srem:
	remw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_i32_urem
test_i32_urem:
	remuw a0, a0, a1
	ret
