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
	mov r5, #0
	movw r6, #:lower16:A
	mov r4, r0
	movt r6, #:upper16:A
	cmp r0, r5
	ble label4
	cmp r0, #0
	ble label41
	b label199
label41:
	add r5, r5, #1
	cmp r4, r5
	ble label4
	cmp r4, #0
	ble label41
label199:
	movw r0, #8040
	mov r8, #0
	mla r7, r5, r0, r6
label43:
	bl getint
	str r0, [r7, r8, lsl #2]
	add r8, r8, #1
	cmp r4, r8
	ble label41
	b label43
label4:
	cmp r4, #0
	ble label8
	b label53
label8:
	mov r0, #59
	bl _sysy_starttime
	movw r5, #:lower16:C
	mov r1, #0
	movw r0, #:lower16:B
	movt r5, #:upper16:C
	movt r0, #:upper16:B
	cmp r4, #0
	ble label71
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label38
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	b label352
label71:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label13
	mov r7, #0
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	b label327
label13:
	cmp r4, #0
	ble label80
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label27
	add r7, r0, r3, lsl #2
	mov r8, #0
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label27
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label27
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label27
	add r7, r0, r3, lsl #2
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label27
	b label354
label80:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label22
	mov r7, #0
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	b label355
label318:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	b label338
label21:
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label22
	mov r7, #0
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	b label318
label22:
	add r1, r1, #1
	cmp r1, #50
	bge label23
	cmp r4, #0
	ble label71
	mov r3, #0
	add r2, r3, #4
	cmp r4, r2
	ble label38
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	add r7, r5, r3, lsl #2
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	b label352
label327:
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	b label345
label167:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label13
	mov r7, #0
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	b label327
label345:
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	b label345
label34:
	ldr r9, [r5, r2, lsl #2]
	ldr r10, [r0, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r5, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	b label345
label31:
	add r2, r2, #1
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label13
	mov r7, #0
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label34
	add r7, r7, #1
	cmp r4, r7
	ble label31
	b label327
label355:
	add r7, r7, #1
	cmp r4, r7
	ble label21
	b label318
label19:
	ldr r9, [r0, r2, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	mla r8, r8, r10, r9
	str r8, [r0, r2, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	b label338
label129:
	mov r2, #0
	movw r3, #8040
	cmp r4, r2
	mla r3, r2, r3, r6
	ble label22
	mov r7, #0
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	add r7, r7, #1
	cmp r4, r7
	ble label21
	b label318
label338:
	add r7, r7, #1
	cmp r4, r7
	ble label21
	ldr r8, [r3, r7, lsl #2]
	cmp r8, #0
	bne label19
	b label338
label354:
	add r7, r0, r3, lsl #2
	mov r8, #0
	str r8, [r0, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label27
	b label354
label352:
	add r7, r5, r3, lsl #2
	mov r8, #0
	str r8, [r5, r3, lsl #2]
	mov r3, r2
	str r8, [r7, #4]
	str r8, [r7, #8]
	str r8, [r7, #12]
	add r2, r2, #4
	cmp r4, r2
	ble label38
	b label352
label27:
	mov r2, #0
	str r2, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label129
	b label27
label38:
	mov r2, #0
	str r2, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r4, r3
	ble label167
	b label38
label23:
	mov r0, #67
	bl _sysy_stoptime
	mov r0, r4
	mov r1, r5
	bl putarray
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label53:
	movw r5, #:lower16:B
	mov r7, #0
	movt r5, #:upper16:B
label6:
	bl getint
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	ble label8
	b label6
