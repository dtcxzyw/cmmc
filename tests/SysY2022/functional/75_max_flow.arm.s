.arch armv7ve
.data
.bss
.align 8
to:
	.zero	400
.align 8
cap:
	.zero	400
.align 8
rev:
	.zero	400
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
dfs:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	cmp r0, r1
	mov r4, r0
	sub sp, sp, #72
	str r2, [sp, #52]
	str r3, [sp, #48]
	str r1, [sp, #44]
	str r0, [sp, #40]
	bne label2
	mov r0, r2
label40:
	add sp, sp, #72
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label2:
	mov r0, #1
	ldr r4, [sp, #40]
	ldr r1, [sp, #104]
	str r0, [r1, r4, lsl #2]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r0, r4, r4, lsl #2
	add r2, r1, r0, lsl #3
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	str r2, [sp, #56]
	add r2, r1, r0, lsl #3
	mov r1, #0
	str r2, [sp, #32]
	str r1, [sp, #36]
	ldr r3, [sp, #48]
	ldr r0, [r3, r4, lsl #2]
	cmp r1, r0
	bge label66
label5:
	ldr r2, [sp, #32]
	ldr r1, [sp, #36]
	ldr r0, [r2, r1, lsl #2]
	str r0, [sp, #28]
	ldr r1, [sp, #104]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	beq label7
label6:
	ldr r1, [sp, #36]
	add r1, r1, #1
	str r1, [sp, #36]
	ldr r4, [sp, #40]
	ldr r3, [sp, #48]
	ldr r0, [r3, r4, lsl #2]
	cmp r1, r0
	blt label5
	b label66
label7:
	ldr r1, [sp, #36]
	ldr r2, [sp, #56]
	ldr r1, [r2, r1, lsl #2]
	cmp r1, #1
	blt label6
	ldr r2, [sp, #52]
	str r2, [sp, #64]
	mov r0, r2
	cmp r2, r1
	movge r0, r1
	str r0, [sp, #64]
	ldr r1, [sp, #44]
	ldr r0, [sp, #28]
	cmp r1, r0
	bne label9
	ldr r0, [sp, #64]
label37:
	cmp r0, #0
	ble label6
	ldr r1, [sp, #36]
	ldr r2, [sp, #56]
	add r2, r2, r1, lsl #2
	ldr r3, [r2, #0]
	sub r3, r3, r0
	str r3, [r2, #0]
	movw r2, #:lower16:rev
	movt r2, #:upper16:rev
	ldr r4, [sp, #40]
	add r3, r4, r4, lsl #2
	add r3, r2, r3, lsl #3
	ldr r2, [sp, #32]
	ldr r4, [r2, r1, lsl #2]
	ldr r2, [r3, r1, lsl #2]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r3, r4, r4, lsl #2
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label40
label9:
	ldr r0, [sp, #28]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	mov r2, #1
	add r0, r0, r0, lsl #2
	add r1, r1, r0, lsl #3
	str r1, [sp, #20]
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	add r1, r1, r0, lsl #3
	str r1, [sp, #24]
	ldr r1, [sp, #104]
	ldr r0, [sp, #28]
	str r2, [r1, r0, lsl #2]
	mov r0, #0
	str r0, [sp, #60]
label10:
	ldr r3, [sp, #48]
	ldr r0, [sp, #28]
	ldr r1, [r3, r0, lsl #2]
	ldr r0, [sp, #60]
	cmp r0, r1
	blt label12
label104:
	mov r0, #0
	b label37
label12:
	ldr r1, [sp, #24]
	ldr r0, [sp, #60]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #16]
	ldr r1, [sp, #104]
	ldr r0, [r1, r2, lsl #2]
	cmp r0, #0
	beq label13
label36:
	ldr r0, [sp, #60]
	add r0, r0, #1
	str r0, [sp, #60]
	ldr r3, [sp, #48]
	ldr r0, [sp, #28]
	ldr r1, [r3, r0, lsl #2]
	ldr r0, [sp, #60]
	cmp r0, r1
	blt label12
	b label104
label13:
	ldr r0, [sp, #60]
	ldr r1, [sp, #20]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #1
	blt label36
	ldr r0, [sp, #64]
	mov r4, r0
	cmp r0, r1
	movge r4, r1
	ldr r1, [sp, #44]
	ldr r2, [sp, #16]
	cmp r1, r2
	beq label15
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r0, r2, r2, lsl #2
	add r5, r1, r0, lsl #3
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	add r2, r1, r0, lsl #3
	mov r0, #1
	str r2, [sp, #12]
	ldr r1, [sp, #104]
	ldr r2, [sp, #16]
	str r0, [r1, r2, lsl #2]
	mov r1, #0
	str r1, [sp, #8]
	ldr r3, [sp, #48]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	bge label161
label21:
	ldr r2, [sp, #12]
	ldr r1, [sp, #8]
	ldr r7, [r2, r1, lsl #2]
	ldr r1, [sp, #104]
	ldr r0, [r1, r7, lsl #2]
	cmp r0, #0
	beq label23
label22:
	ldr r1, [sp, #8]
	add r1, r1, #1
	str r1, [sp, #8]
	ldr r3, [sp, #48]
	ldr r2, [sp, #16]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	blt label21
	b label161
label23:
	ldr r1, [sp, #8]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #1
	blt label22
	cmp r4, r0
	mov r6, r4
	ldr r1, [sp, #44]
	movge r6, r0
	cmp r1, r7
	beq label185
	add r0, r7, r7, lsl #2
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	mov r8, #0
	add r10, r1, r0, lsl #3
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	add r9, r1, r0, lsl #3
	ldr r1, [sp, #104]
	mov r0, #1
	str r0, [r1, r7, lsl #2]
	ldr r3, [sp, #48]
	ldr r0, [r3, r7, lsl #2]
	cmp r8, r0
	bge label219
label31:
	ldr r0, [r9, r8, lsl #2]
	ldr r1, [sp, #104]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label33
label32:
	add r8, r8, #1
	ldr r3, [sp, #48]
	ldr r0, [r3, r7, lsl #2]
	cmp r8, r0
	blt label31
	b label219
label33:
	ldr r1, [r10, r8, lsl #2]
	cmp r1, #1
	blt label32
	cmp r6, r1
	mov r2, r6
	movge r2, r1
	ldr r1, [sp, #104]
	str r1, [sp, #0]
	ldr r1, [sp, #44]
	ldr r3, [sp, #48]
	bl dfs
	cmp r0, #0
	bgt label35
	b label32
label15:
	cmp r4, #0
	bgt label17
	ldr r0, [sp, #60]
	add r0, r0, #1
	str r0, [sp, #60]
	b label10
label185:
	mov r0, r6
label25:
	cmp r0, #0
	ble label22
	ldr r1, [sp, #8]
	add r1, r5, r1, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	add r1, r2, r2, lsl #2
	movw r2, #:lower16:rev
	movt r2, #:upper16:rev
	add r3, r2, r1, lsl #3
	ldr r2, [sp, #12]
	ldr r1, [sp, #8]
	ldr r4, [r2, r1, lsl #2]
	ldr r2, [r3, r1, lsl #2]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r3, r4, r4, lsl #2
	mov r4, r0
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label15
label66:
	mov r0, #0
	b label40
label161:
	mov r4, #0
	b label15
label219:
	mov r0, #0
	b label25
label35:
	add r1, r10, r8, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	movw r2, #:lower16:rev
	movt r2, #:upper16:rev
	add r1, r7, r7, lsl #2
	add r2, r2, r1, lsl #3
	ldr r1, [r9, r8, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	add r3, r1, r1, lsl #2
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label25
label17:
	ldr r0, [sp, #60]
	movw r2, #:lower16:rev
	movt r2, #:upper16:rev
	ldr r1, [sp, #20]
	add r0, r1, r0, lsl #2
	ldr r1, [r0, #0]
	sub r1, r1, r4
	str r1, [r0, #0]
	ldr r0, [sp, #28]
	ldr r1, [sp, #24]
	add r0, r0, r0, lsl #2
	add r2, r2, r0, lsl #3
	ldr r0, [sp, #60]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, r1, lsl #2
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r1, r1, r2, lsl #3
	add r0, r1, r0, lsl #2
	ldr r1, [r0, #0]
	add r1, r4, r1
	str r1, [r0, #0]
	mov r0, r4
	b label37
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #100
	bl getint
	str r0, [sp, #8]
	mov r1, r0
	bl getint
	cmp r0, #0
	movw r6, #:lower16:rev
	movt r6, #:upper16:rev
	mov r9, #0
	movw r4, #:lower16:to
	movt r4, #:upper16:to
	movw r5, #:lower16:cap
	movt r5, #:upper16:cap
	str r9, [sp, #16]
	str r9, [sp, #20]
	str r9, [sp, #24]
	str r9, [sp, #28]
	str r9, [sp, #32]
	str r9, [sp, #36]
	str r9, [sp, #40]
	str r9, [sp, #44]
	str r9, [sp, #48]
	str r9, [sp, #52]
	bgt label424
label423:
	mov r9, #0
	mov r4, r9
	b label397
label424:
	mov r7, r0
.p2align 4
label395:
	bl getint
	add r11, sp, #16
	mov r9, r0
	add r8, r11, r0, lsl #2
	bl getint
	mov r10, r0
	bl getint
	mov r1, r0
	add r2, r9, r9, lsl #2
	subs r7, r7, #1
	ldr r0, [r8, #0]
	add r3, r4, r2, lsl #3
	str r10, [r3, r0, lsl #2]
	add r3, r5, r2, lsl #3
	str r1, [r3, r0, lsl #2]
	add r1, r11, r10, lsl #2
	add r3, r6, r2, lsl #3
	ldr r2, [r1, #0]
	str r2, [r3, r0, lsl #2]
	add r3, r10, r10, lsl #2
	add r10, r4, r3, lsl #3
	str r9, [r10, r2, lsl #2]
	mov r9, #0
	add r10, r5, r3, lsl #3
	add r3, r6, r3, lsl #3
	str r9, [r10, r2, lsl #2]
	str r0, [r3, r2, lsl #2]
	add r0, r0, #1
	str r0, [r8, #0]
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
	bgt label395
	b label423
label397:
	mov r9, #0
	add r0, sp, #56
	add r11, sp, #16
	mov r2, #1879048192
	str r9, [sp, #56]
	str r9, [sp, #60]
	str r9, [sp, #64]
	str r9, [sp, #68]
	str r9, [sp, #72]
	str r9, [sp, #76]
	str r9, [sp, #80]
	str r9, [sp, #84]
	str r9, [sp, #88]
	str r9, [sp, #92]
	str r0, [sp, #0]
	mov r0, #1
	ldr r1, [sp, #8]
	mov r3, r11
	bl dfs
	cmp r0, #0
	bne label479
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #100
	mov r9, #0
	mov r0, r9
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label479:
	add r4, r4, r0
	b label397
