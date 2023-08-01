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
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	sub sp, sp, #28
	mov r0, r1
	bl getarray
	mov r2, r0
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	sub r1, r0, #5
	sub r0, r0, #1
	str r0, [sp, #12]
	str r1, [sp, #16]
	sub r1, r2, #21
	str r1, [sp, #8]
	mov r0, r7
	bl getarray
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	mov r0, r7
	bl getarray
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r0, r7
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #12]
	cmp r0, #0
	ble label71
.p2align 4
label4:
	ldr r0, [sp, #12]
	cmp r0, #4
	bgt label5
	b label74
.p2align 4
label273:
	str r0, [sp, #4]
	ldr r0, [sp, #12]
	cmp r0, #0
	bgt label4
	b label71
label30:
	mov r0, #47
	bl _sysy_stoptime
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r0, [sp, #12]
	mov r1, r3
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label556:
	ldr r0, [sp, #4]
	add r0, r0, #1
	cmp r0, #100
	blt label273
	b label30
.p2align 4
label74:
	mov r0, #0
	mov r1, #0
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #12]
	cmp r0, r1
	bgt label117
	b label116
.p2align 4
label10:
	mov r1, #0
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #12]
	cmp r0, r1
	ble label116
.p2align 4
label117:
	mov r0, r1
	b label10
.p2align 4
label5:
	ldr r1, [sp, #16]
	cmp r1, #16
	ble label77
	mov r0, #0
	b label8
.p2align 4
label6:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r2, #0
	add r1, r3, r0, lsl #2
	add r0, r0, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r1, [sp, #16]
	cmp r1, r0
	bgt label6
	mov r1, #0
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #12]
	cmp r0, r1
	bgt label117
	b label548
.p2align 4
label8:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	mov r2, #0
	add r1, r3, r0, lsl #2
	add r0, r0, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r1, [sp, #8]
	cmp r1, r0
	bgt label8
	b label6
label71:
	mov r2, #0
	ldr r0, [sp, #12]
	cmp r0, r2
	bgt label14
label120:
	ldr r0, [sp, #12]
	cmp r0, #0
	bgt label43
	b label550
.p2align 4
label14:
	add r0, r2, #1
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	str r0, [sp, #0]
	ldr r4, [r1, r2, lsl #2]
	ldr r0, [r1, r0, lsl #2]
	add r5, r4, #4
	cmp r4, r0
	sub r1, r0, #4
	blt label21
	b label15
.p2align 4
label16:
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	cmp r0, r5
	ldr r2, [r7, r2, lsl #2]
	sub r2, r2, #1
	bgt label19
.p2align 4
label17:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r1, [r7, r4, lsl #2]
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	add r1, r3, r1, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r7, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	bgt label17
	ldr r0, [sp, #0]
	mov r2, r0
	ldr r0, [sp, #12]
	cmp r0, r2
	bgt label14
	b label552
.p2align 4
label19:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r5, r7, r4, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r6, [r5, #0]
	add r8, r3, r6, lsl #2
	add r6, r7, r4, lsl #2
	ldr r9, [r8, #0]
	add r4, r4, #4
	ldr r7, [r6, #0]
	cmp r1, r4
	mla r7, r2, r7, r9
	str r7, [r8, #0]
	ldr r7, [r5, #4]
	add r7, r3, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r6, #4]
	mla r8, r2, r9, r8
	str r8, [r7, #0]
	ldr r7, [r5, #8]
	add r7, r3, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r6, #8]
	mla r8, r2, r9, r8
	str r8, [r7, #0]
	ldr r5, [r5, #12]
	add r3, r3, r5, lsl #2
	ldr r5, [r3, #0]
	ldr r6, [r6, #12]
	mla r5, r2, r6, r5
	str r5, [r3, #0]
	bgt label19
	b label17
.p2align 4
label21:
	cmp r0, r5
	ble label206
	mov r6, r4
.p2align 4
label22:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	add r8, r7, r6, lsl #2
	ldr r7, [r8, #0]
	add r9, r3, r7, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r10, [r9, #0]
	add r7, r7, r6, lsl #2
	add r6, r6, #4
	ldr r11, [r7, #0]
	cmp r1, r6
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #4]
	add r9, r3, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r7, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r3, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r7, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r3, r3, r8, lsl #2
	ldr r8, [r3, #0]
	ldr r7, [r7, #12]
	add r7, r8, r7
	str r7, [r3, #0]
	bgt label22
.p2align 4
label24:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	ldr r7, [r7, r6, lsl #2]
	add r3, r3, r7, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r8, [r3, #0]
	ldr r7, [r7, r6, lsl #2]
	add r6, r6, #1
	cmp r0, r6
	add r7, r8, r7
	str r7, [r3, #0]
	bgt label24
	cmp r4, r0
	blt label16
	ldr r0, [sp, #0]
	mov r2, r0
	ldr r0, [sp, #12]
	cmp r0, r2
	bgt label14
	b label120
.p2align 4
label15:
	cmp r4, r0
	blt label16
	ldr r0, [sp, #0]
	mov r2, r0
	ldr r0, [sp, #12]
	cmp r0, r2
	bgt label14
	b label120
.p2align 4
label552:
	ldr r0, [sp, #12]
	cmp r0, #0
	ble label550
.p2align 4
label43:
	ldr r0, [sp, #12]
	cmp r0, #4
	ble label415
	ldr r1, [sp, #16]
	cmp r1, #16
	ble label425
	mov r0, #0
	b label49
.p2align 4
label47:
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r2, #0
	add r1, r7, r0, lsl #2
	add r0, r0, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r1, [sp, #16]
	cmp r1, r0
	bgt label47
	mov r1, #0
	str r1, [r7, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #12]
	cmp r0, r1
	bgt label423
	b label559
.p2align 4
label49:
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r2, #0
	add r1, r7, r0, lsl #2
	add r0, r0, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r1, [sp, #8]
	cmp r1, r0
	bgt label49
	b label47
.p2align 4
label44:
	mov r1, #0
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	str r1, [r7, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #12]
	cmp r0, r1
	ble label422
.p2align 4
label423:
	mov r0, r1
	b label44
label550:
	mov r4, #0
	ldr r0, [sp, #12]
	cmp r0, r4
	bgt label31
label29:
	ldr r0, [sp, #4]
	add r0, r0, #1
	cmp r0, #100
	blt label273
	b label30
.p2align 4
label31:
	add r0, r4, #1
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	ldr r5, [r1, r4, lsl #2]
	ldr r1, [r1, r0, lsl #2]
	add r6, r5, #4
	cmp r5, r1
	sub r2, r1, #4
	blt label38
	b label32
.p2align 4
label33:
	movw r3, #:lower16:b
	movt r3, #:upper16:b
	cmp r1, r6
	ldr r3, [r3, r4, lsl #2]
	sub r3, r3, #1
	ble label36
.p2align 4
label34:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	add r4, r7, r5, lsl #2
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r6, [r4, #0]
	add r8, r7, r6, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r9, [r8, #0]
	add r6, r7, r5, lsl #2
	add r5, r5, #4
	ldr r7, [r6, #0]
	cmp r2, r5
	mla r7, r3, r7, r9
	str r7, [r8, #0]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r8, [r4, #4]
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r6, #4]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r8, [r4, #8]
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r6, #8]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r4, [r4, #12]
	add r4, r7, r4, lsl #2
	ldr r7, [r4, #0]
	ldr r6, [r6, #12]
	mla r6, r3, r6, r7
	str r6, [r4, #0]
	bgt label34
.p2align 4
label36:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	ldr r2, [r7, r5, lsl #2]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	add r2, r7, r2, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r4, [r2, #0]
	ldr r6, [r7, r5, lsl #2]
	add r5, r5, #1
	cmp r1, r5
	mla r4, r3, r6, r4
	str r4, [r2, #0]
	bgt label36
	mov r4, r0
	ldr r0, [sp, #12]
	cmp r0, r4
	bgt label31
	b label556
.p2align 4
label38:
	cmp r1, r6
	ble label358
	mov r3, r5
.p2align 4
label39:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	add r8, r7, r3, lsl #2
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r9, [r8, #0]
	add r10, r7, r9, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r11, [r10, #0]
	add r9, r7, r3, lsl #2
	add r3, r3, #4
	ldr r7, [r9, #0]
	cmp r2, r3
	add r7, r11, r7
	str r7, [r10, #0]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r10, [r8, #4]
	add r7, r7, r10, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r9, #4]
	add r10, r10, r11
	str r10, [r7, #0]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r10, [r8, #8]
	add r7, r7, r10, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r9, #8]
	add r10, r10, r11
	str r10, [r7, #0]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	ldr r8, [r8, #12]
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r9, #12]
	add r8, r8, r9
	str r8, [r7, #0]
	bgt label39
.p2align 4
label41:
	movw r7, #:lower16:y
	movt r7, #:upper16:y
	ldr r8, [r7, r3, lsl #2]
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	add r8, r7, r8, lsl #2
	movw r7, #:lower16:v
	movt r7, #:upper16:v
	ldr r9, [r8, #0]
	ldr r7, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r1, r3
	add r7, r9, r7
	str r7, [r8, #0]
	bgt label41
	cmp r5, r1
	blt label33
	mov r4, r0
	ldr r0, [sp, #12]
	cmp r0, r4
	bgt label31
	b label29
.p2align 4
label32:
	cmp r5, r1
	blt label33
	mov r4, r0
	ldr r0, [sp, #12]
	cmp r0, r4
	bgt label31
	b label29
.p2align 4
label116:
	mov r2, #0
	ldr r0, [sp, #12]
	cmp r0, r2
	bgt label14
	b label120
.p2align 4
label422:
	mov r4, #0
	ldr r0, [sp, #12]
	cmp r0, r4
	bgt label31
	b label29
.p2align 4
label548:
	mov r2, #0
	ldr r0, [sp, #12]
	cmp r0, r2
	bgt label14
	b label120
.p2align 4
label559:
	mov r4, #0
	ldr r0, [sp, #12]
	cmp r0, r4
	bgt label31
	b label29
.p2align 4
label415:
	mov r0, #0
	b label44
.p2align 4
label77:
	mov r0, #0
	b label6
.p2align 4
label425:
	mov r0, #0
	b label47
.p2align 4
label358:
	mov r3, r5
	b label41
.p2align 4
label206:
	mov r6, r4
	b label24
