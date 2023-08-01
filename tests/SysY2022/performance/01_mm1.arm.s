.arch armv7ve
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	mov r7, r0
	mov r5, #0
	str r0, [sp, #8]
	movw r3, #:lower16:A
	movw r6, #:lower16:B
	sub r7, r0, #4
	str r7, [sp, #4]
	mov r7, r5
	str r6, [sp, #16]
	movt r6, #:upper16:B
	str r6, [sp, #16]
	str r3, [sp, #0]
	movt r3, #:upper16:A
	str r3, [sp, #0]
	str r5, [sp, #12]
	mov r7, r0
	cmp r0, r5
	bgt label73
label87:
	ldr r7, [sp, #12]
	mov r5, r7
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label68
	b label6
.p2align 4
label73:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label74
	ldr r3, [sp, #0]
	ldr r7, [sp, #12]
	add r4, r3, r5, lsl #12
	b label76
.p2align 4
label372:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label73
	b label87
.p2align 4
label76:
	bl getint
	str r0, [r4, r7, lsl #2]
	add r0, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	ble label372
	mov r7, r0
	b label76
label6:
	mov r0, #65
	bl _sysy_starttime
	ldr r7, [sp, #12]
	movw r0, #:lower16:C
	movt r0, #:upper16:C
	mov r1, r7
	b label7
.p2align 4
label68:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label69
	ldr r6, [sp, #16]
	ldr r7, [sp, #12]
	add r4, r6, r5, lsl #12
	b label71
.p2align 4
label358:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label68
	b label6
.p2align 4
label71:
	bl getint
	str r0, [r4, r7, lsl #2]
	add r0, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	ble label358
	mov r7, r0
	b label71
.p2align 4
label7:
	ldr r7, [sp, #12]
	mov r2, r7
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label11
	b label97
label429:
	ldr r7, [sp, #12]
	mov r0, r7
	mov r4, r7
	b label36
.p2align 4
label207:
	ldr r7, [sp, #12]
	mov r5, r7
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label53
	b label430
label36:
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label39
	b label49
.p2align 4
label436:
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label207
	add r1, r1, #1
	cmp r1, #5
	blt label7
	b label429
.p2align 4
label53:
	ldr r3, [sp, #0]
	add r3, r3, r5, lsl #12
	ldr r3, [r3, r4, lsl #2]
	cmp r3, #0
	bne label265
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label53
	b label436
.p2align 4
label57:
	add r7, r6, r8, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r8, lsl #2]
	add r8, r8, #1
	mla r9, r3, r10, r9
	str r9, [r7, #0]
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label57
	add r5, r5, #1
	cmp r7, r5
	bgt label53
	b label439
.p2align 4
label318:
	add r7, r6, r8, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r8, lsl #2]
	add r8, r8, #1
	mla r9, r3, r10, r9
	str r9, [r7, #0]
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label57
	add r5, r5, #1
	cmp r7, r5
	bgt label53
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label207
	b label467
.p2align 4
label265:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label435
	ldr r6, [sp, #16]
	add r6, r6, r5, lsl #12
	cmp r7, #4
	ble label274
	ldr r7, [sp, #12]
.p2align 4
label59:
	add r8, r6, r7, lsl #2
	add r9, r2, r7, lsl #2
	ldr r10, [r8, #0]
	ldr r11, [r9, #0]
	mla r10, r3, r11, r10
	str r10, [r8, #0]
	ldr r10, [r8, #4]
	ldr r11, [r9, #4]
	mla r10, r3, r11, r10
	str r10, [r8, #4]
	ldr r10, [r8, #8]
	ldr r11, [r9, #8]
	mla r10, r3, r11, r10
	str r10, [r8, #8]
	ldr r10, [r8, #12]
	ldr r9, [r9, #12]
	mla r9, r3, r9, r10
	str r9, [r8, #12]
	add r8, r7, #4
	ldr r7, [sp, #4]
	cmp r7, r8
	ble label318
	mov r7, r8
	b label59
.p2align 4
label11:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label100
	add r3, r0, r2, lsl #12
	cmp r7, #4
	ble label105
	ldr r7, [sp, #12]
	mov r4, r7
.p2align 4
label13:
	add r5, r3, r4, lsl #2
	ldr r7, [sp, #12]
	add r4, r4, #4
	str r7, [r5, #0]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #12]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label13
.p2align 4
label15:
	ldr r7, [sp, #12]
	str r7, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label15
	add r2, r2, #1
	cmp r7, r2
	bgt label11
.p2align 4
label420:
	ldr r7, [sp, #12]
	mov r4, r7
	ldr r6, [sp, #16]
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	ble label129
.p2align 4
label130:
	ldr r7, [sp, #12]
	mov r5, r7
	ldr r7, [sp, #8]
	cmp r7, r5
	ble label133
.p2align 4
label22:
	ldr r3, [sp, #0]
	add r3, r3, r5, lsl #12
	ldr r3, [r3, r4, lsl #2]
	cmp r3, #0
	beq label23
	ldr r7, [sp, #8]
	cmp r7, #0
	bgt label25
	b label422
.p2align 4
label23:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label22
	add r4, r4, #1
	ldr r6, [sp, #16]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label130
	ldr r7, [sp, #12]
	mov r2, r7
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label61
	b label421
.p2align 4
label25:
	add r6, r0, r5, lsl #12
	ldr r7, [sp, #8]
	cmp r7, #4
	ble label151
	ldr r7, [sp, #12]
.p2align 4
label28:
	add r8, r6, r7, lsl #2
	add r9, r2, r7, lsl #2
	ldr r10, [r8, #0]
	ldr r11, [r9, #0]
	mla r10, r3, r11, r10
	str r10, [r8, #0]
	ldr r10, [r8, #4]
	ldr r11, [r9, #4]
	mla r10, r3, r11, r10
	str r10, [r8, #4]
	ldr r10, [r8, #8]
	ldr r11, [r9, #8]
	mla r10, r3, r11, r10
	str r10, [r8, #8]
	ldr r10, [r8, #12]
	ldr r9, [r9, #12]
	mla r9, r3, r9, r10
	str r9, [r8, #12]
	add r8, r7, #4
	ldr r7, [sp, #4]
	cmp r7, r8
	ble label195
	mov r7, r8
	b label28
.p2align 4
label26:
	add r7, r6, r8, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r8, lsl #2]
	add r8, r8, #1
	mla r9, r3, r10, r9
	str r9, [r7, #0]
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label26
	add r5, r5, #1
	cmp r7, r5
	bgt label22
	b label426
.p2align 4
label195:
	add r7, r6, r8, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r8, lsl #2]
	add r8, r8, #1
	mla r9, r3, r10, r9
	str r9, [r7, #0]
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label26
	add r5, r5, #1
	cmp r7, r5
	bgt label22
	add r4, r4, #1
	ldr r6, [sp, #16]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label130
	b label458
.p2align 4
label61:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label62
	ldr r6, [sp, #16]
	add r3, r6, r2, lsl #12
	cmp r7, #4
	bgt label328
	ldr r7, [sp, #12]
	mov r4, r7
	str r7, [r3, r7, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label64
	b label442
.p2align 4
label328:
	ldr r7, [sp, #12]
	mov r4, r7
	add r5, r3, r7, lsl #2
	add r4, r7, #4
	str r7, [r5, #0]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #12]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label66
	b label443
.p2align 4
label64:
	ldr r7, [sp, #12]
	str r7, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label64
	add r2, r2, #1
	cmp r7, r2
	bgt label61
.p2align 4
label444:
	ldr r7, [sp, #12]
	mov r4, r7
	add r2, r0, r7, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label207
	b label206
.p2align 4
label66:
	add r5, r3, r4, lsl #2
	ldr r7, [sp, #12]
	add r4, r4, #4
	str r7, [r5, #0]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #12]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label66
	ldr r7, [sp, #12]
	str r7, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label64
	add r2, r2, #1
	cmp r7, r2
	bgt label61
	b label444
.p2align 4
label151:
	ldr r7, [sp, #12]
	mov r8, r7
	add r7, r6, r7, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r8, lsl #2]
	add r8, r8, #1
	mla r9, r3, r10, r9
	str r9, [r7, #0]
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label26
	add r5, r5, #1
	cmp r7, r5
	bgt label22
	add r4, r4, #1
	ldr r6, [sp, #16]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label130
	b label458
.p2align 4
label274:
	ldr r7, [sp, #12]
	mov r8, r7
	add r7, r6, r7, lsl #2
	ldr r9, [r7, #0]
	ldr r10, [r2, r8, lsl #2]
	add r8, r8, #1
	mla r9, r3, r10, r9
	str r9, [r7, #0]
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label57
	add r5, r5, #1
	cmp r7, r5
	bgt label53
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label207
	b label467
.p2align 4
label39:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label218
	ldr r6, [sp, #16]
	add r1, r6, r0, lsl #12
	cmp r7, #4
	ble label223
	mov r3, r4
	ldr r7, [sp, #12]
	b label41
.p2align 4
label250:
	mov r4, r2
	add r0, r0, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label39
label49:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r7, [sp, #12]
	add sp, sp, #28
	mov r0, r7
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label41:
	add r2, r1, r7, lsl #2
	ldr r4, [r2, #0]
	add r3, r3, r4
	ldr r4, [r2, #4]
	add r3, r3, r4
	ldr r4, [r2, #8]
	ldr r2, [r2, #12]
	add r3, r3, r4
	add r3, r3, r2
	add r2, r7, #4
	ldr r7, [sp, #4]
	cmp r7, r2
	ble label241
	mov r7, r2
	b label41
.p2align 4
label241:
	mov r7, r2
	mov r2, r3
	ldr r3, [r1, r7, lsl #2]
	add r2, r2, r3
	add r3, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r3
	bgt label251
	b label432
.p2align 4
label44:
	ldr r3, [r1, r7, lsl #2]
	add r2, r2, r3
	add r3, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r3
	ble label250
.p2align 4
label251:
	mov r7, r3
	b label44
label421:
	ldr r7, [sp, #12]
	mov r4, r7
	add r2, r0, r7, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label207
	b label206
.p2align 4
label62:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label61
	b label421
.p2align 4
label105:
	ldr r7, [sp, #12]
	mov r4, r7
	str r7, [r3, r7, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label15
	add r2, r2, #1
	cmp r7, r2
	bgt label11
	b label420
.p2align 4
label443:
	ldr r7, [sp, #12]
	str r7, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label64
	add r2, r2, #1
	cmp r7, r2
	bgt label61
	b label444
.p2align 4
label422:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label22
	add r4, r4, #1
	ldr r6, [sp, #16]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label130
	b label129
.p2align 4
label435:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label53
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label207
	b label434
.p2align 4
label426:
	add r4, r4, #1
	ldr r6, [sp, #16]
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label130
label458:
	ldr r7, [sp, #12]
	mov r2, r7
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label61
	b label421
.p2align 4
label439:
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label207
label467:
	add r1, r1, #1
	cmp r1, #5
	blt label7
	b label429
label74:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label73
	b label87
label69:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label68
	b label6
label223:
	ldr r7, [sp, #12]
	mov r2, r4
	ldr r3, [r1, r7, lsl #2]
	add r2, r4, r3
	add r3, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r3
	bgt label251
	mov r4, r2
	add r0, r0, #1
	b label36
.p2align 4
label432:
	mov r4, r2
	add r0, r0, #1
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label39
	b label49
label97:
	ldr r7, [sp, #12]
	mov r4, r7
	ldr r6, [sp, #16]
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label130
	b label129
.p2align 4
label100:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label11
	b label97
label129:
	ldr r7, [sp, #12]
	mov r2, r7
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label61
	b label421
.p2align 4
label133:
	add r4, r4, #1
	ldr r6, [sp, #16]
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label130
	b label129
.p2align 4
label430:
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label207
label434:
	add r1, r1, #1
	cmp r1, #5
	blt label7
	b label429
label206:
	add r1, r1, #1
	cmp r1, #5
	blt label7
	b label429
.p2align 4
label442:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label61
	b label421
label218:
	add r0, r0, #1
	b label36
