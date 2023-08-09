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
	sub sp, sp, #44
	bl getint
	movw r6, #:lower16:w
	movt r6, #:upper16:w
	str r0, [sp, #36]
	mov r8, r0
	mov r0, r6
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
	ldr r8, [sp, #36]
	add r5, r8, r8, lsl #1
	lsl r3, r8, #1
	sub r10, r8, #4
	str r10, [sp, #28]
	lsl r10, r8, #2
	str r3, [sp, #24]
	str r5, [sp, #20]
	str r10, [sp, #16]
	str r6, [sp, #12]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	str r6, [sp, #4]
	mov r10, r6
	str r0, [sp, #0]
	cmp r8, r0
	bgt label6
	b label74
.p2align 4
label19:
	ldr r10, [sp, #16]
	add r6, r6, r10, lsl #2
.p2align 4
label14:
	ldr r11, [r6, #0]
	add r9, r9, #4
	ldr r10, [sp, #4]
	str r11, [r10, r8, lsl #2]
	ldr r10, [r1, r7, lsl #2]
	str r10, [r0, r8, lsl #2]
	ldr r10, [r3, r7, lsl #2]
	str r10, [r2, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	str r10, [r4, r8, lsl #2]
	ldr r10, [sp, #16]
	add r7, r10, r7
	add r8, r10, r8
	ldr r10, [sp, #28]
	cmp r10, r9
	bgt label19
	ldr r6, [sp, #12]
	mov r2, r8
	add r1, r9, #1
	add r0, r6, r7, lsl #2
	ldr r3, [r0, #0]
	ldr r10, [sp, #4]
	str r3, [r10, r8, lsl #2]
	ldr r8, [sp, #36]
	cmp r8, r1
	add r2, r8, r2
	ble label87
.p2align 4
label11:
	ldr r8, [sp, #36]
	add r0, r0, r8, lsl #2
.p2align 4
label7:
	ldr r3, [r0, #0]
	add r1, r1, #1
	ldr r10, [sp, #4]
	str r3, [r10, r2, lsl #2]
	ldr r8, [sp, #36]
	cmp r8, r1
	add r2, r8, r2
	bgt label11
.p2align 4
label87:
	ldr r0, [sp, #0]
	ldr r10, [sp, #4]
	ldr r6, [sp, #12]
	add r0, r0, #1
	add r10, r10, #4
	add r6, r6, #4
	str r6, [sp, #12]
	str r10, [sp, #4]
	str r0, [sp, #0]
	ldr r8, [sp, #36]
	cmp r8, r0
	ble label74
.p2align 4
label6:
	ldr r8, [sp, #36]
	cmp r8, #4
	ble label78
	mov r9, #0
	ldr r10, [sp, #4]
	ldr r6, [sp, #12]
	ldr r3, [sp, #24]
	ldr r5, [sp, #20]
	add r0, r10, r8, lsl #2
	mov r7, r9
	add r1, r6, r8, lsl #2
	add r2, r10, r3, lsl #2
	mov r8, r9
	add r4, r10, r5, lsl #2
	add r3, r6, r3, lsl #2
	add r5, r6, r5, lsl #2
	b label14
label74:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r3, #0
	mov r1, r6
	ldr r8, [sp, #36]
	cmp r8, r3
	mul r2, r8, r3
	bgt label139
	b label26
.p2align 4
label341:
	add r3, r3, #1
	add r1, r1, #4
	ldr r8, [sp, #36]
	cmp r8, r3
	mul r2, r8, r3
	ble label26
.p2align 4
label139:
	mov r4, #0
	ldr r8, [sp, #36]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label50
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label139
	b label26
.p2align 4
label337:
	add r4, r4, #1
	ldr r8, [sp, #36]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	ble label341
.p2align 4
label50:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r7, #0
	ldr r8, [r1, r0, lsl #2]
	cmn r8, #1
	bgt label57
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	bgt label56
	add r4, r4, #1
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label50
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label139
	b label26
.p2align 4
label330:
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	ble label337
.p2align 4
label56:
	add r6, r6, #4
	ldr r8, [r1, r0, lsl #2]
	cmn r8, #1
	ble label330
.p2align 4
label57:
	ldr r9, [r6, r2, lsl #2]
	cmn r9, #1
	ble label268
	ldr r10, [r6, r0, lsl #2]
	add r8, r8, r9
	cmp r10, #0
	blt label60
	ldr r9, [r5, r7, lsl #2]
	cmp r8, r9
	bge label283
.p2align 4
label60:
	str r8, [r5, r7, lsl #2]
	ldr r8, [sp, #36]
	add r7, r7, #1
	cmp r8, r7
	bgt label56
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label50
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label139
	b label26
.p2align 4
label268:
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	bgt label56
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label50
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label139
	b label26
.p2align 4
label283:
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	bgt label56
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label50
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label139
label26:
	ldr r8, [sp, #36]
	cmp r8, #0
	mul r0, r8, r8
	str r0, [sp, #32]
	beq label27
	cmp r0, #4
	ble label147
	sub r2, r0, #4
	cmp r2, #16
	sub r0, r0, #20
	str r2, [sp, #8]
	ble label153
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r1, #0
	b label31
.p2align 4
label34:
	add r6, r6, #64
.p2align 4
label31:
	ldr r3, [r6, #0]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	add r2, r2, r1, lsl #2
	add r1, r1, #16
	cmp r0, r1
	str r3, [r2, #0]
	ldr r3, [r6, #4]
	str r3, [r2, #4]
	ldr r3, [r6, #8]
	str r3, [r2, #8]
	ldr r3, [r6, #12]
	str r3, [r2, #12]
	ldr r3, [r6, #16]
	str r3, [r2, #16]
	ldr r3, [r6, #20]
	str r3, [r2, #20]
	ldr r3, [r6, #24]
	str r3, [r2, #24]
	ldr r3, [r6, #28]
	str r3, [r2, #28]
	ldr r3, [r6, #32]
	str r3, [r2, #32]
	ldr r3, [r6, #36]
	str r3, [r2, #36]
	ldr r3, [r6, #40]
	str r3, [r2, #40]
	ldr r3, [r6, #44]
	str r3, [r2, #44]
	ldr r3, [r6, #48]
	str r3, [r2, #48]
	ldr r3, [r6, #52]
	str r3, [r2, #52]
	ldr r3, [r6, #56]
	str r3, [r2, #56]
	ldr r3, [r6, #60]
	str r3, [r2, #60]
	bgt label34
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	add r6, r6, r1, lsl #2
	b label37
label40:
	add r6, r6, #16
label37:
	ldr r3, [r6, #0]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	add r0, r2, r1, lsl #2
	add r1, r1, #4
	str r3, [r0, #0]
	ldr r2, [r6, #4]
	str r2, [r0, #4]
	ldr r2, [r6, #8]
	str r2, [r0, #8]
	ldr r2, [r6, #12]
	str r2, [r0, #12]
	ldr r2, [sp, #8]
	cmp r2, r1
	bgt label40
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	add r6, r6, r1, lsl #2
label43:
	ldr r0, [r6, #0]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	str r0, [r2, r1, lsl #2]
	ldr r0, [sp, #32]
	add r1, r1, #1
	cmp r0, r1
	ble label27
	add r6, r6, #4
	b label43
label27:
	mov r0, #64
	bl _sysy_stoptime
	ldr r0, [sp, #32]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	mov r1, r2
	bl putarray
	add sp, sp, #44
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label78:
	ldr r6, [sp, #12]
	mov r2, #0
	mov r1, r2
	mov r0, r6
	b label7
label153:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r1, #0
	b label37
label147:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r1, #0
	b label43
