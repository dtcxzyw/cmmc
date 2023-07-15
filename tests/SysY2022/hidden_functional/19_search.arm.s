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
	cmp r2, #10
	movw r6, #:lower16:a
	mov r5, r0
	mov r8, r1
	sub sp, sp, #52
	movt r6, #:upper16:a
	str r1, [sp, #40]
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
	ble label40
	mov r0, #1073741824
	b label2
label40:
	mov r7, #1073741824
	mov r4, #0
	ldr r3, [sp, #16]
	cmp r4, #4
	add r2, r3, r4, lsl #3
	bge label46
	mov r0, #0
	ldr r8, [sp, #40]
	mov r1, r5
	mov r3, #120
	mla r9, r5, r3, r6
	ldr r3, [r9, r8, lsl #2]
	cmp r3, #1
	beq label14
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label12
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label12
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label16
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label16
	b label214
label2:
	add sp, sp, #52
	pop { r4, r5, r6, r7, r8, r9, pc }
label16:
	cmp r0, #2
	bge label18
	add r4, r4, #1
	ldr r3, [sp, #16]
	cmp r4, #4
	add r2, r3, r4, lsl #3
	bge label46
	mov r0, #0
	ldr r8, [sp, #40]
	mov r1, r5
	mov r3, #120
	mla r9, r5, r3, r6
	ldr r3, [r9, r8, lsl #2]
	cmp r3, #1
	beq label14
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label12
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label12
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label16
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label16
	b label214
label18:
	cmp r1, #0
	bne label19
	add r4, r4, #1
	ldr r3, [sp, #16]
	cmp r4, #4
	add r2, r3, r4, lsl #3
	bge label46
	mov r0, #0
	ldr r8, [sp, #40]
	mov r1, r5
	mov r3, #120
	mla r9, r5, r3, r6
	ldr r3, [r9, r8, lsl #2]
	cmp r3, #1
	beq label14
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label12
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label12
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label16
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label16
label214:
	mov r0, #1
	b label2
label19:
	ldr r3, [sp, #28]
	ldr r0, [r3, #0]
	clz r3, r8
	lsr r3, r3, #5
	add r0, r0, #1
	sub r0, r1, r0
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r3
	beq label20
	add r4, r4, #1
	ldr r3, [sp, #16]
	cmp r4, #4
	add r2, r3, r4, lsl #3
	bge label46
	mov r0, #0
	ldr r8, [sp, #40]
	mov r1, r5
	mov r3, #120
	mla r9, r5, r3, r6
	ldr r3, [r9, r8, lsl #2]
	cmp r3, #1
	beq label14
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label12
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label12
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label16
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label16
	b label214
label20:
	ldr r3, [sp, #20]
	ldr r0, [r3, #0]
	add r0, r0, #1
	cmp r8, r0
	bne label21
	add r4, r4, #1
	ldr r3, [sp, #16]
	cmp r4, #4
	add r2, r3, r4, lsl #3
	bge label46
	mov r0, #0
	ldr r8, [sp, #40]
	mov r1, r5
	mov r3, #120
	mla r9, r5, r3, r6
	ldr r3, [r9, r8, lsl #2]
	cmp r3, #1
	beq label14
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label12
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label12
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label16
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label16
	b label214
label46:
	cmp r7, #10
	mov r1, #1073741824
	mov r0, r7
	movgt r0, r1
	b label2
label14:
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r1, r3
	bne label16
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label16
	b label214
label21:
	mov r0, #0
	str r0, [r9, r8, lsl #2]
	ldr r0, [r2, #0]
	sub r0, r1, r0
	ldr r1, [r2, #4]
	ldr r2, [sp, #36]
	ldr r3, [sp, #20]
	sub r1, r8, r1
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
	add r4, r4, #1
	add r0, r0, #1
	cmp r7, r0
	movge r7, r0
	mov r0, #1
	str r0, [r9, r8, lsl #2]
	ldr r3, [sp, #16]
	cmp r4, #4
	add r2, r3, r4, lsl #3
	bge label46
	mov r0, #0
	ldr r8, [sp, #40]
	mov r1, r5
	mov r3, #120
	mla r9, r5, r3, r6
	ldr r3, [r9, r8, lsl #2]
	cmp r3, #1
	beq label14
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label12
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label12
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r5, r3
	bne label16
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label16
	b label214
label12:
	ldr r3, [r2, #0]
	add r0, r0, #1
	add r1, r1, r3
	ldr r3, [r2, #4]
	add r8, r8, r3
	mov r3, #120
	mla r9, r1, r3, r6
	ldr r3, [r9, r8, lsl #2]
	cmp r3, #1
	beq label14
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r1, r3
	bne label12
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label12
	ldr r3, [sp, #24]
	ldr r3, [r3, #0]
	cmp r1, r3
	bne label16
	ldr r3, [sp, #32]
	ldr r3, [r3, #0]
	cmp r8, r3
	bne label16
	b label214
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	mvn r1, #0
	sub sp, sp, #84
	mov r11, #0
	movt r4, #:upper16:a
	add r5, sp, #32
	add r0, sp, #20
	add r6, sp, #16
	mov r10, r11
	str r0, [sp, #72]
	add r0, sp, #24
	str r0, [sp, #68]
	add r0, sp, #28
	str r0, [sp, #64]
	mov r0, #1
	str r0, [sp, #32]
	str r11, [r5, #4]
	str r1, [r5, #8]
	str r11, [r5, #12]
	str r11, [r5, #16]
	str r0, [r5, #20]
	str r11, [r5, #24]
	str r1, [r5, #28]
	str r11, [sp, #20]
	str r11, [sp, #16]
label234:
	bl getint
	str r0, [sp, #28]
	mov r7, r0
	bl getint
	cmp r7, #0
	str r0, [sp, #24]
	beq label256
	mov r0, #0
	cmp r0, #30
	bge label284
	b label255
label284:
	mov r7, #1
	ldr r0, [sp, #24]
	mov r1, #120
	mla r8, r7, r1, r4
	cmp r7, r0
	bgt label254
	mov r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	bgt label253
	b label247
label254:
	ldr r0, [sp, #64]
	mov r2, #1
	str r0, [sp, #0]
	ldr r0, [sp, #68]
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
	b label234
label247:
	bl getint
	cmp r0, #2
	str r0, [r8, r9, lsl #2]
	bne label251
	mov r10, r9
	mov r11, r7
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	bgt label253
	b label247
label251:
	cmp r0, #3
	bne label248
	str r7, [sp, #20]
	str r9, [sp, #16]
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	bgt label253
	b label247
label253:
	add r7, r7, #1
	ldr r0, [sp, #24]
	mov r1, #120
	mla r8, r7, r1, r4
	cmp r7, r0
	bgt label254
	mov r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	bgt label253
	b label247
label248:
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	bgt label253
	b label247
label255:
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
	cmp r0, #30
	bge label284
	b label255
label256:
	mov r0, #0
	add sp, sp, #84
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
