.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl i
i:
	.4byte	1
.p2align 2
.globl f
f:
	.4byte	1065353216
.text
.p2align 2
.globl foo
foo:
	lui a0, 262144
pcrel8:
	auipc a1, %pcrel_hi(f)
	fmv.w.x f10, a0
	fsw f10, %pcrel_lo(pcrel8)(a1)
	ret
.p2align 2
.globl fv
fv:
	lui a0, 260096
	fmv.w.x f10, a0
	ret
.p2align 2
.globl iv
iv:
pcrel18:
	auipc a1, %pcrel_hi(i)
	lw a0, %pcrel_lo(pcrel18)(a1)
	ret
.p2align 2
.globl vif
vif:
	ret
.p2align 2
.globl vv
vv:
	ret
