.data
.align 4
.globl i
i:
	.4byte	1
.align 4
.globl f
f:
	.4byte	1065353216
.text
.globl foo
foo:
	lui a0, 262144
	fmv.w.x f10, a0
pcrel8:
	auipc a0, %pcrel_hi(f)
	fsw f10, %pcrel_lo(pcrel8)(a0)
	ret
.globl fv
fv:
	lui a0, 260096
	fmv.w.x f10, a0
	ret
.globl iv
iv:
pcrel18:
	auipc a0, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel18)(a0)
	ret
.globl vif
vif:
	ret
.globl vv
vv:
	ret
