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
	bne a1, zero, label7
	mv a0, zero
label7:
	ret
.globl fn2
fn2:
pcrel32:
	auipc a0, %pcrel_hi(b)
	lw a0, %pcrel_lo(pcrel32)(a0)
pcrel33:
	auipc a1, %pcrel_hi(a)
	lw a2, %pcrel_lo(pcrel33)(a1)
	addiw a2, a2, -1
	li a3, 4294967295
	and a3, a2, a3
	sw a3, %pcrel_lo(pcrel33)(a1)
	sltu a1, zero, a2
	bne a1, zero, label31
	mv a0, zero
label31:
	auipc a1, %pcrel_hi(c)
	sw a0, %pcrel_lo(label31)(a1)
	ret
