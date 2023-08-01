.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl neg_only_one_truncation
neg_only_one_truncation:
	uxtb r1, r1
	and r3, r2, #255
	add r0, r0, r2
	add r1, r1, r3
	uxtb r2, r0
	uxtb r3, r1
	sxtb r2, r2
	sxtb r3, r3
	cmp r3, r2
	bge label20
	and r0, r0, #255
	b label3
label20:
	and r0, r1, #255
label3:
	uxtb r0, r0
	bx lr
.p2align 4
.globl neg_type_mismatch
neg_type_mismatch:
	uxth r1, r1
	movw r3, #65535
	add r0, r0, r2
	and r3, r2, r3
	uxtb r2, r0
	add r1, r1, r3
	sxtb r2, r2
	uxtb r3, r1
	sxtb r3, r3
	cmp r3, r2
	bge label46
	and r0, r0, #255
	b label29
label46:
	and r0, r1, #255
label29:
	uxtb r0, r0
	bx lr
.p2align 4
.globl negative_CopyFromReg
negative_CopyFromReg:
	add r1, r1, r2
	uxtb r3, r0
	uxtb r2, r1
	sxtb r3, r3
	sxtb r2, r2
	cmp r2, r3
	bge label70
	and r0, r0, #255
	b label56
label70:
	and r0, r1, #255
label56:
	uxtb r0, r0
	bx lr
.p2align 4
.globl negative_CopyFromRegs
negative_CopyFromRegs:
	uxtb r2, r0
	uxtb r3, r1
	sxtb r2, r2
	sxtb r3, r3
	cmp r2, r3
	ble label91
	and r0, r0, #255
	b label79
label91:
	and r0, r1, #255
label79:
	uxtb r0, r0
	bx lr
.p2align 4
.globl t0
t0:
	add r0, r0, r2
	add r1, r1, r2
	uxtb r3, r0
	uxtb r2, r1
	sxtb r3, r3
	sxtb r2, r2
	cmp r3, r2
	ble label115
	and r0, r0, #255
	b label100
label115:
	and r0, r1, #255
label100:
	uxtb r0, r0
	bx lr
