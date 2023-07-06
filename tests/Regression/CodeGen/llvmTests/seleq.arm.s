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
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldr r3, [r1, #0]
	mov r0, r1
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mov r2, r1
	ldr r1, [r1, #0]
	cmp r3, r1
	bne label17
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	movw r3, #:lower16:z1
	movt r3, #:upper16:z1
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	ldr r2, [r0, #0]
	cmp r1, r2
	bne label16
label36:
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	movw r2, #:lower16:z2
	movt r2, #:upper16:z2
	str r1, [r2, #0]
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mov r2, r1
	ldr r1, [r1, #0]
	ldr r3, [r0, #0]
	cmp r1, r3
	bne label9
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	movw r3, #:lower16:z3
	movt r3, #:upper16:z3
	str r1, [r3, #0]
	ldr r0, [r0, #0]
	ldr r1, [r2, #0]
	cmp r0, r1
	bne label64
	b label90
label17:
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	movw r3, #:lower16:z1
	movt r3, #:upper16:z1
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	ldr r2, [r0, #0]
	cmp r1, r2
	bne label16
	b label36
label9:
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	movw r3, #:lower16:z3
	movt r3, #:upper16:z3
	str r1, [r3, #0]
	ldr r0, [r0, #0]
	ldr r1, [r2, #0]
	cmp r0, r1
	bne label64
	b label90
label64:
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
label14:
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	bx lr
label90:
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	ldr r0, [r0, #0]
	b label14
label16:
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	movw r2, #:lower16:z2
	movt r2, #:upper16:z2
	str r1, [r2, #0]
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mov r2, r1
	ldr r1, [r1, #0]
	ldr r3, [r0, #0]
	cmp r1, r3
	bne label9
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	movw r3, #:lower16:z3
	movt r3, #:upper16:z3
	str r1, [r3, #0]
	ldr r0, [r0, #0]
	ldr r1, [r2, #0]
	cmp r0, r1
	bne label64
	b label90
