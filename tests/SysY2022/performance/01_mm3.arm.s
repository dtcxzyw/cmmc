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
	sub sp, sp, #28
	bl getint
	mov r4, #0
	movw r1, #:lower16:A
	str r0, [sp, #0]
	mov r5, r0
	movt r1, #:upper16:A
	movw r5, #:lower16:B
	str r1, [sp, #8]
	movt r5, #:upper16:B
	str r5, [sp, #4]
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	mov r5, r0
	cmp r0, r4
	ble label126
	cmp r0, #0
	ble label8
	mov r5, #0
	add r6, r1, r4, lsl #12
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label952
label126:
	mov r4, #0
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label16
	cmp r5, #0
	ble label15
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label895
label16:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	cmp r5, r3
	ble label25
	b label691
label162:
	mov r2, #0
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label211
	mov r3, #0
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label868
label211:
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label351
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	mov r2, #0
	add r3, r2, #4
	cmp r5, r3
	ble label106
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label106
	b label563
label868:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label38
	b label901
label934:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label38
	b label967
label40:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label56
	ldr r5, [sp, #12]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label233
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label53
label233:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label241
	b label46
label241:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label272
	b label49
label272:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	b label972
label56:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label934
label972:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label56
	b label972
label49:
	add r5, r1, r7, lsl #2
	ldr r9, [r1, r7, lsl #2]
	add r8, r0, r7, lsl #2
	ldr r10, [r0, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label272
	b label49
label46:
	add r5, r1, r8, lsl #2
	ldr r9, [r1, r8, lsl #2]
	add r7, r0, r8, lsl #2
	ldr r10, [r0, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r7, [r7, #12]
	mla r7, r4, r7, r8
	mov r8, r6
	str r7, [r5, #12]
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label241
	b label46
label53:
	add r5, r1, r9, lsl #2
	ldr r10, [r1, r9, lsl #2]
	add r8, r0, r9, lsl #2
	ldr r11, [r0, r9, lsl #2]
	mla r10, r6, r11, r10
	str r10, [r1, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r6, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r6, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r8, [r8, #12]
	mla r8, r6, r8, r9
	str r8, [r5, #12]
	ldr r5, [sp, #0]
	add r8, r7, #4
	cmp r5, r8
	ble label345
	mov r9, r7
	mov r7, r8
	b label53
label345:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label241
	b label46
label38:
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label211
	mov r3, #0
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	add r3, r3, #1
	cmp r5, r3
	ble label38
label901:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label934
label967:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label40
	b label934
label351:
	mov r2, #0
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label61
	mov r3, #0
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	b label911
label61:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #5
	bge label362
	str r0, [sp, #16]
	mov r1, #0
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	cmp r5, r3
	ble label25
	b label691
label362:
	mov r0, #0
	mov r4, r0
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label65
	cmp r5, #0
	ble label79
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label71
	b label78
label65:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label79:
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label65
	cmp r5, #0
	ble label79
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label71
	b label78
label911:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
label944:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label83
	b label977
label86:
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label85
	ldr r5, [sp, #4]
	add r1, r5, r3, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #4
	ble label440
	b label721
label440:
	mov r8, #0
	ldr r4, [r4, r2, lsl #2]
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label448
	b label92
label448:
	mov r7, r8
	add r6, r8, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label479
	b label97
label85:
	add r3, r3, #1
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	b label944
label479:
	mov r5, r7
	ldr r6, [r1, r7, lsl #2]
	ldr r7, [r0, r7, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
label982:
	mov r5, r6
	ldr r6, [r1, r6, lsl #2]
	ldr r7, [r0, r5, lsl #2]
	mla r6, r4, r7, r6
	str r6, [r1, r5, lsl #2]
	add r6, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label85
	b label982
label92:
	add r5, r1, r8, lsl #2
	ldr r9, [r1, r8, lsl #2]
	add r7, r0, r8, lsl #2
	ldr r10, [r0, r8, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r8, lsl #2]
	ldr r8, [r5, #4]
	ldr r9, [r7, #4]
	mla r8, r4, r9, r8
	str r8, [r5, #4]
	ldr r8, [r5, #8]
	ldr r9, [r7, #8]
	mla r8, r4, r9, r8
	str r8, [r5, #8]
	ldr r8, [r5, #12]
	ldr r7, [r7, #12]
	mla r7, r4, r7, r8
	mov r8, r6
	str r7, [r5, #12]
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label448
	b label92
label99:
	add r5, r1, r9, lsl #2
	ldr r10, [r1, r9, lsl #2]
	add r8, r0, r9, lsl #2
	ldr r11, [r0, r9, lsl #2]
	mla r10, r6, r11, r10
	str r10, [r1, r9, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r8, #4]
	mla r9, r6, r10, r9
	str r9, [r5, #4]
	ldr r9, [r5, #8]
	ldr r10, [r8, #8]
	mla r9, r6, r10, r9
	str r9, [r5, #8]
	ldr r9, [r5, #12]
	ldr r8, [r8, #12]
	mla r8, r6, r8, r9
	str r8, [r5, #12]
	ldr r5, [sp, #0]
	add r8, r7, #4
	cmp r5, r8
	ble label552
	mov r9, r7
	mov r7, r8
	b label99
label552:
	mov r8, r7
	ldr r4, [r4, r2, lsl #2]
	add r6, r7, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label448
	b label92
label97:
	add r5, r1, r7, lsl #2
	ldr r9, [r1, r7, lsl #2]
	add r8, r0, r7, lsl #2
	ldr r10, [r0, r7, lsl #2]
	mla r9, r4, r10, r9
	str r9, [r1, r7, lsl #2]
	ldr r7, [r5, #4]
	ldr r9, [r8, #4]
	mla r7, r4, r9, r7
	str r7, [r5, #4]
	ldr r7, [r5, #8]
	ldr r9, [r8, #8]
	mla r7, r4, r9, r7
	str r7, [r5, #8]
	ldr r7, [r5, #12]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r5, #12]
	mov r7, r6
	add r6, r6, #4
	ldr r5, [sp, #0]
	cmp r5, r6
	ble label479
	b label97
label83:
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r0, r5, r2, lsl #12
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label61
	mov r3, #0
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	add r3, r3, #1
	cmp r5, r3
	ble label83
	b label911
label977:
	ldr r1, [sp, #8]
	add r4, r1, r3, lsl #12
	ldr r1, [r4, r2, lsl #2]
	cmp r1, #0
	bne label86
	b label944
label27:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label30
label186:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label30
	b label186
label30:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	b label965
label33:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label162
	ldr r5, [sp, #12]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label33
	mov r2, #0
	add r3, r2, #4
	cmp r5, r3
	ble label25
	b label691
label965:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label33
	b label965
label721:
	ldr r6, [r4, r2, lsl #2]
	mov r7, #4
	mov r9, #0
	b label99
label106:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label108
	b label568
label108:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label110
	b label573
label110:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	str r3, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	ble label103
label984:
	mov r3, #0
	str r3, [r0, r2, lsl #2]
	ldr r5, [sp, #0]
	add r2, r2, #1
	cmp r5, r2
	ble label103
	b label984
label573:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label110
	b label573
label568:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label108
	b label568
label563:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label106
	b label563
label711:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label106
	b label563
label103:
	add r1, r1, #1
	ldr r5, [sp, #0]
	cmp r5, r1
	ble label351
	ldr r5, [sp, #4]
	add r0, r5, r1, lsl #12
	ldr r5, [sp, #0]
	cmp r5, #0
	ble label103
	mov r2, #0
	add r3, r2, #4
	cmp r5, r3
	ble label106
	b label711
label691:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label25
label171:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label25
	b label171
label952:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
label890:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label923
label8:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label126
	cmp r5, #0
	ble label8
	ldr r1, [sp, #8]
	mov r5, #0
	add r6, r1, r4, lsl #12
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label890
label923:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
label956:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label8
	b label956
label895:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
label961:
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label961
label71:
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label381
	b label77
label381:
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	b label976
label390:
	mov r4, r2
	add r0, r0, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label65
	cmp r5, #0
	ble label79
	ldr r5, [sp, #4]
	mov r3, #0
	add r1, r5, r0, lsl #12
	add r2, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label71
label78:
	add r5, r1, r3, lsl #2
	ldr r3, [r1, r3, lsl #2]
	add r3, r4, r3
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r4, r3, r4
	mov r3, r2
	add r2, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label71
	b label78
label976:
	ldr r4, [r1, r3, lsl #2]
	ldr r5, [sp, #0]
	add r3, r3, #1
	add r2, r2, r4
	cmp r5, r3
	ble label390
	b label976
label15:
	add r4, r4, #1
	ldr r5, [sp, #0]
	cmp r5, r4
	ble label16
	cmp r5, #0
	ble label15
	ldr r5, [sp, #4]
	add r6, r5, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	mov r5, r0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r0, r5, #1
	ldr r5, [sp, #0]
	cmp r5, r0
	ble label15
	b label895
label77:
	add r5, r1, r3, lsl #2
	ldr r3, [r1, r3, lsl #2]
	add r3, r4, r3
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r4, r3, r4
	mov r3, r2
	add r2, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r2
	ble label381
	b label77
label25:
	add r3, r2, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label27
label181:
	add r4, r0, r2, lsl #2
	mov r5, #0
	str r5, [r0, r2, lsl #2]
	mov r2, r3
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #12]
	add r3, r3, #4
	ldr r5, [sp, #0]
	cmp r5, r3
	ble label27
	b label181
