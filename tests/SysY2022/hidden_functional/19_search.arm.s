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
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r6, #:lower16:a
	sub sp, sp, #52
	cmp r2, #10
	mov r4, r0
	str r1, [sp, #40]
	mov r7, r1
	movt r6, #:upper16:a
	str r2, [sp, #36]
	str r3, [sp, #16]
	ldr r3, [sp, #80]
	str r3, [sp, #20]
	ldr r3, [sp, #84]
	str r3, [sp, #28]
	ldr r3, [sp, #88]
	str r3, [sp, #24]
	ldr r3, [sp, #92]
	str r3, [sp, #32]
	bgt label38
	mov r8, #1073741824
	mov r5, #0
	ldr r3, [sp, #16]
	cmp r5, #4
	add r2, r3, r5, lsl #3
	blt label44
	b label146
label38:
	mov r0, #1073741824
	b label2
label146:
	cmp r8, #10
	mov r1, #1073741824
	mov r0, r8
	movgt r0, r1
label2:
	add sp, sp, #52
	pop { r4, r5, r6, r7, r8, r9, pc }
label15:
	add r5, r5, #1
	ldr r3, [sp, #16]
	cmp r5, #4
	add r2, r3, r5, lsl #3
	blt label44
	b label146
label18:
	mov r1, #0
	str r1, [r9, r7, lsl #2]
	ldr r1, [r2, #0]
	sub r0, r0, r1
	ldr r1, [r2, #4]
	ldr r2, [sp, #36]
	ldr r3, [sp, #20]
	sub r1, r7, r1
	add r2, r2, #1
	str r3, [sp, #0]
	ldr r3, [sp, #28]
	str r3, [sp, #4]
	ldr r3, [sp, #24]
	str r3, [sp, #8]
	ldr r3, [sp, #32]
	str r3, [sp, #12]
	ldr r3, [sp, #16]
	bl search
	add r5, r5, #1
	add r0, r0, #1
	cmp r8, r0
	movge r8, r0
	mov r0, #1
	str r0, [r9, r7, lsl #2]
	ldr r3, [sp, #16]
	cmp r5, #4
	add r2, r3, r5, lsl #3
	bge label146
label44:
	mov r1, #0
	ldr r7, [sp, #40]
	mov r0, r4
	mov r3, #120
	mla r9, r4, r3, r6
	ldr r3, [r9, r7, lsl #2]
	cmp r3, #1
	bne label19
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r4, r3
	beq label13
	cmp r1, #2
	clz r3, r4
	lsr r3, r3, #5
	movwlt r1, #1
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #28]
	ldr r1, [r3, #0]
	clz r3, r7
	lsr r3, r3, #5
	add r1, r1, #1
	sub r1, r4, r1
	clz r1, r1
	lsr r1, r1, #5
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #20]
	ldr r1, [r3, #0]
	add r1, r1, #1
	cmp r7, r1
	beq label15
	b label18
label19:
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label21
	ldr r3, [r2, #0]
	add r1, r1, #1
	add r0, r0, r3
	ldr r3, [r2, #4]
	add r7, r7, r3
	mov r3, #120
	mla r9, r0, r3, r6
	ldr r3, [r9, r7, lsl #2]
	cmp r3, #1
	bne label19
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label13
	cmp r1, #2
	clz r3, r0
	mov r1, #0
	lsr r3, r3, #5
	movwlt r1, #1
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #28]
	ldr r1, [r3, #0]
	clz r3, r7
	lsr r3, r3, #5
	add r1, r1, #1
	sub r1, r0, r1
	clz r1, r1
	lsr r1, r1, #5
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #20]
	ldr r1, [r3, #0]
	add r1, r1, #1
	cmp r7, r1
	beq label15
	b label18
label21:
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r7, r3
	beq label12
	ldr r3, [r2, #0]
	add r1, r1, #1
	add r0, r0, r3
	ldr r3, [r2, #4]
	add r7, r7, r3
	mov r3, #120
	mla r9, r0, r3, r6
	ldr r3, [r9, r7, lsl #2]
	cmp r3, #1
	bne label19
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label13
	cmp r1, #2
	clz r3, r0
	mov r1, #0
	lsr r3, r3, #5
	movwlt r1, #1
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #28]
	ldr r1, [r3, #0]
	clz r3, r7
	lsr r3, r3, #5
	add r1, r1, #1
	sub r1, r0, r1
	clz r1, r1
	lsr r1, r1, #5
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #20]
	ldr r1, [r3, #0]
	add r1, r1, #1
	cmp r7, r1
	beq label15
	b label18
label13:
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r7, r3
	beq label65
	cmp r1, #2
	clz r3, r0
	mov r1, #0
	lsr r3, r3, #5
	movwlt r1, #1
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #28]
	ldr r1, [r3, #0]
	clz r3, r7
	lsr r3, r3, #5
	add r1, r1, #1
	sub r1, r0, r1
	clz r1, r1
	lsr r1, r1, #5
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #20]
	ldr r1, [r3, #0]
	add r1, r1, #1
	cmp r7, r1
	beq label15
	b label18
label65:
	mov r0, #1
	b label2
label12:
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label13
	cmp r1, #2
	clz r3, r0
	mov r1, #0
	lsr r3, r3, #5
	movwlt r1, #1
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #28]
	ldr r1, [r3, #0]
	clz r3, r7
	lsr r3, r3, #5
	add r1, r1, #1
	sub r1, r0, r1
	clz r1, r1
	lsr r1, r1, #5
	orrs r1, r1, r3
	bne label15
	ldr r3, [sp, #20]
	ldr r1, [r3, #0]
	add r1, r1, #1
	cmp r7, r1
	beq label15
	b label18
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	sub sp, sp, #84
	mvn r1, #0
	mov r10, #0
	movt r4, #:upper16:a
	add r5, sp, #36
	add r0, sp, #24
	add r6, sp, #16
	mov r7, r10
	str r0, [sp, #72]
	add r0, sp, #28
	str r0, [sp, #20]
	add r0, sp, #32
	str r0, [sp, #68]
	mov r0, #1
	str r0, [sp, #36]
	str r10, [r5, #4]
	str r1, [r5, #8]
	str r10, [r5, #12]
	str r10, [r5, #16]
	str r0, [r5, #20]
	str r10, [r5, #24]
	str r1, [r5, #28]
	str r10, [sp, #24]
	str r10, [sp, #16]
label202:
	bl getint
	str r0, [sp, #32]
	mov r8, r0
	bl getint
	cmp r8, #0
	str r0, [sp, #28]
	beq label224
	mov r0, #0
	b label205
label223:
	ldr r0, [sp, #68]
	mov r2, #1
	str r0, [sp, #0]
	ldr r0, [sp, #20]
	str r0, [sp, #4]
	ldr r0, [sp, #72]
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
	b label202
label224:
	mov r0, #0
	add sp, sp, #84
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label291:
	mov r9, #1
	ldr r0, [sp, #32]
	cmp r9, r0
	ble label216
	add r7, r7, #1
	ldr r0, [sp, #28]
	mov r1, #120
	mla r8, r7, r1, r4
	cmp r7, r0
	ble label291
	b label223
label216:
	bl getint
	cmp r0, #2
	str r0, [r8, r9, lsl #2]
	beq label303
	cmp r0, #3
	beq label221
	add r9, r9, #1
	ldr r0, [sp, #32]
	cmp r9, r0
	ble label216
	add r7, r7, #1
	ldr r0, [sp, #28]
	mov r1, #120
	mla r8, r7, r1, r4
	cmp r7, r0
	ble label291
	b label223
label303:
	mov r10, r9
	mov r11, r7
	add r9, r9, #1
	ldr r0, [sp, #32]
	cmp r9, r0
	ble label216
	add r7, r7, #1
	ldr r0, [sp, #28]
	mov r1, #120
	mla r8, r7, r1, r4
	cmp r7, r0
	ble label291
	b label223
label221:
	str r7, [sp, #24]
	str r9, [sp, #16]
	add r9, r9, #1
	ldr r0, [sp, #32]
	cmp r9, r0
	ble label216
	add r7, r7, #1
	ldr r0, [sp, #28]
	mov r1, #120
	mla r8, r7, r1, r4
	cmp r7, r0
	ble label291
	b label223
label205:
	cmp r0, #30
	blt label207
	mov r11, r7
	mov r7, #1
	ldr r0, [sp, #28]
	mov r1, #120
	mla r8, r7, r1, r4
	cmp r7, r0
	ble label291
	b label223
label207:
	mov r1, #120
	mov r2, #1
	mul r3, r0, r1
	mla r1, r0, r1, r4
	add r0, r0, #1
	str r2, [r4, r3]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	str r2, [r1, #64]
	str r2, [r1, #68]
	str r2, [r1, #72]
	str r2, [r1, #76]
	str r2, [r1, #80]
	str r2, [r1, #84]
	str r2, [r1, #88]
	str r2, [r1, #92]
	str r2, [r1, #96]
	str r2, [r1, #100]
	str r2, [r1, #104]
	str r2, [r1, #108]
	str r2, [r1, #112]
	str r2, [r1, #116]
	b label205
