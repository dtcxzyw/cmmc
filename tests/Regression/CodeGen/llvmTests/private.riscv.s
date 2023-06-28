.data
.align 4
.globl baz
baz:
	.4byte	4
.text
.globl bar
bar:
pcrel7:
	auipc a0, %pcrel_hi(baz)
	lw a0, %pcrel_lo(pcrel7)(a0)
	ret
.globl foo
foo:
	ret
