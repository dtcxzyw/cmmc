.data
.section .rodata
.bss
.align 4
.globl bar
bar:
	.zero	4
.text
.globl foo
foo:
pcrel7:
	auipc a0, %pcrel_hi(bar)
	lw a0, %pcrel_lo(pcrel7)(a0)
	ret
