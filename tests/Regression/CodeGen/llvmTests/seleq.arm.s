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
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r1, [r0, #0]
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldr r2, [r0, #0]
	cmp r1, r2
	bne label17
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
label3:
	movw r3, #:lower16:z1
	cmp r1, r2
	movt r3, #:upper16:z1
	str r0, [r3, #0]
	beq label5
	b label16
label6:
	movw r2, #:lower16:z2
	movt r2, #:upper16:z2
	str r0, [r2, #0]
	movw r0, #:lower16:c
	movt r0, #:upper16:c
	ldr r2, [r0, #0]
	cmp r1, r2
	beq label8
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
label10:
	movw r3, #:lower16:z3
	cmp r1, r2
	movt r3, #:upper16:z3
	str r0, [r3, #0]
	beq label12
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
label14:
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	bx lr
label16:
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	ldr r0, [r0, #0]
	b label6
label17:
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	ldr r0, [r0, #0]
	b label3
label12:
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	ldr r0, [r0, #0]
	b label14
label8:
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	ldr r0, [r0, #0]
	b label10
label5:
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
	b label6
