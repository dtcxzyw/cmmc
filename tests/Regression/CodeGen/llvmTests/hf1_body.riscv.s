.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 2
.globl x
x:
	.zero	4
.text
.p2align 2
.globl v_sf
v_sf:
pcrel7:
	auipc a0, %pcrel_hi(x)
	fsw f10, %pcrel_lo(pcrel7)(a0)
	ret
