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
.globl gep1
gep1:
	push { r4, r5, r6 }
	lsl r4, r1, #2
	add r5, r0, r4
	ldr r6, [r5, #0]
	mov r0, r6
	pop { r4, r5, r6 }
	bx lr
.globl gep2
gep2:
	push { r4, r5, r6, r7 }
	add r4, r1, #3
	lsl r5, r4, #2
	add r6, r0, r5
	ldr r7, [r6, #0]
	mov r0, r7
	pop { r4, r5, r6, r7 }
	bx lr
.globl gepseq
gepseq:
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	lsl r4, r1, #2
	add r5, r0, r4
	ldr r6, [r5, #0]
	ldr r7, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r5, #12]
	add r10, r6, r7
	add r11, r10, r8
	add r4, r11, r9
	mov r0, r4
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
	push { r4, r5, r6, r7 }
	movw r4, #:lower16:arr
	movt r4, #:upper16:arr
	lsl r5, r0, #2
	add r6, r4, r5
	ldr r7, [r6, #0]
	mov r0, r7
	pop { r4, r5, r6, r7 }
	bx lr
