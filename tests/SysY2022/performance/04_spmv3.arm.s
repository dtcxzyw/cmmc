.arch armv7ve
.data
.bss
.align 4
x:
	.zero	400040
.align 4
y:
	.zero	12000000
.align 4
v:
	.zero	12000000
.align 4
a:
	.zero	400040
.align 4
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r1, #:lower16:x
	sub sp, sp, #36
	movt r1, #:upper16:x
	str r1, [sp, #0]
	mov r0, r1
	bl getarray
	sub r0, r0, #1
	str r0, [sp, #4]
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	str r0, [sp, #8]
	mov r2, r0
	bl getarray
	movw r0, #:lower16:v
	movt r0, #:upper16:v
	str r0, [sp, #12]
	mov r5, r0
	bl getarray
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	str r0, [sp, #16]
	mov r2, r0
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #20]
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label64
	mov r1, #0
	add r3, r1, #4
	cmp r0, r3
	ble label69
	b label395
label64:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label11
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label40
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label261
	b label39
label37:
	ldr r2, [sp, #8]
	ldr r7, [r2, r6, lsl #2]
	ldr r2, [sp, #20]
	ldr r8, [r2, r7, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r0, r6
	add r5, r8, r5
	str r5, [r2, r7, lsl #2]
	ble label40
	b label37
label40:
	cmp r4, r0
	bge label313
	ldr r2, [sp, #16]
	mov r8, r4
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	add r4, r4, #4
	cmp r0, r4
	ble label322
	b label44
label395:
	ldr r2, [sp, #20]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label69
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label69
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label69
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label69
	b label460
label27:
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	bge label28
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label64
	mov r1, #0
	add r3, r1, #4
	cmp r0, r3
	ble label69
	b label395
label464:
	mov r0, r1
	mov r1, #0
	ldr r2, [sp, #16]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label245
	b label464
label245:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label27
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label15
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label174
	b label24
label115:
	mov r4, r8
label19:
	ldr r2, [sp, #8]
	ldr r6, [r2, r4, lsl #2]
	ldr r2, [sp, #16]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r5, r3, r5, r7
	str r5, [r2, r6, lsl #2]
	ble label131
	b label19
label131:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label27
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label15
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label174
	b label24
label174:
	mov r6, r8
	b label25
label24:
	ldr r2, [sp, #8]
	ldr r10, [r2, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r2, [sp, #16]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #12]
	add r9, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r7, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r10, [r9, #4]
	add r8, r8, r10
	str r8, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r10, [r9, #8]
	add r8, r8, r10
	str r8, [r2, r5, lsl #2]
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r9, #12]
	add r7, r7, r8
	mov r8, r6
	str r7, [r2, r5, lsl #2]
	add r6, r6, #4
	cmp r0, r6
	ble label174
	b label24
label25:
	ldr r2, [sp, #8]
	ldr r7, [r2, r6, lsl #2]
	ldr r2, [sp, #16]
	ldr r8, [r2, r7, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r0, r6
	add r5, r8, r5
	str r5, [r2, r7, lsl #2]
	ble label15
	b label25
label21:
	ldr r2, [sp, #8]
	ldr r9, [r2, r8, lsl #2]
	add r6, r2, r8, lsl #2
	ldr r2, [sp, #16]
	ldr r10, [r2, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	mla r5, r3, r5, r10
	str r5, [r2, r9, lsl #2]
	ldr r5, [r6, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #4]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	ldr r5, [r6, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #8]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	mov r8, r4
	ldr r5, [r6, #12]
	ldr r6, [r2, r5, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r3, r7, r6
	str r6, [r2, r5, lsl #2]
	add r4, r4, #4
	cmp r0, r4
	ble label115
	b label21
label15:
	cmp r4, r0
	bge label106
	ldr r2, [sp, #20]
	mov r8, r4
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	add r4, r4, #4
	cmp r0, r4
	ble label115
	b label21
label106:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label27
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label15
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label174
	b label24
label11:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label88
	mov r1, #0
	add r3, r1, #4
	cmp r0, r3
	ble label233
	ldr r2, [sp, #16]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label233
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label233
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label233
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label233
	b label463
label88:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label27
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label15
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label174
	b label24
label233:
	mov r0, r1
	mov r1, #0
	ldr r2, [sp, #16]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label245
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label245
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label245
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label245
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label245
	b label464
label261:
	mov r6, r8
	b label37
label313:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label11
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label40
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label261
	b label39
label44:
	ldr r2, [sp, #8]
	ldr r9, [r2, r8, lsl #2]
	add r6, r2, r8, lsl #2
	ldr r2, [sp, #20]
	ldr r10, [r2, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	mla r5, r3, r5, r10
	str r5, [r2, r9, lsl #2]
	ldr r5, [r6, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #4]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	ldr r5, [r6, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #8]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	mov r8, r4
	ldr r5, [r6, #12]
	ldr r6, [r2, r5, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r3, r7, r6
	str r6, [r2, r5, lsl #2]
	add r4, r4, #4
	cmp r0, r4
	ble label322
	b label44
label460:
	ldr r2, [sp, #20]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label69
	b label460
label69:
	mov r0, r1
	mov r1, #0
	ldr r2, [sp, #20]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label81
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label81
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label81
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label81
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label81
	b label461
label81:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label11
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label40
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label261
label39:
	ldr r2, [sp, #8]
	ldr r10, [r2, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r2, [sp, #20]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #12]
	add r9, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r7, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r10, [r9, #4]
	add r8, r8, r10
	str r8, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r10, [r9, #8]
	add r8, r8, r10
	str r8, [r2, r5, lsl #2]
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r9, #12]
	add r7, r7, r8
	mov r8, r6
	str r7, [r2, r5, lsl #2]
	add r6, r6, #4
	cmp r0, r6
	ble label261
	b label39
label322:
	mov r4, r8
label45:
	ldr r2, [sp, #8]
	ldr r6, [r2, r4, lsl #2]
	ldr r2, [sp, #20]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r5, r3, r5, r7
	str r5, [r2, r6, lsl #2]
	ble label376
	b label45
label376:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label11
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label40
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label261
	b label39
label461:
	mov r0, r1
	mov r1, #0
	ldr r2, [sp, #20]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label81
	b label461
label463:
	ldr r2, [sp, #16]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label233
	b label463
label28:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #4]
	ldr r2, [sp, #20]
	mov r1, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
