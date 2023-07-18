.arch armv7ve
.data
.bss
.align 4
to:
	.zero	400
.align 4
cap:
	.zero	400
.align 4
rev:
	.zero	400
.text
.syntax unified
.arm
.fpu vfpv4
dfs:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r0, r1
	mov r4, r2
	mov r6, r1
	mov r5, r0
	mov r7, r3
	sub sp, sp, #20
	ldr r9, [sp, #56]
	bne label2
	b label10
label2:
	mov r0, #1
	mov r8, #0
	str r0, [r9, r5, lsl #2]
	movw r0, #:lower16:cap
	movt r0, #:upper16:cap
	str r0, [sp, #8]
	mov r1, r0
	mov r1, #40
	mla r11, r5, r1, r0
	movw r0, #:lower16:to
	movt r0, #:upper16:to
	mla r10, r5, r1, r0
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	b label135
label37:
	mov r4, #0
label10:
	mov r0, r4
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label135:
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	b label135
label7:
	ldr r1, [r11, r8, lsl #2]
	cmp r1, #1
	bge label8
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	b label135
label6:
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	add r8, r8, #1
	ldr r0, [r7, r5, lsl #2]
	cmp r8, r0
	bge label37
	ldr r0, [r10, r8, lsl #2]
	ldr r1, [r9, r0, lsl #2]
	cmp r1, #0
	beq label7
	b label135
label8:
	cmp r4, r1
	mov r2, r4
	str r9, [sp, #0]
	movge r2, r1
	mov r1, r6
	mov r3, r7
	bl dfs
	cmp r0, #0
	ble label6
	ldr r1, [r11, r8, lsl #2]
	mov r3, #40
	sub r1, r1, r0
	str r1, [r11, r8, lsl #2]
	ldr r4, [r10, r8, lsl #2]
	movw r1, #:lower16:rev
	movt r1, #:upper16:rev
	mla r1, r5, r3, r1
	ldr r2, [r1, r8, lsl #2]
	ldr r1, [sp, #8]
	mla r1, r4, r3, r1
	mov r4, r0
	ldr r3, [r1, r2, lsl #2]
	add r3, r0, r3
	str r3, [r1, r2, lsl #2]
	b label10
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #100
	mov r9, #0
	add r4, sp, #48
	add r3, sp, #8
	str r3, [sp, #88]
	str r9, [sp, #48]
	str r9, [r4, #4]
	str r9, [r4, #8]
	str r9, [r4, #12]
	str r9, [r4, #16]
	str r9, [r4, #20]
	str r9, [r4, #24]
	str r9, [r4, #28]
	str r9, [r4, #32]
	str r9, [r4, #36]
	str r9, [sp, #8]
	str r9, [r3, #4]
	str r9, [r3, #8]
	str r9, [r3, #12]
	str r9, [r3, #16]
	str r9, [r3, #20]
	str r9, [r3, #24]
	str r9, [r3, #28]
	str r9, [r3, #32]
	str r9, [r3, #36]
	bl getint
	str r0, [sp, #92]
	mov r1, r0
	bl getint
	movw r7, #:lower16:rev
	movw r6, #:lower16:cap
	movw r5, #:lower16:to
	mov r8, r0
	movt r7, #:upper16:rev
	movt r6, #:upper16:cap
	movt r5, #:upper16:to
	mov r0, r9
label156:
	add r1, r0, #4
	cmp r1, #10
	bge label159
	add r2, r4, r0, lsl #2
	mov r3, #0
	str r3, [r4, r0, lsl #2]
	mov r0, r1
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #12]
	b label156
label159:
	mov r1, #0
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #10
	bge label161
	b label159
label161:
	cmp r8, #0
	ble label223
	b label162
label223:
	mov r5, #0
	mov r1, #0
	add r0, r1, #4
	cmp r0, #10
	bge label169
	ldr r3, [sp, #88]
	mov r6, #0
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	add r0, r0, #4
	cmp r0, #10
	bge label169
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	add r0, r0, #4
	cmp r0, #10
	bge label169
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	add r0, r0, #4
	cmp r0, #10
	bge label169
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	add r0, r0, #4
	cmp r0, #10
	bge label169
	b label268
label162:
	bl getint
	mov r10, r0
	bl getint
	mov r9, r0
	bl getint
	subs r8, r8, #1
	mov r11, #0
	mov r2, r0
	mov r1, #40
	ldr r0, [r4, r10, lsl #2]
	mla r3, r10, r1, r5
	str r9, [r3, r0, lsl #2]
	mla r3, r10, r1, r6
	str r2, [r3, r0, lsl #2]
	ldr r2, [r4, r9, lsl #2]
	mla r3, r10, r1, r7
	str r2, [r3, r0, lsl #2]
	mla r3, r9, r1, r5
	str r10, [r3, r2, lsl #2]
	mla r3, r9, r1, r6
	mla r1, r9, r1, r7
	str r11, [r3, r2, lsl #2]
	str r0, [r1, r2, lsl #2]
	add r0, r0, #1
	str r0, [r4, r10, lsl #2]
	ldr r0, [r4, r9, lsl #2]
	add r0, r0, #1
	str r0, [r4, r9, lsl #2]
	ble label264
	b label162
label264:
	mov r5, #0
	mov r1, #0
label166:
	add r0, r1, #4
	cmp r0, #10
	bge label169
label268:
	ldr r3, [sp, #88]
	mov r6, #0
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	b label166
label169:
	mov r0, #0
	ldr r3, [sp, #88]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #10
	bge label171
	b label169
label171:
	ldr r3, [sp, #88]
	mov r0, #1
	mov r2, #1879048192
	str r3, [sp, #0]
	ldr r1, [sp, #92]
	mov r3, r4
	bl dfs
	cmp r0, #0
	bne label173
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #100
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label173:
	add r5, r5, r0
	mov r1, #0
	add r0, r1, #4
	cmp r0, #10
	bge label169
	ldr r3, [sp, #88]
	mov r6, #0
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	add r0, r0, #4
	cmp r0, #10
	bge label169
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	add r0, r0, #4
	cmp r0, #10
	bge label169
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	add r0, r0, #4
	cmp r0, #10
	bge label169
	add r2, r3, r1, lsl #2
	str r6, [r3, r1, lsl #2]
	mov r1, r0
	str r6, [r2, #4]
	str r6, [r2, #8]
	str r6, [r2, #12]
	add r0, r0, #4
	cmp r0, #10
	bge label169
	b label268
