.arch armv7ve
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	sub sp, sp, #28
	mov r0, r6
	bl getarray
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	mov r4, r0
	mov r0, r6
	bl getarray
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	mov r0, r6
	bl getarray
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r0, r7
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	sub r3, r4, #17
	sub r1, r4, #5
	sub r0, r4, #1
	str r0, [sp, #20]
	sub r0, r4, #21
	str r1, [sp, #16]
	str r0, [sp, #12]
	mov r0, #0
	str r3, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #20]
	cmp r0, #0
	bgt label4
	b label113
.p2align 4
label521:
	ldr r0, [sp, #4]
	add r0, r0, #1
	cmp r0, #100
	bge label74
.p2align 4
label376:
	str r0, [sp, #4]
	ldr r0, [sp, #20]
	cmp r0, #0
	ble label113
.p2align 4
label4:
	ldr r0, [sp, #20]
	cmp r0, #4
	ble label5
	ldr r1, [sp, #16]
	cmp r1, #16
	ble label126
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mov r1, #0
	b label13
.p2align 4
label16:
	add r7, r7, #64
.p2align 4
label13:
	mov r0, #0
	add r1, r1, #16
	str r0, [r7, #0]
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	str r0, [r7, #16]
	str r0, [r7, #20]
	str r0, [r7, #24]
	str r0, [r7, #28]
	str r0, [r7, #32]
	str r0, [r7, #36]
	str r0, [r7, #40]
	str r0, [r7, #44]
	str r0, [r7, #48]
	str r0, [r7, #52]
	str r0, [r7, #56]
	str r0, [r7, #60]
	ldr r0, [sp, #12]
	cmp r0, r1
	bgt label16
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	add r7, r7, r1, lsl #2
	add r0, r1, #4
	mov r1, #0
	str r1, [r7, #0]
	str r1, [r7, #4]
	str r1, [r7, #8]
	str r1, [r7, #12]
	ldr r1, [sp, #16]
	cmp r1, r0
	ble label526
.p2align 4
label21:
	add r7, r7, #16
	mov r1, #0
	add r0, r0, #4
	str r1, [r7, #0]
	str r1, [r7, #4]
	str r1, [r7, #8]
	str r1, [r7, #12]
	ldr r1, [sp, #16]
	cmp r1, r0
	bgt label21
.p2align 4
label157:
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	add r7, r7, r0, lsl #2
	add r1, r0, #1
	mov r0, #0
	str r0, [r7, #0]
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label527
.p2align 4
label10:
	add r7, r7, #4
.p2align 4
label6:
	mov r0, #0
	add r1, r1, #1
	str r0, [r7, #0]
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label10
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	mov r2, #0
	mov r1, r6
	cmp r0, r2
	bgt label28
	b label164
.p2align 4
label35:
	add r3, r3, #4
.p2align 4
label31:
	ldr r5, [r3, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	add r5, r7, r5, lsl #2
	ldr r7, [r5, #0]
	ldr r6, [r6, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r6, r2, r6, r7
	str r6, [r5, #0]
	bgt label35
	add r1, r1, #4
	ldr r0, [sp, #0]
	mov r2, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	ble label514
.p2align 4
label28:
	add r0, r2, #1
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	str r0, [sp, #0]
	ldr r4, [r1, #0]
	ldr r0, [r6, r0, lsl #2]
	cmp r4, r0
	bge label29
	add r5, r4, #4
	sub r3, r0, #4
	cmp r0, r5
	ble label38
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	mov r8, r4
	add r5, r6, r4, lsl #2
	b label44
.p2align 4
label47:
	add r5, r5, #16
.p2align 4
label44:
	ldr r6, [r5, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	add r9, r7, r6, lsl #2
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	ldr r10, [r9, #0]
	add r6, r6, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r6, #0]
	cmp r3, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r5, #4]
	add r9, r7, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r5, #8]
	add r9, r7, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r5, #12]
	add r7, r7, r9, lsl #2
	ldr r9, [r7, #0]
	ldr r6, [r6, #12]
	add r6, r9, r6
	str r6, [r7, #0]
	bgt label47
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	add r3, r6, r8, lsl #2
.p2align 4
label39:
	ldr r5, [r3, #0]
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	add r5, r7, r5, lsl #2
	ldr r7, [r5, #0]
	ldr r6, [r6, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	add r6, r7, r6
	str r6, [r5, #0]
	ble label221
	add r3, r3, #4
	b label39
.p2align 4
label221:
	cmp r4, r0
	bge label516
.p2align 4
label30:
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	ldr r2, [r7, r2, lsl #2]
	add r3, r6, r4, lsl #2
	sub r2, r2, #1
	b label31
.p2align 4
label38:
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	mov r8, r4
	add r3, r6, r4, lsl #2
	b label39
.p2align 4
label29:
	cmp r4, r0
	blt label30
	add r1, r1, #4
	ldr r0, [sp, #0]
	mov r2, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label28
	b label164
.p2align 4
label514:
	ldr r0, [sp, #20]
	cmp r0, #0
	ble label513
.p2align 4
label75:
	ldr r0, [sp, #20]
	cmp r0, #4
	ble label378
	cmp r0, #20
	ble label382
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r3, #0
	mov r1, #4
	add r0, r7, #16
	b label78
.p2align 4
label82:
	add r0, r0, #64
	mov r3, r1
	mov r1, r2
.p2align 4
label78:
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r2, #0
	add r3, r7, r3, lsl #2
	str r2, [r3, #0]
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #12]
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	str r2, [r0, #32]
	str r2, [r0, #36]
	str r2, [r0, #40]
	str r2, [r0, #44]
	ldr r3, [sp, #8]
	add r2, r1, #16
	add r1, r1, #12
	cmp r3, r2
	bgt label82
	mov r0, r1
	b label83
.p2align 4
label417:
	mov r0, r2
	mov r2, r1
.p2align 4
label83:
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r1, #0
	add r0, r7, r0, lsl #2
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	ldr r0, [sp, #20]
	add r1, r2, #4
	cmp r0, r1
	bgt label417
	mov r0, #0
	add r1, r2, #1
	add r7, r7, r2, lsl #2
	str r0, [r7, #0]
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label534
.p2align 4
label92:
	add r7, r7, #4
	mov r0, #0
	add r1, r1, #1
	str r0, [r7, #0]
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label92
.p2align 4
label91:
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	mov r3, #0
	ldr r0, [sp, #20]
	mov r1, r6
	cmp r0, r3
	bgt label54
	b label271
.p2align 4
label72:
	add r4, r4, #4
.p2align 4
label68:
	ldr r6, [r4, #0]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	add r7, r7, r6, lsl #2
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	ldr r8, [r7, #0]
	ldr r6, [r6, r5, lsl #2]
	add r5, r5, #1
	cmp r0, r5
	mla r6, r3, r6, r8
	str r6, [r7, #0]
	bgt label72
	add r1, r1, #4
	mov r3, r2
	ldr r0, [sp, #20]
	cmp r0, r2
	ble label521
.p2align 4
label54:
	add r2, r3, #1
	ldr r5, [r1, #0]
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	ldr r0, [r6, r2, lsl #2]
	cmp r5, r0
	bge label280
	add r4, r5, #4
	cmp r0, r4
	ble label285
	mov r9, r5
	b label60
.p2align 4
label339:
	mov r9, r4
	mov r4, r6
.p2align 4
label60:
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	add r8, r6, r9, lsl #2
	ldr r6, [r8, #0]
	add r10, r7, r6, lsl #2
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	ldr r11, [r10, #0]
	add r6, r6, r9, lsl #2
	ldr r9, [r6, #0]
	add r9, r11, r9
	str r9, [r10, #0]
	ldr r9, [r8, #4]
	add r9, r7, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r7, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	ldr r6, [r6, #12]
	add r6, r8, r6
	str r6, [r7, #0]
	add r6, r4, #4
	cmp r0, r6
	bgt label339
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	add r8, r6, r4, lsl #2
	b label56
.p2align 4
label59:
	add r8, r8, #4
.p2align 4
label56:
	ldr r6, [r8, #0]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	add r7, r7, r6, lsl #2
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	ldr r9, [r7, #0]
	ldr r6, [r6, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	add r6, r9, r6
	str r6, [r7, #0]
	bgt label59
	cmp r5, r0
	bge label519
.p2align 4
label67:
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	ldr r3, [r7, r3, lsl #2]
	add r4, r6, r5, lsl #2
	sub r3, r3, #1
	b label68
.p2align 4
label5:
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mov r1, #0
	b label6
.p2align 4
label526:
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	add r7, r7, r0, lsl #2
	add r1, r0, #1
	mov r0, #0
	str r0, [r7, #0]
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label10
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	mov r2, #0
	mov r1, r6
	cmp r0, r2
	bgt label28
	b label164
label113:
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	mov r2, #0
	mov r1, r6
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label28
	b label164
label513:
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	mov r3, #0
	mov r1, r6
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label54
	b label271
.p2align 4
label280:
	cmp r5, r0
	blt label67
	add r1, r1, #4
	mov r3, r2
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label54
	b label271
.p2align 4
label519:
	add r1, r1, #4
	mov r3, r2
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label54
label271:
	ldr r0, [sp, #4]
	add r0, r0, #1
	cmp r0, #100
	blt label376
	b label74
.p2align 4
label516:
	add r1, r1, #4
	ldr r0, [sp, #0]
	mov r2, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label28
label164:
	ldr r0, [sp, #20]
	cmp r0, #0
	bgt label75
	b label513
.p2align 4
label378:
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r1, #0
	mov r0, #0
	add r1, r1, #1
	str r0, [r7, #0]
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label92
	b label91
.p2align 4
label126:
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	mov r0, #0
	mov r1, #0
	add r0, r0, #4
	str r1, [r7, #0]
	str r1, [r7, #4]
	str r1, [r7, #8]
	str r1, [r7, #12]
	ldr r1, [sp, #16]
	cmp r1, r0
	bgt label21
	b label157
label74:
	mov r0, #47
	bl _sysy_stoptime
	movw r7, #:lower16:b
	movt r7, #:upper16:b
	ldr r0, [sp, #20]
	mov r1, r7
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label534:
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	mov r3, #0
	ldr r0, [sp, #20]
	mov r1, r6
	cmp r0, r3
	bgt label54
	b label271
.p2align 4
label527:
	movw r6, #:lower16:x
	movt r6, #:upper16:x
	mov r2, #0
	ldr r0, [sp, #20]
	mov r1, r6
	cmp r0, r2
	bgt label28
	b label164
.p2align 4
label382:
	mov r2, #4
	mov r0, #0
	b label83
.p2align 4
label285:
	movw r6, #:lower16:y
	movt r6, #:upper16:y
	mov r4, r5
	add r8, r6, r5, lsl #2
	b label56
