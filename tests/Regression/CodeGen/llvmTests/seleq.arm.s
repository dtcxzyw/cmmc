.arch armv7ve
.data
.data
.align 4
.globl t
t:
	.4byte	10
.align 4
.globl f
f:
	.4byte	199
.align 4
.globl a
a:
	.4byte	1
.align 4
.globl b
b:
	.4byte	10
.align 4
.globl c
c:
	.4byte	1
.align 4
.globl z1
z1:
	.4byte	0
.align 4
.globl z2
z2:
	.4byte	0
.align 4
.globl z3
z3:
	.4byte	0
.align 4
.globl z4
z4:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl calc_seleq
calc_seleq:
.p2align 4
	push { r4, r5 }
	movw r2, #:lower16:t
	movw r0, #:lower16:a
	movt r2, #:upper16:t
	movt r0, #:upper16:a
	ldr r3, [r0, #0]
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r4, [r0, #0]
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	cmp r3, r4
	bne label29
	ldr r1, [r0, #0]
	b label2
label29:
	ldr r1, [r2, #0]
label2:
	movw r5, #:lower16:z1
	cmp r3, r4
	movt r5, #:upper16:z1
	str r1, [r5, #0]
	bne label35
	ldr r1, [r0, #0]
	b label5
label35:
	ldr r1, [r2, #0]
label5:
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r1, [r4, #0]
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	ldr r4, [r1, #0]
	cmp r3, r4
	bne label45
	ldr r1, [r2, #0]
	b label8
label45:
	ldr r1, [r0, #0]
label8:
	movw r5, #:lower16:z3
	cmp r3, r4
	movt r5, #:upper16:z3
	str r1, [r5, #0]
	bne label52
	ldr r0, [r2, #0]
	b label11
label52:
	ldr r0, [r0, #0]
label11:
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4, r5 }
	bx lr
