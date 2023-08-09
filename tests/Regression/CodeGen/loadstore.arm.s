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
.align 8
.globl x
x:
	.zero	8
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
	push { r4, r5, r6 }
	cmp r0, #0
	mov r2, r0
	mov r0, #0
	ble label123
	movw r3, #:lower16:arr
	movt r3, #:upper16:arr
	cmp r2, #3
	ble label132
	sub r5, r2, #3
	sub r6, r2, #18
	cmp r5, #15
	ble label150
	mov r1, r3
	mov r4, r0
	b label119
.p2align 4
label122:
	add r1, r1, #64
.p2align 4
label119:
	add r4, r4, #16
	str r0, [r1, #0]
	cmp r6, r4
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	bgt label122
	mov r1, r4
label110:
	cmp r5, r1
	ble label154
	add r4, r3, r1, lsl #2
	b label114
label117:
	add r4, r4, #16
label114:
	add r1, r1, #4
	str r0, [r4, #0]
	cmp r5, r1
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	bgt label117
label102:
	cmp r2, r1
	ble label123
	add r3, r3, r1, lsl #2
	b label105
label108:
	add r3, r3, #4
label105:
	add r1, r1, #1
	str r0, [r3, #0]
	cmp r2, r1
	bgt label108
label123:
	pop { r4, r5, r6 }
	bx lr
label132:
	mov r1, r0
	b label102
label150:
	mov r1, r0
	mov r4, r0
	b label110
label154:
	mov r1, r4
	b label102
.p2align 4
.globl fused_store
fused_store:
	movw r0, #:lower16:arr
	movt r0, #:upper16:arr
	mov r1, #0
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
.p2align 4
.globl merge_store
merge_store:
	movw r2, #:lower16:x
	movt r2, #:upper16:x
	str r0, [r2, #0]
	str r1, [r2, #4]
	bx lr
