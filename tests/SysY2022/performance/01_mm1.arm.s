.arch armv7ve
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	movw r5, #:lower16:B
	movw r4, #:lower16:A
	str r0, [sp, #0]
	mov r6, r0
	movt r5, #:upper16:B
	movt r4, #:upper16:A
	str r4, [sp, #8]
	str r5, [sp, #4]
	mov r5, #0
	cmp r0, r5
	ble label94
	cmp r0, #0
	ble label8
	mov r6, #0
	add r4, r4, r5, lsl #12
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	b label744
label94:
	mov r4, #0
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label16
	cmp r6, #0
	ble label15
	ldr r5, [sp, #4]
	mov r6, #0
	add r5, r5, r4, lsl #12
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	b label671
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r2, #0
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label132
	cmp r6, #0
	ble label22
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label27
	b label142
label132:
	mov r2, #0
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label161
	mov r3, #0
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	b label636
label677:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
label718:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label43
	b label759
label34:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label41
	ldr r5, [sp, #12]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label182
	b label407
label182:
	mov r6, #0
	ldr r7, [r5, r6, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	b label763
label41:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	b label718
label43:
	add r2, r2, #1
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label161
	mov r3, #0
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	add r3, r3, #1
	cmp r6, r3
	ble label43
	b label677
label763:
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	b label763
label407:
	mov r7, #4
	mov r9, #0
label38:
	add r6, r5, r9, lsl #2
	ldr r10, [r5, r9, lsl #2]
	add r8, r1, r9, lsl #2
	ldr r11, [r1, r9, lsl #2]
	mla r10, r4, r11, r10
	str r10, [r5, r9, lsl #2]
	ldr r9, [r6, #4]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r6, #4]
	ldr r9, [r6, #8]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r6, #8]
	ldr r9, [r6, #12]
	ldr r8, [r8, #12]
	mla r8, r4, r8, r9
	str r8, [r6, #12]
	ldr r6, [sp, #0]
	add r8, r7, #4
	cmp r6, r8
	ble label226
	mov r9, r7
	mov r7, r8
	b label38
label226:
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label41
	b label763
label759:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label34
	b label718
label161:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label234
	cmp r6, #0
	ble label47
	ldr r5, [sp, #4]
	mov r3, #0
	add r2, r5, r1, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label52
	b label244
label234:
	mov r2, #0
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label69
	mov r3, #0
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	b label691
label68:
	add r2, r2, #1
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	ble label69
	mov r3, #0
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	b label691
label69:
	add r0, r0, #1
	cmp r0, #5
	bge label337
	mov r2, #0
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label132
	cmp r6, #0
	ble label22
	ldr r5, [sp, #12]
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label27
	b label142
label337:
	mov r7, #0
	mov r0, r7
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label84
	cmp r6, #0
	ble label82
	ldr r5, [sp, #4]
	mov r4, #0
	mov r3, r7
	add r1, r5, r7, lsl #12
	add r2, r4, #4
	cmp r6, r2
	ble label351
	b label78
label84:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label691:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
label732:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	b label732
label636:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label43
	b label677
label52:
	mov r4, #0
	str r4, [r2, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label47
label771:
	mov r4, #0
	str r4, [r2, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	cmp r6, r3
	ble label47
	b label771
label27:
	mov r4, #0
	str r4, [r1, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	str r4, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r6, r3
	ble label22
label757:
	mov r4, #0
	str r4, [r1, r3, lsl #2]
	ldr r6, [sp, #0]
	add r3, r3, #1
	cmp r6, r3
	ble label22
	b label757
label59:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label66
	ldr r5, [sp, #4]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	ble label284
	mov r7, #4
	mov r9, #0
	b label63
label284:
	mov r6, #0
	ldr r7, [r5, r6, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	b label777
label63:
	add r6, r5, r9, lsl #2
	ldr r10, [r5, r9, lsl #2]
	add r8, r1, r9, lsl #2
	ldr r11, [r1, r9, lsl #2]
	mla r10, r4, r11, r10
	str r10, [r5, r9, lsl #2]
	ldr r9, [r6, #4]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r6, #4]
	ldr r9, [r6, #8]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r6, #8]
	ldr r9, [r6, #12]
	ldr r8, [r8, #12]
	mla r8, r4, r8, r9
	str r8, [r6, #12]
	ldr r6, [sp, #0]
	add r8, r7, #4
	cmp r6, r8
	ble label328
	mov r9, r7
	mov r7, r8
	b label63
label328:
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	b label777
label66:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	add r3, r3, #1
	cmp r6, r3
	ble label68
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	bne label59
	b label732
label777:
	mov r6, r7
	ldr r7, [r5, r7, lsl #2]
	ldr r8, [r1, r6, lsl #2]
	mla r7, r4, r8, r7
	str r7, [r5, r6, lsl #2]
	add r7, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label66
	b label777
label47:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	ble label234
	cmp r6, #0
	ble label47
	ldr r5, [sp, #4]
	mov r3, #0
	add r2, r5, r1, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label52
label244:
	add r5, r2, r3, lsl #2
	mov r6, #0
	str r6, [r2, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label52
	b label244
label22:
	add r2, r2, #1
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label132
	cmp r6, #0
	ble label22
	ldr r5, [sp, #12]
	mov r3, #0
	add r1, r5, r2, lsl #12
	add r4, r3, #4
	cmp r6, r4
	ble label27
label142:
	add r5, r1, r3, lsl #2
	mov r6, #0
	str r6, [r1, r3, lsl #2]
	mov r3, r4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	add r4, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label27
	b label142
label744:
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
label666:
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
label748:
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	b label748
label671:
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
label753:
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	b label753
label351:
	mov r2, r4
	ldr r4, [r1, r4, lsl #2]
	ldr r6, [sp, #0]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	b label784
label78:
	add r5, r1, r4, lsl #2
	ldr r4, [r1, r4, lsl #2]
	add r3, r3, r4
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r3, r3, r4
	mov r4, r2
	add r2, r2, #4
	ldr r6, [sp, #0]
	cmp r6, r2
	ble label351
	b label78
label373:
	mov r7, r3
label82:
	add r0, r0, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label84
	cmp r6, #0
	ble label82
	ldr r5, [sp, #4]
	mov r4, #0
	mov r3, r7
	add r1, r5, r0, lsl #12
	add r2, r4, #4
	cmp r6, r2
	ble label351
	b label78
label784:
	ldr r4, [r1, r2, lsl #2]
	ldr r6, [sp, #0]
	add r2, r2, #1
	add r3, r3, r4
	cmp r6, r2
	ble label373
	b label784
label8:
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label94
	cmp r6, #0
	ble label8
	ldr r4, [sp, #8]
	mov r6, #0
	add r4, r4, r5, lsl #12
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	mov r6, r0
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label8
	b label666
label15:
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label16
	cmp r6, #0
	ble label15
	ldr r5, [sp, #4]
	mov r6, #0
	add r5, r5, r4, lsl #12
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	mov r6, r0
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label15
	b label671
