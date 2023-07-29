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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r1, #:lower16:x
	sub sp, sp, #44
	movt r1, #:upper16:x
	str r1, [sp, #8]
	mov r0, r1
	bl getarray
	mov r2, r0
	movw r6, #:lower16:y
	sub r1, r0, #5
	sub r0, r0, #1
	movt r6, #:upper16:y
	str r0, [sp, #4]
	str r1, [sp, #0]
	sub r1, r2, #21
	str r1, [sp, #12]
	str r6, [sp, #16]
	mov r0, r6
	bl getarray
	movw r6, #:lower16:v
	movt r6, #:upper16:v
	str r6, [sp, #20]
	mov r0, r6
	bl getarray
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r3, [sp, #24]
	mov r0, r3
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	str r6, [sp, #28]
	str r0, [sp, #32]
.p2align 4
label2:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label4
	mov r4, #0
	cmp r0, r4
	bgt label14
	cmp r0, #0
	bgt label43
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label31:
	add r0, r4, #1
	ldr r1, [sp, #8]
	ldr r5, [r1, r4, lsl #2]
	ldr r1, [r1, r0, lsl #2]
	cmp r5, r1
	sub r2, r1, #4
	blt label38
	mov r4, r0
	ldr r0, [sp, #4]
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label570:
	mov r7, r5
	b label41
.p2align 4
label33:
	add r3, r5, #4
	ldr r6, [sp, #28]
	cmp r1, r3
	ldr r4, [r6, r4, lsl #2]
	sub r4, r4, #1
	bgt label34
.p2align 4
label36:
	ldr r6, [sp, #16]
	ldr r2, [r6, r5, lsl #2]
	ldr r3, [sp, #24]
	ldr r7, [r3, r2, lsl #2]
	ldr r6, [sp, #20]
	ldr r6, [r6, r5, lsl #2]
	add r5, r5, #1
	cmp r1, r5
	mla r6, r4, r6, r7
	str r6, [r3, r2, lsl #2]
	bgt label36
	mov r4, r0
	ldr r0, [sp, #4]
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label38:
	add r3, r5, #4
	cmp r1, r3
	ble label570
	mov r7, r5
.p2align 4
label39:
	ldr r6, [sp, #16]
	ldr r10, [r6, r7, lsl #2]
	add r8, r6, r7, lsl #2
	ldr r3, [sp, #24]
	ldr r11, [r3, r10, lsl #2]
	ldr r6, [sp, #20]
	add r9, r6, r7, lsl #2
	ldr r6, [r6, r7, lsl #2]
	add r7, r7, #4
	cmp r2, r7
	add r6, r11, r6
	str r6, [r3, r10, lsl #2]
	ldr r6, [r8, #4]
	ldr r10, [r3, r6, lsl #2]
	ldr r11, [r9, #4]
	add r10, r10, r11
	str r10, [r3, r6, lsl #2]
	ldr r6, [r8, #8]
	ldr r10, [r3, r6, lsl #2]
	ldr r11, [r9, #8]
	add r10, r10, r11
	str r10, [r3, r6, lsl #2]
	ldr r6, [r8, #12]
	ldr r8, [r3, r6, lsl #2]
	ldr r9, [r9, #12]
	add r8, r8, r9
	str r8, [r3, r6, lsl #2]
	bgt label39
.p2align 4
label41:
	ldr r6, [sp, #16]
	ldr r8, [r6, r7, lsl #2]
	ldr r3, [sp, #24]
	ldr r9, [r3, r8, lsl #2]
	ldr r6, [sp, #20]
	ldr r6, [r6, r7, lsl #2]
	add r7, r7, #1
	cmp r1, r7
	add r6, r9, r6
	str r6, [r3, r8, lsl #2]
	bgt label41
	cmp r5, r1
	blt label33
	mov r4, r0
	ldr r0, [sp, #4]
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label14:
	add r0, r4, #1
	ldr r1, [sp, #8]
	ldr r5, [r1, r4, lsl #2]
	ldr r1, [r1, r0, lsl #2]
	cmp r5, r1
	sub r2, r1, #4
	blt label21
	mov r4, r0
	ldr r0, [sp, #4]
	cmp r0, r4
	bgt label14
	cmp r0, #0
	bgt label43
	mov r4, #0
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label561:
	mov r3, r5
	b label24
.p2align 4
label16:
	add r6, r5, #4
	ldr r3, [sp, #24]
	cmp r1, r6
	ldr r3, [r3, r4, lsl #2]
	sub r3, r3, #1
	bgt label19
.p2align 4
label17:
	ldr r6, [sp, #16]
	ldr r2, [r6, r5, lsl #2]
	ldr r6, [sp, #28]
	ldr r4, [r6, r2, lsl #2]
	ldr r6, [sp, #20]
	ldr r6, [r6, r5, lsl #2]
	add r5, r5, #1
	cmp r1, r5
	mla r4, r3, r6, r4
	ldr r6, [sp, #28]
	str r4, [r6, r2, lsl #2]
	bgt label17
	mov r4, r0
	ldr r0, [sp, #4]
	cmp r0, r4
	bgt label14
	cmp r0, #0
	bgt label43
	mov r4, #0
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label19:
	ldr r6, [sp, #16]
	ldr r8, [r6, r5, lsl #2]
	add r4, r6, r5, lsl #2
	ldr r6, [sp, #28]
	ldr r9, [r6, r8, lsl #2]
	ldr r6, [sp, #20]
	add r7, r6, r5, lsl #2
	ldr r6, [r6, r5, lsl #2]
	add r5, r5, #4
	cmp r2, r5
	mla r9, r3, r6, r9
	ldr r6, [sp, #28]
	str r9, [r6, r8, lsl #2]
	ldr r8, [r4, #4]
	ldr r6, [r6, r8, lsl #2]
	ldr r9, [r7, #4]
	mla r9, r3, r9, r6
	ldr r6, [sp, #28]
	str r9, [r6, r8, lsl #2]
	ldr r8, [r4, #8]
	ldr r6, [r6, r8, lsl #2]
	ldr r9, [r7, #8]
	mla r9, r3, r9, r6
	ldr r6, [sp, #28]
	str r9, [r6, r8, lsl #2]
	ldr r4, [r4, #12]
	ldr r6, [r6, r4, lsl #2]
	ldr r7, [r7, #12]
	mla r7, r3, r7, r6
	ldr r6, [sp, #28]
	str r7, [r6, r4, lsl #2]
	bgt label19
	b label17
.p2align 4
label21:
	add r3, r5, #4
	cmp r1, r3
	bgt label209
	b label561
.p2align 4
label24:
	ldr r6, [sp, #16]
	ldr r7, [r6, r3, lsl #2]
	ldr r6, [sp, #28]
	ldr r8, [r6, r7, lsl #2]
	ldr r6, [sp, #20]
	ldr r6, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r1, r3
	add r8, r8, r6
	ldr r6, [sp, #28]
	str r8, [r6, r7, lsl #2]
	bgt label24
	cmp r5, r1
	blt label16
	mov r4, r0
	ldr r0, [sp, #4]
	cmp r0, r4
	bgt label14
	cmp r0, #0
	bgt label43
	mov r4, #0
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label34:
	ldr r6, [sp, #16]
	ldr r9, [r6, r5, lsl #2]
	add r7, r6, r5, lsl #2
	ldr r3, [sp, #24]
	ldr r10, [r3, r9, lsl #2]
	ldr r6, [sp, #20]
	add r8, r6, r5, lsl #2
	ldr r6, [r6, r5, lsl #2]
	add r5, r5, #4
	cmp r2, r5
	mla r6, r4, r6, r10
	str r6, [r3, r9, lsl #2]
	ldr r6, [r7, #4]
	ldr r9, [r3, r6, lsl #2]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r3, r6, lsl #2]
	ldr r6, [r7, #8]
	ldr r9, [r3, r6, lsl #2]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r3, r6, lsl #2]
	ldr r6, [r7, #12]
	ldr r7, [r3, r6, lsl #2]
	ldr r8, [r8, #12]
	mla r7, r4, r8, r7
	str r7, [r3, r6, lsl #2]
	bgt label34
	b label36
.p2align 4
label209:
	mov r3, r5
.p2align 4
label22:
	ldr r6, [sp, #16]
	ldr r9, [r6, r3, lsl #2]
	add r7, r6, r3, lsl #2
	ldr r6, [sp, #28]
	ldr r10, [r6, r9, lsl #2]
	ldr r6, [sp, #20]
	add r8, r6, r3, lsl #2
	ldr r6, [r6, r3, lsl #2]
	add r3, r3, #4
	cmp r2, r3
	add r10, r10, r6
	ldr r6, [sp, #28]
	str r10, [r6, r9, lsl #2]
	ldr r9, [r7, #4]
	ldr r6, [r6, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r6, r10
	ldr r6, [sp, #28]
	str r10, [r6, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r6, [r6, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r6, r10
	ldr r6, [sp, #28]
	str r10, [r6, r9, lsl #2]
	ldr r7, [r7, #12]
	ldr r6, [r6, r7, lsl #2]
	ldr r8, [r8, #12]
	add r8, r6, r8
	ldr r6, [sp, #28]
	str r8, [r6, r7, lsl #2]
	bgt label22
	b label24
.p2align 4
label6:
	ldr r6, [sp, #28]
	mov r2, #0
	add r1, r6, r0, lsl #2
	str r2, [r6, r0, lsl #2]
	add r0, r0, #4
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r1, [sp, #0]
	cmp r1, r0
	bgt label6
	mov r1, #0
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label117
	mov r4, #0
	cmp r0, r4
	bgt label14
	cmp r0, #0
	bgt label43
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label8:
	ldr r6, [sp, #28]
	mov r2, #0
	add r1, r6, r0, lsl #2
	str r2, [r6, r0, lsl #2]
	add r0, r0, #16
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
	bgt label8
	b label6
.p2align 4
label10:
	mov r1, #0
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label117
	mov r4, #0
	cmp r0, r4
	bgt label14
	cmp r0, #0
	bgt label43
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label117:
	mov r0, r1
	b label10
label30:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #4]
	ldr r6, [sp, #28]
	mov r1, r6
	bl putarray
	add sp, sp, #44
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label4:
	ldr r0, [sp, #4]
	cmp r0, #4
	bgt label5
	mov r0, #0
	mov r1, #0
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label117
	mov r4, #0
	cmp r0, r4
	bgt label14
	cmp r0, #0
	bgt label43
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	bge label30
label275:
	str r0, [sp, #32]
	b label2
.p2align 4
label43:
	ldr r0, [sp, #4]
	cmp r0, #4
	bgt label46
	mov r0, #0
	mov r1, #0
	ldr r3, [sp, #24]
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label427
	mov r4, #0
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label575:
	mov r0, #0
	b label47
.p2align 4
label44:
	mov r1, #0
	ldr r3, [sp, #24]
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label427
	mov r4, #0
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label427:
	mov r0, r1
	b label44
.p2align 4
label46:
	ldr r1, [sp, #0]
	cmp r1, #16
	bgt label430
	b label575
.p2align 4
label47:
	ldr r3, [sp, #24]
	mov r2, #0
	add r1, r3, r0, lsl #2
	str r2, [r3, r0, lsl #2]
	add r0, r0, #4
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r1, [sp, #0]
	cmp r1, r0
	bgt label47
	mov r1, #0
	str r1, [r3, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label427
	mov r4, #0
	cmp r0, r4
	bgt label31
	ldr r0, [sp, #32]
	add r0, r0, #1
	cmp r0, #100
	blt label275
	b label30
.p2align 4
label5:
	ldr r1, [sp, #0]
	cmp r1, #16
	bgt label78
	mov r0, #0
	b label6
.p2align 4
label78:
	mov r0, #0
	b label8
.p2align 4
label430:
	mov r0, #0
.p2align 4
label49:
	ldr r3, [sp, #24]
	mov r2, #0
	add r1, r3, r0, lsl #2
	str r2, [r3, r0, lsl #2]
	add r0, r0, #16
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
	bgt label49
	b label47
