.arch armv7ve
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	movw r6, #:lower16:A
	mov r5, #0
	mov r4, r0
	movt r6, #:upper16:A
	cmp r0, r5
	ble label9
	cmp r0, #0
	ble label5
	b label199
label9:
	cmp r4, #0
	ble label10
	b label200
label10:
	mov r0, #59
	bl _sysy_starttime
	movw r5, #:lower16:C
	mov r1, #0
	movw r0, #:lower16:B
	movt r5, #:upper16:C
	movt r0, #:upper16:B
	cmp r4, #0
	ble label75
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label40
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	b label345
label75:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label15
	mov r7, #0
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	b label321
label15:
	cmp r4, #0
	ble label84
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label19
	add r7, r0, r3, lsl #2
	mov r8, #0
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	b label347
label84:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label29
	mov r7, #0
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	b label316
label321:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	b label338
label33:
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label15
	mov r7, #0
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	b label321
label338:
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	b label338
label19:
	mov r2, #0
	str r2, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label101
	b label19
label101:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label29
	mov r7, #0
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
label316:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	b label334
label25:
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label29
	mov r7, #0
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	b label316
label29:
	add r1, r1, #1
	cmp r1, #50
	bge label30
	cmp r4, #0
	ble label75
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label40
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	b label345
label334:
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	b label334
label27:
	ldr r9, [r0, r2, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r0, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	add r7, r7, #1
	cmp r4, r7
	ble label25
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label27
	b label334
label36:
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r0, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	b label338
label347:
	add r7, r0, r3, lsl #2
	mov r8, #0
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label19
	b label347
label345:
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label40
	b label345
label40:
	mov r2, #0
	str r2, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label171
	b label40
label171:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label15
	mov r7, #0
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label36
	add r7, r7, #1
	cmp r4, r7
	ble label33
	b label321
label5:
	add r5, r5, #1
	cmp r4, r5
	ble label9
	cmp r4, #0
	ble label5
label199:
	movw r0, #8040
	mov r8, #0
	mla r7, r5, r0, r6
label7:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label5
	b label7
label30:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label200:
	movw r5, #:lower16:B
	mov r7, #0
	movt r5, #:upper16:B
label43:
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label10
	b label43
