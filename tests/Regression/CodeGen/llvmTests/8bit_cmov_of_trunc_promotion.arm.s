.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl neg_only_one_truncation
neg_only_one_truncation:
	uxtb r3, r2
	uxtb r3, r3
	uxtb r1, r1
	add r1, r1, r3
	uxtb r1, r1
	sxtb r3, r1
	add r0, r0, r2
	uxtb r0, r0
	sxtb r2, r0
	cmp r2, r3
	ble label22
	uxtb r0, r0
	b label3
label22:
	uxtb r0, r1
label3:
	uxtb r0, r0
	bx lr
.globl neg_type_mismatch
neg_type_mismatch:
	uxth r3, r2
	uxth r3, r3
	uxth r1, r1
	add r1, r1, r3
	uxtb r1, r1
	sxtb r3, r1
	add r0, r0, r2
	uxtb r0, r0
	sxtb r2, r0
	cmp r2, r3
	ble label48
	uxtb r0, r0
	b label29
label48:
	uxtb r0, r1
label29:
	uxtb r0, r0
	bx lr
.globl negative_CopyFromReg
negative_CopyFromReg:
	add r1, r1, r2
	uxtb r1, r1
	sxtb r2, r1
	uxtb r0, r0
	sxtb r3, r0
	cmp r3, r2
	ble label70
	uxtb r0, r0
	b label55
label70:
	uxtb r0, r1
label55:
	uxtb r0, r0
	bx lr
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	uxtb r0, r0
	sxtb r2, r0
	uxtb r1, r1
	sxtb r3, r1
	cmp r2, r3
	ble label90
	uxtb r0, r0
	b label77
label90:
	uxtb r0, r1
label77:
	uxtb r0, r0
	bx lr
.globl t0
t0:
	add r0, r0, r2
	uxtb r0, r0
	sxtb r3, r0
	add r1, r1, r2
	uxtb r1, r1
	sxtb r2, r1
	cmp r3, r2
	ble label113
	uxtb r0, r0
	b label97
label113:
	uxtb r0, r1
label97:
	uxtb r0, r0
	bx lr
