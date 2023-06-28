.data
.align 4
.globl a
a:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl c
c:
	.zero	4
.text
.globl fn1
fn1:
	sltu a1, zero, a1
	subw a1, zero, a1
	and a0, a0, a1
	ret
.globl fn2
fn2:
pcrel30:
	auipc a0, %pcrel_hi(b)
	lw a1, %pcrel_lo(pcrel30)(a0)
pcrel31:
	auipc a0, %pcrel_hi(a)
	lw a2, %pcrel_lo(pcrel31)(a0)
	addiw a2, a2, -1
	sltu a3, zero, a2
	subw a3, zero, a3
	and a1, a1, a3
	li a3, 4294967295
	and a2, a2, a3
	sw a2, %pcrel_lo(pcrel31)(a0)
pcrel32:
	auipc a0, %pcrel_hi(c)
	sw a1, %pcrel_lo(pcrel32)(a0)
	ret
