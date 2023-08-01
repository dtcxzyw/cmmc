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
	ble label43
.p2align 4
label44:
	mov r2, #0
.p2align 4
label4:
	mla r3, r4, r2, r1
	cmp r4, r2
	ble label50
	ldr r6, [r5, r3, lsl #2]
	add r2, r2, #1
	str r6, [r0, r3, lsl #2]
	cmp r4, r2
	bgt label4
	b label230
.p2align 4
label50:
	mvn r6, #0
	add r2, r2, #1
	str r6, [r0, r3, lsl #2]
	cmp r4, r2
	bgt label4
	add r1, r1, #1
	cmp r4, r1
	bgt label44
label43:
	mov r5, #0
	b label10
.p2align 4
label230:
	add r1, r1, #1
	cmp r4, r1
	bgt label44
	b label43
label10:
	mul r2, r4, r5
	cmp r4, r5
	ble label24
.p2align 4
label66:
	mov r6, #0
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	ble label71
.p2align 4
label72:
	mov r7, #0
	cmp r4, r7
	bgt label16
	b label75
.p2align 4
label233:
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label72
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label66
label24:
	mul r5, r4, r4
	cmp r4, #0
	bne label26
label25:
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
label26:
	cmp r5, #4
	bgt label29
	b label120
label27:
	ldr r2, [r0, r1, lsl #2]
	movw r6, #:lower16:dst
	movt r6, #:upper16:dst
	str r2, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r5, r1
	bgt label27
	b label25
label29:
	sub r1, r5, #4
	sub r2, r5, #20
	cmp r1, #16
	ble label136
	mov r3, #0
.p2align 4
label30:
	add r4, r0, r3, lsl #2
	movw r6, #:lower16:dst
	movt r6, #:upper16:dst
	add r6, r6, r3, lsl #2
	ldr r7, [r4, #0]
	add r3, r3, #16
	cmp r2, r3
	str r7, [r6, #0]
	ldr r7, [r4, #4]
	str r7, [r6, #4]
	ldr r7, [r4, #8]
	str r7, [r6, #8]
	ldr r7, [r4, #12]
	str r7, [r6, #12]
	ldr r7, [r4, #16]
	str r7, [r6, #16]
	ldr r7, [r4, #20]
	str r7, [r6, #20]
	ldr r7, [r4, #24]
	str r7, [r6, #24]
	ldr r7, [r4, #28]
	str r7, [r6, #28]
	ldr r7, [r4, #32]
	str r7, [r6, #32]
	ldr r7, [r4, #36]
	str r7, [r6, #36]
	ldr r7, [r4, #40]
	str r7, [r6, #40]
	ldr r7, [r4, #44]
	str r7, [r6, #44]
	ldr r7, [r4, #48]
	str r7, [r6, #48]
	ldr r7, [r4, #52]
	str r7, [r6, #52]
	ldr r7, [r4, #56]
	str r7, [r6, #56]
	ldr r4, [r4, #60]
	str r4, [r6, #60]
	bgt label30
	mov r2, r3
label32:
	add r3, r0, r2, lsl #2
	movw r6, #:lower16:dst
	movt r6, #:upper16:dst
	add r4, r6, r2, lsl #2
	ldr r7, [r3, #0]
	add r2, r2, #4
	cmp r1, r2
	str r7, [r4, #0]
	ldr r6, [r3, #4]
	str r6, [r4, #4]
	ldr r6, [r3, #8]
	str r6, [r4, #8]
	ldr r3, [r3, #12]
	str r3, [r4, #12]
	bgt label32
	mov r1, r2
	b label27
.p2align 4
label16:
	ldr r8, [r0, r1, lsl #2]
	cmn r8, #1
	bgt label17
	add r7, r7, #1
	cmp r4, r7
	bgt label16
	b label233
.p2align 4
label17:
	add r9, r2, r7
	ldr r9, [r0, r9, lsl #2]
	cmn r9, #1
	bgt label18
	add r7, r7, #1
	cmp r4, r7
	bgt label16
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label72
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label66
	b label24
.p2align 4
label18:
	add r10, r3, r7
	add r8, r8, r9
	ldr r11, [r0, r10, lsl #2]
	cmp r11, #0
	blt label20
	ldr r9, [r0, r10, lsl #2]
	cmp r8, r9
	bge label106
.p2align 4
label20:
	str r8, [r0, r10, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label16
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label72
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label66
	b label24
.p2align 4
label106:
	add r7, r7, #1
	cmp r4, r7
	bgt label16
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label72
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label66
	b label24
.p2align 4
label75:
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label72
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label66
	b label24
label71:
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label66
	b label24
label136:
	mov r2, #0
	b label32
label120:
	mov r1, #0
	b label27
