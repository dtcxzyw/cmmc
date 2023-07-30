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
dfs:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, r3
	mov r6, r1
	cmp r0, r1
	mov r5, r0
	mov r4, r2
	sub sp, sp, #20
	ldr r9, [sp, #56]
	bne label4
	mov r0, r2
	b label2
label4:
	mov r0, #1
	movw r1, #:lower16:cap
	mov r8, #0
	str r0, [r9, r5, lsl #2]
	movt r1, #:upper16:cap
	add r0, r5, r5, lsl #2
	str r1, [sp, #8]
	add r11, r1, r0, lsl #3
	movw r1, #:lower16:to
	movt r1, #:upper16:to
	add r10, r1, r0, lsl #3
	b label5
label2:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	blt label7
	mov r0, #0
	b label2
label7:
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label9
label8:
	add r8, r8, #1
	b label5
label9:
	ldr r1, [r11, r8, lsl #2]
	cmp r1, #1
	blt label8
	cmp r4, r1
	mov r2, r4
	str r9, [sp, #0]
	movge r2, r1
	mov r1, r6
	mov r3, r7
	bl dfs
	cmp r0, #0
	ble label8
	add r1, r11, r8, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	add r2, r5, r5, lsl #2
	movw r1, #:lower16:rev
	movt r1, #:upper16:rev
	add r2, r1, r2, lsl #3
	ldr r1, [r10, r8, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	add r3, r1, r1, lsl #2
	ldr r1, [sp, #8]
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label2
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #108
	add r10, sp, #48
	add r1, sp, #8
	str r1, [sp, #88]
	str r10, [sp, #92]
	bl getint
	str r0, [sp, #96]
	mov r1, r0
	bl getint
	movw r5, #:lower16:cap
	movw r6, #:lower16:rev
	movs r7, r0
	movw r4, #:lower16:to
	movt r5, #:upper16:cap
	movt r6, #:upper16:rev
	mov r0, #0
	movt r4, #:upper16:to
	str r0, [sp, #48]
	ldr r10, [sp, #92]
	str r0, [r10, #4]
	str r0, [r10, #8]
	str r0, [r10, #12]
	str r0, [r10, #16]
	str r0, [r10, #20]
	str r0, [r10, #24]
	str r0, [r10, #28]
	str r0, [r10, #32]
	str r0, [r10, #36]
	bgt label109
.p2align 4
label133:
	mov r4, #0
label105:
	mov r0, #0
	mov r2, #1879048192
	str r0, [sp, #8]
	ldr r1, [sp, #88]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	mov r0, #1
	str r1, [sp, #0]
	ldr r10, [sp, #92]
	ldr r1, [sp, #96]
	mov r3, r10
	bl dfs
	cmp r0, #0
	beq label107
	add r4, r4, r0
	b label105
label107:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #108
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label109:
	bl getint
	ldr r10, [sp, #92]
	mov r9, r0
	add r8, r10, r0, lsl #2
	bl getint
	mov r11, r0
	bl getint
	subs r7, r7, #1
	mov r1, r0
	add r2, r9, r9, lsl #2
	ldr r0, [r8, #0]
	add r3, r4, r2, lsl #3
	str r11, [r3, r0, lsl #2]
	add r3, r5, r2, lsl #3
	str r1, [r3, r0, lsl #2]
	add r1, r10, r11, lsl #2
	add r3, r6, r2, lsl #3
	ldr r2, [r1, #0]
	str r2, [r3, r0, lsl #2]
	add r3, r11, r11, lsl #2
	add r10, r4, r3, lsl #3
	str r9, [r10, r2, lsl #2]
	mov r10, #0
	add r9, r5, r3, lsl #3
	add r3, r6, r3, lsl #3
	str r10, [r9, r2, lsl #2]
	str r0, [r3, r2, lsl #2]
	add r0, r0, #1
	str r0, [r8, #0]
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
	bgt label109
	b label133
