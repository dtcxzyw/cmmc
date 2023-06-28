.data
.align 4
.globl x
x:
	.4byte	0
.section .rodata
.bss
.text
.globl foo
foo:
pcrel9:
	auipc a0, %pcrel_hi(x)
	flw f10, %pcrel_lo(pcrel9)(a0)
	fmul.s f10, f10, f10
	fsw f10, %pcrel_lo(pcrel9)(a0)
	ret
