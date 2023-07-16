.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	mov r0, #4
	sub sp, sp, #44
	mov r2, #0
	str r0, [sp, #0]
	mov r4, sp
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #12]
	mov r0, #1
	str r2, [r4, #16]
	str r0, [r4, #20]
	mov r0, #6
	str r0, [r4, #24]
	mov r0, #5
	str r0, [r4, #28]
	mov r0, #7
	str r0, [r4, #32]
	mov r0, #8
	str r0, [r4, #36]
	rsb r0, r2, #10
	cmp r2, #9
	sub r1, r0, #1
	bge label27
	mov r0, #0
	cmp r1, r0
	ble label8
	add r5, r4, r0, lsl #2
	ldr r3, [r4, r0, lsl #2]
	add r6, r0, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	b label104
label27:
	mov r5, #0
	b label9
label104:
	add r5, r4, r0, lsl #2
	ldr r3, [r4, r0, lsl #2]
	add r6, r0, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
label111:
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	b label118
label41:
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	b label111
label8:
	add r2, r2, #1
	rsb r0, r2, #10
	cmp r2, #9
	sub r1, r0, #1
	bge label27
	mov r0, #0
	cmp r1, r0
	ble label8
	add r5, r4, r0, lsl #2
	ldr r3, [r4, r0, lsl #2]
	add r6, r0, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	add r5, r4, r6, lsl #2
	ldr r3, [r4, r6, lsl #2]
	add r6, r6, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	add r7, r4, r0, lsl #2
	str r3, [r7, #4]
	str r5, [r4, r0, lsl #2]
	mov r0, r6
	cmp r1, r6
	ble label8
	b label104
label118:
	add r5, r4, r0, lsl #2
	ldr r3, [r4, r0, lsl #2]
	add r6, r0, #1
	ldr r5, [r5, #4]
	cmp r3, r5
	ble label41
	b label111
label9:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	bge label11
	b label9
label11:
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, r6, r7, pc }
