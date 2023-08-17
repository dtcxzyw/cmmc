.arch armv7ve
.data
.bss
.p2align 2
hashmod:
	.zero	4
.p2align 3
head:
	.zero	40000000
.p2align 3
next:
	.zero	40000000
.p2align 3
nextvalue:
	.zero	40000000
.p2align 3
key:
	.zero	40000000
.p2align 3
value:
	.zero	40000000
.p2align 3
keys:
	.zero	40000000
.p2align 3
values:
	.zero	40000000
.p2align 3
requests:
	.zero	40000000
.p2align 3
ans:
	.zero	40000000
.p2align 3
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
	b label96
.p2align 4
label104:
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
	ble label109
.p2align 4
label108:
	add r0, r0, #4
.p2align 4
label96:
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
	bne label143
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
	bgt label108
label109:
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
label143:
	movs r10, r9
	beq label218
.p2align 4
label103:
	ldr r11, [r2, r10, lsl #2]
	cmp r7, r11
	beq label104
	movw r11, #:lower16:next
	movt r11, #:upper16:next
	ldr r10, [r11, r10, lsl #2]
	cmp r10, #0
	bne label103
label218:
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
	bgt label108
	b label109
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7, r8 }
	movw r4, #:lower16:key
	movt r4, #:upper16:key
	mov r5, r0
	mov r2, r1
	movw r1, #:lower16:requests
	movt r1, #:upper16:requests
	add r3, r1, r0, lsl #2
	movw r1, #:lower16:nextvalue
	movt r1, #:upper16:nextvalue
	movw r0, #:lower16:value
	movt r0, #:upper16:value
	movw r6, #:lower16:hashmod
	movt r6, #:upper16:hashmod
	ldr r7, [r6, #0]
	ldr r6, [r3, #0]
	sdiv r8, r6, r7
	mls r7, r8, r7, r6
	movw r8, #:lower16:head
	movt r8, #:upper16:head
	ldr r7, [r8, r7, lsl #2]
	cmp r7, #0
	bne label7
label33:
	mov r7, #0
	movw r6, #:lower16:ans
	movt r6, #:upper16:ans
	str r7, [r6, r5, lsl #2]
	add r5, r5, #1
	cmp r2, r5
	ble label15
.p2align 4
label14:
	add r3, r3, #4
	movw r6, #:lower16:hashmod
	movt r6, #:upper16:hashmod
	ldr r7, [r6, #0]
	ldr r6, [r3, #0]
	sdiv r8, r6, r7
	mls r7, r8, r7, r6
	movw r8, #:lower16:head
	movt r8, #:upper16:head
	ldr r7, [r8, r7, lsl #2]
	cmp r7, #0
	beq label33
.p2align 4
label7:
	ldr r8, [r4, r7, lsl #2]
	cmp r6, r8
	bne label42
	mov r6, r7
	mov r7, #0
.p2align 4
label8:
	ldr r8, [r0, r6, lsl #2]
	ldr r6, [r1, r6, lsl #2]
	add r7, r7, r8
	cmp r6, #0
	bne label8
	movw r6, #:lower16:ans
	movt r6, #:upper16:ans
	str r7, [r6, r5, lsl #2]
	add r5, r5, #1
	cmp r2, r5
	bgt label14
label15:
	pop { r4, r5, r6, r7, r8 }
	bx lr
.p2align 4
label42:
	movw r8, #:lower16:next
	movt r8, #:upper16:next
	ldr r7, [r8, r7, lsl #2]
	cmp r7, #0
	bne label7
	b label33
