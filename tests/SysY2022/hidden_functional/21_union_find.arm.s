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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r0
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	sub sp, sp, #4
	ldr r5, [r1, r0, lsl #2]
	cmp r0, r5
	beq label34
	ldr r6, [r1, r5, lsl #2]
	cmp r5, r6
	bne label7
	mov r0, r5
	str r5, [r1, r4, lsl #2]
	b label2
label34:
	mov r0, r4
label2:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label7:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r7, [r1, r6, lsl #2]
	cmp r6, r7
	beq label50
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label11
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label2
label50:
	mov r0, r6
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label2
label11:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	beq label66
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label15
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label2
label66:
	mov r0, r8
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label2
label15:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r11, [r1, r10, lsl #2]
	cmp r10, r11
	beq label82
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	bne label17
	mov r0, r11
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
	b label2
label17:
	bl find
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	str r0, [r1, r11, lsl #2]
	str r0, [r1, r10, lsl #2]
	str r0, [r1, r9, lsl #2]
	str r0, [r1, r8, lsl #2]
	str r0, [r1, r7, lsl #2]
	str r0, [r1, r6, lsl #2]
	str r0, [r1, r5, lsl #2]
	str r0, [r1, r4, lsl #2]
	b label2
label82:
	mov r0, r10
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	str r10, [r1, r9, lsl #2]
	str r10, [r1, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	str r10, [r1, r6, lsl #2]
	str r10, [r1, r5, lsl #2]
	str r10, [r1, r4, lsl #2]
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	sub r7, r0, #18
	sub r6, r0, #3
	mov r4, r0
	bl getint
	cmp r4, #0
	movw r5, #:lower16:parent
	movt r5, #:upper16:parent
	mov r8, r0
	ble label161
	cmp r4, #3
	ble label213
	cmp r6, #15
	ble label216
	mov r0, r5
	mov r1, #0
.p2align 4
label150:
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
	ble label269
	add r0, r0, #64
	b label150
label269:
	mov r2, r1
label141:
	cmp r6, r2
	ble label220
	add r0, r5, r2, lsl #2
	b label145
label148:
	add r0, r0, #16
label145:
	str r2, [r0, #0]
	add r1, r2, #1
	str r1, [r0, #4]
	add r1, r2, #2
	str r1, [r0, #8]
	add r1, r2, #3
	add r2, r2, #4
	str r1, [r0, #12]
	cmp r6, r2
	bgt label148
	mov r0, r2
label154:
	cmp r4, r0
	ble label161
	add r1, r5, r0, lsl #2
	b label157
label160:
	add r1, r1, #4
	mov r0, r2
label157:
	add r2, r0, #1
	str r0, [r1, #0]
	cmp r4, r2
	bgt label160
label161:
	cmp r8, #0
	ble label162
	mov r9, #0
	b label197
.p2align 4
label200:
	str r2, [r5, r0, lsl #2]
	add r9, r9, #1
	cmp r8, r9
	ble label162
.p2align 4
label197:
	bl getint
	mov r10, r0
	bl getint
	mov r3, r0
	mov r0, r10
	bl find
	mov r2, r0
	mov r0, r3
	bl find
	cmp r2, r0
	bne label200
	add r9, r9, #1
	cmp r8, r9
	bgt label197
label162:
	cmp r4, #0
	ble label289
	cmp r4, #3
	ble label292
	cmp r6, #15
	ble label311
	mov r0, r5
	mov r1, #0
	mov r2, r1
	b label176
.p2align 4
label180:
	add r0, r0, #64
.p2align 4
label176:
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
	bgt label180
	mov r7, r1
	mov r3, r2
	mov r0, r1
label181:
	cmp r6, r7
	ble label415
	add r0, r5, r7, lsl #2
	mov r1, r7
label187:
	ldr r2, [r0, #0]
	add r8, r1, #1
	ldr r7, [r0, #4]
	sub r2, r1, r2
	sub r7, r7, r8
	clz r2, r2
	clz r7, r7
	lsr r2, r2, #5
	lsr r7, r7, #5
	add r2, r3, r2
	ldr r3, [r0, #8]
	add r2, r7, r2
	add r7, r1, #2
	sub r3, r3, r7
	add r7, r1, #3
	clz r3, r3
	lsr r3, r3, #5
	add r2, r2, r3
	ldr r3, [r0, #12]
	sub r3, r3, r7
	clz r3, r3
	lsr r3, r3, #5
	add r3, r2, r3
	add r2, r1, #4
	cmp r6, r2
	ble label444
	add r0, r0, #16
	mov r1, r2
	b label187
label444:
	mov r1, r3
	mov r0, r2
	mov r2, r3
label164:
	cmp r4, r0
	ble label296
	add r1, r5, r0, lsl #2
label169:
	ldr r3, [r1, #0]
	sub r3, r0, r3
	add r0, r0, #1
	clz r3, r3
	cmp r4, r0
	lsr r3, r3, #5
	add r2, r2, r3
	ble label307
	add r1, r1, #4
	b label169
label307:
	mov r0, r2
label195:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label289:
	mov r0, #0
	b label195
label216:
	mov r2, #0
	mov r1, r2
	b label141
label296:
	mov r0, r1
	b label195
label415:
	mov r1, r2
	b label164
label311:
	mov r7, #0
	mov r2, r7
	mov r3, r7
	mov r0, r7
	b label181
label292:
	mov r2, #0
	mov r1, r2
	mov r0, r2
	b label164
label213:
	mov r0, #0
	b label154
label220:
	mov r0, r1
	b label154
