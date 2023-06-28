.data
.bss
.align 4
.globl x
x:
	.zero	4
.text
.globl v_sf
v_sf:
pcrel7:
	auipc a0, %pcrel_hi(x)
	fsw f10, %pcrel_lo(pcrel7)(a0)
	ret
