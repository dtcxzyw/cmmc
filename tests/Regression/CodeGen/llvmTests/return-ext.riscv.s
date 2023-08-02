.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
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
.p2align 2
.globl signed_i8
signed_i8:
pcrel11:
	auipc a1, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel11)(a1)
	xori a2, a0, 42
	sltiu a1, a2, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl unsigned_i1
unsigned_i1:
pcrel22:
	auipc a1, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel22)(a1)
	xori a2, a0, 42
	sltiu a1, a2, 1
	zext.w a0, a1
	ret
.p2align 2
.globl unsigned_i16
unsigned_i16:
pcrel38:
	auipc a2, %pcrel_hi(b)
pcrel39:
	auipc a4, %pcrel_hi(a)
	lh a1, %pcrel_lo(pcrel38)(a2)
	lh a2, %pcrel_lo(pcrel39)(a4)
	zext.h a0, a1
	zext.h a3, a2
	addw a1, a0, a3
	zext.h a0, a1
	ret
.p2align 2
.globl unsigned_i8
unsigned_i8:
pcrel50:
	auipc a1, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel50)(a1)
	xori a2, a0, 42
	sltiu a1, a2, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl use_i1
use_i1:
pcrel61:
	auipc a1, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel61)(a1)
	xori a2, a0, 42
	sltiu a1, a2, 1
	zext.w a0, a1
	ret
.p2align 2
.globl use_i16
use_i16:
pcrel77:
	auipc a2, %pcrel_hi(b)
pcrel78:
	auipc a4, %pcrel_hi(a)
	lh a1, %pcrel_lo(pcrel77)(a2)
	lh a2, %pcrel_lo(pcrel78)(a4)
	zext.h a0, a1
	zext.h a3, a2
	addw a1, a0, a3
	zext.h a0, a1
	ret
.p2align 2
.globl use_i8
use_i8:
pcrel89:
	auipc a1, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel89)(a1)
	xori a2, a0, 42
	sltiu a1, a2, 1
	andi a0, a1, 255
	ret
