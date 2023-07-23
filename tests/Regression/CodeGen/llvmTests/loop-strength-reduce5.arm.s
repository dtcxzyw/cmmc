.arch armv7ve
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
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	push { r4 }
	cmp r0, #0
	ble label5
	movw r1, #:lower16:X
	mov r3, #0
	movw r2, #:lower16:Y
	cmp r0, #1
	movt r1, #:upper16:X
	movt r2, #:upper16:Y
	strh r3, [r1, #0]
	strh r3, [r2, #0]
	beq label5
	mov r3, #1
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	bne label3
label5:
	pop { r4 }
	bx lr
label3:
	uxth r4, r3
	strh r4, [r1, #0]
	movw r4, #65535
	and r4, r3, r4
	add r3, r3, #1
	lsl r4, r4, #2
	cmp r0, r3
	uxth r4, r4
	strh r4, [r2, #0]
	beq label5
	b label3
