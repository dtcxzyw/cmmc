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
	ldr r0, [r0, r1, lsl #2]
	bx lr
.globl load_byte
load_byte:
	ldrsb r0, [r0, r1]
	bx lr
.globl load_float
load_float:
	add r0, r0, r1, lsl #2
	vldr s0, [r0, #0]
	vmov r0, s0
	bx lr
.globl store
store:
	str r2, [r0, r1, lsl #2]
	bx lr
.globl store_float
store_float:
	vmov s0, r2
	add r0, r0, r1, lsl #2
	vstr s0, [r0, #0]
	bx lr
.globl gep_const
gep_const:
	ldr r0, [r0, #12]
	bx lr
.globl gep1
gep1:
	ldr r0, [r0, r1, lsl #2]
	bx lr
.globl gep2
gep2:
	add r1, r1, #3
	ldr r0, [r0, r1, lsl #2]
	bx lr
.globl gepseq
gepseq:
	push { r4 }
	ldr r2, [r0, r1, lsl #2]
	add r3, r1, #1
	ldr r3, [r0, r3, lsl #2]
	add r4, r1, #2
	ldr r4, [r0, r4, lsl #2]
	add r1, r1, #3
	ldr r0, [r0, r1, lsl #2]
	add r1, r2, r3
	add r1, r1, r4
	add r0, r1, r0
	pop { r4 }
	bx lr
.globl lb
lb:
	ldrsb r0, [r0, #1]
	bx lr
.globl sb
sb:
	strb r1, [r0, #1]
	bx lr
.globl global_addressing_scalar
global_addressing_scalar:
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	ldr r0, [r0, #0]
	bx lr
.globl global_addressing_array
global_addressing_array:
	movw r1, #:lower16:arr
	movt r1, #:upper16:arr
	ldr r0, [r1, r0, lsl #2]
	bx lr
