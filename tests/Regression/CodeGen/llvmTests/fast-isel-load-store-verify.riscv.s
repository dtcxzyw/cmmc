.data
.align 1
.globl a
a:
	.byte	1
.align 2
.globl b
b:
	.byte	2
	.byte	0
.align 4
.globl c
c:
	.4byte	4
.section .rodata
.bss
.text
.globl t1
t1:
pcrel12:
	auipc a0, %pcrel_hi(a)
	lb a0, %pcrel_lo(pcrel12)(a0)
	slli a0, a0, 24
	srai a0, a0, 24
	addiw a0, a0, 1
	andi a0, a0, 255
	ret
.globl t2
t2:
pcrel25:
	auipc a0, %pcrel_hi(b)
	lh a0, %pcrel_lo(pcrel25)(a0)
	slli a0, a0, 16
	srai a0, a0, 16
	addiw a0, a0, 1
	li a1, 65535
	and a0, a0, a1
	ret
.globl t3
t3:
pcrel36:
	auipc a0, %pcrel_hi(c)
	lw a0, %pcrel_lo(pcrel36)(a0)
	addiw a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl t4
t4:
	slli a0, a0, 24
	srai a0, a0, 24
	addiw a0, a0, 1
	andi a0, a0, 255
pcrel48:
	auipc a1, %pcrel_hi(a)
	sb a0, %pcrel_lo(pcrel48)(a1)
	ret
.globl t5
t5:
	slli a0, a0, 16
	srai a0, a0, 16
	addiw a0, a0, 1
	li a1, 65535
	and a0, a0, a1
pcrel61:
	auipc a1, %pcrel_hi(b)
	sh a0, %pcrel_lo(pcrel61)(a1)
	ret
.globl t6
t6:
	addiw a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
pcrel72:
	auipc a1, %pcrel_hi(c)
	sw a0, %pcrel_lo(pcrel72)(a1)
	ret
