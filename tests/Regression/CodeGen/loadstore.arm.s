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
	push { r4, r5, r6 }
	lsl r4, r1, #2
	add r5, r0, r4
	ldr r6, [r5, #0]
	mov r0, r6
	pop { r4, r5, r6 }
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
	push { r4 }
	ldr r4, [r0, #12]
	mov r0, r4
	pop { r4 }
	bx lr
.globl lb
lb:
	push { r4 }
	ldrsb r4, [r0, #1]
	mov r0, r4
	pop { r4 }
	bx lr
.globl sb
sb:
	strb r1, [r0, #1]
	bx lr
.globl global_addressing_scalar
global_addressing_scalar:
	push { r4, r5 }
	adr r4, y
	ldr r5, [r4, #0]
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl global_addressing_array
global_addressing_array:
	push { r4, r5, r6, r7 }
	adr r4, arr
	lsl r5, r0, #2
	add r6, r4, r5
	ldr r7, [r6, #0]
	mov r0, r7
	pop { r4, r5, r6, r7 }
	bx lr
