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
	ldr r2, [r0, r1, lsl #2]
	mov r0, r2
	bx lr
.globl load_byte
load_byte:
	ldrsb r2, [r0, r1]
	mov r0, r2
	bx lr
.globl load_float
load_float:
	add r2, r0, r1, lsl #2
	vldr s0, [r2, #0]
	vmov r0, s0
	bx lr
.globl store
store:
	str r2, [r0, r1, lsl #2]
	bx lr
.globl store_float
store_float:
	vmov s0, r2
	add r2, r0, r1, lsl #2
	vstr s0, [r2, #0]
	bx lr
.globl gep_const
gep_const:
	ldr r1, [r0, #12]
	mov r0, r1
	bx lr
.globl gep1
gep1:
	ldr r2, [r0, r1, lsl #2]
	mov r0, r2
	bx lr
.globl gep2
gep2:
	add r2, r1, #3
	ldr r3, [r0, r2, lsl #2]
	mov r0, r3
	bx lr
.globl gepseq
gepseq:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	ldr r2, [r0, r1, lsl #2]
	add r3, r1, #1
	ldr r4, [r0, r3, lsl #2]
	add r5, r1, #2
	ldr r6, [r0, r5, lsl #2]
	add r7, r1, #3
	ldr r8, [r0, r7, lsl #2]
	add r9, r2, r4
	add r10, r9, r6
	add r11, r10, r8
	mov r0, r11
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.globl lb
lb:
	ldrsb r1, [r0, #1]
	mov r0, r1
	bx lr
.globl sb
sb:
	strb r1, [r0, #1]
	bx lr
.globl global_addressing_scalar
global_addressing_scalar:
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	ldr r1, [r0, #0]
	mov r0, r1
	bx lr
.globl global_addressing_array
global_addressing_array:
	movw r1, #:lower16:arr
	movt r1, #:upper16:arr
	ldr r2, [r1, r0, lsl #2]
	mov r0, r2
	bx lr
