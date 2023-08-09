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
	b label140
.p2align 4
label306:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
.p2align 4
label390:
	cmp r6, #0
	beq label175
.p2align 4
label140:
	cmp r5, #0
	beq label176
.p2align 4
label142:
	sub r5, r5, #1
	mvn r0, #0
	mov r10, #0
	str r0, [r4, #4]
	mov r6, r10
	mov r7, r10
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
	cmp r7, #10
	bge label381
.p2align 4
label143:
	bl getint
	mov r8, r0
	bl getint
	cmp r6, #0
	add r7, r7, #1
	mov r3, r0
	bne label205
	sub r0, r8, #1
	cmp r8, #1
	add r2, r3, r0, lsl #2
	add r9, r4, r2, lsl #2
	str r2, [r9, #0]
	beq label170
	cmp r8, #4
	beq label148
	cmp r3, #4
	blt label151
	cmp r3, #1
	bgt label155
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
.p2align 4
label448:
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label170:
	mov r10, #0
	str r10, [r4, #0]
	mov r0, r2
	bl findfa
	mov r11, r0
	mov r0, r10
	bl findfa
	cmp r11, r0
	beq label329
	str r0, [r4, r11, lsl #2]
	cmp r8, #4
	bne label401
.p2align 4
label148:
	mov r10, #17
	str r10, [r4, #68]
	mov r0, r2
	bl findfa
	mov r11, r0
	mov r0, r10
	bl findfa
	cmp r11, r0
	beq label225
	str r0, [r4, r11, lsl #2]
	cmp r3, #4
	blt label151
	cmp r3, #1
	bgt label155
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label225:
	cmp r3, #4
	bge label383
.p2align 4
label151:
	add r10, r2, #1
	ldr r0, [r4, r10, lsl #2]
	cmn r0, #1
	bne label152
	cmp r3, #1
	ble label385
.p2align 4
label155:
	sub r3, r2, #1
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	bne label156
	cmp r8, #4
	bge label388
.p2align 4
label167:
	ldr r0, [r9, #16]
	cmn r0, #1
	bne label168
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label168:
	mov r0, r2
	bl findfa
	mov r3, r0
	add r0, r2, #4
	bl findfa
	cmp r3, r0
	bne label169
	cmp r8, #1
	ble label398
.p2align 4
label164:
	sub r3, r2, #4
	ldr r0, [r4, r3, lsl #2]
	cmn r0, #1
	beq label300
	mov r0, r2
	bl findfa
	mov r2, r0
	mov r0, r3
	bl findfa
	cmp r2, r0
	beq label306
	str r0, [r4, r2, lsl #2]
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label300:
	ldr r0, [r4, #0]
	cmn r0, #1
	beq label394
.p2align 4
label161:
	ldr r0, [r4, #68]
	cmn r0, #1
	bne label162
	cmp r7, #10
	blt label143
	cmp r6, #0
	bne label140
	b label175
.p2align 4
label152:
	mov r0, r2
	bl findfa
	mov r11, r0
	mov r0, r10
	bl findfa
	cmp r11, r0
	bne label153
	cmp r3, #1
	bgt label155
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label153:
	str r0, [r4, r11, lsl #2]
	cmp r3, #1
	bgt label155
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label156:
	mov r0, r2
	bl findfa
	mov r10, r0
	mov r0, r3
	bl findfa
	cmp r10, r0
	beq label265
	str r0, [r4, r10, lsl #2]
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label329:
	cmp r8, #4
	beq label148
	cmp r3, #4
	blt label151
	cmp r3, #1
	bgt label155
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	b label448
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
	bne label292
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	cmp r7, #10
	mov r6, #1
	blt label143
	cmp r6, #0
	bne label140
	b label175
.p2align 4
label401:
	cmp r3, #4
	blt label151
	cmp r3, #1
	bgt label155
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	b label448
.p2align 4
label265:
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label385:
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label388:
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label383:
	cmp r3, #1
	bgt label155
	cmp r8, #4
	blt label167
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label169:
	str r0, [r4, r3, lsl #2]
	cmp r8, #1
	bgt label164
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label381:
	cmp r6, #0
	bne label140
.p2align 4
label175:
	mvn r0, #0
	bl putint
	mov r0, #10
	bl putch
	cmp r5, #0
	bne label142
	b label176
.p2align 4
label398:
	ldr r0, [r4, #0]
	cmn r0, #1
	bne label161
	cmp r7, #10
	blt label143
	b label390
.p2align 4
label394:
	cmp r7, #10
	blt label143
	cmp r6, #0
	bne label140
	b label175
.p2align 4
label292:
	cmp r7, #10
	blt label143
	cmp r6, #0
	bne label140
	b label175
label176:
	mov r10, #0
	add sp, sp, #4
	mov r0, r10
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
