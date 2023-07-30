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
	sub sp, sp, #236
	mov r8, r1
	mov r9, r2
	mov r6, r3
	str r2, [sp, #64]
	add r8, sp, #136
	mov r7, r0
	str r0, [sp, #220]
	add r9, sp, #72
	mov r7, sp
	str r1, [sp, #212]
	add r0, r2, #1
	str r7, [sp, #200]
	cmp r3, r0
	str r9, [sp, #204]
	mov r0, #0
	mov r9, r2
	str r8, [sp, #208]
	movwle r0, #1
	ldr r7, [sp, #220]
	add r1, r7, #1
	clz r1, r1
	lsr r1, r1, #5
	orrs r0, r0, r1
	mov r0, #0
	str r0, [sp, #136]
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
	str r0, [sp, #72]
	ldr r9, [sp, #204]
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
	str r0, [sp, #0]
	ldr r7, [sp, #200]
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
	bne label2
	movw r0, #43692
	ldr r7, [sp, #220]
	movt r0, #65535
	sub r1, r7, #20
	sub r2, r7, #84
	sub r3, r7, #340
	add r8, r7, r0
	movw r0, #60076
	str r8, [sp, #224]
	movt r0, #65535
	add r5, r7, r0
	movw r0, #64172
	movt r0, #65535
	add r4, r7, r0
	sub r0, r7, #4
	sub r7, r7, #1
	str r7, [sp, #216]
	ldr r9, [sp, #64]
	cmp r9, r6
	bge label38
.p2align 4
label4:
	ldr r8, [sp, #212]
	ldr r10, [r8, r9, lsl #2]
	ldr r7, [sp, #220]
	cmp r7, #0
	bgt label6
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label33:
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label252:
	mov r7, r10
	b label33
.p2align 4
label30:
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label28:
	add r8, r8, #16
	cmp r1, r8
	bgt label28
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
label38:
	ldr r9, [sp, #64]
	str r9, [sp, #136]
	ldr r6, [sp, #0]
	add r6, r9, r6
	str r6, [sp, #72]
	ldr r8, [sp, #208]
	str r6, [r8, #4]
	ldr r7, [sp, #200]
	ldr r9, [r7, #4]
	add r6, r6, r9
	ldr r9, [sp, #204]
	str r6, [r9, #4]
	str r6, [r8, #8]
	ldr r10, [r7, #8]
	add r6, r6, r10
	str r6, [r9, #8]
	str r6, [r8, #12]
	ldr r10, [r7, #12]
	add r6, r6, r10
	str r6, [r9, #12]
	str r6, [r8, #16]
	ldr r10, [r7, #16]
	add r6, r6, r10
	str r6, [r9, #16]
	str r6, [r8, #20]
	ldr r10, [r7, #20]
	add r6, r6, r10
	str r6, [r9, #20]
	str r6, [r8, #24]
	ldr r10, [r7, #24]
	add r6, r6, r10
	str r6, [r9, #24]
	str r6, [r8, #28]
	ldr r10, [r7, #28]
	add r6, r6, r10
	str r6, [r9, #28]
	str r6, [r8, #32]
	ldr r10, [r7, #32]
	add r6, r6, r10
	str r6, [r9, #32]
	str r6, [r8, #36]
	ldr r10, [r7, #36]
	add r6, r6, r10
	str r6, [r9, #36]
	str r6, [r8, #40]
	ldr r10, [r7, #40]
	add r6, r6, r10
	str r6, [r9, #40]
	str r6, [r8, #44]
	ldr r10, [r7, #44]
	add r6, r6, r10
	str r6, [r9, #44]
	str r6, [r8, #48]
	ldr r10, [r7, #48]
	add r6, r6, r10
	str r6, [r9, #48]
	str r6, [r8, #52]
	ldr r10, [r7, #52]
	add r6, r6, r10
	str r6, [r9, #52]
	str r6, [r8, #56]
	ldr r10, [r7, #56]
	add r6, r6, r10
	str r6, [r9, #56]
	str r6, [r8, #60]
	ldr r7, [r7, #60]
	add r6, r6, r7
	str r6, [r9, #60]
	mov r6, #0
	cmp r6, #16
	blt label41
	ldr r9, [sp, #64]
	mov r4, #0
	str r9, [sp, #136]
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label41:
	ldr r8, [sp, #208]
	ldr r7, [r8, r6, lsl #2]
	ldr r9, [sp, #204]
	ldr r8, [r9, r6, lsl #2]
	cmp r7, r8
	blt label45
	add r6, r6, #1
	cmp r6, #16
	blt label41
	ldr r9, [sp, #64]
	mov r4, #0
	str r9, [sp, #136]
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label45:
	ldr r8, [sp, #208]
	ldr r7, [r8, r6, lsl #2]
	ldr r8, [sp, #212]
	ldr r9, [r8, r7, lsl #2]
	ldr r7, [sp, #220]
	cmp r7, #0
	bgt label52
	mov r10, r9
	asr r7, r9, #31
	add r7, r9, r7, lsr #28
	asr r7, r7, #4
	sub r7, r9, r7, lsl #4
	cmp r6, r7
	bne label50
.p2align 4
label602:
	ldr r8, [sp, #208]
	add r7, r8, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r8, [sp, #212]
	str r9, [r8, r10, lsl #2]
	add r8, r10, #1
	str r8, [r7, #0]
	mov r7, r8
	ldr r9, [sp, #204]
	ldr r8, [r9, r6, lsl #2]
	cmp r7, r8
	blt label45
	add r6, r6, #1
	cmp r6, #16
	blt label41
	ldr r9, [sp, #64]
	mov r4, #0
	str r9, [sp, #136]
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label50:
	ldr r8, [sp, #208]
	add r7, r8, r7, lsl #2
	ldr r10, [r7, #0]
	ldr r8, [sp, #212]
	add r11, r8, r10, lsl #2
	ldr r8, [r11, #0]
	str r9, [r11, #0]
	add r9, r10, #1
	str r9, [r7, #0]
	mov r9, r8
	ldr r7, [sp, #220]
	cmp r7, #0
	bgt label52
	mov r10, r8
	asr r7, r8, #31
	add r7, r8, r7, lsr #28
	asr r7, r7, #4
	sub r7, r8, r7, lsl #4
	cmp r6, r7
	bne label50
	b label602
.p2align 4
label52:
	ldr r7, [sp, #220]
	cmp r7, #4
	bgt label56
	mov r8, #0
	mov r7, r9
	add r8, r8, #1
	asr r10, r9, #31
	add r7, r9, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
.p2align 4
label367:
	ldr r8, [sp, #208]
	add r7, r8, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r8, [sp, #212]
	str r9, [r8, r10, lsl #2]
	add r8, r10, #1
	str r8, [r7, #0]
	mov r7, r8
	ldr r9, [sp, #204]
	ldr r8, [r9, r6, lsl #2]
	cmp r7, r8
	blt label45
	add r6, r6, #1
	cmp r6, #16
	blt label41
	ldr r9, [sp, #64]
	mov r4, #0
	str r9, [sp, #136]
	ldr r0, [sp, #0]
	add r0, r9, r0
	str r0, [sp, #72]
	cmp r4, #16
	blt label85
	b label2
.p2align 4
label921:
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label920:
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label431:
	mov r7, #0
.p2align 4
label71:
	add r10, r7, #524288
	ldr r8, [sp, #224]
	add r7, r7, #262144
	cmp r8, r10
	bgt label71
	add r10, r7, #65536
	cmp r8, r10
	bgt label442
	add r7, r7, #16384
	cmp r8, r7
	bgt label75
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	b label921
.p2align 4
label53:
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label390:
	mov r7, r10
	b label53
.p2align 4
label79:
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label58:
	add r8, r8, #16
	cmp r1, r8
	bgt label58
	mov r7, #0
	add r8, r8, #4
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label67:
	cmp r5, #16384
	bgt label70
	mov r7, #0
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label70:
	ldr r8, [sp, #224]
	cmp r8, #262144
	bgt label431
	mov r7, #0
	add r10, r7, #65536
	cmp r8, r10
	bgt label442
	add r7, r7, #16384
	cmp r8, r7
	bgt label75
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	b label920
.p2align 4
label73:
	add r10, r7, #65536
	ldr r8, [sp, #224]
	cmp r8, r10
	bgt label442
	add r7, r7, #16384
	cmp r8, r7
	bgt label75
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label442:
	mov r7, r10
	b label73
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label68:
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label75:
	add r7, r7, #16384
	ldr r8, [sp, #224]
	cmp r8, r7
	bgt label75
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
.p2align 4
label56:
	cmp r0, #16
	bgt label57
	mov r7, r9
	mov r8, #0
	add r8, r8, #4
	asr r10, r9, #31
	cmp r0, r8
	add r7, r9, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label79
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label390
	asr r7, r10, #31
	add r7, r10, r7, lsr #28
	asr r7, r7, #4
	sub r7, r10, r7, lsl #4
	cmp r6, r7
	bne label50
	b label367
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label6:
	ldr r7, [sp, #220]
	cmp r7, #4
	bgt label7
	mov r8, #0
	mov r7, r10
	add r8, r8, #1
	asr r10, r10, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label7:
	cmp r0, #16
	bgt label8
	mov r7, r10
	mov r8, #0
	add r8, r8, #4
	asr r10, r10, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label11:
	cmp r4, #4096
	bgt label12
	mov r7, #0
	b label22
label12:
	cmp r5, #16384
	bgt label13
	mov r7, #0
	b label20
label13:
	ldr r8, [sp, #224]
	cmp r8, #262144
	bgt label199
	mov r7, #0
	add r10, r7, #65536
	cmp r8, r10
	bgt label204
	add r7, r7, #16384
	cmp r8, r7
	bgt label16
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label199:
	mov r7, #0
	add r10, r7, #524288
	ldr r8, [sp, #224]
	add r7, r7, #262144
	cmp r8, r10
	bgt label18
	add r10, r7, #65536
	cmp r8, r10
	bgt label204
	add r7, r7, #16384
	cmp r8, r7
	bgt label16
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	b label917
.p2align 4
label18:
	add r10, r7, #524288
	ldr r8, [sp, #224]
	add r7, r7, #262144
	cmp r8, r10
	bgt label18
	add r10, r7, #65536
	cmp r8, r10
	bgt label204
	add r7, r7, #16384
	cmp r8, r7
	bgt label16
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	b label917
.p2align 4
label14:
	add r10, r7, #65536
	ldr r8, [sp, #224]
	cmp r8, r10
	bgt label204
	add r7, r7, #16384
	cmp r8, r7
	bgt label16
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label204:
	mov r7, r10
	b label14
.p2align 4
label917:
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label20:
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
.p2align 4
label16:
	add r7, r7, #16384
	ldr r8, [sp, #224]
	cmp r8, r7
	bgt label16
	add r7, r7, #4096
	cmp r5, r7
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
	asr r10, r7, #31
	cmp r0, r8
	add r7, r7, r10, lsr #16
	asr r7, r7, #16
	bgt label30
	add r8, r8, #1
	asr r10, r7, #31
	add r7, r7, r10, lsr #28
	asr r10, r7, #4
	ldr r7, [sp, #220]
	cmp r7, r8
	bgt label252
	and r8, r10, #15
	ldr r7, [sp, #200]
	add r9, r9, #1
	cmp r6, r9
	add r7, r7, r8, lsl #2
	ldr r8, [r7, #0]
	add r8, r8, #1
	str r8, [r7, #0]
	bgt label4
	b label38
label2:
	add sp, sp, #236
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label86:
	sub r0, r4, #1
	ldr r9, [sp, #204]
	ldr r0, [r9, r0, lsl #2]
	ldr r8, [sp, #208]
	str r0, [r8, r4, lsl #2]
	ldr r7, [sp, #200]
	ldr r1, [r7, r4, lsl #2]
	add r0, r0, r1
	str r0, [r9, r4, lsl #2]
.p2align 4
label87:
	ldr r8, [sp, #208]
	ldr r2, [r8, r4, lsl #2]
	ldr r9, [sp, #204]
	ldr r3, [r9, r4, lsl #2]
	ldr r8, [sp, #212]
	ldr r7, [sp, #216]
	mov r0, r7
	mov r1, r8
	bl radixSort
	add r4, r4, #1
	cmp r4, #16
	bge label2
.p2align 4
label85:
	cmp r4, #0
	bgt label86
	b label87
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
	bgt label939
	mov r4, #0
label937:
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
label939:
	sub r2, r5, #4
	cmp r5, #4
	bgt label957
	mov r0, #0
	mov r3, r0
	b label943
label957:
	mov r1, #0
	mov r0, r1
label940:
	add r7, r4, r1, lsl #2
	add r6, r1, #3
	ldr r3, [r7, #0]
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
	add r1, r1, #5
	cmp r2, r3
	sdiv r11, r10, r3
	mls r10, r11, r3, r10
	mla r8, r8, r10, r9
	sdiv r9, r7, r1
	mls r1, r9, r1, r7
	mla r1, r6, r1, r8
	add r0, r0, r1
	ble label943
	mov r1, r3
	b label940
label943:
	ldr r1, [r4, r3, lsl #2]
	add r2, r3, #2
	sdiv r6, r1, r2
	mls r1, r6, r2, r1
	mla r0, r3, r1, r0
	add r3, r3, #1
	cmp r5, r3
	bgt label943
	mov r4, r0
	b label937
