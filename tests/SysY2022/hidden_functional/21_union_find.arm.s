.arch armv7ve
.data
.bss
.p2align 3
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
	bne label8
	mov r0, r6
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label2
label8:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label9
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label2
label9:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	bne label10
	mov r0, r8
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label2
label10:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label11
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label2
label11:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r11, [r1, r10, lsl #2]
	cmp r10, r11
	bne label12
	mov r0, r10
	str r10, [r1, r9, lsl #2]
	str r10, [r1, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	str r10, [r1, r6, lsl #2]
	str r10, [r1, r5, lsl #2]
	str r10, [r1, r4, lsl #2]
	b label2
label12:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	beq label85
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
label85:
	mov r0, r11
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
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
	ble label163
	cmp r4, #3
	ble label215
	cmp r6, #15
	ble label218
	mov r0, r5
	mov r1, #0
	b label152
.p2align 4
label155:
	add r0, r0, #64
.p2align 4
label152:
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
	bgt label155
	mov r2, r1
label143:
	cmp r6, r2
	ble label222
	add r0, r5, r2, lsl #2
	b label147
label150:
	add r0, r0, #16
label147:
	str r2, [r0, #0]
	add r1, r2, #1
	str r1, [r0, #4]
	add r1, r2, #2
	str r1, [r0, #8]
	add r1, r2, #3
	add r2, r2, #4
	str r1, [r0, #12]
	cmp r6, r2
	bgt label150
	mov r0, r2
label156:
	cmp r4, r0
	ble label163
	add r1, r5, r0, lsl #2
	b label159
label162:
	add r1, r1, #4
	mov r0, r2
label159:
	add r2, r0, #1
	str r0, [r1, #0]
	cmp r4, r2
	bgt label162
label163:
	cmp r8, #0
	ble label164
	mov r9, #0
	b label199
.p2align 4
label201:
	str r2, [r5, r0, lsl #2]
	add r9, r9, #1
	cmp r8, r9
	ble label164
.p2align 4
label199:
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
	bne label201
	add r9, r9, #1
	cmp r8, r9
	bgt label199
label164:
	cmp r4, #0
	ble label291
	cmp r4, #3
	ble label294
	cmp r6, #15
	ble label313
	mov r0, r5
	mov r1, #0
	mov r2, r1
	b label178
.p2align 4
label182:
	add r0, r0, #64
.p2align 4
label178:
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
	bgt label182
	mov r7, r1
	mov r3, r2
	mov r0, r1
label183:
	cmp r6, r7
	ble label417
	add r0, r5, r7, lsl #2
	mov r1, r7
label189:
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
	ble label446
	add r0, r0, #16
	mov r1, r2
	b label189
label446:
	mov r1, r3
	mov r0, r2
	mov r2, r3
label166:
	cmp r4, r0
	ble label298
	add r1, r5, r0, lsl #2
label171:
	ldr r3, [r1, #0]
	sub r3, r0, r3
	add r0, r0, #1
	clz r3, r3
	cmp r4, r0
	lsr r3, r3, #5
	add r2, r2, r3
	ble label309
	add r1, r1, #4
	b label171
label309:
	mov r0, r2
label197:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label291:
	mov r0, #0
	b label197
label218:
	mov r2, #0
	mov r1, r2
	b label143
label298:
	mov r0, r1
	b label197
label417:
	mov r1, r2
	b label166
label313:
	mov r7, #0
	mov r2, r7
	mov r3, r7
	mov r0, r7
	b label183
label294:
	mov r2, #0
	mov r1, r2
	mov r0, r2
	b label166
label215:
	mov r0, #0
	b label156
label222:
	mov r0, r1
	b label156
