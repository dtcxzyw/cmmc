.arch armv7ve
.data
.bss
.align 8
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r8, r0
	sub sp, sp, #244
	mov r7, r1
	mov r5, r3
	str r2, [sp, #64]
	mov r8, sp
	add r9, sp, #144
	str r0, [sp, #228]
	mov r6, r2
	add r7, sp, #72
	str r1, [sp, #216]
	add r0, r2, #1
	str r8, [sp, #208]
	cmp r3, r0
	str r7, [sp, #212]
	mov r0, #0
	str r9, [sp, #220]
	movwle r0, #1
	ldr r8, [sp, #228]
	add r1, r8, #1
	clz r1, r1
	lsr r1, r1, #5
	orrs r0, r0, r1
	mov r0, #0
	str r0, [sp, #144]
	str r0, [r9, #4]
	str r0, [r9, #8]
	str r0, [r9, #12]
	str r0, [r9, #16]
	str r0, [r9, #20]
	str r0, [r9, #24]
	str r0, [r9, #28]
	str r0, [r9, #32]
	str r0, [r9, #36]
	str r0, [r9, #40]
	str r0, [r9, #44]
	str r0, [r9, #48]
	str r0, [r9, #52]
	str r0, [r9, #56]
	str r0, [r9, #60]
	str r0, [sp, #72]
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #12]
	str r0, [r7, #16]
	str r0, [r7, #20]
	str r0, [r7, #24]
	str r0, [r7, #28]
	str r0, [r7, #32]
	str r0, [r7, #36]
	str r0, [r7, #40]
	str r0, [r7, #44]
	str r0, [r7, #48]
	str r0, [r7, #52]
	str r0, [r7, #56]
	str r0, [r7, #60]
	str r0, [sp, #0]
	ldr r8, [sp, #208]
	str r0, [r8, #4]
	str r0, [r8, #8]
	str r0, [r8, #12]
	str r0, [r8, #16]
	str r0, [r8, #20]
	str r0, [r8, #24]
	str r0, [r8, #28]
	str r0, [r8, #32]
	str r0, [r8, #36]
	str r0, [r8, #40]
	str r0, [r8, #44]
	str r0, [r8, #48]
	str r0, [r8, #52]
	str r0, [r8, #56]
	str r0, [r8, #60]
	bne label2
	movw r0, #43692
	ldr r8, [sp, #228]
	movt r0, #65535
	sub r6, r8, #1
	sub r1, r8, #20
	sub r2, r8, #84
	sub r3, r8, #340
	add r9, r8, r0
	movw r0, #60076
	str r9, [sp, #232]
	movt r0, #65535
	add r9, r8, r0
	movw r0, #64172
	str r9, [sp, #136]
	movt r0, #65535
	str r6, [sp, #224]
	add r4, r8, r0
	ldr r6, [sp, #64]
	sub r0, r8, #4
	cmp r6, r5
	bge label38
	b label4
label2:
	add sp, sp, #244
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label50:
	ldr r9, [sp, #220]
	ldr r10, [r9, r8, lsl #2]
	ldr r7, [sp, #216]
	ldr r11, [r7, r10, lsl #2]
	str r6, [r7, r10, lsl #2]
	add r6, r10, #1
	str r6, [r9, r8, lsl #2]
	mov r6, r11
	ldr r8, [sp, #228]
	cmp r8, #0
	bgt label52
	mov r9, r11
	asr r7, r11, #31
	add r7, r11, r7, lsr #28
	asr r7, r7, #4
	sub r8, r11, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r11, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label77:
	add r7, r7, #1024
	cmp r4, r7
	bgt label77
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label79:
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label53:
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label390:
	mov r10, r7
	mov r8, r9
	b label53
.p2align 4
label58:
	add r8, r8, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label61:
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label64:
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label45:
	ldr r9, [sp, #220]
	ldr r6, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	ldr r6, [r7, r6, lsl #2]
	ldr r8, [sp, #228]
	cmp r8, #0
	bgt label52
	mov r9, r6
	asr r7, r6, #31
	add r7, r6, r7, lsr #28
	asr r7, r7, #4
	sub r8, r6, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label52:
	ldr r8, [sp, #228]
	cmp r8, #4
	bgt label56
	mov r10, #0
	mov r8, r6
	add r7, r10, #1
	asr r9, r6, #31
	add r8, r6, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label68:
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label68
	add r7, r7, #1024
	cmp r4, r7
	bgt label77
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
.p2align 4
label988:
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label41:
	ldr r9, [sp, #220]
	ldr r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label56:
	cmp r0, #16
	bgt label57
	mov r7, r6
	mov r8, #0
	add r8, r8, #4
	asr r9, r6, #31
	cmp r0, r8
	add r7, r6, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label57:
	cmp r1, #64
	bgt label60
	mov r8, #0
	add r8, r8, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label60:
	cmp r2, #256
	bgt label63
	mov r7, #0
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label63:
	cmp r3, #1024
	bgt label66
	mov r7, #0
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label66:
	cmp r4, #4096
	bgt label67
	mov r7, #0
	add r7, r7, #1024
	cmp r4, r7
	bgt label77
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label67:
	ldr r9, [sp, #136]
	cmp r9, #16384
	bgt label70
	mov r7, #0
	add r7, r7, #4096
	cmp r9, r7
	bgt label68
	add r7, r7, #1024
	cmp r4, r7
	bgt label77
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	add r5, r5, #1
	cmp r5, #16
	blt label41
	b label988
.p2align 4
label70:
	ldr r9, [sp, #232]
	cmp r9, #262144
	bgt label431
	mov r7, #0
	add r8, r7, #65536
	cmp r9, r8
	bgt label442
	add r7, r7, #16384
	cmp r9, r7
	bgt label75
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label68
	add r7, r7, #1024
	cmp r4, r7
	bgt label77
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	b label990
.p2align 4
label73:
	add r8, r7, #65536
	ldr r9, [sp, #232]
	cmp r9, r8
	bgt label442
	add r7, r7, #16384
	cmp r9, r7
	bgt label75
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label68
	add r7, r7, #1024
	cmp r4, r7
	bgt label77
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	b label993
.p2align 4
label442:
	mov r7, r8
	b label73
.p2align 4
label990:
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	b label993
.p2align 4
label431:
	mov r7, #0
.p2align 4
label71:
	add r8, r7, #524288
	ldr r9, [sp, #232]
	add r7, r7, #262144
	cmp r9, r8
	bgt label71
	add r8, r7, #65536
	cmp r9, r8
	bgt label442
	add r7, r7, #16384
	cmp r9, r7
	bgt label75
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label68
	add r7, r7, #1024
	cmp r4, r7
	bgt label77
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	b label991
.p2align 4
label993:
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
.p2align 4
label994:
	add r5, r5, #1
	cmp r5, #16
	blt label41
	b label988
.p2align 4
label991:
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	b label993
.p2align 4
label75:
	add r7, r7, #16384
	ldr r9, [sp, #232]
	cmp r9, r7
	bgt label75
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label68
	add r7, r7, #1024
	cmp r4, r7
	bgt label77
	add r7, r7, #256
	cmp r3, r7
	bgt label64
	add r7, r7, #64
	cmp r2, r7
	bgt label61
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label79
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label390
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r8, r9, r7, lsl #4
	cmp r5, r8
	bne label50
	ldr r9, [sp, #220]
	ldr r8, [r9, r5, lsl #2]
	ldr r7, [sp, #216]
	str r6, [r7, r8, lsl #2]
	add r6, r8, #1
	str r6, [r9, r5, lsl #2]
	ldr r7, [sp, #212]
	ldr r7, [r7, r5, lsl #2]
	cmp r6, r7
	blt label45
	b label994
.p2align 4
label4:
	ldr r7, [sp, #216]
	ldr r7, [r7, r6, lsl #2]
	ldr r8, [sp, #228]
	cmp r8, #0
	bgt label6
	mov r9, r7
	and r7, r7, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label10:
	cmp r3, #1024
	bgt label11
	mov r7, #0
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label33:
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label252:
	mov r10, r7
	mov r8, r9
	b label33
.p2align 4
label30:
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label28:
	add r8, r8, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label11:
	cmp r4, #4096
	bgt label12
	mov r7, #0
	b label22
.p2align 4
label26:
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
label12:
	ldr r9, [sp, #136]
	cmp r9, #16384
	bgt label13
	mov r7, #0
	b label20
label13:
	ldr r9, [sp, #232]
	cmp r9, #262144
	bgt label199
	mov r7, #0
	add r8, r7, #65536
	cmp r9, r8
	bgt label204
	add r7, r7, #16384
	cmp r9, r7
	bgt label16
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label20
	add r7, r7, #1024
	cmp r4, r7
	bgt label22
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label199:
	mov r7, #0
	add r8, r7, #524288
	ldr r9, [sp, #232]
	add r7, r7, #262144
	cmp r9, r8
	bgt label18
	add r8, r7, #65536
	cmp r9, r8
	bgt label204
	add r7, r7, #16384
	cmp r9, r7
	bgt label16
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label20
	add r7, r7, #1024
	cmp r4, r7
	bgt label22
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	b label978
.p2align 4
label14:
	add r8, r7, #65536
	ldr r9, [sp, #232]
	cmp r9, r8
	bgt label204
	add r7, r7, #16384
	cmp r9, r7
	bgt label16
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label20
	add r7, r7, #1024
	cmp r4, r7
	bgt label22
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label204:
	mov r7, r8
	b label14
.p2align 4
label18:
	add r8, r7, #524288
	ldr r9, [sp, #232]
	add r7, r7, #262144
	cmp r9, r8
	bgt label18
	add r8, r7, #65536
	cmp r9, r8
	bgt label204
	add r7, r7, #16384
	cmp r9, r7
	bgt label16
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label20
	add r7, r7, #1024
	cmp r4, r7
	bgt label22
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
.p2align 4
label978:
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label24:
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label22:
	add r7, r7, #1024
	cmp r4, r7
	bgt label22
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label20:
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label20
	add r7, r7, #1024
	cmp r4, r7
	bgt label22
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label16:
	add r7, r7, #16384
	ldr r9, [sp, #232]
	cmp r9, r7
	bgt label16
	add r7, r7, #4096
	ldr r9, [sp, #136]
	cmp r9, r7
	bgt label20
	add r7, r7, #1024
	cmp r4, r7
	bgt label22
	add r7, r7, #256
	cmp r3, r7
	bgt label24
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label6:
	ldr r8, [sp, #228]
	cmp r8, #4
	bgt label7
	mov r10, #0
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
label38:
	ldr r6, [sp, #64]
	str r6, [sp, #144]
	ldr r5, [sp, #0]
	add r5, r6, r5
	str r5, [sp, #72]
	ldr r9, [sp, #220]
	str r5, [r9, #4]
	ldr r8, [sp, #208]
	ldr r6, [r8, #4]
	ldr r7, [sp, #212]
	add r5, r5, r6
	str r5, [r7, #4]
	str r5, [r9, #8]
	ldr r6, [r8, #8]
	add r5, r5, r6
	str r5, [r7, #8]
	str r5, [r9, #12]
	ldr r6, [r8, #12]
	add r5, r5, r6
	str r5, [r7, #12]
	str r5, [r9, #16]
	ldr r6, [r8, #16]
	add r5, r5, r6
	str r5, [r7, #16]
	str r5, [r9, #20]
	ldr r6, [r8, #20]
	add r5, r5, r6
	str r5, [r7, #20]
	str r5, [r9, #24]
	ldr r6, [r8, #24]
	add r5, r5, r6
	str r5, [r7, #24]
	str r5, [r9, #28]
	ldr r6, [r8, #28]
	add r5, r5, r6
	str r5, [r7, #28]
	str r5, [r9, #32]
	ldr r6, [r8, #32]
	add r5, r5, r6
	str r5, [r7, #32]
	str r5, [r9, #36]
	ldr r6, [r8, #36]
	add r5, r5, r6
	str r5, [r7, #36]
	str r5, [r9, #40]
	ldr r6, [r8, #40]
	add r5, r5, r6
	str r5, [r7, #40]
	str r5, [r9, #44]
	ldr r6, [r8, #44]
	add r5, r5, r6
	str r5, [r7, #44]
	str r5, [r9, #48]
	ldr r6, [r8, #48]
	add r5, r5, r6
	str r5, [r7, #48]
	str r5, [r9, #52]
	ldr r6, [r8, #52]
	add r5, r5, r6
	str r5, [r7, #52]
	str r5, [r9, #56]
	ldr r6, [r8, #56]
	add r5, r5, r6
	str r5, [r7, #56]
	str r5, [r9, #60]
	ldr r6, [r8, #60]
	add r5, r5, r6
	str r5, [r7, #60]
	mov r5, #0
	cmp r5, #16
	blt label41
	ldr r6, [sp, #64]
	mov r4, #0
	str r6, [sp, #144]
	ldr r0, [sp, #0]
	add r0, r6, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label7:
	cmp r0, #16
	bgt label8
	mov r8, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label8:
	cmp r1, #64
	bgt label9
	mov r8, #0
	add r8, r8, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label9:
	cmp r2, #256
	bgt label10
	mov r7, #0
	add r7, r7, #64
	cmp r2, r7
	bgt label26
	mov r8, r7
	add r8, r7, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r9, r7, #31
	cmp r0, r8
	add r7, r7, r9, lsr #16
	asr r7, r7, #16
	bgt label30
	mov r10, r8
	mov r8, r7
	add r7, r10, #1
	asr r9, r8, #31
	add r8, r8, r9, lsr #28
	asr r9, r8, #4
	ldr r8, [sp, #228]
	cmp r8, r7
	bgt label252
	and r7, r9, #15
	ldr r8, [sp, #208]
	add r6, r6, #1
	cmp r5, r6
	ldr r9, [r8, r7, lsl #2]
	add r9, r9, #1
	str r9, [r8, r7, lsl #2]
	bgt label4
	b label38
.p2align 4
label85:
	cmp r4, #0
	ble label87
	sub r0, r4, #1
	ldr r7, [sp, #212]
	ldr r0, [r7, r0, lsl #2]
	ldr r9, [sp, #220]
	str r0, [r9, r4, lsl #2]
	ldr r8, [sp, #208]
	ldr r1, [r8, r4, lsl #2]
	add r0, r0, r1
	str r0, [r7, r4, lsl #2]
.p2align 4
label87:
	ldr r9, [sp, #220]
	ldr r2, [r9, r4, lsl #2]
	ldr r7, [sp, #212]
	ldr r3, [r7, r4, lsl #2]
	ldr r7, [sp, #216]
	ldr r6, [sp, #224]
	mov r0, r6
	mov r1, r7
	bl radixSort
	add r4, r4, #1
	cmp r4, #16
	blt label85
	b label2
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r6, #:lower16:a
	sub sp, sp, #4
	movt r6, #:upper16:a
	mov r0, r6
	mov r4, r6
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r2, #0
	mov r1, r6
	mov r0, #8
	mov r3, r5
	bl radixSort
	cmp r5, #0
	bgt label1024
	mov r4, #0
label1022:
	mov r0, #102
	bl _sysy_stoptime
	movs r0, r4
	rsbmi r0, r4, #0
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1024:
	sub r2, r5, #4
	cmp r5, #4
	bgt label1042
	mov r0, #0
	mov r3, r0
	b label1028
label1042:
	mov r1, #0
	mov r0, r1
label1025:
	add r7, r4, r1, lsl #2
	ldr r3, [r4, r1, lsl #2]
	add r6, r1, #3
	ldr r8, [r7, #4]
	sdiv r9, r8, r6
	mls r8, r9, r6, r8
	mla r9, r8, r1, r8
	add r8, r1, #2
	sdiv r10, r3, r8
	mls r3, r10, r8, r3
	ldr r10, [r7, #8]
	ldr r7, [r7, #12]
	mla r9, r1, r3, r9
	add r3, r1, #4
	cmp r2, r3
	add r1, r1, #5
	sdiv r11, r10, r3
	mls r10, r11, r3, r10
	mla r8, r8, r10, r9
	sdiv r9, r7, r1
	mls r1, r9, r1, r7
	mla r1, r6, r1, r8
	add r0, r0, r1
	ble label1028
	mov r1, r3
	b label1025
label1028:
	ldr r1, [r4, r3, lsl #2]
	add r2, r3, #2
	sdiv r6, r1, r2
	mls r1, r6, r2, r1
	mla r0, r3, r1, r0
	add r3, r3, #1
	cmp r5, r3
	bgt label1028
	mov r4, r0
	b label1022
