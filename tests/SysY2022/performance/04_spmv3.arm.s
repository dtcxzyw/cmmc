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
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	sub sp, sp, #28
	bl getarray
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	mov r4, r0
	mov r0, r2
	bl getarray
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	mov r0, r5
	bl getarray
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r0, r2
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	sub r1, r4, #5
	sub r0, r4, #1
	str r0, [sp, #20]
	mov r0, #0
	str r1, [sp, #16]
	sub r1, r4, #21
	str r1, [sp, #12]
	str r0, [sp, #8]
	ldr r0, [sp, #20]
	cmp r0, #0
	bgt label41
	b label69
.p2align 4
label20:
	add r1, r3, #1
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	str r1, [sp, #4]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label228
	add r6, r4, #4
	sub r1, r0, #4
	cmp r0, r6
	ble label234
	mov r7, r4
.p2align 4
label22:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r8, r2, r7, lsl #2
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	ldr r5, [r8, #0]
	add r9, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r7, lsl #2
	add r7, r7, #4
	ldr r11, [r5, #0]
	cmp r1, r7
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #4]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r2, r2, r8, lsl #2
	ldr r8, [r2, #0]
	ldr r5, [r5, #12]
	add r5, r8, r5
	str r5, [r2, #0]
	bgt label22
.p2align 4
label24:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	ldr r5, [r2, r7, lsl #2]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r2, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r2, #0]
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r5, r8, r5
	str r5, [r2, #0]
	bgt label24
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	cmp r0, r6
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	ble label29
.p2align 4
label27:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r6, r2, r4, lsl #2
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	ldr r5, [r6, #0]
	add r7, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	add r5, r5, r4, lsl #2
	add r4, r4, #4
	ldr r9, [r5, #0]
	cmp r1, r4
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r6, [r6, #12]
	add r2, r2, r6, lsl #2
	ldr r6, [r2, #0]
	ldr r5, [r5, #12]
	mla r5, r3, r5, r6
	str r5, [r2, #0]
	bgt label27
.p2align 4
label29:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r1, [r2, r4, lsl #2]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r1, r2, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r2, r3, r5, r2
	str r2, [r1, #0]
	bgt label29
	ldr r1, [sp, #4]
	mov r3, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label20
	ldr r0, [sp, #8]
	add r0, r0, #1
	cmp r0, #100
	bge label32
.p2align 4
label360:
	str r0, [sp, #8]
	ldr r0, [sp, #20]
	cmp r0, #0
	ble label69
.p2align 4
label41:
	ldr r0, [sp, #20]
	cmp r0, #4
	ble label407
	ldr r1, [sp, #16]
	cmp r1, #16
	ble label410
	mov r0, #0
.p2align 4
label43:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r1, r2, r0, lsl #2
	mov r2, #0
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
	ldr r1, [sp, #12]
	cmp r1, r0
	bgt label43
.p2align 4
label45:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r1, r2, r0, lsl #2
	add r0, r0, #4
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r1, [sp, #16]
	cmp r1, r0
	bgt label45
	b label47
.p2align 4
label407:
	mov r0, #0
	mov r1, #0
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label450
	b label449
.p2align 4
label47:
	mov r1, #0
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label449
.p2align 4
label450:
	mov r0, r1
	b label47
label69:
	mov r3, #0
	ldr r0, [sp, #20]
	cmp r0, r3
	ble label73
.p2align 4
label6:
	add r1, r3, #1
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	str r1, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label84
	add r6, r4, #4
	sub r1, r0, #4
	cmp r0, r6
	bgt label91
	b label90
.p2align 4
label11:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r1, [r2, r4, lsl #2]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r1, r2, r1, lsl #2
	ldr r2, [r1, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r2, r3, r5, r2
	str r2, [r1, #0]
	bgt label11
	ldr r1, [sp, #0]
	mov r3, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label6
	b label542
.p2align 4
label13:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r6, r2, r4, lsl #2
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r5, [r6, #0]
	add r7, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	add r5, r5, r4, lsl #2
	add r4, r4, #4
	ldr r9, [r5, #0]
	cmp r1, r4
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r3, r9, r8
	str r8, [r7, #0]
	ldr r6, [r6, #12]
	add r2, r2, r6, lsl #2
	ldr r6, [r2, #0]
	ldr r5, [r5, #12]
	mla r5, r3, r5, r6
	str r5, [r2, #0]
	bgt label13
	b label11
.p2align 4
label91:
	mov r7, r4
	b label15
.p2align 4
label8:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	ldr r5, [r2, r7, lsl #2]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r2, #0]
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r5, r8, r5
	str r5, [r2, #0]
	bgt label8
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	cmp r0, r6
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	bgt label13
	b label11
.p2align 4
label15:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r8, r2, r7, lsl #2
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r5, [r8, #0]
	add r9, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r7, lsl #2
	add r7, r7, #4
	ldr r11, [r5, #0]
	cmp r1, r7
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #4]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r2, r2, r8, lsl #2
	ldr r8, [r2, #0]
	ldr r5, [r5, #12]
	add r5, r8, r5
	str r5, [r2, #0]
	bgt label15
	b label8
.p2align 4
label542:
	ldr r0, [sp, #20]
	cmp r0, #0
	ble label540
.p2align 4
label33:
	ldr r0, [sp, #20]
	cmp r0, #4
	ble label362
	ldr r1, [sp, #16]
	cmp r1, #16
	ble label365
	mov r0, #0
	b label37
.p2align 4
label35:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r1, r2, r0, lsl #2
	add r0, r0, #4
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r1, [sp, #16]
	cmp r1, r0
	bgt label35
	mov r1, #0
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label405
	b label548
.p2align 4
label37:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r1, r2, r0, lsl #2
	add r0, r0, #16
	mov r2, #0
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
	ldr r1, [sp, #12]
	cmp r1, r0
	bgt label37
	b label35
.p2align 4
label362:
	mov r0, #0
	mov r1, #0
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label405
	b label404
.p2align 4
label39:
	mov r1, #0
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label404
.p2align 4
label405:
	mov r0, r1
	b label39
label540:
	mov r3, #0
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label20
	b label217
label73:
	ldr r0, [sp, #20]
	cmp r0, #0
	bgt label33
	b label540
.p2align 4
label449:
	mov r3, #0
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label6
	b label73
.p2align 4
label84:
	ldr r1, [sp, #0]
	mov r3, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label6
	b label73
label217:
	ldr r0, [sp, #8]
	add r0, r0, #1
	cmp r0, #100
	blt label360
	b label32
.p2align 4
label228:
	ldr r1, [sp, #4]
	mov r3, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label20
	b label217
.p2align 4
label404:
	mov r3, #0
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label20
	b label217
label32:
	mov r0, #47
	bl _sysy_stoptime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r0, [sp, #20]
	mov r1, r2
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label548:
	mov r3, #0
	ldr r0, [sp, #20]
	cmp r0, r3
	bgt label20
	b label217
.p2align 4
label234:
	mov r7, r4
	b label24
.p2align 4
label410:
	mov r0, #0
	b label45
.p2align 4
label365:
	mov r0, #0
	b label35
.p2align 4
label90:
	mov r7, r4
	b label8
