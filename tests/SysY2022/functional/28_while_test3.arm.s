.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6 }
	mov r0, #7
	mov r3, #10
	mov r6, #4
	mov r4, #6
	mov r2, #1
	mov r5, #2
	sub sp, sp, #32
	mov r1, r4
	str r5, [sp, #20]
	mov r5, #5
	cmp r5, #20
	bge label65
	add r5, r5, #3
	str r5, [sp, #0]
	ldr r5, [sp, #20]
	str r5, [sp, #24]
	str r6, [sp, #28]
	cmp r4, #10
	bge label64
	add r1, r4, #1
	str r1, [sp, #4]
	mov r1, r3
	cmp r0, #7
	bne label63
	sub r0, r0, #1
	str r0, [sp, #8]
	mov r0, r6
	cmp r3, #20
	bge label35
	add r1, r3, #3
	str r1, [sp, #12]
	mov r1, r4
	cmp r6, #1
	ble label62
	sub r0, r6, #1
	str r0, [sp, #16]
	cmp r4, #2
	ble label61
	sub r1, r4, #2
	mov r0, r5
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r5, #10
	bge label53
	add r3, r5, #128
	cmp r3, #10
	bge label57
	b label273
label51:
	sub r2, r2, #8
	mov r5, r0
	cmp r1, #2
	ble label61
	sub r1, r1, #2
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r0, #10
	bge label53
	add r3, r0, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
label274:
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	b label274
label35:
	sub r1, r1, #1
	mov r6, r0
	ldr r0, [sp, #8]
	cmp r0, #7
	bne label63
	sub r0, r0, #1
	str r0, [sp, #8]
	mov r0, r6
	cmp r1, #20
	bge label35
	add r1, r1, #3
	str r1, [sp, #12]
	mov r1, r4
	cmp r6, #1
	ble label62
	sub r0, r6, #1
	str r0, [sp, #16]
	cmp r4, #2
	ble label61
	sub r1, r4, #2
	mov r0, r5
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r5, #10
	bge label53
	add r3, r5, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	b label274
label53:
	sub r0, r0, #1
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r0, #10
	bge label53
	add r3, r0, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	b label274
label273:
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	b label274
label61:
	add r1, r1, #1
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label62
	sub r0, r0, #1
	str r0, [sp, #16]
	cmp r1, #2
	ble label61
	sub r1, r1, #2
	mov r0, r5
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r5, #10
	bge label53
	add r3, r5, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	b label274
label62:
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #12]
	cmp r1, #20
	bge label35
	add r1, r1, #3
	str r1, [sp, #12]
	mov r1, r4
	cmp r0, #1
	ble label62
	sub r0, r0, #1
	str r0, [sp, #16]
	cmp r4, #2
	ble label61
	sub r1, r4, #2
	mov r0, r5
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r5, #10
	bge label53
	add r3, r5, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	b label274
label63:
	add r0, r0, #1
	str r5, [sp, #24]
	mov r3, r1
	str r6, [sp, #28]
	ldr r1, [sp, #4]
	cmp r1, #10
	bge label64
	add r1, r1, #1
	str r1, [sp, #4]
	mov r1, r3
	cmp r0, #7
	bne label63
	sub r0, r0, #1
	str r0, [sp, #8]
	mov r0, r6
	cmp r3, #20
	bge label35
	add r1, r3, #3
	str r1, [sp, #12]
	mov r1, r4
	cmp r6, #1
	ble label62
	sub r0, r6, #1
	str r0, [sp, #16]
	cmp r4, #2
	ble label61
	sub r1, r4, #2
	mov r0, r5
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r5, #10
	bge label53
	add r3, r5, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	b label274
label64:
	sub r1, r1, #2
	ldr r5, [sp, #24]
	str r5, [sp, #20]
	ldr r6, [sp, #28]
	ldr r5, [sp, #0]
	cmp r5, #20
	bge label65
	add r5, r5, #3
	str r5, [sp, #0]
	ldr r5, [sp, #20]
	str r5, [sp, #24]
	str r6, [sp, #28]
	cmp r1, #10
	bge label64
	add r1, r1, #1
	str r1, [sp, #4]
	mov r1, r3
	cmp r0, #7
	bne label63
	sub r0, r0, #1
	str r0, [sp, #8]
	mov r0, r6
	cmp r3, #20
	bge label35
	add r1, r3, #3
	str r1, [sp, #12]
	mov r1, r4
	cmp r6, #1
	ble label62
	sub r0, r6, #1
	str r0, [sp, #16]
	cmp r4, #2
	ble label61
	sub r1, r4, #2
	mov r0, r5
	cmp r2, #3
	bge label51
	add r2, r2, #10
	cmp r5, #10
	bge label53
	add r3, r5, #128
	cmp r3, #10
	bge label57
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label57
	b label274
label57:
	add r3, r0, #32
	cmp r3, #10
	bge label59
	mov r0, r3
	b label57
label59:
	add r0, r0, #8
	cmp r0, #10
	bge label53
	b label59
label65:
	add r0, r3, r0
	add r0, r1, r0
	add r1, r6, r3
	add r0, r5, r0
	sub r1, r1, r2
	ldr r5, [sp, #20]
	add sp, sp, #32
	add r1, r5, r1
	sub r0, r0, r1
	pop { r4, r5, r6 }
	bx lr
