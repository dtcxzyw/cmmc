.arch armv7ve
.data
.bss
.align 4
head:
	.zero	40000000
.align 4
next:
	.zero	40000000
.align 4
nextvalue:
	.zero	40000000
.align 4
key:
	.zero	40000000
.align 4
value:
	.zero	40000000
.align 4
keys:
	.zero	40000000
.align 4
values:
	.zero	40000000
.align 4
requests:
	.zero	40000000
.align 4
ans:
	.zero	40000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #36
	bl getint
	mov r7, r0
	str r0, [sp, #0]
	movw r0, #:lower16:keys
	movt r0, #:upper16:keys
	mov r4, r0
	bl getarray
	mov r5, r0
	movw r0, #:lower16:values
	movt r0, #:upper16:values
	mov r6, r0
	bl getarray
	movw r0, #:lower16:requests
	movt r0, #:upper16:requests
	mov r3, r0
	str r0, [sp, #4]
	bl getarray
	mov r3, r0
	str r0, [sp, #8]
	mov r0, #78
	bl _sysy_starttime
	movw r7, #:lower16:ans
	movt r7, #:upper16:ans
	str r7, [sp, #12]
	movw r10, #:lower16:head
	movt r10, #:upper16:head
	str r10, [sp, #16]
	movw r10, #:lower16:key
	movt r10, #:upper16:key
	str r10, [sp, #20]
	movw r8, #:lower16:value
	movt r8, #:upper16:value
	str r8, [sp, #24]
	movw r0, #:lower16:nextvalue
	movt r0, #:upper16:nextvalue
	movw r1, #:lower16:next
	movt r1, #:upper16:next
	cmp r5, #0
	ble label14
	mov r9, #0
	mov r2, r9
	ldr r3, [r4, r9, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r9, lsl #2]
	ldr r10, [sp, #16]
	ldr r11, [r10, r8, lsl #2]
	cmp r11, #0
	bne label6
	b label5
label14:
	ldr r3, [sp, #8]
	cmp r3, #0
	ble label29
	mov r2, #0
	ldr r3, [sp, #4]
	ldr r3, [r3, r2, lsl #2]
	ldr r7, [sp, #0]
	sdiv r4, r3, r7
	mls r4, r4, r7, r3
	ldr r10, [sp, #16]
	ldr r4, [r10, r4, lsl #2]
	cmp r4, #0
	beq label133
	ldr r10, [sp, #20]
	ldr r5, [r10, r4, lsl #2]
	cmp r5, r3
	bne label22
	cmp r4, #0
	beq label153
	mov r3, #0
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
label277:
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
label288:
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	b label292
label22:
	ldr r4, [r1, r4, lsl #2]
	cmp r4, #0
	beq label133
	ldr r10, [sp, #20]
	ldr r5, [r10, r4, lsl #2]
	cmp r5, r3
	bne label22
	cmp r4, #0
	beq label153
	mov r3, #0
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	b label288
label292:
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
label294:
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	b label294
label133:
	mov r3, #0
label19:
	ldr r7, [sp, #12]
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label29
	ldr r3, [sp, #4]
	ldr r3, [r3, r2, lsl #2]
	ldr r7, [sp, #0]
	sdiv r4, r3, r7
	mls r4, r4, r7, r3
	ldr r10, [sp, #16]
	ldr r4, [r10, r4, lsl #2]
	cmp r4, #0
	beq label133
	ldr r10, [sp, #20]
	ldr r5, [r10, r4, lsl #2]
	cmp r5, r3
	bne label22
	cmp r4, #0
	beq label153
	mov r3, #0
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	b label277
label153:
	mov r3, #0
	ldr r7, [sp, #12]
	str r3, [r7, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #8]
	cmp r2, r3
	bge label29
	ldr r3, [sp, #4]
	ldr r3, [r3, r2, lsl #2]
	ldr r7, [sp, #0]
	sdiv r4, r3, r7
	mls r4, r4, r7, r3
	ldr r10, [sp, #16]
	ldr r4, [r10, r4, lsl #2]
	cmp r4, #0
	beq label133
	ldr r10, [sp, #20]
	ldr r5, [r10, r4, lsl #2]
	cmp r5, r3
	bne label22
	cmp r4, #0
	beq label153
	mov r3, #0
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	ldr r8, [sp, #24]
	ldr r5, [r8, r4, lsl #2]
	add r3, r3, r5
	ldr r4, [r0, r4, lsl #2]
	cmp r4, #0
	beq label19
	b label277
label5:
	add r9, r9, #1
	ldr r10, [sp, #16]
	str r9, [r10, r8, lsl #2]
	ldr r10, [sp, #20]
	str r3, [r10, r9, lsl #2]
	ldr r8, [sp, #24]
	str r7, [r8, r9, lsl #2]
	mov r3, #0
	str r3, [r1, r9, lsl #2]
	str r3, [r0, r9, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label14
	ldr r3, [r4, r2, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r2, lsl #2]
	ldr r10, [sp, #16]
	ldr r11, [r10, r8, lsl #2]
	cmp r11, #0
	bne label6
	b label5
label6:
	cmp r11, #0
	beq label8
	ldr r10, [sp, #20]
	ldr r10, [r10, r11, lsl #2]
	cmp r10, r3
	bne label10
	add r9, r9, #1
	ldr r3, [r0, r11, lsl #2]
	str r3, [r0, r9, lsl #2]
	str r9, [r0, r11, lsl #2]
	ldr r8, [sp, #24]
	str r7, [r8, r9, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label14
	ldr r3, [r4, r2, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r2, lsl #2]
	ldr r10, [sp, #16]
	ldr r11, [r10, r8, lsl #2]
	cmp r11, #0
	bne label6
	b label5
label8:
	add r9, r9, #1
	ldr r10, [sp, #16]
	ldr r11, [r10, r8, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r9, [r10, r8, lsl #2]
	ldr r10, [sp, #20]
	str r3, [r10, r9, lsl #2]
	ldr r8, [sp, #24]
	str r7, [r8, r9, lsl #2]
	mov r3, #0
	str r3, [r0, r9, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label14
	ldr r3, [r4, r2, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r2, lsl #2]
	ldr r10, [sp, #16]
	ldr r11, [r10, r8, lsl #2]
	cmp r11, #0
	bne label6
	b label5
label10:
	ldr r11, [r1, r11, lsl #2]
	cmp r11, #0
	beq label8
	ldr r10, [sp, #20]
	ldr r10, [r10, r11, lsl #2]
	cmp r10, r3
	bne label10
	add r9, r9, #1
	ldr r3, [r0, r11, lsl #2]
	str r3, [r0, r9, lsl #2]
	str r9, [r0, r11, lsl #2]
	ldr r8, [sp, #24]
	str r7, [r8, r9, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label14
	ldr r3, [r4, r2, lsl #2]
	ldr r7, [sp, #0]
	sdiv r8, r3, r7
	mls r8, r8, r7, r3
	ldr r7, [r6, r2, lsl #2]
	ldr r10, [sp, #16]
	ldr r11, [r10, r8, lsl #2]
	cmp r11, #0
	bne label6
	b label5
label29:
	mov r0, #90
	bl _sysy_stoptime
	ldr r3, [sp, #8]
	ldr r7, [sp, #12]
	mov r0, r3
	mov r1, r7
	bl putarray
	mov r0, #0
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
