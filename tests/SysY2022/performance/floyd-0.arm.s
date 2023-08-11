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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[32] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #36
	bl getint
	str r0, [sp, #28]
	movw r6, #:lower16:w
	movt r6, #:upper16:w
	mov r8, r0
	mov r0, r6
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
	ldr r8, [sp, #28]
	sub r10, r8, #3
	str r10, [sp, #20]
	lsl r10, r8, #2
	str r10, [sp, #16]
	str r6, [sp, #8]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	str r6, [sp, #4]
	mov r10, r6
	str r0, [sp, #0]
label2:
	ldr r8, [sp, #28]
	ldr r0, [sp, #0]
	cmp r8, r0
	bgt label6
	b label78
.p2align 4
label23:
	ldr r8, [sp, #28]
	add r0, r0, r8, lsl #2
.p2align 4
label19:
	ldr r3, [r0, #0]
	add r1, r1, #1
	ldr r10, [sp, #4]
	str r3, [r10, r2, lsl #2]
	ldr r8, [sp, #28]
	cmp r8, r1
	add r2, r8, r2
	bgt label23
	ldr r0, [sp, #0]
	ldr r6, [sp, #8]
	add r0, r0, #1
	add r10, r10, #4
	add r6, r6, #4
	str r6, [sp, #8]
	str r10, [sp, #4]
	str r0, [sp, #0]
	cmp r8, r0
	ble label78
.p2align 4
label6:
	ldr r8, [sp, #28]
	cmp r8, #3
	ble label82
	mov r9, #0
	ldr r10, [sp, #4]
	mov r7, r9
	ldr r6, [sp, #8]
	add r0, r10, r8, lsl #2
	add r3, r6, r8, lsl #2
	add r1, r0, r8, lsl #2
	add r4, r3, r8, lsl #2
	add r2, r1, r8, lsl #2
	add r5, r4, r8, lsl #2
	mov r8, r9
.p2align 4
label8:
	ldr r11, [r6, #0]
	add r9, r9, #4
	ldr r10, [sp, #4]
	str r11, [r10, r7, lsl #2]
	ldr r10, [r3, r8, lsl #2]
	str r10, [r0, r7, lsl #2]
	ldr r10, [r4, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	ldr r10, [r5, r8, lsl #2]
	str r10, [r2, r7, lsl #2]
	ldr r10, [sp, #16]
	add r8, r10, r8
	add r7, r10, r7
	ldr r10, [sp, #20]
	cmp r10, r9
	ble label119
	ldr r10, [sp, #16]
	add r6, r6, r10, lsl #2
	b label8
.p2align 4
label119:
	mov r0, r8
	ldr r8, [sp, #28]
	cmp r8, r9
	ble label334
.p2align 4
label18:
	ldr r6, [sp, #8]
	mov r2, r7
	mov r1, r9
	add r0, r6, r0, lsl #2
	b label19
label78:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r3, #0
	mov r1, r6
label26:
	ldr r8, [sp, #28]
	cmp r8, r3
	mul r2, r8, r3
	bgt label147
	b label29
.p2align 4
label356:
	add r3, r3, #1
	add r1, r1, #4
	ldr r8, [sp, #28]
	cmp r8, r3
	mul r2, r8, r3
	ble label29
.p2align 4
label147:
	mov r4, #0
	ldr r8, [sp, #28]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label55
	add r3, r3, #1
	add r1, r1, #4
	b label26
.p2align 4
label275:
	add r7, r7, #1
	ldr r8, [sp, #28]
	cmp r8, r7
	ble label338
.p2align 4
label64:
	add r6, r6, #4
	ldr r8, [r1, r0, lsl #2]
	cmn r8, #1
	bgt label59
	add r7, r7, #1
	ldr r8, [sp, #28]
	cmp r8, r7
	bgt label64
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	ble label356
.p2align 4
label55:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r7, #0
	ldr r8, [r1, r0, lsl #2]
	cmn r8, #1
	bgt label59
	add r7, r7, #1
	ldr r8, [sp, #28]
	cmp r8, r7
	bgt label64
	add r4, r4, #1
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label55
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label147
	b label29
.p2align 4
label59:
	ldr r9, [r6, r2, lsl #2]
	cmn r9, #1
	ble label275
	ldr r10, [r6, r0, lsl #2]
	add r8, r8, r9
	cmp r10, #0
	blt label61
	ldr r9, [r5, r7, lsl #2]
	cmp r8, r9
	bge label339
.p2align 4
label61:
	str r8, [r5, r7, lsl #2]
	ldr r8, [sp, #28]
	add r7, r7, #1
	cmp r8, r7
	bgt label64
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label55
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label147
	b label29
.p2align 4
label339:
	add r7, r7, #1
	ldr r8, [sp, #28]
	cmp r8, r7
	bgt label64
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label55
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label147
	b label29
.p2align 4
label338:
	add r4, r4, #1
	ldr r8, [sp, #28]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label55
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label147
label29:
	ldr r8, [sp, #28]
	cmp r8, #0
	mul r3, r8, r8
	str r3, [sp, #24]
	beq label30
	cmp r3, #3
	ble label155
	sub r1, r3, #18
	sub r4, r3, #3
	cmp r4, #15
	str r4, [sp, #12]
	ble label161
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	mov r0, r2
	mov r2, #0
.p2align 4
label42:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	add r3, r6, r2, lsl #2
	add r2, r2, #16
	ldr r4, [r3, #0]
	cmp r1, r2
	str r4, [r0, #0]
	ldr r4, [r3, #4]
	str r4, [r0, #4]
	ldr r4, [r3, #8]
	str r4, [r0, #8]
	ldr r4, [r3, #12]
	str r4, [r0, #12]
	ldr r4, [r3, #16]
	str r4, [r0, #16]
	ldr r4, [r3, #20]
	str r4, [r0, #20]
	ldr r4, [r3, #24]
	str r4, [r0, #24]
	ldr r4, [r3, #28]
	str r4, [r0, #28]
	ldr r4, [r3, #32]
	str r4, [r0, #32]
	ldr r4, [r3, #36]
	str r4, [r0, #36]
	ldr r4, [r3, #40]
	str r4, [r0, #40]
	ldr r4, [r3, #44]
	str r4, [r0, #44]
	ldr r4, [r3, #48]
	str r4, [r0, #48]
	ldr r4, [r3, #52]
	str r4, [r0, #52]
	ldr r4, [r3, #56]
	str r4, [r0, #56]
	ldr r3, [r3, #60]
	str r3, [r0, #60]
	ble label238
	add r0, r0, #64
	b label42
label82:
	mov r9, #0
	mov r0, r9
	mov r7, r9
	ldr r8, [sp, #28]
	cmp r8, r9
	bgt label18
	ldr r0, [sp, #0]
	ldr r10, [sp, #4]
	ldr r6, [sp, #8]
	add r0, r0, #1
	add r10, r10, #4
	add r6, r6, #4
	str r6, [sp, #8]
	str r10, [sp, #4]
	str r0, [sp, #0]
	b label2
label238:
	mov r1, r2
label33:
	ldr r4, [sp, #12]
	cmp r4, r1
	ble label165
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	add r0, r6, r1, lsl #2
	b label37
label40:
	add r0, r0, #16
label37:
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	ldr r3, [r0, #0]
	add r2, r2, r1, lsl #2
	add r1, r1, #4
	str r3, [r2, #0]
	ldr r3, [r0, #4]
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	str r3, [r2, #8]
	ldr r3, [r0, #12]
	str r3, [r2, #12]
	ldr r4, [sp, #12]
	cmp r4, r1
	bgt label40
	mov r0, r1
label46:
	ldr r3, [sp, #24]
	cmp r3, r0
	ble label30
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	add r1, r6, r0, lsl #2
	b label49
label52:
	add r1, r1, #4
label49:
	ldr r3, [r1, #0]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	str r3, [r2, r0, lsl #2]
	ldr r3, [sp, #24]
	add r0, r0, #1
	cmp r3, r0
	bgt label52
label30:
	mov r0, #64
	bl _sysy_stoptime
	ldr r3, [sp, #24]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	mov r0, r3
	mov r1, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label334:
	ldr r0, [sp, #0]
	ldr r10, [sp, #4]
	ldr r6, [sp, #8]
	add r0, r0, #1
	add r10, r10, #4
	add r6, r6, #4
	str r6, [sp, #8]
	str r10, [sp, #4]
	str r0, [sp, #0]
	ldr r8, [sp, #28]
	cmp r8, r0
	bgt label6
	b label78
label165:
	mov r0, r2
	b label46
label155:
	mov r0, #0
	b label46
label161:
	mov r1, #0
	mov r2, r1
	b label33
