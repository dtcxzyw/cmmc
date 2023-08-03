.arch armv7ve
.data
.bss
.align 8
graph:
	.zero	3600
.align 8
edges:
	.zero	4800
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
maxCliques:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, #0
	mov r6, #1
	mov r5, r1
	mov r3, r0
	sub sp, sp, #20
	add r4, r0, #2
	str r2, [sp, #0]
	str r0, [sp, #12]
	add r0, r1, r0, lsl #2
	add r1, r3, #1
	str r0, [sp, #8]
	str r1, [sp, #4]
	ldr r0, [r2, #0]
	cmp r6, r0
	bgt label5
.p2align 4
label6:
	ldr r3, [sp, #12]
	add r0, r5, #4
	mov r2, #1
	str r6, [r5, r3, lsl #2]
.p2align 4
label7:
	ldr r1, [sp, #4]
	cmp r1, r2
	ble label59
	add r2, r2, #1
	mov r8, r2
	add r3, r5, r2, lsl #2
	cmp r1, r2
	ble label66
.p2align 4
label14:
	ldr r1, [r0, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	ldr r9, [r3, #0]
	rsb r1, r1, r1, lsl #4
	add r1, r11, r1, lsl #3
	ldr r1, [r1, r9, lsl #2]
	cmp r1, #0
	beq label78
	add r8, r8, #1
	add r3, r3, #4
	ldr r1, [sp, #4]
	cmp r1, r8
	bgt label14
	b label66
.p2align 4
label22:
	ldr r3, [sp, #12]
	add r6, r6, #1
	ldr r2, [sp, #0]
	mov r0, r3
	cmp r3, r7
	movle r0, r7
	mov r7, r9
	cmp r9, r0
	movle r7, r0
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label6
	b label5
.p2align 4
label78:
	mov r0, #0
	cmp r0, #0
	bne label85
	add r6, r6, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label6
	b label5
.p2align 4
label85:
	mov r9, #0
	mov r8, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r8, r0
	bgt label22
.p2align 4
label23:
	ldr r0, [sp, #8]
	mov r1, #1
	str r8, [r0, #4]
	add r0, r5, #4
	cmp r4, r1
	bgt label32
.p2align 4
label97:
	mov r0, #1
	cmp r0, #0
	beq label101
.p2align 4
label29:
	ldr r2, [sp, #0]
	mov r0, r4
	mov r1, r5
	bl maxCliques
	ldr r1, [sp, #4]
	cmp r1, r9
	movle r1, r9
	mov r9, r0
	cmp r0, r1
	movle r9, r1
	add r8, r8, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label23
	b label22
.p2align 4
label32:
	add r1, r1, #1
	mov r3, r1
	add r2, r5, r1, lsl #2
	cmp r4, r1
	bgt label37
	add r0, r0, #4
	b label97
.p2align 4
label37:
	ldr r10, [r0, #0]
	movw r11, #:lower16:graph
	movt r11, #:upper16:graph
	rsb r10, r10, r10, lsl #4
	add r10, r11, r10, lsl #3
	ldr r11, [r2, #0]
	ldr r10, [r10, r11, lsl #2]
	cmp r10, #0
	bne label124
	mov r0, #0
	cmp r0, #0
	bne label29
	add r8, r8, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label23
	b label22
.p2align 4
label124:
	add r3, r3, #1
	add r2, r2, #4
	cmp r4, r3
	bgt label37
	add r0, r0, #4
	cmp r4, r1
	bgt label32
	b label97
label59:
	mov r0, #1
	cmp r0, #0
	bne label85
	add r6, r6, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r6, r0
	ble label6
	b label5
label66:
	add r0, r0, #4
	b label7
label5:
	mov r0, r7
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label101:
	add r8, r8, #1
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r8, r0
	ble label23
	b label22
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r10, #0
	sub sp, sp, #132
	str r10, [sp, #0]
	mov r5, sp
	add r4, sp, #120
	str r10, [sp, #4]
	str r10, [sp, #8]
	str r10, [sp, #12]
	str r10, [sp, #16]
	str r10, [sp, #20]
	str r10, [sp, #24]
	str r10, [sp, #28]
	str r10, [sp, #32]
	str r10, [sp, #36]
	str r10, [sp, #40]
	str r10, [sp, #44]
	str r10, [sp, #48]
	str r10, [sp, #52]
	str r10, [sp, #56]
	str r10, [sp, #60]
	str r10, [sp, #64]
	str r10, [sp, #68]
	str r10, [sp, #72]
	str r10, [sp, #76]
	str r10, [sp, #80]
	str r10, [sp, #84]
	str r10, [sp, #88]
	str r10, [sp, #92]
	str r10, [sp, #96]
	str r10, [sp, #100]
	str r10, [sp, #104]
	str r10, [sp, #108]
	str r10, [sp, #112]
	str r10, [sp, #116]
	bl getint
	str r0, [sp, #120]
	bl getint
	cmp r0, #0
	movw r7, #:lower16:graph
	movt r7, #:upper16:graph
	movw r8, #:lower16:edges
	movt r8, #:upper16:edges
	mov r6, r0
	ble label188
	mov r9, r8
	mov r10, #0
.p2align 4
label172:
	bl getint
	str r0, [r9, #0]
	bl getint
	add r10, r10, #1
	str r0, [r9, #4]
	cmp r6, r10
	ble label176
	add r9, r9, #8
	b label172
label176:
	cmp r6, #4
	ble label242
	sub r1, r6, #4
	mov r0, r8
	mov r10, #0
	mov r2, r10
.p2align 4
label182:
	ldr r9, [r0, #0]
	add r2, r2, #4
	ldr r10, [r0, #4]
	cmp r1, r2
	rsb r3, r9, r9, lsl #4
	add r11, r7, r3, lsl #3
	mov r3, #1
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r0, #8]
	rsb r10, r9, r9, lsl #4
	add r11, r7, r10, lsl #3
	ldr r10, [r0, #12]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r0, #16]
	rsb r10, r9, r9, lsl #4
	add r11, r7, r10, lsl #3
	ldr r10, [r0, #20]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ldr r9, [r0, #24]
	rsb r10, r9, r9, lsl #4
	add r11, r7, r10, lsl #3
	ldr r10, [r0, #28]
	str r3, [r11, r10, lsl #2]
	rsb r10, r10, r10, lsl #4
	add r10, r7, r10, lsl #3
	str r3, [r10, r9, lsl #2]
	ble label312
	add r0, r0, #32
	b label182
label177:
	ldr r0, [r8, #0]
	add r2, r2, #1
	ldr r3, [r8, #4]
	cmp r6, r2
	rsb r1, r0, r0, lsl #4
	add r9, r7, r1, lsl #3
	mov r1, #1
	str r1, [r9, r3, lsl #2]
	rsb r3, r3, r3, lsl #4
	add r3, r7, r3, lsl #3
	str r1, [r3, r0, lsl #2]
	ble label188
	add r8, r8, #8
	b label177
label312:
	add r8, r8, r2, lsl #3
	b label177
label188:
	mov r0, #1
	mov r1, r5
	mov r2, r4
	bl maxCliques
	bl putint
	add sp, sp, #132
	mov r10, #0
	mov r0, r10
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label242:
	mov r10, #0
	mov r2, r10
	b label177
