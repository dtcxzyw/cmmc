.arch armv7ve
.data
.data
.align 4
.globl x
x:
	.4byte	0
.align 2
.globl a
a:
	.byte	0
	.byte	0
.align 2
.globl b
b:
	.byte	0
	.byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl signed_i8
signed_i8:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	sub r0, r0, #42
	clz r0, r0
	lsr r0, r0, #5
	uxtb r0, r0
	bx lr
.p2align 4
.globl unsigned_i1
unsigned_i1:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	sub r0, r0, #42
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.p2align 4
.globl unsigned_i16
unsigned_i16:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldrsh r1, [r0, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldrh r0, [r0, #0]
	ldrsh r2, [r1, #0]
	ldrh r1, [r1, #0]
	add r0, r0, r1
	uxth r0, r0
	bx lr
.p2align 4
.globl unsigned_i8
unsigned_i8:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	sub r0, r0, #42
	clz r0, r0
	lsr r0, r0, #5
	uxtb r0, r0
	bx lr
.p2align 4
.globl use_i1
use_i1:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	sub r0, r0, #42
	clz r0, r0
	lsr r0, r0, #5
	bx lr
.p2align 4
.globl use_i16
use_i16:
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	ldrsh r1, [r0, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldrh r0, [r0, #0]
	ldrsh r2, [r1, #0]
	ldrh r1, [r1, #0]
	add r0, r0, r1
	movw r1, #65535
	and r0, r0, r1
	bx lr
.p2align 4
.globl use_i8
use_i8:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, #0]
	sub r0, r0, #42
	clz r0, r0
	lsr r0, r0, #5
	and r0, r0, #255
	bx lr
