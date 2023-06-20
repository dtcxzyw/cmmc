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
	push { r4 }
	ldr r4, [r0, r1, lsl #2]
	mov r0, r4
	pop { r4 }
	bx lr
.globl store
store:
	str r2, [r0, r1, lsl #2]
	bx lr
.globl gep_const
gep_const:
	push { r4 }
	ldr r4, [r0, #12]
	mov r0, r4
	pop { r4 }
	bx lr
.globl gep1
gep1:
	push { r4 }
	ldr r4, [r0, r1, lsl #2]
	mov r0, r4
	pop { r4 }
	bx lr
.globl gep2
gep2:
	push { r4, r5 }
	add r4, r1, #3
	ldr r5, [r0, r4, lsl #2]
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl gepseq
gepseq:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	ldr r4, [r0, r1, lsl #2]
	add r5, r1, #1
	ldr r6, [r0, r5, lsl #2]
	add r7, r1, #2
	ldr r8, [r0, r7, lsl #2]
	add r9, r1, #3
	ldr r10, [r0, r9, lsl #2]
	add r11, r4, r6
	add r4, r11, r8
	add r5, r4, r10
	mov r0, r5
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
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
	movw r4, #:lower16:y
	movt r4, #:upper16:y
	ldr r5, [r4, #0]
	mov r0, r5
	pop { r4, r5 }
	bx lr
.globl global_addressing_array
global_addressing_array:
	push { r4, r5 }
	movw r4, #:lower16:arr
	movt r4, #:upper16:arr
	ldr r5, [r4, r0, lsl #2]
	mov r0, r5
	pop { r4, r5 }
	bx lr
