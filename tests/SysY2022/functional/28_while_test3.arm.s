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
	mov r6, #10
	mov r4, #6
	mov r2, #4
	mov r3, #1
	mov r5, #2
	sub sp, sp, #28
	mov r1, r4
	str r5, [sp, #16]
	mov r5, #5
	cmp r5, #20
	bge label64
	add r5, r5, #3
	str r5, [sp, #0]
	ldr r5, [sp, #16]
	str r5, [sp, #20]
	str r6, [sp, #24]
	cmp r4, #10
	bge label63
	add r1, r4, #1
	str r1, [sp, #4]
	mov r1, r6
	cmp r0, #7
	bne label62
	mov r0, r2
	cmp r6, #20
	bge label61
	add r1, r6, #3
	str r1, [sp, #8]
	mov r1, r4
	cmp r2, #1
	ble label60
	sub r0, r2, #1
	mov r2, r3
	str r0, [sp, #12]
	cmp r4, #2
	ble label59
	sub r1, r4, #2
	mov r0, r5
	cmp r3, #3
	bge label58
	add r2, r3, #10
	cmp r5, #10
	bge label50
	add r3, r5, #128
	cmp r3, #10
	bge label54
	b label283
label58:
	sub r2, r2, #8
	mov r5, r0
	cmp r1, #2
	ble label59
	sub r1, r1, #2
	cmp r2, #3
	bge label58
	add r2, r2, #10
	cmp r0, #10
	bge label50
	add r3, r0, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label286
label59:
	add r1, r1, #1
	mov r3, r2
	ldr r0, [sp, #12]
	cmp r0, #1
	ble label60
	sub r0, r0, #1
	str r0, [sp, #12]
	cmp r1, #2
	ble label59
	sub r1, r1, #2
	mov r0, r5
	cmp r2, #3
	bge label58
	add r2, r2, #10
	cmp r5, #10
	bge label50
	add r3, r5, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label286
label61:
	sub r1, r1, #1
	mov r2, r0
	mov r0, #6
	cmp r0, #7
	bne label62
	mov r0, r2
	cmp r1, #20
	bge label61
	add r1, r1, #3
	str r1, [sp, #8]
	mov r1, r4
	cmp r2, #1
	ble label60
	sub r0, r2, #1
	mov r2, r3
	str r0, [sp, #12]
	cmp r4, #2
	ble label59
	sub r1, r4, #2
	mov r0, r5
	cmp r3, #3
	bge label58
	add r2, r3, #10
	cmp r5, #10
	bge label50
	add r3, r5, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label286
label63:
	sub r1, r1, #2
	ldr r5, [sp, #20]
	str r5, [sp, #16]
	ldr r6, [sp, #24]
	ldr r5, [sp, #0]
	cmp r5, #20
	bge label64
	add r5, r5, #3
	str r5, [sp, #0]
	ldr r5, [sp, #16]
	str r5, [sp, #20]
	str r6, [sp, #24]
	cmp r1, #10
	bge label63
	add r1, r1, #1
	str r1, [sp, #4]
	mov r1, r6
	cmp r0, #7
	bne label62
	mov r0, r2
	cmp r6, #20
	bge label61
	add r1, r6, #3
	str r1, [sp, #8]
	mov r1, r4
	cmp r2, #1
	ble label60
	sub r0, r2, #1
	mov r2, r3
	str r0, [sp, #12]
	cmp r4, #2
	ble label59
	sub r1, r4, #2
	mov r0, r5
	cmp r3, #3
	bge label58
	add r2, r3, #10
	cmp r5, #10
	bge label50
	add r3, r5, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label284
label286:
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label286
label283:
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label284
label60:
	add r0, r0, #1
	mov r4, r1
	ldr r1, [sp, #8]
	cmp r1, #20
	bge label61
	add r1, r1, #3
	str r1, [sp, #8]
	mov r1, r4
	cmp r0, #1
	ble label60
	sub r0, r0, #1
	mov r2, r3
	str r0, [sp, #12]
	cmp r4, #2
	ble label59
	sub r1, r4, #2
	mov r0, r5
	cmp r3, #3
	bge label58
	add r2, r3, #10
	cmp r5, #10
	bge label50
	add r3, r5, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label286
label62:
	add r0, r0, #1
	str r5, [sp, #20]
	mov r6, r1
	str r1, [sp, #24]
	ldr r1, [sp, #4]
	cmp r1, #10
	bge label63
	add r1, r1, #1
	str r1, [sp, #4]
	ldr r6, [sp, #24]
	mov r1, r6
	cmp r0, #7
	bne label62
	mov r0, r2
	cmp r6, #20
	bge label61
	add r1, r6, #3
	str r1, [sp, #8]
	mov r1, r4
	cmp r2, #1
	ble label60
	sub r0, r2, #1
	mov r2, r3
	str r0, [sp, #12]
	cmp r4, #2
	ble label59
	sub r1, r4, #2
	mov r0, r5
	cmp r3, #3
	bge label58
	add r2, r3, #10
	cmp r5, #10
	bge label50
	add r3, r5, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label286
label284:
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label286
label54:
	add r3, r0, #32
	cmp r3, #10
	bge label56
	mov r0, r3
	b label54
label56:
	add r0, r0, #8
	cmp r0, #10
	bge label50
	b label56
label50:
	sub r0, r0, #1
	cmp r2, #3
	bge label58
	add r2, r2, #10
	cmp r0, #10
	bge label50
	add r3, r0, #128
	cmp r3, #10
	bge label54
	mov r0, r3
	add r3, r3, #128
	cmp r3, #10
	bge label54
	b label286
label64:
	add r0, r6, r0
	add r0, r1, r0
	add r1, r2, r6
	add r0, r5, r0
	sub r1, r1, r3
	ldr r5, [sp, #16]
	add sp, sp, #28
	add r1, r5, r1
	sub r0, r0, r1
	pop { r4, r5, r6 }
	bx lr
