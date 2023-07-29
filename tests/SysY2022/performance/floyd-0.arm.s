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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r4, #:lower16:w
	str r0, [sp, #0]
	mov r7, r0
	movt r4, #:upper16:w
	mov r0, r4
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:temp
	movw r7, #:lower16:dst
	movt r0, #:upper16:temp
	movt r7, #:upper16:dst
	str r7, [sp, #4]
	ldr r7, [sp, #0]
	cmp r7, r1
	bgt label4
	mul r2, r7, r1
	cmp r7, #0
	bne label27
	b label26
label71:
	mov r3, #0
	ldr r7, [sp, #0]
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label77
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label18:
	add r8, r2, r6
	ldr r8, [r0, r8, lsl #2]
	cmn r8, #1
	bgt label19
	add r6, r6, #1
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label17
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label77
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label19:
	add r9, r5, r6
	ldr r10, [r0, r9, lsl #2]
	cmp r10, #0
	blt label21
	ldr r10, [r0, r9, lsl #2]
	add r11, r7, r8
	cmp r10, r11
	bgt label21
	add r6, r6, #1
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label17
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label77
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label21:
	add r7, r7, r8
	str r7, [r0, r9, lsl #2]
	add r6, r6, #1
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label17
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label77
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label77:
	mov r6, #0
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label17
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label77
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label17:
	ldr r7, [r0, r4, lsl #2]
	cmn r7, #1
	bgt label18
	add r6, r6, #1
	ldr r7, [sp, #0]
	cmp r7, r6
	bgt label17
	add r3, r3, #1
	cmp r7, r3
	mla r4, r7, r3, r1
	mul r5, r7, r3
	bgt label77
	add r1, r1, #1
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	beq label26
label27:
	ldr r7, [sp, #0]
	mul r1, r7, r7
	cmp r1, #4
	bgt label30
	mov r2, #0
	b label28
.p2align 4
label4:
	ldr r7, [sp, #0]
	cmp r7, #0
	bgt label49
	add r1, r1, #1
	cmp r7, r1
	bgt label4
	mov r1, #0
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label49:
	mov r2, #0
	ldr r7, [sp, #0]
	cmp r7, r2
	mla r3, r7, r2, r1
	ble label56
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	str r5, [r0, r3, lsl #2]
	cmp r7, r2
	bgt label6
	add r1, r1, #1
	cmp r7, r1
	bgt label4
	mov r1, #0
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label6:
	ldr r7, [sp, #0]
	cmp r7, r2
	mla r3, r7, r2, r1
	ble label56
	ldr r5, [r4, r3, lsl #2]
	add r2, r2, #1
	str r5, [r0, r3, lsl #2]
	cmp r7, r2
	bgt label6
	add r1, r1, #1
	cmp r7, r1
	bgt label4
	mov r1, #0
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
	b label26
.p2align 4
label56:
	mvn r5, #0
	add r2, r2, #1
	str r5, [r0, r3, lsl #2]
	ldr r7, [sp, #0]
	cmp r7, r2
	bgt label6
	add r1, r1, #1
	cmp r7, r1
	bgt label4
	mov r1, #0
	cmp r7, r1
	mul r2, r7, r1
	bgt label71
	cmp r7, #0
	bne label27
label26:
	mov r0, #64
	bl _sysy_stoptime
	ldr r7, [sp, #0]
	mul r0, r7, r7
	ldr r7, [sp, #4]
	mov r1, r7
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label28:
	ldr r3, [r0, r2, lsl #2]
	ldr r7, [sp, #4]
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	cmp r1, r2
	bgt label28
	b label26
label30:
	sub r2, r1, #4
	sub r4, r1, #20
	cmp r2, #16
	bgt label144
	mov r3, #0
	b label31
label144:
	mov r3, #0
	b label33
label31:
	add r4, r0, r3, lsl #2
	ldr r6, [r0, r3, lsl #2]
	ldr r7, [sp, #4]
	str r6, [r7, r3, lsl #2]
	add r5, r7, r3, lsl #2
	ldr r6, [r4, #4]
	add r3, r3, #4
	cmp r2, r3
	str r6, [r5, #4]
	ldr r6, [r4, #8]
	str r6, [r5, #8]
	ldr r4, [r4, #12]
	str r4, [r5, #12]
	bgt label31
	mov r2, r3
	b label28
label33:
	add r5, r0, r3, lsl #2
	ldr r8, [r0, r3, lsl #2]
	ldr r7, [sp, #4]
	str r8, [r7, r3, lsl #2]
	add r6, r7, r3, lsl #2
	ldr r7, [r5, #4]
	add r3, r3, #16
	cmp r4, r3
	str r7, [r6, #4]
	ldr r7, [r5, #8]
	str r7, [r6, #8]
	ldr r7, [r5, #12]
	str r7, [r6, #12]
	ldr r7, [r5, #16]
	str r7, [r6, #16]
	ldr r7, [r5, #20]
	str r7, [r6, #20]
	ldr r7, [r5, #24]
	str r7, [r6, #24]
	ldr r7, [r5, #28]
	str r7, [r6, #28]
	ldr r7, [r5, #32]
	str r7, [r6, #32]
	ldr r7, [r5, #36]
	str r7, [r6, #36]
	ldr r7, [r5, #40]
	str r7, [r6, #40]
	ldr r7, [r5, #44]
	str r7, [r6, #44]
	ldr r7, [r5, #48]
	str r7, [r6, #48]
	ldr r7, [r5, #52]
	str r7, [r6, #52]
	ldr r7, [r5, #56]
	str r7, [r6, #56]
	ldr r5, [r5, #60]
	str r5, [r6, #60]
	bgt label33
	b label31
