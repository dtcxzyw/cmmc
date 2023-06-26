.arch armv7ve
.data
.align 4
x:
	.zero	864000000
.align 4
y:
	.zero	864000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #116
	bl getint
	mov r8, r0
	str r0, [sp, #48]
	bl getint
	mov r2, r0
	str r0, [sp, #40]
	mov r0, #13
	bl _sysy_starttime
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	str r1, [sp, #44]
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	str r1, [sp, #56]
	ldr r8, [sp, #48]
	sub r2, r8, #1
	str r2, [sp, #36]
	mov r0, #0
label2:
	movw r3, #63744
	movt r3, #21
	mul r2, r0, r3
	ldr r1, [sp, #44]
	add r2, r1, r2
	mul r3, r0, r3
	ldr r1, [sp, #56]
	add r3, r1, r3
	ldr r8, [sp, #48]
	cmp r0, r8
	bge label51
	mov r1, #0
	ldr r8, [sp, #48]
	cmp r1, r8
	bge label55
	ldr r8, [sp, #48]
	cmp r8, #0
	ble label16
	mov r5, #2400
	mul r4, r1, r5
	add r4, r2, r4
	mul r5, r1, r5
	add r5, r3, r5
	mov r7, #0
	add r6, r7, #16
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label67
	b label10
label51:
	mov r4, #1
	mov r0, r4
	str r4, [sp, #32]
	b label18
label55:
	add r0, r0, #1
	b label2
label18:
	movw r2, #63744
	movt r2, #21
	ldr r0, [sp, #32]
	mul r0, r0, r2
	ldr r1, [sp, #44]
	add r1, r1, r0
	str r1, [sp, #28]
	movw r0, #1792
	movt r0, #65514
	add r1, r1, r0
	str r1, [sp, #24]
	ldr r1, [sp, #28]
	add r1, r1, r2
	str r1, [sp, #20]
	ldr r2, [sp, #36]
	ldr r0, [sp, #32]
	cmp r0, r2
	bge label21
	mov r0, #1
	str r0, [sp, #16]
	ldr r2, [sp, #36]
	cmp r0, r2
	bge label24
	ldr r2, [sp, #36]
	cmp r2, #1
	ble label26
label27:
	mov r3, #2400
	ldr r0, [sp, #16]
	mul r0, r0, r3
	ldr r1, [sp, #28]
	add r2, r1, r0
	str r2, [sp, #12]
	ldr r0, [sp, #16]
	mul r0, r0, r3
	ldr r1, [sp, #24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [sp, #16]
	mul r0, r0, r3
	ldr r1, [sp, #20]
	add r1, r1, r0
	str r1, [sp, #4]
	sub r1, r2, #2400
	str r1, [sp, #0]
	add r1, r2, #2400
	str r1, [sp, #52]
	mov r0, #1
	add r1, r0, #16
	str r1, [sp, #100]
	ldr r2, [sp, #36]
	cmp r1, r2
	bge label31
	b label30
label31:
	add r1, r0, #16
	str r1, [sp, #104]
	ldr r2, [sp, #36]
	cmp r1, r2
	bge label33
	b label35
label13:
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	b label900
label16:
	add r1, r1, #1
	ldr r8, [sp, #48]
	cmp r1, r8
	bge label55
	ldr r8, [sp, #48]
	cmp r8, #0
	ble label16
	mov r5, #2400
	mul r4, r1, r5
	add r4, r2, r4
	mul r5, r1, r5
	add r5, r3, r5
	mov r7, #0
	add r6, r7, #16
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label67
	b label10
label900:
	mov r7, #1
	str r7, [r4, r6, lsl #2]
	mov r7, #0
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label16
	b label900
label33:
	ldr r2, [sp, #12]
	add r4, r2, r0, lsl #2
	ldr r1, [sp, #8]
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #4]
	ldr r3, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r5, [r1, r0, lsl #2]
	ldr r1, [sp, #52]
	ldr r7, [r1, r0, lsl #2]
	ldr r6, [r4, #-4]
	add r1, r0, #1
	ldr r4, [r4, #4]
	add r5, r5, r7
	add r5, r5, r6
	add r4, r5, r4
	add r2, r4, r2
	add r3, r2, r3
	ldr r2, [sp, #40]
	sdiv r3, r3, r2
	ldr r2, [sp, #12]
	str r3, [r2, r0, lsl #2]
	ldr r2, [sp, #36]
	cmp r1, r2
	bge label26
	mov r0, r1
	b label33
label67:
	mov r6, r7
	add r7, r7, #16
	ldr r8, [sp, #48]
	cmp r7, r8
	bge label13
label15:
	add r8, r4, r6, lsl #2
	mov r9, #1
	str r9, [r4, r6, lsl #2]
	add r10, r5, r6, lsl #2
	mov r11, #0
	str r11, [r5, r6, lsl #2]
	str r9, [r8, #4]
	str r11, [r10, #4]
	str r9, [r8, #8]
	str r11, [r10, #8]
	str r9, [r8, #12]
	str r11, [r10, #12]
	str r9, [r8, #16]
	str r11, [r10, #16]
	str r9, [r8, #20]
	str r11, [r10, #20]
	str r9, [r8, #24]
	str r11, [r10, #24]
	str r9, [r8, #28]
	str r11, [r10, #28]
	str r9, [r8, #32]
	str r11, [r10, #32]
	str r9, [r8, #36]
	str r11, [r10, #36]
	str r9, [r8, #40]
	str r11, [r10, #40]
	str r9, [r8, #44]
	str r11, [r10, #44]
	str r9, [r8, #48]
	str r11, [r10, #48]
	str r9, [r8, #52]
	str r11, [r10, #52]
	str r9, [r8, #56]
	str r11, [r10, #56]
	str r9, [r8, #60]
	str r11, [r10, #60]
	mov r6, r7
	add r7, r7, #16
	ldr r8, [sp, #48]
	cmp r7, r8
	bge label13
	b label15
label10:
	add r8, r4, r7, lsl #2
	mov r9, #1
	str r9, [r4, r7, lsl #2]
	add r10, r5, r7, lsl #2
	mov r11, #0
	str r11, [r5, r7, lsl #2]
	str r9, [r8, #4]
	str r11, [r10, #4]
	str r9, [r8, #8]
	str r11, [r10, #8]
	str r9, [r8, #12]
	str r11, [r10, #12]
	str r9, [r8, #16]
	str r11, [r10, #16]
	str r9, [r8, #20]
	str r11, [r10, #20]
	str r9, [r8, #24]
	str r11, [r10, #24]
	str r9, [r8, #28]
	str r11, [r10, #28]
	str r9, [r8, #32]
	str r11, [r10, #32]
	str r9, [r8, #36]
	str r11, [r10, #36]
	str r9, [r8, #40]
	str r11, [r10, #40]
	str r9, [r8, #44]
	str r11, [r10, #44]
	str r9, [r8, #48]
	str r11, [r10, #48]
	str r9, [r8, #52]
	str r11, [r10, #52]
	str r9, [r8, #56]
	str r11, [r10, #56]
	str r9, [r8, #60]
	str r11, [r10, #60]
	mov r7, r6
	add r6, r6, #16
	ldr r8, [sp, #48]
	cmp r6, r8
	bge label67
	b label10
label35:
	ldr r2, [sp, #12]
	add r1, r2, r0, lsl #2
	str r1, [sp, #96]
	ldr r1, [sp, #8]
	add r1, r1, r0, lsl #2
	str r1, [sp, #76]
	ldr r1, [sp, #8]
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #4]
	add r1, r1, r0, lsl #2
	str r1, [sp, #80]
	ldr r1, [sp, #4]
	ldr r3, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, r0, lsl #2
	str r1, [sp, #84]
	ldr r1, [sp, #0]
	ldr r4, [r1, r0, lsl #2]
	ldr r1, [sp, #52]
	add r1, r1, r0, lsl #2
	str r1, [sp, #88]
	ldr r1, [sp, #52]
	ldr r5, [r1, r0, lsl #2]
	ldr r1, [sp, #96]
	ldr r6, [r1, #-4]
	ldr r1, [sp, #96]
	ldr r1, [r1, #4]
	add r2, r2, r3
	add r2, r2, r4
	add r2, r2, r5
	add r2, r2, r6
	add r1, r2, r1
	ldr r2, [sp, #40]
	sdiv r3, r1, r2
	ldr r2, [sp, #12]
	str r3, [r2, r0, lsl #2]
	ldr r1, [sp, #76]
	ldr r0, [r1, #4]
	ldr r1, [sp, #80]
	ldr r2, [r1, #4]
	ldr r1, [sp, #84]
	ldr r4, [r1, #4]
	ldr r1, [sp, #88]
	ldr r5, [r1, #4]
	ldr r1, [sp, #96]
	ldr r1, [r1, #8]
	add r0, r3, r0
	add r0, r0, r2
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #4]
	ldr r1, [sp, #76]
	ldr r2, [r1, #8]
	ldr r1, [sp, #80]
	ldr r3, [r1, #8]
	ldr r1, [sp, #84]
	ldr r4, [r1, #8]
	ldr r1, [sp, #88]
	ldr r5, [r1, #8]
	ldr r1, [sp, #96]
	ldr r1, [r1, #12]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #8]
	ldr r1, [sp, #76]
	ldr r2, [r1, #12]
	ldr r1, [sp, #80]
	ldr r3, [r1, #12]
	ldr r1, [sp, #84]
	ldr r4, [r1, #12]
	ldr r1, [sp, #88]
	ldr r5, [r1, #12]
	ldr r1, [sp, #96]
	ldr r1, [r1, #16]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #12]
	ldr r1, [sp, #76]
	ldr r2, [r1, #16]
	ldr r1, [sp, #80]
	ldr r3, [r1, #16]
	ldr r1, [sp, #84]
	ldr r4, [r1, #16]
	ldr r1, [sp, #88]
	ldr r5, [r1, #16]
	ldr r1, [sp, #96]
	ldr r1, [r1, #20]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #16]
	ldr r1, [sp, #76]
	ldr r2, [r1, #20]
	ldr r1, [sp, #80]
	ldr r3, [r1, #20]
	ldr r1, [sp, #84]
	ldr r4, [r1, #20]
	ldr r1, [sp, #88]
	ldr r5, [r1, #20]
	ldr r1, [sp, #96]
	ldr r1, [r1, #24]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #20]
	ldr r1, [sp, #76]
	ldr r2, [r1, #24]
	ldr r1, [sp, #80]
	ldr r3, [r1, #24]
	ldr r1, [sp, #84]
	ldr r4, [r1, #24]
	ldr r1, [sp, #88]
	ldr r5, [r1, #24]
	ldr r1, [sp, #96]
	ldr r1, [r1, #28]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #24]
	ldr r1, [sp, #76]
	ldr r2, [r1, #28]
	ldr r1, [sp, #80]
	ldr r3, [r1, #28]
	ldr r1, [sp, #84]
	ldr r4, [r1, #28]
	ldr r1, [sp, #88]
	ldr r5, [r1, #28]
	ldr r1, [sp, #96]
	ldr r1, [r1, #32]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #28]
	ldr r1, [sp, #76]
	ldr r2, [r1, #32]
	ldr r1, [sp, #80]
	ldr r3, [r1, #32]
	ldr r1, [sp, #84]
	ldr r4, [r1, #32]
	ldr r1, [sp, #88]
	ldr r5, [r1, #32]
	ldr r1, [sp, #96]
	ldr r1, [r1, #36]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #32]
	ldr r1, [sp, #76]
	ldr r2, [r1, #36]
	ldr r1, [sp, #80]
	ldr r3, [r1, #36]
	ldr r1, [sp, #84]
	ldr r4, [r1, #36]
	ldr r1, [sp, #88]
	ldr r5, [r1, #36]
	ldr r1, [sp, #96]
	ldr r1, [r1, #40]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #36]
	ldr r1, [sp, #76]
	ldr r2, [r1, #40]
	ldr r1, [sp, #80]
	ldr r3, [r1, #40]
	ldr r1, [sp, #84]
	ldr r4, [r1, #40]
	ldr r1, [sp, #88]
	ldr r5, [r1, #40]
	ldr r1, [sp, #96]
	ldr r1, [r1, #44]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #40]
	ldr r1, [sp, #76]
	ldr r2, [r1, #44]
	ldr r1, [sp, #80]
	ldr r3, [r1, #44]
	ldr r1, [sp, #84]
	ldr r4, [r1, #44]
	ldr r1, [sp, #88]
	ldr r5, [r1, #44]
	ldr r1, [sp, #96]
	ldr r1, [r1, #48]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #44]
	ldr r1, [sp, #76]
	ldr r2, [r1, #48]
	ldr r1, [sp, #80]
	ldr r3, [r1, #48]
	ldr r1, [sp, #84]
	ldr r4, [r1, #48]
	ldr r1, [sp, #88]
	ldr r5, [r1, #48]
	ldr r1, [sp, #96]
	ldr r1, [r1, #52]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #48]
	ldr r1, [sp, #76]
	ldr r2, [r1, #52]
	ldr r1, [sp, #80]
	ldr r3, [r1, #52]
	ldr r1, [sp, #84]
	ldr r4, [r1, #52]
	ldr r1, [sp, #88]
	ldr r5, [r1, #52]
	ldr r1, [sp, #96]
	ldr r1, [r1, #56]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #52]
	ldr r1, [sp, #76]
	ldr r2, [r1, #56]
	ldr r1, [sp, #80]
	ldr r3, [r1, #56]
	ldr r1, [sp, #84]
	ldr r4, [r1, #56]
	ldr r1, [sp, #88]
	ldr r5, [r1, #56]
	ldr r1, [sp, #96]
	ldr r1, [r1, #60]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #56]
	ldr r1, [sp, #76]
	ldr r2, [r1, #60]
	ldr r1, [sp, #80]
	ldr r3, [r1, #60]
	ldr r1, [sp, #84]
	ldr r4, [r1, #60]
	ldr r1, [sp, #88]
	ldr r5, [r1, #60]
	ldr r1, [sp, #96]
	ldr r1, [r1, #64]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #96]
	str r0, [r1, #60]
	ldr r1, [sp, #104]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #104]
	ldr r2, [sp, #36]
	cmp r1, r2
	bge label33
	b label35
label30:
	ldr r2, [sp, #12]
	add r1, r2, r0, lsl #2
	str r1, [sp, #92]
	ldr r1, [sp, #8]
	add r1, r1, r0, lsl #2
	str r1, [sp, #60]
	ldr r1, [sp, #8]
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #4]
	add r1, r1, r0, lsl #2
	str r1, [sp, #64]
	ldr r1, [sp, #4]
	ldr r3, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	add r1, r1, r0, lsl #2
	str r1, [sp, #68]
	ldr r1, [sp, #0]
	ldr r4, [r1, r0, lsl #2]
	ldr r1, [sp, #52]
	add r1, r1, r0, lsl #2
	str r1, [sp, #72]
	ldr r1, [sp, #52]
	ldr r5, [r1, r0, lsl #2]
	ldr r1, [sp, #92]
	ldr r6, [r1, #-4]
	ldr r1, [sp, #92]
	ldr r1, [r1, #4]
	add r2, r2, r3
	add r2, r2, r4
	add r2, r2, r5
	add r2, r2, r6
	add r1, r2, r1
	ldr r2, [sp, #40]
	sdiv r3, r1, r2
	ldr r2, [sp, #12]
	str r3, [r2, r0, lsl #2]
	ldr r1, [sp, #60]
	ldr r0, [r1, #4]
	ldr r1, [sp, #64]
	ldr r2, [r1, #4]
	ldr r1, [sp, #68]
	ldr r4, [r1, #4]
	ldr r1, [sp, #72]
	ldr r5, [r1, #4]
	ldr r1, [sp, #92]
	ldr r1, [r1, #8]
	add r0, r3, r0
	add r0, r0, r2
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #4]
	ldr r1, [sp, #60]
	ldr r2, [r1, #8]
	ldr r1, [sp, #64]
	ldr r3, [r1, #8]
	ldr r1, [sp, #68]
	ldr r4, [r1, #8]
	ldr r1, [sp, #72]
	ldr r5, [r1, #8]
	ldr r1, [sp, #92]
	ldr r1, [r1, #12]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #8]
	ldr r1, [sp, #60]
	ldr r2, [r1, #12]
	ldr r1, [sp, #64]
	ldr r3, [r1, #12]
	ldr r1, [sp, #68]
	ldr r4, [r1, #12]
	ldr r1, [sp, #72]
	ldr r5, [r1, #12]
	ldr r1, [sp, #92]
	ldr r1, [r1, #16]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #12]
	ldr r1, [sp, #60]
	ldr r2, [r1, #16]
	ldr r1, [sp, #64]
	ldr r3, [r1, #16]
	ldr r1, [sp, #68]
	ldr r4, [r1, #16]
	ldr r1, [sp, #72]
	ldr r5, [r1, #16]
	ldr r1, [sp, #92]
	ldr r1, [r1, #20]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #16]
	ldr r1, [sp, #60]
	ldr r2, [r1, #20]
	ldr r1, [sp, #64]
	ldr r3, [r1, #20]
	ldr r1, [sp, #68]
	ldr r4, [r1, #20]
	ldr r1, [sp, #72]
	ldr r5, [r1, #20]
	ldr r1, [sp, #92]
	ldr r1, [r1, #24]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #20]
	ldr r1, [sp, #60]
	ldr r2, [r1, #24]
	ldr r1, [sp, #64]
	ldr r3, [r1, #24]
	ldr r1, [sp, #68]
	ldr r4, [r1, #24]
	ldr r1, [sp, #72]
	ldr r5, [r1, #24]
	ldr r1, [sp, #92]
	ldr r1, [r1, #28]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #24]
	ldr r1, [sp, #60]
	ldr r2, [r1, #28]
	ldr r1, [sp, #64]
	ldr r3, [r1, #28]
	ldr r1, [sp, #68]
	ldr r4, [r1, #28]
	ldr r1, [sp, #72]
	ldr r5, [r1, #28]
	ldr r1, [sp, #92]
	ldr r1, [r1, #32]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #28]
	ldr r1, [sp, #60]
	ldr r2, [r1, #32]
	ldr r1, [sp, #64]
	ldr r3, [r1, #32]
	ldr r1, [sp, #68]
	ldr r4, [r1, #32]
	ldr r1, [sp, #72]
	ldr r5, [r1, #32]
	ldr r1, [sp, #92]
	ldr r1, [r1, #36]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #32]
	ldr r1, [sp, #60]
	ldr r2, [r1, #36]
	ldr r1, [sp, #64]
	ldr r3, [r1, #36]
	ldr r1, [sp, #68]
	ldr r4, [r1, #36]
	ldr r1, [sp, #72]
	ldr r5, [r1, #36]
	ldr r1, [sp, #92]
	ldr r1, [r1, #40]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #36]
	ldr r1, [sp, #60]
	ldr r2, [r1, #40]
	ldr r1, [sp, #64]
	ldr r3, [r1, #40]
	ldr r1, [sp, #68]
	ldr r4, [r1, #40]
	ldr r1, [sp, #72]
	ldr r5, [r1, #40]
	ldr r1, [sp, #92]
	ldr r1, [r1, #44]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #40]
	ldr r1, [sp, #60]
	ldr r2, [r1, #44]
	ldr r1, [sp, #64]
	ldr r3, [r1, #44]
	ldr r1, [sp, #68]
	ldr r4, [r1, #44]
	ldr r1, [sp, #72]
	ldr r5, [r1, #44]
	ldr r1, [sp, #92]
	ldr r1, [r1, #48]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #44]
	ldr r1, [sp, #60]
	ldr r2, [r1, #48]
	ldr r1, [sp, #64]
	ldr r3, [r1, #48]
	ldr r1, [sp, #68]
	ldr r4, [r1, #48]
	ldr r1, [sp, #72]
	ldr r5, [r1, #48]
	ldr r1, [sp, #92]
	ldr r1, [r1, #52]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #48]
	ldr r1, [sp, #60]
	ldr r2, [r1, #52]
	ldr r1, [sp, #64]
	ldr r3, [r1, #52]
	ldr r1, [sp, #68]
	ldr r4, [r1, #52]
	ldr r1, [sp, #72]
	ldr r5, [r1, #52]
	ldr r1, [sp, #92]
	ldr r1, [r1, #56]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #52]
	ldr r1, [sp, #60]
	ldr r2, [r1, #56]
	ldr r1, [sp, #64]
	ldr r3, [r1, #56]
	ldr r1, [sp, #68]
	ldr r4, [r1, #56]
	ldr r1, [sp, #72]
	ldr r5, [r1, #56]
	ldr r1, [sp, #92]
	ldr r1, [r1, #60]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #56]
	ldr r1, [sp, #60]
	ldr r2, [r1, #60]
	ldr r1, [sp, #64]
	ldr r3, [r1, #60]
	ldr r1, [sp, #68]
	ldr r4, [r1, #60]
	ldr r1, [sp, #72]
	ldr r5, [r1, #60]
	ldr r1, [sp, #92]
	ldr r1, [r1, #64]
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r5
	add r0, r0, r1
	ldr r2, [sp, #40]
	sdiv r0, r0, r2
	ldr r1, [sp, #92]
	str r0, [r1, #60]
	ldr r1, [sp, #100]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #100]
	ldr r2, [sp, #36]
	cmp r1, r2
	bge label31
	b label30
label26:
	ldr r0, [sp, #16]
	add r0, r0, #1
	str r0, [sp, #16]
	ldr r2, [sp, #36]
	cmp r0, r2
	bge label24
	ldr r2, [sp, #36]
	cmp r2, #1
	ble label26
	b label27
label24:
	ldr r0, [sp, #32]
	add r1, r0, #1
	ldr r0, [sp, #16]
	mov r4, r0
	mov r0, r1
	str r1, [sp, #32]
	b label18
label21:
	mov r0, #53
	bl _sysy_stoptime
	ldr r8, [sp, #48]
	mov r0, r8
	ldr r1, [sp, #44]
	bl putarray
	ldr r8, [sp, #48]
	add r0, r8, r8, lsr #31
	asr r0, r0, #1
	movw r5, #63744
	movt r5, #21
	mul r2, r0, r5
	ldr r1, [sp, #44]
	add r1, r1, r2
	mov r6, #2400
	mul r0, r0, r6
	add r1, r1, r0
	ldr r8, [sp, #48]
	mov r0, r8
	bl putarray
	ldr r0, [sp, #32]
	sub r0, r0, #1
	mul r0, r0, r5
	ldr r1, [sp, #44]
	add r0, r1, r0
	sub r1, r4, #1
	mul r1, r1, r6
	add r1, r0, r1
	ldr r8, [sp, #48]
	mov r0, r8
	bl putarray
	mov r0, #0
	add sp, sp, #116
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
