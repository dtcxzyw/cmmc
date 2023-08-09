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
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r7, [r1, r6, lsl #2]
	cmp r6, r7
	bne label6
	mov r0, r6
	str r6, [r1, r5, lsl #2]
	str r6, [r1, r4, lsl #2]
	b label24
label6:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r8, [r1, r7, lsl #2]
	cmp r7, r8
	bne label7
	mov r0, r7
	str r7, [r1, r6, lsl #2]
	str r7, [r1, r5, lsl #2]
	str r7, [r1, r4, lsl #2]
	b label24
label7:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r9, [r1, r8, lsl #2]
	cmp r8, r9
	bne label8
	mov r0, r8
	str r8, [r1, r7, lsl #2]
	str r8, [r1, r6, lsl #2]
	str r8, [r1, r5, lsl #2]
	str r8, [r1, r4, lsl #2]
	b label24
label8:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r10, [r1, r9, lsl #2]
	cmp r9, r10
	bne label9
	mov r0, r9
	str r9, [r1, r8, lsl #2]
	str r9, [r1, r7, lsl #2]
	str r9, [r1, r6, lsl #2]
	str r9, [r1, r5, lsl #2]
	str r9, [r1, r4, lsl #2]
	b label24
label9:
	movw r1, #:lower16:parent
	movt r1, #:upper16:parent
	ldr r11, [r1, r10, lsl #2]
	cmp r10, r11
	bne label10
	mov r0, r10
	str r10, [r1, r9, lsl #2]
	str r10, [r1, r8, lsl #2]
	str r10, [r1, r7, lsl #2]
	str r10, [r1, r6, lsl #2]
	str r10, [r1, r5, lsl #2]
	str r10, [r1, r4, lsl #2]
	b label24
label10:
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
	b label24
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
	b label24
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	sub r6, r0, #4
	sub r7, r0, #20
	mov r5, r0
	bl getint
	cmp r5, #0
	movw r4, #:lower16:parent
	movt r4, #:upper16:parent
	mov r8, r0
	ble label160
	cmp r5, #4
	ble label142
	cmp r6, #16
	ble label144
	mov r0, r4
	mov r1, #0
.p2align 4
label151:
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
	ble label254
	add r0, r0, #64
	b label151
label254:
	add r0, r4, r1, lsl #2
label145:
	str r1, [r0, #0]
	add r2, r1, #1
	str r2, [r0, #4]
	add r2, r1, #2
	str r2, [r0, #8]
	add r2, r1, #3
	add r1, r1, #4
	str r2, [r0, #12]
	cmp r6, r1
	ble label148
	add r0, r0, #16
	b label145
label148:
	add r0, r4, r1, lsl #2
	b label156
label159:
	add r0, r0, #4
label156:
	str r1, [r0, #0]
	add r1, r1, #1
	cmp r5, r1
	bgt label159
label160:
	cmp r8, #0
	ble label165
	mov r9, #0
	b label161
.p2align 4
label163:
	str r2, [r4, r0, lsl #2]
	add r9, r9, #1
	cmp r8, r9
	ble label165
.p2align 4
label161:
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
	bne label163
	add r9, r9, #1
	cmp r8, r9
	bgt label161
label165:
	cmp r5, #0
	ble label285
	cmp r5, #4
	ble label288
	cmp r6, #16
	ble label174
	mov r0, r4
	mov r1, #0
	mov r2, r1
	b label182
.p2align 4
label186:
	add r0, r0, #64
.p2align 4
label182:
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
	bgt label186
	add r0, r4, r1, lsl #2
	b label175
label180:
	add r0, r0, #16
label175:
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
	bgt label180
	add r4, r4, r1, lsl #2
	mov r0, r1
	mov r1, r2
label167:
	ldr r2, [r4, #0]
	sub r2, r0, r2
	add r0, r0, #1
	clz r2, r2
	cmp r5, r0
	lsr r2, r2, #5
	add r1, r1, r2
	ble label297
	add r4, r4, #4
	b label167
label297:
	mov r0, r1
label188:
	bl putint
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label142:
	mov r0, r4
	mov r1, #0
	b label156
label174:
	mov r0, r4
	mov r2, #0
	mov r1, r2
	b label175
label144:
	mov r0, r4
	mov r1, #0
	b label145
label288:
	mov r0, #0
	mov r1, r0
	b label167
label285:
	mov r0, #0
	b label188
