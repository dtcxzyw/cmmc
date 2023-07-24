.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
.p2align 2
	lui a0, 262144
pcrel8:
	auipc a1, %pcrel_hi(f)
	fmv.w.x f10, a0
	fsw f10, %pcrel_lo(pcrel8)(a1)
	ret
.globl fv
fv:
.p2align 2
	lui a0, 260096
	fmv.w.x f10, a0
	ret
.globl iv
iv:
.p2align 2
pcrel18:
	auipc a1, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel18)(a1)
	ret
.globl vif
vif:
.p2align 2
	ret
.globl vv
vv:
.p2align 2
	ret
