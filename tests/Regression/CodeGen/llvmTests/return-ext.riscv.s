.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl x
x:
	.4byte	0
.p2align 1
.globl a
a:
	.byte	0
	.byte	0
.p2align 1
.globl b
b:
	.byte	0
	.byte	0
.text
.p2align 2
.globl signed_i8
signed_i8:
pcrel11:
	auipc a0, %pcrel_hi(x)
	lw a2, %pcrel_lo(pcrel11)(a0)
	xori a3, a2, 42
	sltiu a1, a3, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl unsigned_i1
unsigned_i1:
pcrel22:
	auipc a0, %pcrel_hi(x)
	lw a2, %pcrel_lo(pcrel22)(a0)
	xori a3, a2, 42
	sltiu a1, a3, 1
	zext.w a0, a1
	ret
.p2align 2
.globl unsigned_i16
unsigned_i16:
pcrel38:
	auipc a2, %pcrel_hi(b)
pcrel39:
	auipc a5, %pcrel_hi(a)
	lh a0, %pcrel_lo(pcrel38)(a2)
	lh a3, %pcrel_lo(pcrel39)(a5)
	zext.h a1, a0
	zext.h a4, a3
	addw a2, a1, a4
	zext.h a0, a2
	ret
.p2align 2
.globl unsigned_i8
unsigned_i8:
pcrel50:
	auipc a0, %pcrel_hi(x)
	lw a2, %pcrel_lo(pcrel50)(a0)
	xori a3, a2, 42
	sltiu a1, a3, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl use_i1
use_i1:
pcrel61:
	auipc a0, %pcrel_hi(x)
	lw a2, %pcrel_lo(pcrel61)(a0)
	xori a3, a2, 42
	sltiu a1, a3, 1
	zext.w a0, a1
	ret
.p2align 2
.globl use_i16
use_i16:
pcrel77:
	auipc a2, %pcrel_hi(b)
pcrel78:
	auipc a5, %pcrel_hi(a)
	lh a0, %pcrel_lo(pcrel77)(a2)
	lh a3, %pcrel_lo(pcrel78)(a5)
	zext.h a1, a0
	zext.h a4, a3
	addw a2, a1, a4
	zext.h a0, a2
	ret
.p2align 2
.globl use_i8
use_i8:
pcrel89:
	auipc a0, %pcrel_hi(x)
	lw a2, %pcrel_lo(pcrel89)(a0)
	xori a3, a2, 42
	sltiu a1, a3, 1
	andi a0, a1, 255
	ret
