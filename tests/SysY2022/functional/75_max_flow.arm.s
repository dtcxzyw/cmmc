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
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	cmp r0, r1
	mov r4, r0
	sub sp, sp, #80
	str r2, [sp, #20]
	str r1, [sp, #76]
	str r3, [sp, #24]
	str r0, [sp, #52]
	bne label4
	mov r0, r2
	b label2
label4:
	mov r0, #1
	ldr r4, [sp, #52]
	ldr r1, [sp, #112]
	add r2, r4, r4, lsl #2
	str r0, [r1, r4, lsl #2]
	movw r0, #:lower16:to
	movw r1, #:lower16:cap
	movt r0, #:upper16:to
	movt r1, #:upper16:cap
	add r3, r1, r2, lsl #3
	str r1, [sp, #60]
	add r2, r0, r2, lsl #3
	mov r1, #0
	str r3, [sp, #16]
	str r0, [sp, #72]
	str r2, [sp, #44]
	str r1, [sp, #36]
	b label5
label2:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label5:
	ldr r4, [sp, #52]
	ldr r3, [sp, #24]
	ldr r0, [r3, r4, lsl #2]
	ldr r1, [sp, #36]
	cmp r1, r0
	blt label7
	mov r0, #0
	b label2
label7:
	ldr r2, [sp, #44]
	ldr r1, [sp, #36]
	ldr r0, [r2, r1, lsl #2]
	str r0, [sp, #8]
	ldr r1, [sp, #112]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	beq label8
label77:
	ldr r1, [sp, #36]
	add r1, r1, #1
	str r1, [sp, #36]
	b label5
label8:
	ldr r1, [sp, #36]
	ldr r3, [sp, #16]
	ldr r1, [r3, r1, lsl #2]
	cmp r1, #1
	blt label77
	ldr r2, [sp, #20]
	str r2, [sp, #56]
	mov r0, r2
	cmp r2, r1
	movge r0, r1
	movw r2, #:lower16:rev
	str r0, [sp, #56]
	movt r2, #:upper16:rev
	str r2, [sp, #12]
	ldr r1, [sp, #76]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne label13
	ldr r0, [sp, #56]
	b label10
label13:
	ldr r0, [sp, #8]
	ldr r1, [sp, #60]
	add r2, r0, r0, lsl #2
	add r1, r1, r2, lsl #3
	str r1, [sp, #48]
	ldr r0, [sp, #72]
	add r1, r0, r2, lsl #3
	mov r2, #1
	str r1, [sp, #68]
	ldr r1, [sp, #112]
	ldr r0, [sp, #8]
	str r2, [r1, r0, lsl #2]
	mov r0, #0
	str r0, [sp, #64]
	b label14
label10:
	cmp r0, #0
	bgt label12
	b label77
label14:
	ldr r3, [sp, #24]
	ldr r0, [sp, #8]
	ldr r1, [r3, r0, lsl #2]
	ldr r0, [sp, #64]
	cmp r0, r1
	blt label16
	mov r0, #0
	b label10
label16:
	ldr r1, [sp, #68]
	ldr r0, [sp, #64]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #40]
	ldr r1, [sp, #112]
	ldr r0, [r1, r2, lsl #2]
	cmp r0, #0
	beq label18
label17:
	ldr r0, [sp, #64]
	add r0, r0, #1
	str r0, [sp, #64]
	b label14
label18:
	ldr r0, [sp, #64]
	ldr r1, [sp, #48]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #1
	blt label17
	ldr r0, [sp, #56]
	mov r4, r0
	cmp r0, r1
	movge r4, r1
	ldr r1, [sp, #76]
	ldr r2, [sp, #40]
	cmp r1, r2
	beq label20
	ldr r1, [sp, #60]
	ldr r0, [sp, #72]
	add r2, r2, r2, lsl #2
	add r5, r1, r2, lsl #3
	add r2, r0, r2, lsl #3
	mov r0, #1
	str r2, [sp, #32]
	ldr r1, [sp, #112]
	ldr r2, [sp, #40]
	str r0, [r1, r2, lsl #2]
	mov r1, #0
	str r1, [sp, #28]
	b label24
label12:
	ldr r1, [sp, #36]
	ldr r3, [sp, #16]
	add r2, r3, r1, lsl #2
	ldr r3, [r2, #0]
	sub r3, r3, r0
	str r3, [r2, #0]
	ldr r4, [sp, #52]
	ldr r2, [sp, #12]
	add r3, r4, r4, lsl #2
	add r3, r2, r3, lsl #3
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	ldr r2, [r3, r1, lsl #2]
	ldr r1, [sp, #60]
	add r3, r4, r4, lsl #2
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label2
label20:
	cmp r4, #0
	bgt label22
	b label17
label24:
	ldr r3, [sp, #24]
	ldr r2, [sp, #40]
	ldr r0, [r3, r2, lsl #2]
	ldr r1, [sp, #28]
	cmp r1, r0
	blt label26
	mov r4, #0
	b label20
label26:
	ldr r2, [sp, #32]
	ldr r1, [sp, #28]
	ldr r8, [r2, r1, lsl #2]
	ldr r1, [sp, #112]
	ldr r0, [r1, r8, lsl #2]
	cmp r0, #0
	beq label27
label194:
	ldr r1, [sp, #28]
	add r1, r1, #1
	str r1, [sp, #28]
	b label24
label27:
	ldr r1, [sp, #28]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #1
	blt label194
	cmp r4, r0
	mov r6, r4
	ldr r1, [sp, #76]
	movge r6, r0
	cmp r1, r8
	beq label206
	add r2, r8, r8, lsl #2
	ldr r1, [sp, #60]
	mov r7, #0
	ldr r0, [sp, #72]
	add r10, r1, r2, lsl #3
	add r9, r0, r2, lsl #3
	ldr r1, [sp, #112]
	mov r0, #1
	str r0, [r1, r8, lsl #2]
	b label30
label206:
	mov r0, r6
	b label37
label22:
	ldr r0, [sp, #64]
	ldr r1, [sp, #48]
	add r0, r1, r0, lsl #2
	ldr r1, [r0, #0]
	sub r1, r1, r4
	str r1, [r0, #0]
	ldr r0, [sp, #8]
	ldr r2, [sp, #12]
	ldr r1, [sp, #68]
	add r0, r0, r0, lsl #2
	add r2, r2, r0, lsl #3
	ldr r0, [sp, #64]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, r1, lsl #2
	ldr r1, [sp, #60]
	add r1, r1, r2, lsl #3
	add r0, r1, r0, lsl #2
	ldr r1, [r0, #0]
	add r1, r4, r1
	str r1, [r0, #0]
	mov r0, r4
	b label10
label30:
	ldr r3, [sp, #24]
	ldr r0, [r3, r8, lsl #2]
	cmp r7, r0
	blt label32
	mov r0, #0
	b label37
label32:
	ldr r0, [r9, r7, lsl #2]
	ldr r1, [sp, #112]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label33
label229:
	add r7, r7, #1
	b label30
label33:
	ldr r1, [r10, r7, lsl #2]
	cmp r1, #1
	blt label229
	cmp r6, r1
	mov r2, r6
	movge r2, r1
	ldr r1, [sp, #112]
	str r1, [sp, #0]
	ldr r3, [sp, #24]
	ldr r1, [sp, #76]
	bl dfs
	cmp r0, #0
	bgt label35
	b label229
label37:
	cmp r0, #0
	ble label194
	ldr r1, [sp, #28]
	add r1, r5, r1, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [sp, #40]
	add r1, r2, r2, lsl #2
	ldr r2, [sp, #12]
	add r3, r2, r1, lsl #3
	ldr r2, [sp, #32]
	ldr r1, [sp, #28]
	ldr r4, [r2, r1, lsl #2]
	ldr r2, [r3, r1, lsl #2]
	ldr r1, [sp, #60]
	add r3, r4, r4, lsl #2
	mov r4, r0
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label20
label35:
	add r1, r10, r7, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [sp, #12]
	add r1, r8, r8, lsl #2
	add r2, r2, r1, lsl #3
	ldr r1, [r9, r7, lsl #2]
	ldr r2, [r2, r7, lsl #2]
	add r3, r1, r1, lsl #2
	ldr r1, [sp, #60]
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label37
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #100
	bl getint
	str r0, [sp, #88]
	mov r1, r0
	bl getint
	movw r6, #:lower16:rev
	movs r7, r0
	movw r5, #:lower16:cap
	movw r4, #:lower16:to
	movt r6, #:upper16:rev
	mov r0, #0
	movt r5, #:upper16:cap
	movt r4, #:upper16:to
	str r0, [sp, #48]
	str r0, [sp, #52]
	str r0, [sp, #56]
	str r0, [sp, #60]
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	bgt label383
.p2align 4
label411:
	mov r4, #0
	b label385
.p2align 4
label383:
	bl getint
	add r11, sp, #48
	mov r9, r0
	add r8, r11, r0, lsl #2
	bl getint
	mov r10, r0
	bl getint
	subs r7, r7, #1
	add r2, r9, r9, lsl #2
	mov r1, r0
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
	bgt label383
	b label411
label385:
	mov r0, #0
	add r11, sp, #48
	mov r2, #1879048192
	str r0, [sp, #8]
	str r0, [sp, #12]
	str r0, [sp, #16]
	str r0, [sp, #20]
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #32]
	str r0, [sp, #36]
	str r0, [sp, #40]
	str r0, [sp, #44]
	add r0, sp, #8
	str r0, [sp, #0]
	mov r0, #1
	ldr r1, [sp, #88]
	mov r3, r11
	bl dfs
	cmp r0, #0
	beq label387
	add r4, r4, r0
	b label385
label387:
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #100
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
