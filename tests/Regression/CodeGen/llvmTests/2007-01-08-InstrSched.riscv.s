.data
.section .rodata
.bss
.text
.globl foo
foo:
	lui a0, 263168
	fmv.w.x f11, a0
	fmul.s f11, f10, f11
	lui a0, 264704
	fmv.w.x f12, a0
	fmul.s f12, f10, f12
	fadd.s f11, f11, f12
	lui a0, 265728
	fmv.w.x f12, a0
	fmul.s f12, f10, f12
	fadd.s f11, f11, f12
	lui a0, 267008
	fmv.w.x f12, a0
	fmul.s f10, f10, f12
	fadd.s f10, f11, f10
	ret
