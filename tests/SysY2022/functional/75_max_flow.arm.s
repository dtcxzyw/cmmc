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
	str r2, [sp, #64]
	str r1, [sp, #60]
	str r3, [sp, #56]
	str r0, [sp, #44]
	beq label50
	mov r0, #1
	ldr r4, [sp, #44]
	ldr r1, [sp, #112]
	add r2, r4, r4, lsl #2
	str r0, [r1, r4, lsl #2]
	movw r0, #:lower16:to
	movw r1, #:lower16:cap
	movt r0, #:upper16:to
	movt r1, #:upper16:cap
	add r3, r1, r2, lsl #3
	str r1, [sp, #40]
	add r2, r0, r2, lsl #3
	mov r1, #0
	str r3, [sp, #68]
	str r0, [sp, #36]
	str r2, [sp, #48]
	str r1, [sp, #52]
	ldr r3, [sp, #56]
	ldr r0, [r3, r4, lsl #2]
	cmp r1, r0
	bge label66
label7:
	ldr r2, [sp, #48]
	ldr r1, [sp, #52]
	ldr r2, [r2, r1, lsl #2]
	str r2, [sp, #76]
	ldr r1, [sp, #112]
	ldr r0, [r1, r2, lsl #2]
	cmp r0, #0
	beq label9
label8:
	ldr r1, [sp, #52]
	add r1, r1, #1
	str r1, [sp, #52]
	ldr r4, [sp, #44]
	ldr r3, [sp, #56]
	ldr r0, [r3, r4, lsl #2]
	cmp r1, r0
	blt label7
	b label66
label9:
	ldr r1, [sp, #52]
	ldr r3, [sp, #68]
	ldr r1, [r3, r1, lsl #2]
	cmp r1, #1
	blt label8
	ldr r2, [sp, #64]
	mov r0, r2
	str r2, [sp, #24]
	cmp r2, r1
	movge r0, r1
	movw r2, #:lower16:rev
	str r0, [sp, #24]
	movt r2, #:upper16:rev
	str r2, [sp, #72]
	ldr r1, [sp, #60]
	ldr r2, [sp, #76]
	cmp r1, r2
	beq label92
	ldr r1, [sp, #40]
	add r3, r2, r2, lsl #2
	add r2, r1, r3, lsl #3
	str r2, [sp, #20]
	ldr r0, [sp, #36]
	add r2, r0, r3, lsl #3
	mov r0, #1
	str r2, [sp, #32]
	ldr r1, [sp, #112]
	ldr r2, [sp, #76]
	str r0, [r1, r2, lsl #2]
	mov r1, #0
	str r1, [sp, #28]
label12:
	ldr r3, [sp, #56]
	ldr r2, [sp, #76]
	ldr r0, [r3, r2, lsl #2]
	ldr r1, [sp, #28]
	cmp r1, r0
	blt label14
label104:
	mov r0, #0
	b label39
label14:
	ldr r2, [sp, #32]
	ldr r1, [sp, #28]
	ldr r2, [r2, r1, lsl #2]
	str r2, [sp, #16]
	ldr r1, [sp, #112]
	ldr r0, [r1, r2, lsl #2]
	cmp r0, #0
	beq label15
label38:
	ldr r1, [sp, #28]
	add r1, r1, #1
	str r1, [sp, #28]
	ldr r3, [sp, #56]
	ldr r2, [sp, #76]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	blt label14
	b label104
label15:
	ldr r1, [sp, #28]
	ldr r2, [sp, #20]
	ldr r1, [r2, r1, lsl #2]
	cmp r1, #1
	blt label38
	ldr r0, [sp, #24]
	mov r4, r0
	cmp r0, r1
	movge r4, r1
	ldr r1, [sp, #60]
	ldr r2, [sp, #16]
	cmp r1, r2
	beq label127
	ldr r1, [sp, #40]
	ldr r0, [sp, #36]
	add r2, r2, r2, lsl #2
	add r5, r1, r2, lsl #3
	add r2, r0, r2, lsl #3
	mov r0, #1
	str r2, [sp, #12]
	ldr r1, [sp, #112]
	ldr r2, [sp, #16]
	str r0, [r1, r2, lsl #2]
	mov r1, #0
	str r1, [sp, #8]
label18:
	ldr r3, [sp, #56]
	ldr r2, [sp, #16]
	ldr r0, [r3, r2, lsl #2]
	ldr r1, [sp, #8]
	cmp r1, r0
	bge label139
	ldr r2, [sp, #12]
	ldr r8, [r2, r1, lsl #2]
	ldr r1, [sp, #112]
	ldr r0, [r1, r8, lsl #2]
	cmp r0, #0
	beq label22
label21:
	ldr r1, [sp, #8]
	add r1, r1, #1
	str r1, [sp, #8]
	b label18
label22:
	ldr r1, [sp, #8]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #1
	blt label21
	cmp r4, r0
	mov r6, r4
	ldr r1, [sp, #60]
	movge r6, r0
	cmp r1, r8
	beq label163
	add r2, r8, r8, lsl #2
	ldr r1, [sp, #40]
	mov r7, #0
	ldr r0, [sp, #36]
	add r10, r1, r2, lsl #3
	add r9, r0, r2, lsl #3
	ldr r1, [sp, #112]
	mov r0, #1
	str r0, [r1, r8, lsl #2]
label28:
	ldr r3, [sp, #56]
	ldr r0, [r3, r8, lsl #2]
	cmp r7, r0
	bge label197
	ldr r0, [r9, r7, lsl #2]
	ldr r1, [sp, #112]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label32
label31:
	add r7, r7, #1
	b label28
label32:
	ldr r1, [r10, r7, lsl #2]
	cmp r1, #1
	blt label31
	cmp r6, r1
	mov r2, r6
	movge r2, r1
	ldr r1, [sp, #112]
	str r1, [sp, #0]
	ldr r3, [sp, #56]
	ldr r1, [sp, #60]
	bl dfs
	cmp r0, #0
	ble label31
	add r1, r10, r7, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [sp, #72]
	add r1, r8, r8, lsl #2
	add r2, r2, r1, lsl #3
	ldr r1, [r9, r7, lsl #2]
	ldr r2, [r2, r7, lsl #2]
	add r3, r1, r1, lsl #2
	ldr r1, [sp, #40]
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label24
label50:
	ldr r2, [sp, #64]
	mov r0, r2
label2:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label92:
	ldr r0, [sp, #24]
label39:
	cmp r0, #0
	ble label8
	ldr r1, [sp, #52]
	ldr r3, [sp, #68]
	add r2, r3, r1, lsl #2
	ldr r3, [r2, #0]
	sub r3, r3, r0
	str r3, [r2, #0]
	ldr r4, [sp, #44]
	ldr r2, [sp, #72]
	add r3, r4, r4, lsl #2
	add r3, r2, r3, lsl #3
	ldr r2, [sp, #48]
	ldr r4, [r2, r1, lsl #2]
	ldr r2, [r3, r1, lsl #2]
	ldr r1, [sp, #40]
	add r3, r4, r4, lsl #2
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label2
label127:
	mov r0, r4
label35:
	cmp r0, #0
	ble label244
	ldr r1, [sp, #28]
	ldr r2, [sp, #20]
	add r1, r2, r1, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [sp, #76]
	add r1, r2, r2, lsl #2
	ldr r2, [sp, #72]
	add r3, r2, r1, lsl #3
	ldr r2, [sp, #32]
	ldr r1, [sp, #28]
	ldr r4, [r2, r1, lsl #2]
	ldr r2, [r3, r1, lsl #2]
	ldr r1, [sp, #40]
	add r3, r4, r4, lsl #2
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label39
label163:
	mov r0, r6
label24:
	cmp r0, #0
	bgt label26
	b label21
label66:
	mov r0, #0
	b label2
label26:
	ldr r1, [sp, #8]
	add r1, r5, r1, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [sp, #16]
	add r1, r2, r2, lsl #2
	ldr r2, [sp, #72]
	add r3, r2, r1, lsl #3
	ldr r2, [sp, #12]
	ldr r1, [sp, #8]
	ldr r4, [r2, r1, lsl #2]
	ldr r2, [r3, r1, lsl #2]
	ldr r1, [sp, #40]
	add r3, r4, r4, lsl #2
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label35
label244:
	ldr r1, [sp, #28]
	add r1, r1, #1
	str r1, [sp, #28]
	b label12
label139:
	mov r0, #0
	b label35
label197:
	mov r0, #0
	b label24
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #100
	bl getint
	str r0, [sp, #8]
	mov r1, r0
	bl getint
	cmp r0, #0
	movw r6, #:lower16:rev
	movw r5, #:lower16:cap
	mov r1, #0
	movw r4, #:lower16:to
	movt r6, #:upper16:rev
	str r1, [sp, #16]
	movt r5, #:upper16:cap
	movt r4, #:upper16:to
	str r1, [sp, #20]
	str r1, [sp, #24]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r1, [sp, #40]
	str r1, [sp, #44]
	str r1, [sp, #48]
	str r1, [sp, #52]
	bgt label422
label421:
	mov r4, #0
	b label393
label422:
	mov r7, r0
	b label397
label393:
	mov r0, #0
	add r11, sp, #16
	mov r2, #1879048192
	str r0, [sp, #56]
	str r0, [sp, #60]
	str r0, [sp, #64]
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #88]
	str r0, [sp, #92]
	add r0, sp, #56
	str r0, [sp, #0]
	mov r0, #1
	ldr r1, [sp, #8]
	mov r3, r11
	bl dfs
	cmp r0, #0
	bne label436
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #100
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label397:
	bl getint
	add r11, sp, #16
	mov r9, r0
	add r8, r11, r0, lsl #2
	bl getint
	mov r10, r0
	bl getint
	add r2, r9, r9, lsl #2
	mov r1, r0
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
	bgt label397
	b label421
label436:
	add r4, r4, r0
	b label393
