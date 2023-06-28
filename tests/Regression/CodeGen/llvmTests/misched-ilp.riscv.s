.data
.text
.globl ilpsched
ilpsched:
	fadd.s f10, f10, f11
	fadd.s f11, f12, f13
	fadd.s f12, f14, f15
	fsub.s f11, f11, f12
	fadd.s f10, f10, f11
	ret
