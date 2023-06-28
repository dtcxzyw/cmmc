.data
.data
.align 4
.globl a
a:
	.4byte	1
.text
.globl ext
ext:
pcrel6:
	auipc a0, %pcrel_hi(a)
	sw zero, %pcrel_lo(pcrel6)(a0)
	ret
.globl foo
foo:
pcrel12:
	auipc a0, %pcrel_hi(a)
	sw zero, %pcrel_lo(pcrel12)(a0)
	ret
.globl main
main:
pcrel18:
	auipc a0, %pcrel_hi(a)
	sw zero, %pcrel_lo(pcrel18)(a0)
	mv a0, zero
	ret
