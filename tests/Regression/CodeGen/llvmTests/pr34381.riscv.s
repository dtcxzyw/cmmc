.data
.section .rodata
.bss
.align 4
.globl var_21
var_21:
	.zero	4
.align 1
.globl var_29
var_29:
	.zero	1
.align 4
.globl var_390
var_390:
	.zero	4
.align 1
.globl var_11
var_11:
	.zero	1
.align 1
.globl var_370
var_370:
	.zero	1
.text
.globl _Z3foov
_Z3foov:
pcrel47:
	auipc a0, %pcrel_hi(var_21)
	lw a1, %pcrel_lo(pcrel47)(a0)
pcrel48:
	auipc a0, %pcrel_hi(var_29)
	lb a0, %pcrel_lo(pcrel48)(a0)
	slli a0, a0, 24
	srai a0, a0, 24
	subw a2, zero, a0
	li a0, 4294967295
	and a2, a2, a0
	sltu a1, a1, a2
	and a1, a1, a0
	addiw a1, a1, -1
	andi a1, a1, 255
	andi a1, a1, 255
	sltiu a1, a1, 1
	and a0, a1, a0
pcrel49:
	auipc a1, %pcrel_hi(var_390)
	sw a0, %pcrel_lo(pcrel49)(a1)
pcrel50:
	auipc a0, %pcrel_hi(var_11)
	lb a0, %pcrel_lo(pcrel50)(a0)
	slli a0, a0, 24
	srai a0, a0, 24
	andi a0, a0, 255
pcrel51:
	auipc a1, %pcrel_hi(var_370)
	sb a0, %pcrel_lo(pcrel51)(a1)
	ret
