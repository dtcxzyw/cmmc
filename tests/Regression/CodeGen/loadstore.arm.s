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
.p2align 4
.globl load
load:
	ldr r0, [r0, r1, lsl #2]
	bx lr
.p2align 4
.globl load_byte
load_byte:
	ldrsb r0, [r0, r1]
	bx lr
.p2align 4
.globl load_float
load_float:
	add r0, r0, r1, lsl #2
	vldr s0, [r0, #0]
	bx lr
.p2align 4
.globl store
store:
	str r2, [r0, r1, lsl #2]
	bx lr
.p2align 4
.globl store_float
store_float:
	add r0, r0, r1, lsl #2
	vstr s0, [r0, #0]
	bx lr
.p2align 4
.globl store_float_constant
store_float_constant:
	add r0, r0, r1, lsl #2
	mov r1, #1065353216
	vmov s0, r1
	vstr s0, [r0, #0]
	bx lr
.p2align 4
.globl gep_const
gep_const:
	ldr r0, [r0, #12]
	bx lr
.p2align 4
.globl gep1
gep1:
	ldr r0, [r0, r1, lsl #2]
	bx lr
.p2align 4
.globl gep2
gep2:
	add r1, r1, #3
	ldr r0, [r0, r1, lsl #2]
	bx lr
.p2align 4
.globl gepseq
gepseq:
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
	add r1, r1, r2
	ldr r2, [r0, #8]
	ldr r0, [r0, #12]
	add r1, r1, r2
	add r0, r1, r0
	bx lr
.p2align 4
.globl lb
lb:
	ldrsb r0, [r0, #1]
	bx lr
.p2align 4
.globl sb
sb:
	strb r1, [r0, #1]
	bx lr
.p2align 4
.globl global_addressing_scalar
global_addressing_scalar:
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	ldr r0, [r0, #0]
	bx lr
.p2align 4
.globl global_addressing_array
global_addressing_array:
	movw r1, #:lower16:arr
	movt r1, #:upper16:arr
	ldr r0, [r1, r0, lsl #2]
	bx lr
.p2align 4
.globl memset_impl
memset_impl:
	push { r4, r5 }
	cmp r0, #0
	mov r1, r0
	mov r0, #0
	bgt label102
label101:
	pop { r4, r5 }
	bx lr
label102:
	sub r4, r1, #4
	movw r2, #:lower16:arr
	cmp r1, #4
	movt r2, #:upper16:arr
	ble label116
	mov r3, r0
.p2align 4
label103:
	add r5, r2, r3, lsl #2
	add r3, r3, #4
	str r0, [r5, #0]
	cmp r4, r3
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #12]
	bgt label103
label105:
	str r0, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r1, r3
	bgt label105
	b label101
label116:
	mov r3, r0
	b label105
.p2align 4
.globl fused_store
fused_store:
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
