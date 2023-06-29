.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl neg_only_one_truncation
neg_only_one_truncation:
	uxtb r1, r1
	and r3, r2, #255
	add r1, r3, r1
	uxtb r3, r1
	sxtb r3, r3
	add r0, r0, r2
	uxtb r2, r0
	sxtb r2, r2
	cmp r2, r3
	ble label21
	and r0, r0, #255
	b label3
label21:
	and r0, r1, #255
label3:
	uxtb r0, r0
	bx lr
.globl neg_type_mismatch
neg_type_mismatch:
	uxth r1, r1
	movw r3, #65535
	and r3, r2, r3
	add r1, r3, r1
	uxtb r3, r1
	sxtb r3, r3
	add r0, r0, r2
	uxtb r2, r0
	sxtb r2, r2
	cmp r2, r3
	ble label46
	and r0, r0, #255
	b label28
label46:
	and r0, r1, #255
label28:
	uxtb r0, r0
	bx lr
.globl negative_CopyFromReg
negative_CopyFromReg:
	add r1, r1, r2
	uxtb r2, r1
	sxtb r2, r2
	uxtb r3, r0
	sxtb r3, r3
	cmp r3, r2
	ble label69
	and r0, r0, #255
	b label54
label69:
	and r0, r1, #255
label54:
	uxtb r0, r0
	bx lr
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	uxtb r2, r0
	sxtb r2, r2
	uxtb r3, r1
	sxtb r3, r3
	cmp r2, r3
	ble label89
	and r0, r0, #255
	b label76
label89:
	and r0, r1, #255
label76:
	uxtb r0, r0
	bx lr
.globl t0
t0:
	add r0, r0, r2
	uxtb r3, r0
	sxtb r3, r3
	add r1, r1, r2
	uxtb r2, r1
	sxtb r2, r2
	cmp r3, r2
	ble label112
	and r0, r0, #255
	b label96
label112:
	and r0, r1, #255
label96:
	uxtb r0, r0
	bx lr
