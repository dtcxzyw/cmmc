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
	bgt label56
label55:
	mov r5, #0
	b label11
.p2align 4
label56:
	mov r2, #0
	mov r3, r2
.p2align 4
label4:
	add r6, r1, r2
	cmp r4, r3
	ble label61
	mla r7, r4, r3, r1
	add r2, r4, r2
	add r3, r3, #1
	cmp r4, r3
	ldr r7, [r5, r7, lsl #2]
	str r7, [r0, r6, lsl #2]
	bgt label4
	b label249
.p2align 4
label61:
	mvn r7, #0
	add r3, r3, #1
	add r2, r4, r2
	str r7, [r0, r6, lsl #2]
	cmp r4, r3
	bgt label4
	add r1, r1, #1
	cmp r4, r1
	bgt label56
	b label55
label11:
	mul r2, r4, r5
	cmp r4, r5
	ble label25
.p2align 4
label80:
	mov r6, #0
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	ble label85
.p2align 4
label86:
	mov r7, #0
	cmp r4, r7
	bgt label18
	b label244
.p2align 4
label253:
	add r6, r6, #1
	cmp r4, r6
	mla r1, r4, r6, r5
	mul r3, r4, r6
	bgt label86
	add r5, r5, #1
	cmp r4, r5
	mul r2, r4, r5
	bgt label80
label25:
	mul r5, r4, r4
	cmp r4, #0
	beq label26
	cmp r5, #4
	ble label134
	sub r2, r5, #4
	sub r3, r5, #20
	cmp r2, #16
	ble label149
	mov r1, r0
	mov r4, #0
	b label41
.p2align 4
label18:
	ldr r8, [r0, r1, lsl #2]
	cmn r8, #1
	bgt label19
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	b label253
.p2align 4
label19:
	add r9, r2, r7
	ldr r9, [r0, r9, lsl #2]
	cmn r9, #1
	ble label105
	add r10, r3, r7
	add r8, r8, r9
	ldr r11, [r0, r10, lsl #2]
	cmp r11, #0
	blt label21
	ldr r9, [r0, r10, lsl #2]
	cmp r8, r9
	bge label246
.p2align 4
label21:
	str r8, [r0, r10, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	add r6, r6, #1
	cmp r4, r6
	mla r1, r4, r6, r5
	mul r3, r4, r6
	bgt label86
	add r5, r5, #1
	cmp r4, r5
	mul r2, r4, r5
	bgt label80
	b label25
.p2align 4
label105:
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	add r6, r6, #1
	cmp r4, r6
	mla r1, r4, r6, r5
	mul r3, r4, r6
	bgt label86
	add r5, r5, #1
	cmp r4, r5
	mul r2, r4, r5
	bgt label80
	b label25
.p2align 4
label246:
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	add r6, r6, #1
	cmp r4, r6
	mla r1, r4, r6, r5
	mul r3, r4, r6
	bgt label86
	add r5, r5, #1
	cmp r4, r5
	mul r2, r4, r5
	bgt label80
	b label25
.p2align 4
label41:
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
	ble label222
	add r1, r1, #64
	b label41
label85:
	add r5, r5, #1
	cmp r4, r5
	mul r2, r4, r5
	bgt label80
	b label25
.p2align 4
label244:
	add r6, r6, #1
	cmp r4, r6
	mla r1, r4, r6, r5
	mul r3, r4, r6
	bgt label86
	b label85
.p2align 4
label249:
	add r1, r1, #1
	cmp r4, r1
	bgt label56
	b label55
label149:
	mov r1, r0
	mov r4, #0
label34:
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
	ble label166
	add r1, r1, #16
	b label34
label222:
	add r1, r0, r4, lsl #2
	b label34
label134:
	mov r4, #0
label28:
	ldr r1, [r0, #0]
	movw r6, #:lower16:dst
	movt r6, #:upper16:dst
	str r1, [r6, r4, lsl #2]
	add r4, r4, #1
	cmp r5, r4
	ble label26
	add r0, r0, #4
	b label28
label26:
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
label166:
	add r0, r0, r4, lsl #2
	b label28
