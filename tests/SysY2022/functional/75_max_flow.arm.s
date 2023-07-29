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
	ldr r1, [r11, r8, lsl #2]
	add r2, r5, r5, lsl #2
	sub r1, r1, r0
	str r1, [r11, r8, lsl #2]
	movw r1, #:lower16:rev
	movt r1, #:upper16:rev
	add r2, r1, r2, lsl #3
	ldr r1, [r10, r8, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	add r3, r1, r1, lsl #2
	ldr r1, [sp, #8]
	add r1, r1, r3, lsl #3
	ldr r3, [r1, r2, lsl #2]
	add r3, r0, r3
	str r3, [r1, r2, lsl #2]
	b label2
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #100
	add r4, sp, #48
	add r1, sp, #8
	str r1, [sp, #88]
	bl getint
	str r0, [sp, #92]
	mov r1, r0
	bl getint
	movw r7, #:lower16:rev
	movw r6, #:lower16:cap
	movs r8, r0
	movw r5, #:lower16:to
	movt r7, #:upper16:rev
	movt r6, #:upper16:cap
	mov r0, #0
	movt r5, #:upper16:to
	str r0, [sp, #48]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	str r0, [r4, #32]
	str r0, [r4, #36]
	bgt label105
.p2align 4
label133:
	mov r5, #0
	b label107
.p2align 4
label105:
	bl getint
	mov r10, r0
	bl getint
	mov r9, r0
	bl getint
	subs r8, r8, #1
	mov r11, #0
	add r2, r10, r10, lsl #2
	mov r1, r0
	add r3, r5, r2, lsl #3
	ldr r0, [r4, r10, lsl #2]
	str r9, [r3, r0, lsl #2]
	add r3, r6, r2, lsl #3
	add r2, r7, r2, lsl #3
	str r1, [r3, r0, lsl #2]
	ldr r1, [r4, r9, lsl #2]
	str r1, [r2, r0, lsl #2]
	add r2, r9, r9, lsl #2
	add r3, r5, r2, lsl #3
	str r10, [r3, r1, lsl #2]
	add r3, r6, r2, lsl #3
	add r2, r7, r2, lsl #3
	str r11, [r3, r1, lsl #2]
	str r0, [r2, r1, lsl #2]
	add r0, r0, #1
	str r0, [r4, r10, lsl #2]
	ldr r0, [r4, r9, lsl #2]
	add r0, r0, #1
	str r0, [r4, r9, lsl #2]
	bgt label105
	b label133
label107:
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
	ldr r1, [sp, #92]
	mov r3, r4
	bl dfs
	cmp r0, #0
	beq label109
	add r5, r5, r0
	b label107
label109:
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #100
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
