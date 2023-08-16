.arch armv7ve
.data
.bss
.align 8
t:
	.zero	8040
.align 8
dp:
	.zero	140700
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	movw r6, #:lower16:dp
	movt r6, #:upper16:dp
	mov r4, r0
	mov r0, #140
	mla r1, r4, r0, r6
	str r1, [sp, #16]
	bl getint
	cmp r4, #0
	add r7, r0, #1
	str r0, [sp, #0]
	mov r3, r0
	str r7, [sp, #20]
	add r0, r4, #1
	sub r7, r3, #2
	mov r4, #1
	str r0, [sp, #4]
	sub r3, r3, #17
	str r7, [sp, #12]
	str r3, [sp, #8]
	ble label2
	add r5, r6, #140
	mov r7, r4
	b label38
.p2align 4
label60:
	add r5, r5, #140
.p2align 4
label38:
	bl getint
	and r1, r0, #1
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	add r0, r0, r7, lsl #3
	add r7, r7, #1
	str r4, [r0, r1, lsl #2]
	ldr r1, [r5, #-140]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r0, [sp, #4]
	cmp r0, r7
	bgt label60
	add r1, r6, #140
	mov r2, r4
	ldr r3, [sp, #0]
	cmp r3, #0
	bgt label45
	b label58
.p2align 4
label57:
	add r3, r3, #4
.p2align 4
label54:
	add r5, r5, #1
	ldr r6, [r3, #0]
	and r7, r5, #1
	ldr r8, [r0, r7, lsl #2]
	ldr r7, [r3, #-4]
	add r6, r6, r8
	add r7, r8, r7
	cmp r7, r6
	movle r7, r6
	str r7, [r3, #140]
	ldr r7, [sp, #20]
	cmp r7, r5
	bgt label57
	add r2, r2, #1
	ldr r0, [sp, #4]
	cmp r0, r2
	ble label2
.p2align 4
label59:
	add r1, r1, #140
	ldr r3, [sp, #0]
	cmp r3, #0
	ble label58
.p2align 4
label45:
	movw r0, #:lower16:t
	movt r0, #:upper16:t
	sub r5, r1, #140
	ldr r7, [sp, #20]
	add r0, r0, r2, lsl #3
	cmp r7, #4
	ble label206
	add r3, r5, #4
	mov r6, r4
	b label47
.p2align 4
label50:
	add r3, r3, #16
.p2align 4
label47:
	add r7, r6, #1
	ldr r8, [r3, #0]
	and r7, r7, #1
	ldr r7, [r0, r7, lsl #2]
	ldr r9, [r3, #-4]
	add r10, r8, r7
	add r9, r7, r9
	cmp r9, r10
	movle r9, r10
	and r10, r6, #1
	str r9, [r3, #140]
	add r6, r6, #4
	ldr r9, [r3, #4]
	ldr r11, [r0, r10, lsl #2]
	add r8, r8, r11
	add r10, r9, r11
	cmp r10, r8
	movle r10, r8
	str r10, [r3, #144]
	ldr r8, [r3, #8]
	add r10, r7, r8
	add r7, r7, r9
	mov r9, r10
	cmp r10, r7
	movle r9, r7
	str r9, [r3, #148]
	ldr r7, [r3, #12]
	and r9, r6, #1
	ldr r9, [r0, r9, lsl #2]
	add r8, r8, r9
	add r7, r7, r9
	cmp r7, r8
	movle r7, r8
	str r7, [r3, #152]
	ldr r7, [sp, #12]
	cmp r7, r6
	bgt label50
	ldr r7, [sp, #20]
	cmp r7, r6
	ble label306
.p2align 4
label53:
	add r3, r5, r6, lsl #2
	mov r5, r6
	b label54
label2:
	ldr r3, [sp, #0]
	cmn r3, #1
	ble label78
	ldr r7, [sp, #20]
	cmp r7, #3
	ble label82
	ldr r7, [sp, #12]
	cmp r7, #15
	ble label100
	ldr r1, [sp, #16]
	mov r0, r1
	mov r1, #0
	mov r2, r1
	b label18
.p2align 4
label22:
	add r0, r0, #64
.p2align 4
label18:
	ldr r3, [r0, #0]
	add r1, r1, #16
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #4]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #8]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #12]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #16]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #20]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #24]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #28]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #32]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #36]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #40]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #44]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #48]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #52]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #56]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #60]
	cmp r2, r3
	movle r2, r3
	ldr r3, [sp, #8]
	cmp r3, r1
	bgt label22
	mov r4, r1
	mov r3, r2
	mov r0, r1
label23:
	ldr r7, [sp, #12]
	cmp r7, r4
	ble label157
	ldr r1, [sp, #16]
	mov r2, r3
	add r0, r1, r4, lsl #2
	mov r1, r4
	b label29
label33:
	add r0, r0, #16
	mov r1, r3
label29:
	ldr r3, [r0, #0]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #4]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #8]
	cmp r2, r3
	movle r2, r3
	ldr r3, [r0, #12]
	ldr r7, [sp, #12]
	cmp r2, r3
	movle r2, r3
	add r3, r1, #4
	cmp r7, r3
	bgt label33
	mov r1, r2
	mov r0, r3
label6:
	ldr r7, [sp, #20]
	cmp r7, r0
	ble label86
	ldr r1, [sp, #16]
	mov r3, r0
	add r1, r1, r0, lsl #2
	mov r0, r2
	b label11
label15:
	add r1, r1, #4
label11:
	ldr r2, [r1, #0]
	add r3, r3, #1
	ldr r7, [sp, #20]
	cmp r0, r2
	movle r0, r2
	cmp r7, r3
	bgt label15
label3:
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label58:
	add r2, r2, #1
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label59
	b label2
label206:
	mov r6, r4
	ldr r7, [sp, #20]
	cmp r7, r4
	bgt label53
	add r2, r2, #1
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label59
	b label2
.p2align 4
label306:
	add r2, r2, #1
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label59
	b label2
label100:
	mov r4, #0
	mov r2, r4
	mov r3, r4
	mov r0, r4
	b label23
label82:
	mov r2, #0
	mov r1, r2
	mov r0, r2
	b label6
label86:
	mov r0, r1
	b label3
label78:
	mov r0, #0
	b label3
label157:
	mov r1, r2
	b label6
