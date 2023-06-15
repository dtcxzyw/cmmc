.arch armv7-a
.data
.align 4
.globl y
y:
	.zero	4
.align 4
.globl arr
arr:
	.zero	400
.text
.syntax unified
.arm
.fpu neon
.globl load
load:
	sub sp, sp, #16
	str r4, [sp, #0]
	str r5, [sp, #4]
	str r6, [sp, #8]
	lsl r4, r1, #2
	add r5, r0, r4
	ldr r6, [r5, #0]
	mov r0, r6
	ldr r6, [sp, #8]
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #16
	bx lr
.globl store
store:
	push { r4, r5 }
	lsl r4, r1, #2
	add r5, r0, r4
	str r2, [r5, #0]
	pop { r4, r5 }
	bx lr
.globl gep_const
gep_const:
	sub sp, sp, #8
	str r4, [sp, #0]
	ldr r4, [r0, #12]
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl lb
lb:
	sub sp, sp, #8
	str r4, [sp, #0]
	ldrsb r4, [r0, #1]
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl sb
sb:
	strb r1, [r0, #1]
	bx lr
.globl global_addressing_scalar
global_addressing_scalar:
	push { r4, r5 }
	movw r4, #:lower16:y
	movt r4, #:upper16:y
	ldr r5, [r4, #0]
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl global_addressing_array
global_addressing_array:
	push { r4, r5, r6, r7 }
	movw r4, #:lower16:arr
	movt r4, #:upper16:arr
	lsl r5, r0, #2
	add r6, r4, r5
	ldr r7, [r6, #0]
	mov r0, r7
	pop { r4, r5, r6, r7 }
	bx lr
