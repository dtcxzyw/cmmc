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
	li a1, 4294967295
	xori a0, a0, 42
	sltiu a0, a0, 1
	and a0, a0, a1
	ret
.globl unsigned_i16
unsigned_i16:
pcrel42:
	auipc a0, %pcrel_hi(b)
	lh a1, %pcrel_lo(pcrel42)(a0)
	lhu a0, %pcrel_lo(pcrel42)(a0)
pcrel43:
	auipc a1, %pcrel_hi(a)
	lh a2, %pcrel_lo(pcrel43)(a1)
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
	li a1, 4294967295
	xori a0, a0, 42
	sltiu a0, a0, 1
	and a0, a0, a1
	ret
.globl use_i16
use_i16:
pcrel85:
	auipc a0, %pcrel_hi(b)
	lh a1, %pcrel_lo(pcrel85)(a0)
	lhu a0, %pcrel_lo(pcrel85)(a0)
pcrel86:
	auipc a1, %pcrel_hi(a)
	lh a2, %pcrel_lo(pcrel86)(a1)
	lhu a1, %pcrel_lo(pcrel86)(a1)
	addw a0, a0, a1
	li a1, 65535
	and a0, a0, a1
	ret
.globl use_i8
use_i8:
pcrel97:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel97)(a0)
	xori a0, a0, 42
	sltiu a0, a0, 1
	andi a0, a0, 255
	ret