.data
.section .rodata
.bss
.align 4
.globl g
g:
	.zero	4
.text
.globl foo
foo:
pcrel17:
	auipc a1, %pcrel_hi(g)
	addi a0, a1, %pcrel_lo(pcrel17)
	lw a1, %pcrel_lo(pcrel17)(a1)
	sltu a2, zero, a1
	bne a2, zero, label9
	j label2
label9:
	addiw a1, a1, 10
	li a2, 4294967295
	and a1, a1, a2
	sw a1, 0(a0)
label2:
	ret
