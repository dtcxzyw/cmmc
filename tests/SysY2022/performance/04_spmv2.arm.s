.arch armv7ve
.data
.align 4
x:
	.zero	400040
.align 4
y:
	.zero	12000000
.align 4
v:
	.zero	12000000
.align 4
a:
	.zero	400040
.align 4
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #44
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r0, r1
	str r1, [sp, #0]
	bl getarray
	sub r1, r0, #1
	str r1, [sp, #8]
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	mov r4, r0
	str r0, [sp, #4]
	bl getarray
	movw r0, #:lower16:v
	movt r0, #:upper16:v
	mov r4, r0
	str r0, [sp, #12]
	bl getarray
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r4, r0
	str r0, [sp, #16]
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	movw r4, #:lower16:b
	movt r4, #:upper16:b
	str r4, [sp, #20]
	mov r0, #0
	str r0, [sp, #24]
	ldr r1, [sp, #8]
	cmp r1, #0
	ble label96
	add r2, r0, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label7
	b label6
label96:
	mov r3, #0
	ldr r1, [sp, #8]
	cmp r3, r1
	bge label40
	b label17
label7:
	add r2, r0, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label10
label9:
	ldr r4, [sp, #20]
	add r1, r4, r0, lsl #2
	mov r3, #0
	ldr r4, [sp, #20]
	str r3, [r4, r0, lsl #2]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	mov r0, r2
	add r2, r2, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label10
	b label9
label10:
	add r2, r0, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label13
	b label12
label13:
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	b label1688
label169:
	mov r3, #0
	ldr r1, [sp, #8]
	cmp r3, r1
	bge label40
	b label17
label803:
	mov r3, #0
	ldr r1, [sp, #8]
	cmp r3, r1
	bge label43
	b label45
label43:
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	bge label44
	str r0, [sp, #24]
	ldr r1, [sp, #8]
	cmp r1, #0
	ble label96
	mov r0, #0
	add r2, r0, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label7
	b label6
label45:
	ldr r0, [sp, #0]
	add r1, r0, r3, lsl #2
	ldr r0, [sp, #0]
	ldr r6, [r0, r3, lsl #2]
	add r2, r1, #4
	ldr r5, [r1, #4]
	add r4, r3, #1
	str r4, [sp, #32]
	ldr r0, [sp, #0]
	add r0, r0, r4, lsl #2
	ldr r4, [sp, #20]
	add r3, r4, r3, lsl #2
	cmp r6, r5
	bge label826
	ldr r5, [r0, #0]
	mov r9, r6
	add r6, r6, #16
	cmp r6, r5
	bge label49
	b label55
label826:
	mov r1, r5
	cmp r6, r5
	bge label1118
	ldr r1, [r3, #0]
	sub r1, r1, #1
	ldr r0, [r0, #0]
	add r2, r6, #16
	cmp r2, r0
	bge label63
	b label62
label55:
	ldr r4, [sp, #4]
	add r7, r4, r9, lsl #2
	ldr r4, [sp, #4]
	ldr r10, [r4, r9, lsl #2]
	ldr r4, [sp, #16]
	ldr r11, [r4, r10, lsl #2]
	ldr r4, [sp, #12]
	add r8, r4, r9, lsl #2
	ldr r4, [sp, #12]
	ldr r4, [r4, r9, lsl #2]
	add r9, r11, r4
	ldr r4, [sp, #16]
	str r9, [r4, r10, lsl #2]
	ldr r9, [r7, #4]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #12]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #12]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #16]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #16]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #20]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #20]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #24]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #24]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #28]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #28]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #32]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #32]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #36]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #36]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #40]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #40]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #44]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #44]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #48]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #48]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #52]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #52]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #56]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #56]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r7, [r7, #60]
	ldr r4, [sp, #16]
	ldr r4, [r4, r7, lsl #2]
	ldr r8, [r8, #60]
	add r8, r4, r8
	ldr r4, [sp, #16]
	str r8, [r4, r7, lsl #2]
	mov r9, r6
	add r6, r6, #16
	cmp r6, r5
	bge label49
	b label55
label1118:
	ldr r4, [sp, #32]
	mov r3, r4
	ldr r1, [sp, #8]
	cmp r4, r1
	bge label43
	b label45
label74:
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	b label1689
label1461:
	mov r3, #0
	ldr r1, [sp, #8]
	cmp r3, r1
	bge label43
	b label45
label49:
	add r6, r9, #16
	cmp r6, r5
	bge label837
	b label54
label837:
	mov r6, r9
label51:
	ldr r4, [sp, #4]
	ldr r7, [r4, r6, lsl #2]
	ldr r4, [sp, #16]
	ldr r8, [r4, r7, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	add r8, r8, r4
	ldr r4, [sp, #16]
	str r8, [r4, r7, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label53
	b label51
label53:
	ldr r6, [r1, #0]
	ldr r1, [r2, #0]
	cmp r6, r1
	bge label1118
	ldr r1, [r3, #0]
	sub r1, r1, #1
	ldr r0, [r0, #0]
	add r2, r6, #16
	cmp r2, r0
	bge label63
	b label62
label54:
	ldr r4, [sp, #4]
	add r7, r4, r9, lsl #2
	ldr r4, [sp, #4]
	ldr r10, [r4, r9, lsl #2]
	ldr r4, [sp, #16]
	ldr r11, [r4, r10, lsl #2]
	ldr r4, [sp, #12]
	add r8, r4, r9, lsl #2
	ldr r4, [sp, #12]
	ldr r4, [r4, r9, lsl #2]
	add r9, r11, r4
	ldr r4, [sp, #16]
	str r9, [r4, r10, lsl #2]
	ldr r9, [r7, #4]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #12]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #12]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #16]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #16]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #20]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #20]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #24]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #24]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #28]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #28]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #32]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #32]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #36]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #36]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #40]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #40]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #44]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #44]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #48]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #48]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #52]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #52]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #56]
	ldr r4, [sp, #16]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #56]
	add r10, r4, r10
	ldr r4, [sp, #16]
	str r10, [r4, r9, lsl #2]
	ldr r7, [r7, #60]
	ldr r4, [sp, #16]
	ldr r4, [r4, r7, lsl #2]
	ldr r8, [r8, #60]
	add r8, r4, r8
	ldr r4, [sp, #16]
	str r8, [r4, r7, lsl #2]
	mov r9, r6
	add r6, r6, #16
	cmp r6, r5
	bge label837
	b label54
label63:
	add r2, r6, #16
	cmp r2, r0
	bge label1277
	b label67
label1277:
	mov r2, r6
label65:
	ldr r4, [sp, #4]
	ldr r3, [r4, r2, lsl #2]
	ldr r4, [sp, #16]
	ldr r5, [r4, r3, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r2, lsl #2]
	mla r5, r1, r4, r5
	ldr r4, [sp, #16]
	str r5, [r4, r3, lsl #2]
	add r2, r2, #1
	cmp r2, r0
	bge label1293
	b label65
label1293:
	ldr r4, [sp, #32]
	mov r3, r4
	ldr r1, [sp, #8]
	cmp r4, r1
	bge label43
	b label45
label62:
	ldr r4, [sp, #4]
	add r3, r4, r6, lsl #2
	ldr r4, [sp, #4]
	ldr r7, [r4, r6, lsl #2]
	ldr r4, [sp, #16]
	ldr r8, [r4, r7, lsl #2]
	ldr r4, [sp, #12]
	add r5, r4, r6, lsl #2
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	mla r6, r1, r4, r8
	ldr r4, [sp, #16]
	str r6, [r4, r7, lsl #2]
	ldr r6, [r3, #4]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #4]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #8]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #8]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #12]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #12]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #16]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #16]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #20]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #20]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #24]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #24]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #28]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #28]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #32]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #32]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #36]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #36]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #40]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #40]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #44]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #44]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #48]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #48]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #52]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #52]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #56]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #56]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r3, [r3, #60]
	ldr r4, [sp, #16]
	ldr r4, [r4, r3, lsl #2]
	ldr r5, [r5, #60]
	mla r5, r1, r5, r4
	ldr r4, [sp, #16]
	str r5, [r4, r3, lsl #2]
	mov r6, r2
	add r2, r2, #16
	cmp r2, r0
	bge label63
	b label62
label67:
	ldr r4, [sp, #4]
	add r3, r4, r6, lsl #2
	ldr r4, [sp, #4]
	ldr r7, [r4, r6, lsl #2]
	ldr r4, [sp, #16]
	ldr r8, [r4, r7, lsl #2]
	ldr r4, [sp, #12]
	add r5, r4, r6, lsl #2
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	mla r6, r1, r4, r8
	ldr r4, [sp, #16]
	str r6, [r4, r7, lsl #2]
	ldr r6, [r3, #4]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #4]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #8]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #8]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #12]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #12]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #16]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #16]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #20]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #20]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #24]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #24]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #28]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #28]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #32]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #32]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #36]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #36]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #40]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #40]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #44]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #44]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #48]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #48]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #52]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #52]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #56]
	ldr r4, [sp, #16]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #56]
	mla r7, r1, r7, r4
	ldr r4, [sp, #16]
	str r7, [r4, r6, lsl #2]
	ldr r3, [r3, #60]
	ldr r4, [sp, #16]
	ldr r4, [r4, r3, lsl #2]
	ldr r5, [r5, #60]
	mla r5, r1, r5, r4
	ldr r4, [sp, #16]
	str r5, [r4, r3, lsl #2]
	mov r6, r2
	add r2, r2, #16
	cmp r2, r0
	bge label1277
	b label67
label17:
	ldr r0, [sp, #0]
	add r1, r0, r3, lsl #2
	ldr r0, [sp, #0]
	ldr r6, [r0, r3, lsl #2]
	add r2, r1, #4
	ldr r5, [r1, #4]
	add r4, r3, #1
	str r4, [sp, #28]
	ldr r0, [sp, #0]
	add r0, r0, r4, lsl #2
	ldr r4, [sp, #16]
	add r3, r4, r3, lsl #2
	cmp r6, r5
	bge label187
	ldr r5, [r0, #0]
	mov r9, r6
	add r6, r6, #16
	cmp r6, r5
	bge label21
	b label27
label187:
	mov r1, r5
	cmp r6, r5
	bge label479
	ldr r1, [r3, #0]
	sub r1, r1, #1
	ldr r0, [r0, #0]
	add r2, r6, #16
	cmp r2, r0
	bge label35
	b label34
label27:
	ldr r4, [sp, #4]
	add r7, r4, r9, lsl #2
	ldr r4, [sp, #4]
	ldr r10, [r4, r9, lsl #2]
	ldr r4, [sp, #20]
	ldr r11, [r4, r10, lsl #2]
	ldr r4, [sp, #12]
	add r8, r4, r9, lsl #2
	ldr r4, [sp, #12]
	ldr r4, [r4, r9, lsl #2]
	add r9, r11, r4
	ldr r4, [sp, #20]
	str r9, [r4, r10, lsl #2]
	ldr r9, [r7, #4]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #12]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #12]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #16]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #16]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #20]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #20]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #24]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #24]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #28]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #28]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #32]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #32]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #36]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #36]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #40]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #40]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #44]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #44]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #48]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #48]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #52]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #52]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #56]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #56]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r7, [r7, #60]
	ldr r4, [sp, #20]
	ldr r4, [r4, r7, lsl #2]
	ldr r8, [r8, #60]
	add r8, r4, r8
	ldr r4, [sp, #20]
	str r8, [r4, r7, lsl #2]
	mov r9, r6
	add r6, r6, #16
	cmp r6, r5
	bge label21
	b label27
label479:
	ldr r4, [sp, #28]
	mov r3, r4
	ldr r1, [sp, #8]
	cmp r4, r1
	bge label40
	b label17
label40:
	ldr r1, [sp, #8]
	cmp r1, #0
	ble label803
	mov r0, #0
	add r2, r0, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label70
	b label78
label21:
	add r6, r9, #16
	cmp r6, r5
	bge label198
	b label23
label198:
	mov r6, r9
label24:
	ldr r4, [sp, #4]
	ldr r7, [r4, r6, lsl #2]
	ldr r4, [sp, #20]
	ldr r8, [r4, r7, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	add r8, r8, r4
	ldr r4, [sp, #20]
	str r8, [r4, r7, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label26
	b label24
label34:
	ldr r4, [sp, #4]
	add r3, r4, r6, lsl #2
	ldr r4, [sp, #4]
	ldr r7, [r4, r6, lsl #2]
	ldr r4, [sp, #20]
	ldr r8, [r4, r7, lsl #2]
	ldr r4, [sp, #12]
	add r5, r4, r6, lsl #2
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	mla r6, r1, r4, r8
	ldr r4, [sp, #20]
	str r6, [r4, r7, lsl #2]
	ldr r6, [r3, #4]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #4]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #8]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #8]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #12]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #12]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #16]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #16]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #20]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #20]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #24]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #24]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #28]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #28]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #32]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #32]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #36]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #36]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #40]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #40]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #44]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #44]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #48]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #48]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #52]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #52]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #56]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #56]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r3, [r3, #60]
	ldr r4, [sp, #20]
	ldr r4, [r4, r3, lsl #2]
	ldr r5, [r5, #60]
	mla r5, r1, r5, r4
	ldr r4, [sp, #20]
	str r5, [r4, r3, lsl #2]
	mov r6, r2
	add r2, r2, #16
	cmp r2, r0
	bge label35
	b label34
label35:
	add r2, r6, #16
	cmp r2, r0
	bge label638
	b label39
label638:
	mov r2, r6
label37:
	ldr r4, [sp, #4]
	ldr r3, [r4, r2, lsl #2]
	ldr r4, [sp, #20]
	ldr r5, [r4, r3, lsl #2]
	ldr r4, [sp, #12]
	ldr r4, [r4, r2, lsl #2]
	mla r5, r1, r4, r5
	ldr r4, [sp, #20]
	str r5, [r4, r3, lsl #2]
	add r2, r2, #1
	cmp r2, r0
	bge label654
	b label37
label654:
	ldr r4, [sp, #28]
	mov r3, r4
	ldr r1, [sp, #8]
	cmp r4, r1
	bge label40
	b label17
label39:
	ldr r4, [sp, #4]
	add r3, r4, r6, lsl #2
	ldr r4, [sp, #4]
	ldr r7, [r4, r6, lsl #2]
	ldr r4, [sp, #20]
	ldr r8, [r4, r7, lsl #2]
	ldr r4, [sp, #12]
	add r5, r4, r6, lsl #2
	ldr r4, [sp, #12]
	ldr r4, [r4, r6, lsl #2]
	mla r6, r1, r4, r8
	ldr r4, [sp, #20]
	str r6, [r4, r7, lsl #2]
	ldr r6, [r3, #4]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #4]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #8]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #8]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #12]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #12]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #16]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #16]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #20]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #20]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #24]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #24]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #28]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #28]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #32]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #32]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #36]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #36]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #40]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #40]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #44]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #44]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #48]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #48]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #52]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #52]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r6, [r3, #56]
	ldr r4, [sp, #20]
	ldr r4, [r4, r6, lsl #2]
	ldr r7, [r5, #56]
	mla r7, r1, r7, r4
	ldr r4, [sp, #20]
	str r7, [r4, r6, lsl #2]
	ldr r3, [r3, #60]
	ldr r4, [sp, #20]
	ldr r4, [r4, r3, lsl #2]
	ldr r5, [r5, #60]
	mla r5, r1, r5, r4
	ldr r4, [sp, #20]
	str r5, [r4, r3, lsl #2]
	mov r6, r2
	add r2, r2, #16
	cmp r2, r0
	bge label638
	b label39
label23:
	ldr r4, [sp, #4]
	add r7, r4, r9, lsl #2
	ldr r4, [sp, #4]
	ldr r10, [r4, r9, lsl #2]
	ldr r4, [sp, #20]
	ldr r11, [r4, r10, lsl #2]
	ldr r4, [sp, #12]
	add r8, r4, r9, lsl #2
	ldr r4, [sp, #12]
	ldr r4, [r4, r9, lsl #2]
	add r9, r11, r4
	ldr r4, [sp, #20]
	str r9, [r4, r10, lsl #2]
	ldr r9, [r7, #4]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #4]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #8]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #8]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #12]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #12]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #16]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #16]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #20]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #20]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #24]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #24]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #28]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #28]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #32]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #32]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #36]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #36]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #40]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #40]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #44]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #44]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #48]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #48]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #52]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #52]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r9, [r7, #56]
	ldr r4, [sp, #20]
	ldr r4, [r4, r9, lsl #2]
	ldr r10, [r8, #56]
	add r10, r4, r10
	ldr r4, [sp, #20]
	str r10, [r4, r9, lsl #2]
	ldr r7, [r7, #60]
	ldr r4, [sp, #20]
	ldr r4, [r4, r7, lsl #2]
	ldr r8, [r8, #60]
	add r8, r4, r8
	ldr r4, [sp, #20]
	str r8, [r4, r7, lsl #2]
	mov r9, r6
	add r6, r6, #16
	cmp r6, r5
	bge label198
	b label23
label1689:
	mov r1, #0
	ldr r4, [sp, #16]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label1461
	b label1689
label1688:
	mov r1, #0
	ldr r4, [sp, #20]
	str r1, [r4, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #8]
	cmp r0, r1
	bge label169
	b label1688
label26:
	ldr r6, [r1, #0]
	ldr r1, [r2, #0]
	cmp r6, r1
	bge label479
	ldr r1, [r3, #0]
	sub r1, r1, #1
	ldr r0, [r0, #0]
	add r2, r6, #16
	cmp r2, r0
	bge label35
	b label34
label70:
	add r2, r0, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label72
	b label77
label72:
	add r2, r0, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label74
label76:
	ldr r4, [sp, #16]
	add r1, r4, r0, lsl #2
	mov r3, #0
	ldr r4, [sp, #16]
	str r3, [r4, r0, lsl #2]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	mov r0, r2
	add r2, r2, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label74
	b label76
label77:
	ldr r4, [sp, #16]
	add r1, r4, r0, lsl #2
	mov r3, #0
	ldr r4, [sp, #16]
	str r3, [r4, r0, lsl #2]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	mov r0, r2
	add r2, r2, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label72
	b label77
label78:
	ldr r4, [sp, #16]
	add r1, r4, r0, lsl #2
	mov r3, #0
	ldr r4, [sp, #16]
	str r3, [r4, r0, lsl #2]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	mov r0, r2
	add r2, r2, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label70
	b label78
label6:
	ldr r4, [sp, #20]
	add r1, r4, r0, lsl #2
	mov r3, #0
	ldr r4, [sp, #20]
	str r3, [r4, r0, lsl #2]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	mov r0, r2
	add r2, r2, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label7
	b label6
label12:
	ldr r4, [sp, #20]
	add r1, r4, r0, lsl #2
	mov r3, #0
	ldr r4, [sp, #20]
	str r3, [r4, r0, lsl #2]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #12]
	str r3, [r1, #16]
	str r3, [r1, #20]
	str r3, [r1, #24]
	str r3, [r1, #28]
	str r3, [r1, #32]
	str r3, [r1, #36]
	str r3, [r1, #40]
	str r3, [r1, #44]
	str r3, [r1, #48]
	str r3, [r1, #52]
	str r3, [r1, #56]
	str r3, [r1, #60]
	mov r0, r2
	add r2, r2, #16
	ldr r1, [sp, #8]
	cmp r2, r1
	bge label13
	b label12
label44:
	mov r0, #47
	bl _sysy_stoptime
	ldr r1, [sp, #8]
	mov r0, r1
	ldr r4, [sp, #20]
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
