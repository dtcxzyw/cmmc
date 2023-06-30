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
	push { r4 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r1, r0
	ldr r3, [r0, #0]
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	mov r2, r0
	ldr r0, [r0, #0]
	cmp r3, r0
	bne label14
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
	b label3
label14:
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	ldr r0, [r0, #0]
label3:
	movw r3, #:lower16:z1
	movt r3, #:upper16:z1
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	ldr r2, [r1, #0]
	cmp r0, r2
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	mov r3, r1
	moveq r3, r0
	ldr r3, [r3, #0]
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r2, r3
	mov r2, r0
	moveq r2, r1
	ldr r2, [r2, #0]
	movw r3, #:lower16:z3
	movt r3, #:upper16:z3
	str r2, [r3, #0]
	moveq r0, r1
	ldr r0, [r0, #0]
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4 }
	bx lr
