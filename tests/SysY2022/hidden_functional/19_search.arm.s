.arch armv7ve
.data
.bss
.align 4
a:
	.zero	3600
.text
.syntax unified
.arm
.fpu vfpv4
search:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	cmp r2, #10
	movw r6, #:lower16:a
	mov r4, r0
	mov r7, r1
	sub sp, sp, #52
	movt r6, #:upper16:a
	str r1, [sp, #32]
	str r2, [sp, #36]
	str r3, [sp, #40]
	ldr r3, [sp, #80]
	str r3, [sp, #16]
	ldr r3, [sp, #84]
	str r3, [sp, #24]
	ldr r3, [sp, #88]
	str r3, [sp, #20]
	ldr r3, [sp, #92]
	str r3, [sp, #28]
	bgt label38
	mov r8, #1073741824
	mov r5, #0
	b label4
label38:
	mov r0, #1073741824
label2:
	add sp, sp, #52
	pop { r4, r5, r6, r7, r8, r9, pc }
label43:
	cmp r8, #10
	mov r1, #1073741824
	mov r0, r8
	movgt r0, r1
	b label2
label4:
	ldr r3, [sp, #40]
	cmp r5, #4
	add r2, r3, r5, lsl #3
	bge label43
	mov r1, #0
	ldr r7, [sp, #32]
	mov r0, r4
	b label8
label13:
	ldr r3, [sp, #28]
	ldr r3, [r3, #0]
	cmp r7, r3
	bne label14
	mov r0, #1
	b label2
label14:
	cmp r1, #2
	clz r3, r0
	mov r1, #0
	lsr r3, r3, #5
	movwlt r1, #1
	orrs r1, r1, r3
	beq label16
label15:
	add r5, r5, #1
	b label4
label16:
	ldr r3, [sp, #24]
	ldr r1, [r3, #0]
	clz r3, r7
	lsr r3, r3, #5
	add r1, r1, #1
	sub r1, r0, r1
	clz r1, r1
	lsr r1, r1, #5
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #16]
	ldr r1, [r3, #0]
	add r1, r1, #1
	cmp r7, r1
	beq label15
	mov r1, #0
	str r1, [r9, r7, lsl #2]
	ldr r1, [r2, #0]
	sub r0, r0, r1
	ldr r1, [r2, #4]
	ldr r2, [sp, #36]
	sub r1, r7, r1
	add r2, r2, #1
	str r3, [sp, #0]
	ldr r3, [sp, #24]
	str r3, [sp, #4]
	ldr r3, [sp, #20]
	str r3, [sp, #8]
	ldr r3, [sp, #28]
	str r3, [sp, #12]
	ldr r3, [sp, #40]
	bl search
	add r5, r5, #1
	add r0, r0, #1
	cmp r8, r0
	movge r8, r0
	mov r0, #1
	str r0, [r9, r7, lsl #2]
	b label4
label8:
	rsb r3, r0, r0, lsl #4
	add r9, r6, r3, lsl #3
	ldr r3, [r9, r7, lsl #2]
	cmp r3, #1
	bne label19
label12:
	ldr r3, [sp, #20]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label13
	b label14
label19:
	ldr r3, [sp, #20]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label21
label106:
	ldr r3, [r2, #0]
	add r1, r1, #1
	add r0, r0, r3
	ldr r3, [r2, #4]
	add r7, r7, r3
	b label8
label21:
	ldr r3, [sp, #28]
	ldr r3, [r3, #0]
	cmp r7, r3
	beq label12
	b label106
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	mvn r1, #0
	sub sp, sp, #84
	mov r10, #0
	movt r4, #:upper16:a
	add r5, sp, #40
	add r0, sp, #20
	add r6, sp, #16
	mov r7, r10
	str r0, [sp, #32]
	add r0, sp, #28
	str r0, [sp, #72]
	add r0, sp, #36
	str r0, [sp, #24]
	mov r0, #1
	str r0, [sp, #40]
	str r10, [r5, #4]
	str r1, [r5, #8]
	str r10, [r5, #12]
	str r10, [r5, #16]
	str r0, [r5, #20]
	str r10, [r5, #24]
	str r1, [r5, #28]
	str r10, [sp, #20]
	str r10, [sp, #16]
.p2align 4
label152:
	bl getint
	str r0, [sp, #36]
	mov r8, r0
	bl getint
	cmp r8, #0
	str r0, [sp, #28]
	beq label174
	mov r1, #0
	b label155
.p2align 4
label173:
	ldr r0, [sp, #24]
	mov r2, #1
	str r0, [sp, #0]
	ldr r0, [sp, #72]
	str r0, [sp, #4]
	ldr r0, [sp, #32]
	str r0, [sp, #8]
	str r6, [sp, #12]
	mov r0, r11
	mov r1, r10
	mov r3, r5
	bl search
	mvn r1, #0
	cmp r0, #11
	movlt r1, r0
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r7, r11
	b label152
label174:
	mov r0, #0
	add sp, sp, #84
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label241:
	mov r9, #1
	ldr r0, [sp, #36]
	cmp r9, r0
	ble label166
	add r7, r7, #1
	ldr r0, [sp, #28]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label241
	b label173
.p2align 4
label166:
	bl getint
	cmp r0, #2
	str r0, [r8, r9, lsl #2]
	beq label253
	cmp r0, #3
	beq label171
	add r9, r9, #1
	ldr r0, [sp, #36]
	cmp r9, r0
	ble label166
	add r7, r7, #1
	ldr r0, [sp, #28]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label241
	b label173
.p2align 4
label253:
	mov r10, r9
	mov r11, r7
	add r9, r9, #1
	ldr r0, [sp, #36]
	cmp r9, r0
	ble label166
	add r7, r7, #1
	ldr r0, [sp, #28]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label241
	b label173
.p2align 4
label171:
	str r7, [sp, #20]
	str r9, [sp, #16]
	add r9, r9, #1
	ldr r0, [sp, #36]
	cmp r9, r0
	ble label166
	add r7, r7, #1
	ldr r0, [sp, #28]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label241
	b label173
.p2align 4
label155:
	cmp r1, #30
	blt label157
	mov r11, r7
	mov r7, #1
	ldr r0, [sp, #28]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label241
	b label173
.p2align 4
label157:
	rsb r3, r1, r1, lsl #4
	mov r2, #1
	add r1, r1, #1
	add r0, r4, r3, lsl #3
	str r2, [r4, r3, lsl #3]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	str r2, [r0, #32]
	str r2, [r0, #36]
	str r2, [r0, #40]
	str r2, [r0, #44]
	str r2, [r0, #48]
	str r2, [r0, #52]
	str r2, [r0, #56]
	str r2, [r0, #60]
	str r2, [r0, #64]
	str r2, [r0, #68]
	str r2, [r0, #72]
	str r2, [r0, #76]
	str r2, [r0, #80]
	str r2, [r0, #84]
	str r2, [r0, #88]
	str r2, [r0, #92]
	str r2, [r0, #96]
	str r2, [r0, #100]
	str r2, [r0, #104]
	str r2, [r0, #108]
	str r2, [r0, #112]
	str r2, [r0, #116]
	b label155
