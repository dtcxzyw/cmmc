.data
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.align 2
.globl Y
Y:
	.byte	0
	.byte	0
.text
.globl foo
foo:
	ble a0, zero, label4
	mv a1, zero
label2:
	li a3, 65535
	and a2, a1, a3
	and a4, a2, a3
	slliw a4, a4, 2
	and a3, a4, a3
pcrel32:
	auipc a4, %pcrel_hi(X)
	sh a2, %pcrel_lo(pcrel32)(a4)
pcrel33:
	auipc a2, %pcrel_hi(Y)
	sh a3, %pcrel_lo(pcrel33)(a2)
	addiw a1, a1, 1
	xor a2, a1, a0
	sltu a2, zero, a2
	bne a2, zero, label2
label4:
	ret
