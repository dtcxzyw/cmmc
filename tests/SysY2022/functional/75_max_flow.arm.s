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
	str r2, [sp, #36]
	str r3, [sp, #32]
	str r1, [sp, #24]
	str r0, [sp, #28]
	beq label58
	mov r0, #1
	ldr r4, [sp, #28]
	movw r2, #:lower16:to
	movt r2, #:upper16:to
	ldr r1, [sp, #104]
	str r0, [r1, r4, lsl #2]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r0, r4, r4, lsl #2
	add r1, r1, r0, lsl #3
	add r0, r2, r0, lsl #3
	str r1, [sp, #48]
	mov r1, #0
	str r0, [sp, #44]
	str r1, [sp, #40]
	ldr r0, [r3, r4, lsl #2]
	cmp r1, r0
	bge label74
label7:
	ldr r1, [sp, #44]
	ldr r4, [r1, #0]
	str r4, [sp, #52]
	ldr r1, [sp, #104]
	ldr r0, [r1, r4, lsl #2]
	cmp r0, #0
	beq label9
label8:
	ldr r1, [sp, #40]
	add r0, r1, #1
	ldr r1, [sp, #44]
	add r2, r1, #4
	ldr r1, [sp, #48]
	add r1, r1, #4
	str r1, [sp, #48]
	str r2, [sp, #44]
	str r0, [sp, #40]
	ldr r4, [sp, #28]
	ldr r3, [sp, #32]
	ldr r0, [r3, r4, lsl #2]
	ldr r1, [sp, #40]
	cmp r1, r0
	blt label7
	b label74
label9:
	ldr r1, [sp, #48]
	ldr r1, [r1, #0]
	cmp r1, #1
	blt label8
	ldr r2, [sp, #36]
	str r2, [sp, #56]
	mov r0, r2
	cmp r2, r1
	movge r0, r1
	str r0, [sp, #56]
	ldr r1, [sp, #24]
	ldr r4, [sp, #52]
	cmp r1, r4
	beq label98
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	movw r2, #:lower16:to
	movt r2, #:upper16:to
	add r3, r4, r4, lsl #2
	add r2, r2, r3, lsl #3
	add r0, r1, r3, lsl #3
	ldr r1, [sp, #104]
	mov r3, #1
	str r3, [r1, r4, lsl #2]
	mov r1, #0
	str r0, [sp, #20]
	str r2, [sp, #64]
	str r1, [sp, #60]
	ldr r3, [sp, #32]
	ldr r0, [r3, r4, lsl #2]
	cmp r1, r0
	bge label110
label16:
	ldr r1, [sp, #64]
	ldr r2, [r1, #0]
	str r2, [sp, #16]
	ldr r1, [sp, #104]
	ldr r0, [r1, r2, lsl #2]
	cmp r0, #0
	beq label18
label17:
	ldr r1, [sp, #60]
	add r0, r1, #1
	ldr r1, [sp, #64]
	add r2, r1, #4
	ldr r1, [sp, #20]
	add r1, r1, #4
	str r1, [sp, #20]
	str r2, [sp, #64]
	str r0, [sp, #60]
	ldr r3, [sp, #32]
	ldr r4, [sp, #52]
	ldr r0, [r3, r4, lsl #2]
	ldr r1, [sp, #60]
	cmp r1, r0
	blt label16
	b label110
label18:
	ldr r1, [sp, #20]
	ldr r1, [r1, #0]
	cmp r1, #1
	blt label17
	ldr r0, [sp, #56]
	str r0, [sp, #12]
	cmp r0, r1
	movge r0, r1
	str r0, [sp, #12]
	ldr r1, [sp, #24]
	ldr r2, [sp, #16]
	cmp r1, r2
	bne label23
label20:
	cmp r0, #0
	bgt label22
	b label17
label58:
	ldr r2, [sp, #36]
	mov r0, r2
label48:
	add sp, sp, #72
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label98:
	ldr r0, [sp, #56]
label45:
	cmp r0, #0
	ble label8
	ldr r1, [sp, #48]
	ldr r1, [r1, #0]
	sub r2, r1, r0
	ldr r1, [sp, #48]
	str r2, [r1, #0]
	movw r1, #:lower16:rev
	movt r1, #:upper16:rev
	ldr r4, [sp, #28]
	add r2, r4, r4, lsl #2
	add r2, r1, r2, lsl #3
	ldr r1, [sp, #44]
	ldr r3, [r1, #0]
	ldr r1, [sp, #40]
	add r3, r3, r3, lsl #2
	ldr r2, [r2, r1, lsl #2]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label48
label23:
	ldr r2, [sp, #16]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r0, r2, r2, lsl #2
	movw r2, #:lower16:to
	movt r2, #:upper16:to
	add r4, r1, r0, lsl #3
	add r5, r2, r0, lsl #3
	ldr r1, [sp, #104]
	mov r0, #1
	ldr r2, [sp, #16]
	str r0, [r1, r2, lsl #2]
	mov r1, #0
	str r1, [sp, #8]
	ldr r3, [sp, #32]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	bge label162
label28:
	ldr r9, [r5, #0]
	ldr r1, [sp, #104]
	ldr r0, [r1, r9, lsl #2]
	cmp r0, #0
	beq label30
label29:
	ldr r1, [sp, #8]
	add r5, r5, #4
	add r4, r4, #4
	add r0, r1, #1
	str r0, [sp, #8]
	ldr r3, [sp, #32]
	ldr r2, [sp, #16]
	ldr r0, [r3, r2, lsl #2]
	ldr r1, [sp, #8]
	cmp r1, r0
	blt label28
	b label162
label30:
	ldr r1, [r4, #0]
	cmp r1, #1
	blt label29
	ldr r0, [sp, #12]
	mov r8, r0
	cmp r0, r1
	movge r8, r1
	ldr r1, [sp, #24]
	cmp r1, r9
	beq label184
	add r0, r9, r9, lsl #2
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	movw r2, #:lower16:to
	movt r2, #:upper16:to
	mov r10, #0
	add r6, r1, r0, lsl #3
	add r7, r2, r0, lsl #3
	ldr r1, [sp, #104]
	mov r0, #1
	str r0, [r1, r9, lsl #2]
	ldr r3, [sp, #32]
	ldr r0, [r3, r9, lsl #2]
	cmp r10, r0
	bge label214
label40:
	ldr r0, [r7, #0]
	ldr r1, [sp, #104]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label42
label41:
	add r10, r10, #1
	add r7, r7, #4
	ldr r3, [sp, #32]
	add r6, r6, #4
	ldr r0, [r3, r9, lsl #2]
	cmp r10, r0
	blt label40
	b label214
label42:
	ldr r1, [r6, #0]
	cmp r1, #1
	blt label41
	cmp r8, r1
	mov r2, r8
	movge r2, r1
	ldr r1, [sp, #104]
	str r1, [sp, #0]
	ldr r1, [sp, #24]
	ldr r3, [sp, #32]
	bl dfs
	cmp r0, #0
	bgt label44
	b label41
label184:
	mov r0, r8
label32:
	cmp r0, #0
	ble label29
	ldr r1, [r4, #0]
	sub r1, r1, r0
	str r1, [r4, #0]
	movw r1, #:lower16:rev
	movt r1, #:upper16:rev
	ldr r2, [sp, #16]
	ldr r3, [r5, #0]
	add r2, r2, r2, lsl #2
	add r3, r3, r3, lsl #2
	add r2, r1, r2, lsl #3
	ldr r1, [sp, #8]
	ldr r2, [r2, r1, lsl #2]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label20
label74:
	mov r0, #0
	b label48
label110:
	mov r0, #0
	b label45
label162:
	mov r0, #0
	b label20
label214:
	mov r0, #0
	b label32
label22:
	ldr r1, [sp, #20]
	ldr r1, [r1, #0]
	sub r2, r1, r0
	ldr r1, [sp, #20]
	str r2, [r1, #0]
	movw r1, #:lower16:rev
	movt r1, #:upper16:rev
	ldr r4, [sp, #52]
	add r2, r4, r4, lsl #2
	add r2, r1, r2, lsl #3
	ldr r1, [sp, #64]
	ldr r3, [r1, #0]
	ldr r1, [sp, #60]
	add r3, r3, r3, lsl #2
	ldr r2, [r2, r1, lsl #2]
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label45
label44:
	ldr r1, [r6, #0]
	add r2, r9, r9, lsl #2
	sub r1, r1, r0
	str r1, [r6, #0]
	movw r1, #:lower16:rev
	movt r1, #:upper16:rev
	add r2, r1, r2, lsl #3
	ldr r1, [r7, #0]
	ldr r2, [r2, r10, lsl #2]
	add r3, r1, r1, lsl #2
	movw r1, #:lower16:cap
	movt r1, #:upper16:cap
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label32
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #100
	bl getint
	str r0, [sp, #8]
	mov r1, r0
	bl getint
	movw r6, #:lower16:rev
	movt r6, #:upper16:rev
	mov r9, #0
	movw r4, #:lower16:to
	movt r4, #:upper16:to
	cmp r0, #0
	str r9, [sp, #16]
	movw r5, #:lower16:cap
	movt r5, #:upper16:cap
	str r9, [sp, #20]
	str r9, [sp, #24]
	str r9, [sp, #28]
	str r9, [sp, #32]
	str r9, [sp, #36]
	str r9, [sp, #40]
	str r9, [sp, #44]
	str r9, [sp, #48]
	str r9, [sp, #52]
	bgt label402
label401:
	mov r9, #0
	mov r4, r9
	b label373
label402:
	mov r7, r0
	b label377
label373:
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
	bne label416
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #100
	mov r9, #0
	mov r0, r9
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label377:
	bl getint
	add r11, sp, #16
	mov r9, r0
	add r8, r11, r0, lsl #2
	bl getint
	mov r10, r0
	bl getint
	subs r7, r7, #1
	mov r1, r0
	add r2, r9, r9, lsl #2
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
	bgt label377
	b label401
label416:
	add r4, r4, r0
	b label373
