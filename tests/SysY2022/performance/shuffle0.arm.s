.arch armv7ve
.data
.bss
.align 4
hashmod:
	.zero	4
.align 8
head:
	.zero	40000000
.align 8
next:
	.zero	40000000
.align 8
nextvalue:
	.zero	40000000
.align 8
key:
	.zero	40000000
.align 8
value:
	.zero	40000000
.align 8
keys:
	.zero	40000000
.align 8
values:
	.zero	40000000
.align 8
requests:
	.zero	40000000
.align 8
ans:
	.zero	40000000
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r4, #:lower16:keys
	movt r4, #:upper16:keys
	movw r8, #:lower16:hashmod
	movt r8, #:upper16:hashmod
	str r0, [r8, #0]
	mov r0, r4
	bl getarray
	movw r6, #:lower16:values
	movt r6, #:upper16:values
	str r0, [sp, #0]
	mov r0, r6
	bl getarray
	movw r0, #:lower16:requests
	movt r0, #:upper16:requests
	bl getarray
	str r0, [sp, #4]
	mov r5, r0
	mov r0, #78
	bl _sysy_starttime
	mov r5, #0
	mov r0, r4
	movw r3, #:lower16:nextvalue
	movt r3, #:upper16:nextvalue
	movw r2, #:lower16:key
	movt r2, #:upper16:key
	movw r1, #:lower16:head
	movt r1, #:upper16:head
	mov r4, r5
	b label94
.p2align 4
label102:
	add r7, r3, r10, lsl #2
	add r4, r4, #1
	ldr r8, [r7, #0]
	str r8, [r3, r5, lsl #2]
	str r5, [r7, #0]
	movw r7, #:lower16:value
	movt r7, #:upper16:value
	str r6, [r7, r5, lsl #2]
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label107
.p2align 4
label106:
	add r0, r0, #4
.p2align 4
label94:
	ldr r7, [r0, #0]
	movw r6, #:lower16:values
	movt r6, #:upper16:values
	movw r8, #:lower16:hashmod
	movt r8, #:upper16:hashmod
	add r5, r5, #1
	ldr r6, [r6, r4, lsl #2]
	ldr r8, [r8, #0]
	sdiv r9, r7, r8
	mls r8, r9, r8, r7
	ldr r9, [r1, r8, lsl #2]
	cmp r9, #0
	bne label141
	str r5, [r1, r8, lsl #2]
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	add r4, r4, #1
	str r7, [r2, r5, lsl #2]
	movw r7, #:lower16:value
	movt r7, #:upper16:value
	str r6, [r7, r5, lsl #2]
	mov r6, #0
	str r6, [r11, r5, lsl #2]
	str r6, [r3, r5, lsl #2]
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label106
label107:
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	ldr r5, [sp, #4]
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r5, [r0, #0]
	mov r1, r5
	mov r0, #0
	bl cmmcParallelFor
	mov r0, #90
	movw r4, #:lower16:ans
	movt r4, #:upper16:ans
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label141:
	movs r10, r9
	beq label216
.p2align 4
label101:
	ldr r11, [r2, r10, lsl #2]
	cmp r7, r11
	beq label102
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	bne label101
label216:
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	str r9, [r11, r5, lsl #2]
	str r5, [r1, r8, lsl #2]
	str r7, [r2, r5, lsl #2]
	movw r7, #:lower16:value
	movt r7, #:upper16:value
	str r6, [r7, r5, lsl #2]
	mov r6, #0
	str r6, [r3, r5, lsl #2]
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label106
	b label107
.p2align 4
cmmc_parallel_body_0:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	sub sp, sp, #4
	mov r8, r0
	movw r4, #:lower16:next
	movt r4, #:upper16:next
	movw r6, #:lower16:hashmod
	movt r6, #:upper16:hashmod
	str r1, [sp, #0]
	movw r0, #:lower16:requests
	movt r0, #:upper16:requests
	movw r2, #:lower16:key
	movt r2, #:upper16:key
	movw r7, #:lower16:head
	movt r7, #:upper16:head
	add r3, r0, r8, lsl #2
	movw r5, #:lower16:ans
	movt r5, #:upper16:ans
	movw r1, #:lower16:nextvalue
	movt r1, #:upper16:nextvalue
	movw r0, #:lower16:value
	movt r0, #:upper16:value
	ldr r10, [r6, #0]
	ldr r9, [r3, #0]
	sdiv r11, r9, r10
	mls r10, r11, r10, r9
	ldr r10, [r7, r10, lsl #2]
	cmp r10, #0
	bne label7
label43:
	mov r10, #0
	str r10, [r5, r8, lsl #2]
	ldr r9, [sp, #0]
	add r8, r8, #1
	cmp r9, r8
	ble label15
.p2align 4
label14:
	add r3, r3, #4
	ldr r10, [r6, #0]
	ldr r9, [r3, #0]
	sdiv r11, r9, r10
	mls r10, r11, r10, r9
	ldr r10, [r7, r10, lsl #2]
	cmp r10, #0
	beq label43
.p2align 4
label7:
	ldr r11, [r2, r10, lsl #2]
	cmp r9, r11
	bne label50
	mov r9, r10
	mov r10, #0
.p2align 4
label8:
	ldr r11, [r0, r9, lsl #2]
	ldr r9, [r1, r9, lsl #2]
	add r10, r10, r11
	cmp r9, #0
	bne label8
	str r10, [r5, r8, lsl #2]
	ldr r9, [sp, #0]
	add r8, r8, #1
	cmp r9, r8
	bgt label14
label15:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
label50:
	ldr r10, [r4, r10, lsl #2]
	cmp r10, #0
	bne label7
	b label43
