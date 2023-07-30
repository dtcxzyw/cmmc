.arch armv7ve
.data
.bss
.align 4
.globl y
y:
	.zero	4
.align 8
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
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
	add r1, r1, r2
	ldr r2, [r0, #8]
	ldr r0, [r0, #12]
	add r1, r1, r2
	add r0, r1, r0
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
	push { r4, r5, r6 }
	cmp r0, #0
	bgt label102
label101:
	pop { r4, r5, r6 }
	bx lr
label104:
	add r5, r1, r3, lsl #2
	mov r6, #0
	add r3, r3, #16
	str r6, [r5, #0]
	cmp r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	str r6, [r5, #16]
	str r6, [r5, #20]
	str r6, [r5, #24]
	str r6, [r5, #28]
	str r6, [r5, #32]
	str r6, [r5, #36]
	str r6, [r5, #40]
	str r6, [r5, #44]
	str r6, [r5, #48]
	str r6, [r5, #52]
	str r6, [r5, #56]
	str r6, [r5, #60]
	bgt label104
label106:
	add r4, r1, r3, lsl #2
	mov r5, #0
	add r3, r3, #4
	str r5, [r4, #0]
	cmp r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	bgt label106
	mov r2, r3
label108:
	mov r3, #0
	str r3, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r0, r2
	bgt label108
	b label101
label102:
	movw r1, #:lower16:arr
	cmp r0, #4
	movt r1, #:upper16:arr
	bgt label103
	mov r2, #0
	b label108
label103:
	sub r2, r0, #4
	sub r4, r0, #20
	cmp r2, #16
	bgt label125
	mov r3, #0
	b label106
label125:
	mov r3, #0
	b label104
.globl fused_store
fused_store:
.p2align 4
	movw r0, #:lower16:arr
	mov r1, #0
	movt r0, #:upper16:arr
	str r1, [r0, #0]
	mov r1, #1
	str r1, [r0, #4]
	mov r1, #2
	str r1, [r0, #8]
	mov r1, #3
	str r1, [r0, #12]
	mov r1, #4
	str r1, [r0, #16]
	mov r1, #5
	str r1, [r0, #20]
	mov r1, #6
	str r1, [r0, #24]
	mov r1, #7
	str r1, [r0, #28]
	mov r1, #8
	str r1, [r0, #32]
	mov r1, #9
	str r1, [r0, #36]
	mov r1, #10
	str r1, [r0, #40]
	mov r1, #11
	str r1, [r0, #44]
	mov r1, #12
	str r1, [r0, #48]
	mov r1, #13
	str r1, [r0, #52]
	mov r1, #14
	str r1, [r0, #56]
	mov r1, #15
	str r1, [r0, #60]
	bx lr
