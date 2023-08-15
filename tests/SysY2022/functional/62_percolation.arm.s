.arch armv7ve
.data
.bss
.align 8
array:
	.zero	440
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
findfa:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, r0
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	sub sp, sp, #4
	ldr r5, [r1, r0, lsl #2]
	cmp r0, r5
	beq label34
	ldr r6, [r1, r5, lsl #2]
	cmp r5, r6
	bne label5
	mov r0, r5
	str r5, [r1, r4, lsl #2]
	b label24
label34:
	mov r0, r4
label24:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	ldr r7, [r1, r6, lsl #2]
	cmp r6, r7
	beq label50
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label9
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label24
label50:
	mov r0, r6
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label24
label9:
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	bne label10
	mov r0, r8
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label24
label10:
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label11
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label24
label11:
	movw r1, #:lower16:array
	movt r1, #:upper16:array
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
	b label24
label12:
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	ldr r0, [r1, r11, lsl #2]
	cmp r11, r0
	beq label87
	bl findfa
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	str r0, [r1, r11, lsl #2]
	str r0, [r1, r10, lsl #2]
	str r0, [r1, r9, lsl #2]
	str r0, [r1, r8, lsl #2]
	str r0, [r1, r7, lsl #2]
	str r0, [r1, r6, lsl #2]
	str r0, [r1, r5, lsl #2]
	str r0, [r1, r4, lsl #2]
	b label24
label87:
	mov r0, r11
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	str r11, [r1, r10, lsl #2]
	str r11, [r1, r9, lsl #2]
	str r11, [r1, r8, lsl #2]
	str r11, [r1, r7, lsl #2]
	str r11, [r1, r6, lsl #2]
	str r11, [r1, r5, lsl #2]
	str r11, [r1, r4, lsl #2]
	b label24
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #1
	movw r4, #:lower16:array
	movt r4, #:upper16:array
	sub sp, sp, #4
	cmp r5, #0
	bne label142
	b label177
.p2align 4
label383:
	cmp r7, #0
	bne label406
.p2align 4
label176:
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r5, #0
	beq label177
.p2align 4
label142:
	mvn r0, #0
	sub r5, r5, #1
	mov r9, #1
	mov r10, #0
	str r0, [r4, #4]
	mov r7, r10
	mov r6, r10
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r0, [r4, #16]
	str r0, [r4, #20]
	str r0, [r4, #24]
	str r0, [r4, #28]
	str r0, [r4, #32]
	str r0, [r4, #36]
	str r0, [r4, #40]
	str r0, [r4, #44]
	str r0, [r4, #48]
	str r0, [r4, #52]
	str r0, [r4, #56]
	str r0, [r4, #60]
	str r0, [r4, #64]
	str r0, [r4, #68]
	b label143
.p2align 4
label205:
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	bge label383
.p2align 4
label143:
	bl getint
	mov r8, r0
	bl getint
	cmp r9, #0
	add r6, r6, #1
	mov r3, r0
	beq label205
	sub r0, r8, #1
	add r2, r4, r3, lsl #2
	cmp r8, #1
	lsl r1, r0, #2
	add r9, r2, r1, lsl #2
	add r2, r3, r0, lsl #2
	str r2, [r9, #0]
	beq label148
	cmp r8, #4
	beq label151
	cmp r3, #4
	bge label407
.p2align 4
label154:
	ldr r0, [r9, #4]
	cmn r0, #1
	bne label155
	cmp r3, #1
	bgt label170
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label309:
	cmp r8, #1
	ble label398
.p2align 4
label164:
	sub r3, r2, #4
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	bne label165
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	cmp r7, #0
	beq label176
	b label414
.p2align 4
label407:
	cmp r3, #1
	ble label428
.p2align 4
label170:
	ldr r0, [r9, #-4]
	cmn r0, #1
	bne label171
	cmp r8, #4
	bge label401
.p2align 4
label167:
	ldr r0, [r9, #16]
	cmn r0, #1
	beq label309
	mov r0, r2
	bl findfa
	mov r3, r0
	add r0, r2, #4
	bl findfa
	cmp r3, r0
	beq label316
	str r0, [r4, r3, lsl #2]
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label223:
	cmp r8, #4
	bne label385
.p2align 4
label151:
	mov r10, #17
	str r10, [r4, #68]
	mov r0, r2
	bl findfa
	mov r11, r0
	mov r0, r10
	bl findfa
	cmp r11, r0
	beq label236
	str r0, [r4, r11, lsl #2]
	cmp r3, #4
	blt label154
	cmp r3, #1
	bgt label170
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label148:
	mov r10, #0
	str r10, [r4, #0]
	mov r0, r2
	bl findfa
	mov r11, r0
	mov r0, r10
	bl findfa
	cmp r11, r0
	beq label223
	str r0, [r4, r11, lsl #2]
	cmp r8, #4
	beq label151
	cmp r3, #4
	blt label154
	cmp r3, #1
	bgt label170
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	b label456
.p2align 4
label398:
	ldr r0, [r4, #0]
	cmn r0, #1
	beq label421
.p2align 4
label161:
	ldr r0, [r4, #68]
	cmn r0, #1
	bne label162
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	cmp r7, #0
	beq label176
	cmp r5, #0
	bne label142
	b label177
.p2align 4
label155:
	mov r0, r2
	bl findfa
	mov r10, r0
	add r0, r2, #1
	bl findfa
	cmp r10, r0
	bne label156
	cmp r3, #1
	bgt label170
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label162:
	mov r10, #0
	mov r0, r10
	bl findfa
	mov r10, #17
	mov r2, r0
	mov r0, r10
	bl findfa
	cmp r2, r0
	bne label287
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	cmp r6, #10
	mov r7, #1
	clz r0, r7
	lsr r9, r0, #5
	blt label143
	cmp r7, #0
	beq label176
	b label341
.p2align 4
label156:
	str r0, [r4, r10, lsl #2]
	cmp r3, #1
	bgt label170
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label171:
	mov r0, r2
	bl findfa
	mov r3, r0
	sub r0, r2, #1
	bl findfa
	cmp r3, r0
	beq label331
	str r0, [r4, r3, lsl #2]
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label236:
	cmp r3, #4
	blt label154
	cmp r3, #1
	bgt label170
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label165:
	mov r0, r2
	bl findfa
	mov r2, r0
	mov r0, r3
	bl findfa
	cmp r2, r0
	beq label301
	str r0, [r4, r2, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label385:
	cmp r3, #4
	blt label154
	cmp r3, #1
	bgt label170
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
label456:
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label401:
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label316:
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label331:
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label301:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label428:
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	b label391
.p2align 4
label421:
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
.p2align 4
label391:
	cmp r7, #0
	beq label176
.p2align 4
label414:
	cmp r5, #0
	bne label142
	b label177
.p2align 4
label287:
	clz r0, r7
	cmp r6, #10
	lsr r9, r0, #5
	blt label143
	cmp r7, #0
	beq label176
.p2align 4
label341:
	cmp r5, #0
	bne label142
label177:
	mov r10, #0
	add sp, sp, #4
	mov r0, r10
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label406:
	cmp r5, #0
	bne label142
	b label177
