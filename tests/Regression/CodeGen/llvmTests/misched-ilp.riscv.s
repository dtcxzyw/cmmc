.data
.text
.globl ilpsched
ilpsched:
	fadd.s f12, f12, f13
	fadd.s f13, f14, f15
	fsub.s f12, f12, f13
	fadd.s f10, f10, f11
	fadd.s f10, f10, f12
	ret
