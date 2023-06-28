.data
.align 4
.globl x
x:
	.4byte	0
.align 2
.globl a
a:
	.byte	0
	.byte	0
.align 2
.globl b
b:
	.byte	0
	.byte	0
.text
.globl signed_i8
signed_i8:
pcrel11:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel11)(a0)
	xori a0, a0, 42
	sltiu a0, a0, 1
	andi a0, a0, 255
	ret
.globl unsigned_i1
unsigned_i1:
pcrel23:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel23)(a0)
	xori a0, a0, 42
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl unsigned_i16
unsigned_i16:
pcrel42:
	auipc a0, %pcrel_hi(b)
	lh a1, %pcrel_lo(pcrel42)(a0)
pcrel43:
	auipc a1, %pcrel_hi(a)
	lh a2, %pcrel_lo(pcrel43)(a1)
	lhu a0, %pcrel_lo(pcrel42)(a0)
	lhu a1, %pcrel_lo(pcrel43)(a1)
	addw a0, a0, a1
	li a1, 65535
	and a0, a0, a1
	ret
.globl unsigned_i8
unsigned_i8:
pcrel54:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel54)(a0)
	xori a0, a0, 42
	sltiu a0, a0, 1
	andi a0, a0, 255
	ret
.globl use_i1
use_i1:
pcrel66:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel66)(a0)
	xori a0, a0, 42
	sltiu a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl use_i16
use_i16:
pcrel87:
	auipc a0, %pcrel_hi(b)
	lh a1, %pcrel_lo(pcrel87)(a0)
pcrel88:
	auipc a1, %pcrel_hi(a)
	lh a2, %pcrel_lo(pcrel88)(a1)
	lhu a0, %pcrel_lo(pcrel87)(a0)
	lhu a1, %pcrel_lo(pcrel88)(a1)
	addw a0, a0, a1
	li a1, 65535
	and a0, a0, a1
	and a0, a0, a1
	ret
.globl use_i8
use_i8:
pcrel100:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel100)(a0)
	xori a0, a0, 42
	sltiu a0, a0, 1
	andi a0, a0, 255
	andi a0, a0, 255
	ret
