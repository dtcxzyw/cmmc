.arch armv7ve
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
	ldr r0, [r0, #0]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	movw r2, #:lower16:t
	movt r2, #:upper16:t
	ldr r2, [r2, #0]
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r3, [r3, #0]
	cmp r0, r3
	mov r3, r2
	moveq r3, r1
	movw r4, #:lower16:z1
	movt r4, #:upper16:z1
	str r3, [r4, #0]
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, r0
	mov r0, r1
	moveq r0, r2
	movw r1, #:lower16:z3
	movt r1, #:upper16:z3
	str r0, [r1, #0]
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4 }
	bx lr
.globl calc_seleqk
calc_seleqk:
	push { r4 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r2, [r0, #0]
	cmp r2, #1
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	ldr r0, [r0, #0]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	mov r3, r1
	moveq r3, r0
	movw r4, #:lower16:z1
	movt r4, #:upper16:z1
	str r3, [r4, #0]
	cmp r2, #10
	mov r2, r0
	moveq r2, r1
	movw r3, #:lower16:z2
	movt r3, #:upper16:z2
	str r2, [r3, #0]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r2, [r2, #0]
	cmp r2, #3
	mov r3, r0
	moveq r3, r1
	movw r4, #:lower16:z3
	movt r4, #:upper16:z3
	str r3, [r4, #0]
	cmp r2, #10
	moveq r1, r0
	movw r0, #:lower16:z4
	movt r0, #:upper16:z4
	str r1, [r0, #0]
	pop { r4 }
	bx lr
.globl calc_seleqz
calc_seleqz:
	push { r4 }
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	ldr r0, [r0, #0]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r2, [r1, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldr r1, [r1, #0]
	cmp r1, #0
	mov r1, r2
	moveq r1, r0
	movw r3, #:lower16:z1
	movt r3, #:upper16:z1
	str r1, [r3, #0]
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r3, [r3, #0]
	cmp r3, #0
	mov r3, r0
	moveq r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, #0
	moveq r2, r0
	movw r0, #:lower16:z3
	movt r0, #:upper16:z3
	str r2, [r0, #0]
	movw r0, #:lower16:z4
	movt r0, #:upper16:z4
	str r1, [r0, #0]
	pop { r4 }
	bx lr
.globl calc_selge
calc_selge:
	push { r4, r5 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r3, [r1, #0]
	cmp r0, r3
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	movw r2, #:lower16:t
	movt r2, #:upper16:t
	ldr r2, [r2, #0]
	mov r4, r2
	movge r4, r1
	movw r5, #:lower16:z1
	movt r5, #:upper16:z1
	str r4, [r5, #0]
	cmp r3, r0
	mov r3, r1
	movge r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, r0
	mov r4, r1
	movge r4, r2
	movw r5, #:lower16:z3
	movt r5, #:upper16:z3
	str r4, [r5, #0]
	cmp r0, r3
	mov r0, r1
	movge r0, r2
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4, r5 }
	bx lr
.globl calc_selgt
calc_selgt:
	push { r4, r5 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r3, [r1, #0]
	cmp r0, r3
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	movw r2, #:lower16:t
	movt r2, #:upper16:t
	ldr r2, [r2, #0]
	mov r4, r2
	movgt r4, r1
	movw r5, #:lower16:z1
	movt r5, #:upper16:z1
	str r4, [r5, #0]
	cmp r3, r0
	mov r3, r1
	movgt r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, r0
	mov r4, r2
	movgt r4, r1
	movw r5, #:lower16:z3
	movt r5, #:upper16:z3
	str r4, [r5, #0]
	cmp r0, r3
	mov r0, r2
	movgt r0, r1
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	mov r0, #0
	pop { r4, r5 }
	bx lr
.globl calc_selle
calc_selle:
	push { r4, r5 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r3, [r1, #0]
	cmp r0, r3
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	movw r2, #:lower16:f
	movt r2, #:upper16:f
	ldr r2, [r2, #0]
	mov r4, r2
	movle r4, r1
	movw r5, #:lower16:z1
	movt r5, #:upper16:z1
	str r4, [r5, #0]
	cmp r3, r0
	mov r3, r1
	movle r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, r0
	mov r4, r2
	movle r4, r1
	movw r5, #:lower16:z3
	movt r5, #:upper16:z3
	str r4, [r5, #0]
	cmp r0, r3
	mov r0, r2
	movle r0, r1
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4, r5 }
	bx lr
.globl calc_selltk
calc_selltk:
	push { r4 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	cmp r0, #10
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	movw r2, #:lower16:f
	movt r2, #:upper16:f
	ldr r2, [r2, #0]
	mov r3, r2
	movlt r3, r1
	movw r4, #:lower16:z1
	movt r4, #:upper16:z1
	str r3, [r4, #0]
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r3, [r3, #0]
	cmp r3, #2
	mov r3, r1
	movlt r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, #2
	mov r3, r1
	movgt r3, r2
	movw r4, #:lower16:z3
	movt r4, #:upper16:z3
	str r3, [r4, #0]
	cmp r0, #2
	mov r0, r1
	movgt r0, r2
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4 }
	bx lr
.globl calc_selne
calc_selne:
	push { r4 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	movw r2, #:lower16:f
	movt r2, #:upper16:f
	ldr r2, [r2, #0]
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r3, [r3, #0]
	cmp r0, r3
	mov r3, r2
	movne r3, r1
	movw r4, #:lower16:z1
	movt r4, #:upper16:z1
	str r3, [r4, #0]
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, r0
	mov r0, r1
	movne r0, r2
	movw r1, #:lower16:z3
	movt r1, #:upper16:z3
	str r0, [r1, #0]
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4 }
	bx lr
.globl calc_selnek
calc_selnek:
	push { r4 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r2, [r0, #0]
	cmp r2, #1
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	mov r3, r1
	movne r3, r0
	movw r4, #:lower16:z1
	movt r4, #:upper16:z1
	str r3, [r4, #0]
	cmp r2, #10
	mov r2, r0
	movne r2, r1
	movw r3, #:lower16:z2
	movt r3, #:upper16:z2
	str r2, [r3, #0]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r2, [r2, #0]
	cmp r2, #3
	mov r3, r0
	movne r3, r1
	movw r4, #:lower16:z3
	movt r4, #:upper16:z3
	str r3, [r4, #0]
	cmp r2, #10
	movne r1, r0
	movw r0, #:lower16:z4
	movt r0, #:upper16:z4
	str r1, [r0, #0]
	pop { r4 }
	bx lr
.globl calc_selnez
calc_selnez:
	push { r4 }
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r2, [r1, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldr r1, [r1, #0]
	cmp r1, #0
	mov r1, r2
	movne r1, r0
	movw r3, #:lower16:z1
	movt r3, #:upper16:z1
	str r1, [r3, #0]
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r3, [r3, #0]
	cmp r3, #0
	mov r3, r0
	movne r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, #0
	movne r2, r0
	movw r0, #:lower16:z3
	movt r0, #:upper16:z3
	str r2, [r0, #0]
	movw r0, #:lower16:z4
	movt r0, #:upper16:z4
	str r1, [r0, #0]
	pop { r4 }
	bx lr
.globl calc_selnez2
calc_selnez2:
	push { r4 }
	movw r0, #:lower16:f
	movt r0, #:upper16:f
	ldr r0, [r0, #0]
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r2, [r1, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldr r1, [r1, #0]
	cmp r1, #0
	mov r1, r2
	movne r1, r0
	movw r3, #:lower16:z1
	movt r3, #:upper16:z1
	str r1, [r3, #0]
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r3, [r3, #0]
	cmp r3, #0
	mov r3, r0
	movne r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, #0
	movne r2, r0
	movw r0, #:lower16:z3
	movt r0, #:upper16:z3
	str r2, [r0, #0]
	movw r0, #:lower16:z4
	movt r0, #:upper16:z4
	str r1, [r0, #0]
	pop { r4 }
	bx lr
.globl calc_seluge
calc_seluge:
	push { r4, r5 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r3, [r1, #0]
	cmp r0, r3
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	movw r2, #:lower16:t
	movt r2, #:upper16:t
	ldr r2, [r2, #0]
	mov r4, r2
	movhs r4, r1
	movw r5, #:lower16:z1
	movt r5, #:upper16:z1
	str r4, [r5, #0]
	cmp r3, r0
	mov r3, r1
	movhs r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, r0
	mov r4, r1
	movhs r4, r2
	movw r5, #:lower16:z3
	movt r5, #:upper16:z3
	str r4, [r5, #0]
	cmp r0, r3
	mov r0, r1
	movhs r0, r2
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4, r5 }
	bx lr
.globl calc_selugt
calc_selugt:
	push { r4, r5 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r3, [r1, #0]
	cmp r0, r3
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	ldr r1, [r1, #0]
	movw r2, #:lower16:t
	movt r2, #:upper16:t
	ldr r2, [r2, #0]
	mov r4, r2
	movhi r4, r1
	movw r5, #:lower16:z1
	movt r5, #:upper16:z1
	str r4, [r5, #0]
	cmp r3, r0
	mov r3, r1
	movhi r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, r0
	mov r4, r2
	movhi r4, r1
	movw r5, #:lower16:z3
	movt r5, #:upper16:z3
	str r4, [r5, #0]
	cmp r0, r3
	mov r0, r2
	movhi r0, r1
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4, r5 }
	bx lr
.globl calc_selule
calc_selule:
	push { r4, r5 }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	ldr r0, [r0, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r3, [r1, #0]
	cmp r0, r3
	movw r1, #:lower16:t
	movt r1, #:upper16:t
	ldr r1, [r1, #0]
	movw r2, #:lower16:f
	movt r2, #:upper16:f
	ldr r2, [r2, #0]
	mov r4, r2
	movls r4, r1
	movw r5, #:lower16:z1
	movt r5, #:upper16:z1
	str r4, [r5, #0]
	cmp r3, r0
	mov r3, r1
	movls r3, r2
	movw r4, #:lower16:z2
	movt r4, #:upper16:z2
	str r3, [r4, #0]
	movw r3, #:lower16:c
	movt r3, #:upper16:c
	ldr r3, [r3, #0]
	cmp r3, r0
	mov r4, r2
	movls r4, r1
	movw r5, #:lower16:z3
	movt r5, #:upper16:z3
	str r4, [r5, #0]
	cmp r0, r3
	mov r0, r2
	movls r0, r1
	movw r1, #:lower16:z4
	movt r1, #:upper16:z4
	str r0, [r1, #0]
	pop { r4, r5 }
	bx lr
