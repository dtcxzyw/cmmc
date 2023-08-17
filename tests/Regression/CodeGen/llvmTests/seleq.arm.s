.arch armv7ve
.data
.data
.p2align 2
.globl t
t:
	.4byte	10
.p2align 2
.globl f
f:
	.4byte	199
.p2align 2
.globl a
a:
	.4byte	1
.p2align 2
.globl b
b:
	.4byte	10
.p2align 2
.globl c
c:
	.4byte	1
.p2align 2
.globl z1
z1:
	.4byte	0
.p2align 2
.globl z2
z2:
	.4byte	0
.p2align 2
.globl z3
z3:
	.4byte	0
.p2align 2
.globl z4
z4:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl calc_seleq
calc_seleq:
	push { r4, r5 }
	movw r3, #:lower16:t
	movt r3, #:upper16:t
	movw r2, #:lower16:f
	movt r2, #:upper16:f
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r1, [r0, #0]
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r4, [r0, #0]
	cmp r1, r4
	bne label29
	ldr r0, [r2, #0]
	b label2
label29:
	ldr r0, [r3, #0]
label2:
	movw r5, #:lower16:z1
	movt r5, #:upper16:z1
	cmp r1, r4
	str r0, [r5, #0]
	bne label35
	ldr r0, [r2, #0]
	b label5
label35:
	ldr r0, [r3, #0]
label5:
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r0, [r4, #0]
	movw r0, #:lower16:c
	movt r0, #:upper16:c
	ldr r4, [r0, #0]
	cmp r1, r4
	bne label45
	ldr r0, [r3, #0]
	b label8
label45:
	ldr r0, [r2, #0]
label8:
	movw r5, #:lower16:z3
	movt r5, #:upper16:z3
	cmp r1, r4
	str r0, [r5, #0]
	bne label52
	ldr r0, [r3, #0]
	b label11
label52:
	ldr r0, [r2, #0]
label11:
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4, r5 }
	bx lr
