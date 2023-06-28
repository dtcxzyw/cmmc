.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl test_sdiv16
test_sdiv16:
	sxth r0, r0
	sxth r1, r1
	sdiv r0, r0, r1
	uxth r0, r0
	bx lr
.globl test_sdiv32
test_sdiv32:
	sdiv r0, r0, r1
	bx lr
.globl test_sdiv8
test_sdiv8:
	sxtb r0, r0
	sxtb r1, r1
	sdiv r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_srem16
test_srem16:
	sxth r0, r0
	sxth r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxth r0, r0
	bx lr
.globl test_srem32
test_srem32:
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl test_srem8
test_srem8:
	sxtb r0, r0
	sxtb r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxtb r0, r0
	bx lr
.globl test_udiv16
test_udiv16:
	uxth r0, r0
	uxth r1, r1
	sdiv r0, r0, r1
	uxth r0, r0
	bx lr
.globl test_udiv32
test_udiv32:
	udiv r0, r0, r1
	bx lr
.globl test_udiv8
test_udiv8:
	uxtb r0, r0
	uxtb r1, r1
	sdiv r0, r0, r1
	uxtb r0, r0
	bx lr
.globl test_urem16
test_urem16:
	uxth r0, r0
	uxth r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxth r0, r0
	bx lr
.globl test_urem32
test_urem32:
	udiv r2, r0, r1
	mls r0, r2, r1, r0
	bx lr
.globl test_urem8
test_urem8:
	uxtb r0, r0
	uxtb r1, r1
	sdiv r2, r0, r1
	mls r0, r2, r1, r0
	uxtb r0, r0
	bx lr
