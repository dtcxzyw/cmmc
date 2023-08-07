.arch armv7ve
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	movw r5, #:lower16:w
	movt r5, #:upper16:w
	mov r4, r0
	mov r0, r5
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	cmp r4, r1
	bgt label62
label61:
	mov r3, #0
	b label11
.p2align 4
label62:
	mov r2, #0
	mov r3, r2
	b label4
.p2align 4
label267:
	add r1, r1, #1
	cmp r4, r1
	bgt label62
	b label61
label11:
	mul r2, r4, r3
	cmp r4, r3
	bgt label86
	b label13
.p2align 4
label4:
	add r6, r1, r2
	cmp r4, r3
	ble label67
	mla r7, r4, r3, r1
	add r2, r4, r2
	add r3, r3, #1
	cmp r4, r3
	ldr r7, [r5, r7, lsl #2]
	str r7, [r0, r6, lsl #2]
	bgt label4
	b label267
.p2align 4
label67:
	mvn r7, #0
	add r3, r3, #1
	str r7, [r0, r6, lsl #2]
	add r2, r4, r2
	cmp r4, r3
	bgt label4
	add r1, r1, #1
	cmp r4, r1
	bgt label62
	b label61
.p2align 4
label86:
	mov r5, #0
	cmp r4, r5
	bgt label36
	b label257
label13:
	mul r5, r4, r4
	cmp r4, #0
	beq label14
	cmp r5, #4
	ble label94
	sub r2, r5, #4
	sub r3, r5, #20
	cmp r2, #16
	ble label17
	mov r1, r0
	mov r4, #0
	b label19
.p2align 4
label36:
	mul r6, r4, r5
	mov r7, #0
	mla r1, r4, r5, r3
	b label37
.p2align 4
label258:
	add r5, r5, #1
	cmp r4, r5
	bgt label36
	add r3, r3, #1
	cmp r4, r3
	mul r2, r4, r3
	bgt label86
	b label13
.p2align 4
label37:
	ldr r8, [r0, r1, lsl #2]
	cmn r8, #1
	bgt label39
	add r7, r7, #1
	cmp r4, r7
	bgt label37
	b label258
.p2align 4
label42:
	add r10, r6, r7
	cmp r4, r7
	bgt label210
	mvn r11, #0
	add r8, r8, r9
	cmp r11, #0
	bge label215
.p2align 4
label45:
	str r8, [r0, r10, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label37
	add r5, r5, #1
	cmp r4, r5
	bgt label36
	add r3, r3, #1
	cmp r4, r3
	mul r2, r4, r3
	bgt label86
	b label13
.p2align 4
label39:
	cmp r4, r7
	ble label203
	add r9, r2, r7
	ldr r9, [r0, r9, lsl #2]
	cmn r9, #1
	bgt label42
	add r7, r7, #1
	cmp r4, r7
	bgt label37
	add r5, r5, #1
	cmp r4, r5
	bgt label36
	add r3, r3, #1
	cmp r4, r3
	mul r2, r4, r3
	bgt label86
	b label13
.p2align 4
label203:
	mvn r9, #0
	cmn r9, #1
	bgt label42
	add r7, r7, #1
	cmp r4, r7
	bgt label37
	add r5, r5, #1
	cmp r4, r5
	bgt label36
	add r3, r3, #1
	cmp r4, r3
	mul r2, r4, r3
	bgt label86
	b label13
.p2align 4
label210:
	ldr r11, [r0, r10, lsl #2]
	add r8, r8, r9
	cmp r11, #0
	blt label45
	ldr r9, [r0, r10, lsl #2]
	cmp r8, r9
	blt label45
	add r7, r7, #1
	cmp r4, r7
	bgt label37
	add r5, r5, #1
	cmp r4, r5
	bgt label36
label281:
	add r3, r3, #1
	cmp r4, r3
	mul r2, r4, r3
	bgt label86
	b label13
.p2align 4
label215:
	ldr r9, [r0, r10, lsl #2]
	cmp r8, r9
	blt label45
	add r7, r7, #1
	cmp r4, r7
	bgt label37
	add r5, r5, #1
	cmp r4, r5
	bgt label36
	b label281
.p2align 4
label19:
	ldr r7, [r1, #0]
	movw r6, #:lower16:dst
	movt r6, #:upper16:dst
	add r6, r6, r4, lsl #2
	add r4, r4, #16
	cmp r3, r4
	str r7, [r6, #0]
	ldr r7, [r1, #4]
	str r7, [r6, #4]
	ldr r7, [r1, #8]
	str r7, [r6, #8]
	ldr r7, [r1, #12]
	str r7, [r6, #12]
	ldr r7, [r1, #16]
	str r7, [r6, #16]
	ldr r7, [r1, #20]
	str r7, [r6, #20]
	ldr r7, [r1, #24]
	str r7, [r6, #24]
	ldr r7, [r1, #28]
	str r7, [r6, #28]
	ldr r7, [r1, #32]
	str r7, [r6, #32]
	ldr r7, [r1, #36]
	str r7, [r6, #36]
	ldr r7, [r1, #40]
	str r7, [r6, #40]
	ldr r7, [r1, #44]
	str r7, [r6, #44]
	ldr r7, [r1, #48]
	str r7, [r6, #48]
	ldr r7, [r1, #52]
	str r7, [r6, #52]
	ldr r7, [r1, #56]
	str r7, [r6, #56]
	ldr r7, [r1, #60]
	str r7, [r6, #60]
	ble label153
	add r1, r1, #64
	b label19
label17:
	mov r1, r0
	mov r4, #0
label24:
	ldr r7, [r1, #0]
	movw r6, #:lower16:dst
	movt r6, #:upper16:dst
	add r3, r6, r4, lsl #2
	add r4, r4, #4
	cmp r2, r4
	str r7, [r3, #0]
	ldr r6, [r1, #4]
	str r6, [r3, #4]
	ldr r6, [r1, #8]
	str r6, [r3, #8]
	ldr r6, [r1, #12]
	str r6, [r3, #12]
	ble label173
	add r1, r1, #16
	b label24
label173:
	add r0, r0, r4, lsl #2
label29:
	ldr r1, [r0, #0]
	movw r6, #:lower16:dst
	movt r6, #:upper16:dst
	str r1, [r6, r4, lsl #2]
	add r4, r4, #1
	cmp r5, r4
	ble label14
	add r0, r0, #4
	b label29
label14:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r5
	movw r6, #:lower16:dst
	movt r6, #:upper16:dst
	mov r1, r6
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label94:
	mov r4, #0
	b label29
label153:
	add r1, r0, r4, lsl #2
	b label24
label257:
	add r3, r3, #1
	b label11
