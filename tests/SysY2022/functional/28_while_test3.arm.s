.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7 }
	mov r7, #5
	mov r1, #7
	mov r5, #10
	mov r6, #4
	mov r3, #1
	mov r4, #2
	mov r2, #6
	sub sp, sp, #4
	mov r0, r2
	cmp r7, #20
	bge label11
	add r7, r7, #3
	str r7, [sp, #0]
	mov r7, r2
	cmp r2, #10
	bge label64
	add r0, r2, #1
	mov r2, r5
	cmp r1, #7
	bne label63
	mov r5, r4
	mov r1, r6
	cmp r2, #20
	bge label62
	add r4, r2, #3
	mov r6, r5
	mov r2, r7
	cmp r1, #1
	ble label61
	sub r5, r1, #1
	cmp r7, #2
	ble label60
	sub r2, r7, #2
	mov r1, r6
	cmp r3, #3
	bge label50
	add r3, r3, #10
	cmp r6, #10
	bge label52
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label271
label11:
	add r1, r5, r1
	add sp, sp, #4
	add r0, r0, r1
	add r1, r6, r5
	add r0, r7, r0
	sub r1, r1, r3
	add r1, r4, r1
	sub r0, r0, r1
	pop { r4, r5, r6, r7 }
	bx lr
label52:
	sub r1, r1, #1
	cmp r3, #3
	bge label50
	add r3, r3, #10
	cmp r1, #10
	bge label52
	add r6, r1, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
label274:
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label274
label50:
	sub r3, r3, #8
	mov r6, r1
	cmp r2, #2
	ble label60
	sub r2, r2, #2
	cmp r3, #3
	bge label50
	add r3, r3, #10
	cmp r1, #10
	bge label52
	add r6, r1, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label274
label271:
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
label272:
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label274
label60:
	add r2, r2, #1
	mov r1, r5
	cmp r5, #1
	ble label61
	sub r5, r5, #1
	cmp r2, #2
	ble label60
	sub r2, r2, #2
	mov r1, r6
	cmp r3, #3
	bge label50
	add r3, r3, #10
	cmp r6, #10
	bge label52
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label274
label61:
	add r1, r1, #1
	mov r5, r6
	mov r7, r2
	mov r2, r4
	cmp r4, #20
	bge label62
	add r4, r4, #3
	mov r2, r7
	cmp r1, #1
	ble label61
	sub r5, r1, #1
	cmp r7, #2
	ble label60
	sub r2, r7, #2
	mov r1, r6
	cmp r3, #3
	bge label50
	add r3, r3, #10
	cmp r6, #10
	bge label52
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label274
label62:
	sub r2, r2, #1
	mov r4, r5
	mov r6, r1
	mov r1, #6
	cmp r1, #7
	bne label63
	mov r1, r6
	cmp r2, #20
	bge label62
	add r4, r2, #3
	mov r6, r5
	mov r2, r7
	cmp r1, #1
	ble label61
	sub r5, r1, #1
	cmp r7, #2
	ble label60
	sub r2, r7, #2
	mov r1, r6
	cmp r3, #3
	bge label50
	add r3, r3, #10
	cmp r6, #10
	bge label52
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label274
label63:
	add r1, r1, #1
	mov r5, r2
	cmp r0, #10
	bge label64
	add r0, r0, #1
	cmp r1, #7
	bne label63
	mov r5, r4
	mov r1, r6
	cmp r2, #20
	bge label62
	add r4, r2, #3
	mov r6, r5
	mov r2, r7
	cmp r1, #1
	ble label61
	sub r5, r1, #1
	cmp r7, #2
	ble label60
	sub r2, r7, #2
	mov r1, r6
	cmp r3, #3
	bge label50
	add r3, r3, #10
	cmp r6, #10
	bge label52
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label274
label64:
	sub r0, r0, #2
	mov r2, r7
	ldr r7, [sp, #0]
	cmp r7, #20
	bge label11
	add r7, r7, #3
	str r7, [sp, #0]
	mov r7, r2
	cmp r0, #10
	bge label64
	add r0, r0, #1
	mov r2, r5
	cmp r1, #7
	bne label63
	mov r5, r4
	mov r1, r6
	cmp r2, #20
	bge label62
	add r4, r2, #3
	mov r6, r5
	mov r2, r7
	cmp r1, #1
	ble label61
	sub r5, r1, #1
	cmp r7, #2
	ble label60
	sub r2, r7, #2
	mov r1, r6
	cmp r3, #3
	bge label50
	add r3, r3, #10
	cmp r6, #10
	bge label52
	add r6, r6, #128
	cmp r6, #10
	bge label56
	mov r1, r6
	add r6, r6, #128
	cmp r6, #10
	bge label56
	b label272
label56:
	add r6, r1, #32
	cmp r6, #10
	bge label58
	mov r1, r6
	b label56
label58:
	add r1, r1, #8
	cmp r1, #10
	bge label52
	b label58
