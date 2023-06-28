.data
.align 4
.globl a0
a0:
	.4byte	0
.section .rodata
.bss
.text
.globl __regcall3__func
__regcall3__func:
pcrel7:
	auipc a1, %pcrel_hi(a0)
	sw a0, %pcrel_lo(pcrel7)(a1)
	ret
.globl tail_call_regcall
tail_call_regcall:
pcrel14:
	auipc a1, %pcrel_hi(a0)
	sw a0, %pcrel_lo(pcrel14)(a1)
	ret
