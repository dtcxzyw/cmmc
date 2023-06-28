.data
.data
.align 1
.globl foo
foo:
	.byte	127
.text
.globl main
main:
pcrel15:
	auipc a0, %pcrel_hi(foo)
	lb a0, %pcrel_lo(pcrel15)(a0)
	andi a0, a0, 255
	sraiw a0, a0, 5
	andi a0, a0, 7
	slliw a0, a0, 5
	sraiw a0, a0, 5
	slli a0, a0, 24
	srai a0, a0, 24
	ret
