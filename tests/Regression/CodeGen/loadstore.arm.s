.arch armv7ve
.data
.bss
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
.fpu vfpv4
.globl load
load:
.p2align 4
	ldr r0, [r0, r1, lsl #2]
	bx lr
.globl load_byte
load_byte:
.p2align 4
	ldrsb r0, [r0, r1]
	bx lr
.globl load_float
load_float:
.p2align 4
	add r0, r0, r1, lsl #2
	vldr s0, [r0, #0]
	bx lr
.globl store
store:
.p2align 4
	str r2, [r0, r1, lsl #2]
	bx lr
.globl store_float
store_float:
.p2align 4
	add r0, r0, r1, lsl #2
	vstr s0, [r0, #0]
	bx lr
.globl store_float_constant
store_float_constant:
.p2align 4
	add r0, r0, r1, lsl #2
	mov r1, #1065353216
	vmov s0, r1
	vstr s0, [r0, #0]
	bx lr
.globl gep_const
gep_const:
.p2align 4
	ldr r0, [r0, #12]
	bx lr
.globl gep1
gep1:
.p2align 4
	ldr r0, [r0, r1, lsl #2]
	bx lr
.globl gep2
gep2:
.p2align 4
	add r1, r1, #3
	ldr r0, [r0, r1, lsl #2]
	bx lr
.globl gepseq
gepseq:
.p2align 4
	add r2, r0, r1, lsl #2
	ldr r0, [r0, r1, lsl #2]
	ldr r1, [r2, #4]
	add r0, r0, r1
	ldr r1, [r2, #8]
	add r0, r0, r1
	ldr r1, [r2, #12]
	add r0, r0, r1
	bx lr
.globl lb
lb:
.p2align 4
	ldrsb r0, [r0, #1]
	bx lr
.globl sb
sb:
.p2align 4
	strb r1, [r0, #1]
	bx lr
.globl global_addressing_scalar
global_addressing_scalar:
.p2align 4
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	ldr r0, [r0, #0]
	bx lr
.globl global_addressing_array
global_addressing_array:
.p2align 4
	movw r1, #:lower16:arr
	movt r1, #:upper16:arr
	ldr r0, [r1, r0, lsl #2]
	bx lr
.globl memset_impl
memset_impl:
.p2align 4
	push { r4, r5 }
	cmp r1, #0
	sub r3, r1, #4
	ble label106
	cmp r1, #4
	bgt label116
	mov r2, #0
	b label104
label116:
	mov r2, #0
label102:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	add r2, r2, #4
	str r5, [r4, #4]
	cmp r3, r2
	str r5, [r4, #8]
	str r5, [r4, #12]
	bgt label102
label104:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r1, r2
	bgt label104
label106:
	pop { r4, r5 }
	bx lr
