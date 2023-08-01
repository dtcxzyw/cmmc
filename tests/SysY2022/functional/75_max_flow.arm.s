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
	sub sp, sp, #80
	str r2, [sp, #40]
	str r3, [sp, #64]
	str r1, [sp, #60]
	str r0, [sp, #56]
	beq label50
	mov r0, #1
	ldr r4, [sp, #56]
	ldr r1, [sp, #112]
	str r0, [r1, r4, lsl #2]
	add r0, r4, r4, lsl #2
	movw r1, #:lower16:cap
	str r1, [sp, #44]
	movt r1, #:upper16:cap
	add r2, r1, r0, lsl #3
	str r1, [sp, #44]
	movw r1, #:lower16:to
	str r2, [sp, #36]
	str r1, [sp, #68]
	movt r1, #:upper16:to
	add r2, r1, r0, lsl #3
	str r1, [sp, #68]
	mov r1, #0
	str r2, [sp, #48]
	str r1, [sp, #52]
label5:
	ldr r4, [sp, #56]
	ldr r3, [sp, #64]
	ldr r0, [r3, r4, lsl #2]
	ldr r1, [sp, #52]
	cmp r1, r0
	blt label7
label66:
	mov r0, #0
	b label2
label7:
	ldr r2, [sp, #48]
	ldr r1, [sp, #52]
	ldr r2, [r2, r1, lsl #2]
	str r2, [sp, #76]
	ldr r1, [sp, #112]
	ldr r0, [r1, r2, lsl #2]
	cmp r0, #0
	bne label41
	ldr r1, [sp, #52]
	ldr r2, [sp, #36]
	ldr r1, [r2, r1, lsl #2]
	cmp r1, #1
	bge label9
label41:
	ldr r1, [sp, #52]
	add r1, r1, #1
	str r1, [sp, #52]
	ldr r4, [sp, #56]
	ldr r3, [sp, #64]
	ldr r0, [r3, r4, lsl #2]
	cmp r1, r0
	blt label7
	b label66
label9:
	ldr r2, [sp, #40]
	str r2, [sp, #24]
	mov r0, r2
	cmp r2, r1
	movge r0, r1
	movw r2, #:lower16:rev
	str r0, [sp, #24]
	str r2, [sp, #72]
	movt r2, #:upper16:rev
	str r2, [sp, #72]
	ldr r1, [sp, #60]
	ldr r2, [sp, #76]
	cmp r1, r2
	bne label10
label38:
	cmp r0, #0
	ble label266
	ldr r1, [sp, #52]
	ldr r2, [sp, #36]
	add r2, r2, r1, lsl #2
	ldr r3, [r2, #0]
	sub r3, r3, r0
	str r3, [r2, #0]
	ldr r4, [sp, #56]
	ldr r2, [sp, #72]
	add r3, r4, r4, lsl #2
	add r3, r2, r3, lsl #3
	ldr r2, [sp, #48]
	ldr r4, [r2, r1, lsl #2]
	ldr r2, [r3, r1, lsl #2]
	ldr r1, [sp, #44]
	add r3, r4, r4, lsl #2
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label2
label50:
	ldr r2, [sp, #40]
	mov r0, r2
label2:
	add sp, sp, #80
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label10:
	ldr r2, [sp, #76]
	ldr r1, [sp, #44]
	add r0, r2, r2, lsl #2
	add r2, r1, r0, lsl #3
	str r2, [sp, #20]
	ldr r1, [sp, #68]
	add r2, r1, r0, lsl #3
	mov r0, #1
	str r2, [sp, #32]
	ldr r1, [sp, #112]
	ldr r2, [sp, #76]
	str r0, [r1, r2, lsl #2]
	mov r1, #0
	str r1, [sp, #28]
label11:
	ldr r3, [sp, #64]
	ldr r2, [sp, #76]
	ldr r0, [r3, r2, lsl #2]
	ldr r1, [sp, #28]
	cmp r1, r0
	blt label13
label103:
	mov r0, #0
	b label38
label13:
	ldr r2, [sp, #32]
	ldr r1, [sp, #28]
	ldr r2, [r2, r1, lsl #2]
	str r2, [sp, #16]
	ldr r1, [sp, #112]
	ldr r0, [r1, r2, lsl #2]
	cmp r0, #0
	bne label37
	ldr r1, [sp, #28]
	ldr r2, [sp, #20]
	ldr r1, [r2, r1, lsl #2]
	cmp r1, #1
	bge label15
label37:
	ldr r1, [sp, #28]
	add r1, r1, #1
	str r1, [sp, #28]
	ldr r3, [sp, #64]
	ldr r2, [sp, #76]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	blt label13
	b label103
label15:
	ldr r0, [sp, #24]
	mov r4, r0
	cmp r0, r1
	movge r4, r1
	ldr r1, [sp, #60]
	ldr r2, [sp, #16]
	cmp r1, r2
	beq label126
	ldr r1, [sp, #44]
	add r0, r2, r2, lsl #2
	add r5, r1, r0, lsl #3
	ldr r1, [sp, #68]
	add r2, r1, r0, lsl #3
	mov r0, #1
	str r2, [sp, #12]
	ldr r1, [sp, #112]
	ldr r2, [sp, #16]
	str r0, [r1, r2, lsl #2]
	mov r1, #0
	str r1, [sp, #8]
	ldr r3, [sp, #64]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	bge label160
label22:
	ldr r2, [sp, #12]
	ldr r1, [sp, #8]
	ldr r7, [r2, r1, lsl #2]
	ldr r1, [sp, #112]
	ldr r0, [r1, r7, lsl #2]
	cmp r0, #0
	beq label24
label23:
	ldr r1, [sp, #8]
	add r1, r1, #1
	str r1, [sp, #8]
	ldr r3, [sp, #64]
	ldr r2, [sp, #16]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	blt label22
	b label160
label24:
	ldr r1, [sp, #8]
	ldr r0, [r5, r1, lsl #2]
	cmp r0, #1
	blt label23
	cmp r4, r0
	mov r6, r4
	ldr r1, [sp, #60]
	movge r6, r0
	cmp r1, r7
	beq label184
	add r0, r7, r7, lsl #2
	ldr r1, [sp, #44]
	mov r8, #0
	add r10, r1, r0, lsl #3
	ldr r1, [sp, #68]
	add r9, r1, r0, lsl #3
	ldr r1, [sp, #112]
	mov r0, #1
	str r0, [r1, r7, lsl #2]
	ldr r3, [sp, #64]
	ldr r0, [r3, r7, lsl #2]
	cmp r8, r0
	bge label218
label32:
	ldr r0, [r9, r8, lsl #2]
	ldr r1, [sp, #112]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	beq label34
label33:
	add r8, r8, #1
	ldr r3, [sp, #64]
	ldr r0, [r3, r7, lsl #2]
	cmp r8, r0
	blt label32
	b label218
label34:
	ldr r1, [r10, r8, lsl #2]
	cmp r1, #1
	blt label33
	cmp r6, r1
	mov r2, r6
	movge r2, r1
	ldr r1, [sp, #112]
	str r1, [sp, #0]
	ldr r1, [sp, #60]
	ldr r3, [sp, #64]
	bl dfs
	cmp r0, #0
	ble label33
	add r1, r10, r8, lsl #2
	ldr r2, [r1, #0]
	sub r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [sp, #72]
	add r1, r7, r7, lsl #2
	add r2, r2, r1, lsl #3
	ldr r1, [r9, r8, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	add r3, r1, r1, lsl #2
	ldr r1, [sp, #44]
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label26
label126:
	mov r0, r4
label16:
	cmp r0, #0
	ble label129
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
	ldr r1, [sp, #44]
	add r3, r4, r4, lsl #2
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label38
label184:
	mov r0, r6
label26:
	cmp r0, #0
	ble label23
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
	ldr r1, [sp, #44]
	add r3, r4, r4, lsl #2
	add r1, r1, r3, lsl #3
	add r1, r1, r2, lsl #2
	ldr r2, [r1, #0]
	add r2, r0, r2
	str r2, [r1, #0]
	b label16
label160:
	mov r0, #0
	b label16
label218:
	mov r0, #0
	b label26
label129:
	ldr r1, [sp, #28]
	add r1, r1, #1
	str r1, [sp, #28]
	b label11
label266:
	ldr r1, [sp, #52]
	add r1, r1, #1
	str r1, [sp, #52]
	b label5
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
	movw r5, #:lower16:cap
	cmp r0, #0
	mov r9, #0
	movw r4, #:lower16:to
	movt r6, #:upper16:rev
	str r9, [sp, #16]
	movt r5, #:upper16:cap
	movt r4, #:upper16:to
	str r9, [sp, #20]
	str r9, [sp, #24]
	str r9, [sp, #28]
	str r9, [sp, #32]
	str r9, [sp, #36]
	str r9, [sp, #40]
	str r9, [sp, #44]
	str r9, [sp, #48]
	str r9, [sp, #52]
	bgt label427
label426:
	mov r9, #0
	mov r4, r9
	b label400
label427:
	mov r7, r0
.p2align 4
label398:
	bl getint
	add r11, sp, #16
	mov r9, r0
	add r8, r11, r0, lsl #2
	bl getint
	mov r10, r0
	bl getint
	mov r1, r0
	subs r7, r7, #1
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
	bgt label398
	b label426
label400:
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
	bne label482
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #100
	mov r9, #0
	mov r0, r9
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label482:
	add r4, r4, r0
	b label400
