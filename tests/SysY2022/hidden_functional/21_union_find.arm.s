.arch armv7ve
.data
.bss
.align 8
parent:
	.zero	4020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
find:
	push { r4, r5, r6, r7, r8, lr }
	movw r7, #:lower16:parent
	movt r7, #:upper16:parent
	mov r4, r0
	ldr r5, [r7, r0, lsl #2]
	cmp r0, r5
	beq label22
	ldr r6, [r7, r5, lsl #2]
	cmp r5, r6
	bne label5
	mov r0, r5
	str r5, [r7, r4, lsl #2]
	b label2
label22:
	mov r0, r4
label2:
	pop { r4, r5, r6, r7, r8, pc }
label5:
	ldr r8, [r7, r6, lsl #2]
	cmp r6, r8
	beq label36
	ldr r0, [r7, r8, lsl #2]
	cmp r8, r0
	bne label11
	mov r0, r8
	str r8, [r7, r6, lsl #2]
	str r8, [r7, r5, lsl #2]
	str r8, [r7, r4, lsl #2]
	b label2
label36:
	mov r0, r6
	str r6, [r7, r5, lsl #2]
	str r6, [r7, r4, lsl #2]
	b label2
label11:
	bl find
	str r0, [r7, r8, lsl #2]
	str r0, [r7, r6, lsl #2]
	str r0, [r7, r5, lsl #2]
	str r0, [r7, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	sub r7, r0, #20
	sub r6, r0, #4
	mov r5, r0
	bl getint
	cmp r5, #0
	movw r4, #:lower16:parent
	movt r4, #:upper16:parent
	mov r8, r0
	ble label92
	cmp r5, #4
	ble label134
	cmp r6, #16
	ble label75
	mov r0, r4
	mov r1, #0
.p2align 4
label82:
	str r1, [r0, #0]
	add r2, r1, #1
	str r2, [r0, #4]
	add r2, r1, #2
	str r2, [r0, #8]
	add r2, r1, #3
	str r2, [r0, #12]
	add r2, r1, #4
	str r2, [r0, #16]
	add r2, r1, #5
	str r2, [r0, #20]
	add r2, r1, #6
	str r2, [r0, #24]
	add r2, r1, #7
	str r2, [r0, #28]
	add r2, r1, #8
	str r2, [r0, #32]
	add r2, r1, #9
	str r2, [r0, #36]
	add r2, r1, #10
	str r2, [r0, #40]
	add r2, r1, #11
	str r2, [r0, #44]
	add r2, r1, #12
	str r2, [r0, #48]
	add r2, r1, #13
	str r2, [r0, #52]
	add r2, r1, #14
	str r2, [r0, #56]
	add r2, r1, #15
	add r1, r1, #16
	str r2, [r0, #60]
	cmp r7, r1
	ble label186
	add r0, r0, #64
	b label82
label76:
	str r1, [r0, #0]
	add r2, r1, #1
	str r2, [r0, #4]
	add r2, r1, #2
	str r2, [r0, #8]
	add r2, r1, #3
	add r1, r1, #4
	str r2, [r0, #12]
	cmp r6, r1
	ble label79
	add r0, r0, #16
	b label76
label186:
	add r0, r4, r1, lsl #2
	b label76
label79:
	add r0, r4, r1, lsl #2
label88:
	str r1, [r0, #0]
	add r1, r1, #1
	cmp r5, r1
	ble label92
	add r0, r0, #4
	b label88
label92:
	cmp r8, #0
	ble label93
	mov r9, #0
	b label118
label93:
	cmp r5, #0
	ble label202
	cmp r5, #4
	ble label205
	cmp r6, #16
	ble label98
	mov r0, r4
	mov r1, #0
	mov r2, r1
.p2align 4
label106:
	ldr r3, [r0, #0]
	add r9, r1, #1
	ldr r8, [r0, #4]
	sub r3, r1, r3
	sub r8, r8, r9
	clz r3, r3
	clz r8, r8
	lsr r3, r3, #5
	lsr r8, r8, #5
	add r2, r2, r3
	ldr r3, [r0, #8]
	add r2, r8, r2
	add r8, r1, #2
	sub r3, r3, r8
	add r8, r1, #3
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #12]
	sub r3, r3, r8
	add r8, r1, #4
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #16]
	sub r3, r3, r8
	add r8, r1, #5
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #20]
	sub r3, r3, r8
	add r8, r1, #6
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #24]
	sub r3, r3, r8
	add r8, r1, #7
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #28]
	sub r3, r3, r8
	add r8, r1, #8
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #32]
	sub r3, r3, r8
	add r8, r1, #9
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #36]
	sub r3, r3, r8
	add r8, r1, #10
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #40]
	sub r3, r3, r8
	add r8, r1, #11
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #44]
	sub r3, r3, r8
	add r8, r1, #12
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #48]
	sub r3, r3, r8
	add r8, r1, #13
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #52]
	sub r3, r3, r8
	add r8, r1, #14
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #56]
	sub r3, r3, r8
	add r8, r1, #15
	clz r3, r3
	add r1, r1, #16
	lsr r3, r3, #5
	cmp r7, r1
	add r2, r2, r3
	ldr r3, [r0, #60]
	sub r3, r3, r8
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ble label337
	add r0, r0, #64
	b label106
.p2align 4
label118:
	bl getint
	mov r10, r0
	bl getint
	mov r2, r0
	mov r0, r10
	bl find
	mov r1, r0
	mov r0, r2
	bl find
	cmp r1, r0
	bne label121
	add r9, r9, #1
	cmp r8, r9
	bgt label118
	b label93
.p2align 4
label121:
	str r1, [r4, r0, lsl #2]
	add r9, r9, #1
	cmp r8, r9
	bgt label118
	b label93
label98:
	mov r0, r4
	mov r2, #0
	mov r1, r2
label99:
	ldr r3, [r0, #0]
	add r8, r1, #1
	ldr r7, [r0, #4]
	sub r3, r1, r3
	sub r7, r7, r8
	clz r3, r3
	clz r7, r7
	lsr r3, r3, #5
	lsr r7, r7, #5
	add r2, r2, r3
	ldr r3, [r0, #8]
	add r2, r7, r2
	add r7, r1, #2
	sub r3, r3, r7
	add r7, r1, #3
	clz r3, r3
	add r1, r1, #4
	lsr r3, r3, #5
	cmp r6, r1
	add r2, r2, r3
	ldr r3, [r0, #12]
	sub r3, r3, r7
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ble label103
	add r0, r0, #16
	b label99
label103:
	add r4, r4, r1, lsl #2
	mov r0, r1
	mov r1, r2
label112:
	ldr r2, [r4, #0]
	sub r2, r0, r2
	add r0, r0, #1
	clz r2, r2
	cmp r5, r0
	lsr r2, r2, #5
	add r1, r1, r2
	ble label349
	add r4, r4, #4
	b label112
label94:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label349:
	mov r0, r1
	b label94
label75:
	mov r0, r4
	mov r1, #0
	b label76
label205:
	mov r0, #0
	mov r1, r0
	b label112
label337:
	add r0, r4, r1, lsl #2
	b label99
label202:
	mov r0, #0
	b label94
label134:
	mov r0, r4
	mov r1, #0
	b label88
