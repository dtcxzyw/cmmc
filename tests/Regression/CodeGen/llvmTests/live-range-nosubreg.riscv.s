.data
.align 2
.globl a
a:
	.byte	0
	.byte	0
.align 4
.globl c
c:
	.4byte	0
.align 1
.globl d
d:
	.byte	0
.align 4
.globl b
b:
	.4byte	0
.text
.globl main
main:
pcrel60:
	auipc a0, %pcrel_hi(a)
	addi a1, a0, %pcrel_lo(pcrel60)
	lh a0, %pcrel_lo(pcrel60)(a0)
pcrel61:
	auipc a2, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel61)(a2)
	sltu a2, zero, a2
	bne a2, zero, label3
	li a2, 65535
	and a0, a0, a2
	addiw a0, a0, 1
	and a0, a0, a2
label3:
	li a2, 65535
	and a0, a0, a2
	addiw a0, a0, -1
	and a0, a0, a2
	and a2, a0, a2
	sh a0, 0(a1)
pcrel62:
	auipc a1, %pcrel_hi(d)
	addi a0, a1, %pcrel_lo(pcrel62)
	lb a1, %pcrel_lo(pcrel62)(a1)
	andi a1, a1, 255
	subw a1, zero, a1
	andi a3, a1, 255
	bne a2, zero, label33
	mv a1, zero
	j label5
label33:
	auipc a1, %pcrel_hi(b)
	lw a1, %pcrel_lo(label33)(a1)
	sltu a1, zero, a1
	li a2, 4294967295
	and a1, a1, a2
label5:
	andi a1, a1, 255
	andi a1, a1, 255
	andi a2, a3, 255
	or a1, a1, a2
	andi a1, a1, 255
	sb a1, 0(a0)
	mv a0, zero
	ret
