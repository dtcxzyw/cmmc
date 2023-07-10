.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
	fadd.s f11, f10, f10
	fadd.s f10, f11, f11
	ret
.globl test10
test10:
	fneg.s f11, f10
	fadd.s f10, f10, f11
	ret
.globl test2
test2:
	lui a0, 264192
	fadd.s f13, f10, f10
	fmv.w.x f12, a0
	fmul.s f11, f10, f12
	fadd.s f10, f11, f13
	ret
.globl test3
test3:
	lui a0, 264192
	fadd.s f13, f10, f10
	fmv.w.x f12, a0
	fmul.s f11, f10, f12
	fadd.s f10, f11, f13
	ret
.globl test4
test4:
	fadd.s f11, f10, f10
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f13, f10, f12
	fadd.s f10, f11, f13
	ret
.globl test5
test5:
	fadd.s f11, f10, f10
	lui a0, 264192
	fmv.w.x f12, a0
	fmul.s f13, f10, f12
	fadd.s f10, f11, f13
	ret
.globl test6
test6:
	fmv.w.x f10, zero
	ret
.globl test7
test7:
	fmv.w.x f10, zero
	ret
.globl test8
test8:
	ret
.globl test9
test9:
	ret
