.arch armv7ve
.data
.bss
.align 8
array:
	.zero	2097152
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r1, #0
	movw r0, #:lower16:array
	movt r0, #:upper16:array
	sub sp, sp, #44
	mov r10, r1
	str r1, [sp, #36]
.p2align 4
label2:
	ldr r10, [sp, #36]
	add r1, r1, #64
	cmp r1, #524288
	str r10, [r0, #0]
	str r10, [r0, #4]
	str r10, [r0, #8]
	str r10, [r0, #12]
	str r10, [r0, #16]
	str r10, [r0, #20]
	str r10, [r0, #24]
	str r10, [r0, #28]
	str r10, [r0, #32]
	str r10, [r0, #36]
	str r10, [r0, #40]
	str r10, [r0, #44]
	str r10, [r0, #48]
	str r10, [r0, #52]
	str r10, [r0, #56]
	str r10, [r0, #60]
	str r10, [r0, #64]
	str r10, [r0, #68]
	str r10, [r0, #72]
	str r10, [r0, #76]
	str r10, [r0, #80]
	str r10, [r0, #84]
	str r10, [r0, #88]
	str r10, [r0, #92]
	str r10, [r0, #96]
	str r10, [r0, #100]
	str r10, [r0, #104]
	str r10, [r0, #108]
	str r10, [r0, #112]
	str r10, [r0, #116]
	str r10, [r0, #120]
	str r10, [r0, #124]
	str r10, [r0, #128]
	str r10, [r0, #132]
	str r10, [r0, #136]
	str r10, [r0, #140]
	str r10, [r0, #144]
	str r10, [r0, #148]
	str r10, [r0, #152]
	str r10, [r0, #156]
	str r10, [r0, #160]
	str r10, [r0, #164]
	str r10, [r0, #168]
	str r10, [r0, #172]
	str r10, [r0, #176]
	str r10, [r0, #180]
	str r10, [r0, #184]
	str r10, [r0, #188]
	str r10, [r0, #192]
	str r10, [r0, #196]
	str r10, [r0, #200]
	str r10, [r0, #204]
	str r10, [r0, #208]
	str r10, [r0, #212]
	str r10, [r0, #216]
	str r10, [r0, #220]
	str r10, [r0, #224]
	str r10, [r0, #228]
	str r10, [r0, #232]
	str r10, [r0, #236]
	str r10, [r0, #240]
	str r10, [r0, #244]
	str r10, [r0, #248]
	str r10, [r0, #252]
	bge label6
	add r0, r0, #256
	b label2
label6:
	movw r0, #:lower16:array
	movt r0, #:upper16:array
	str r0, [sp, #32]
	ldr r10, [sp, #36]
	mov r9, r10
	mov r7, r10
	str r10, [sp, #28]
	mov r11, r10
	mov r5, r10
	str r10, [sp, #20]
	mov r0, r10
	mov r2, r10
	str r10, [sp, #16]
	mov r1, r10
	mov r4, r10
	str r10, [sp, #24]
	mov r3, r10
	mov r6, r10
	str r10, [sp, #12]
	mov r8, r10
	str r10, [sp, #8]
	str r10, [sp, #4]
	str r10, [sp, #0]
	b label7
.p2align 4
label163:
	ldr r8, [sp, #20]
	add r11, r8, #1
	cmp r11, #2
	bge label394
	ldr r10, [sp, #36]
	mov r8, r11
	str r10, [sp, #28]
	str r11, [sp, #20]
.p2align 4
label7:
	ldr r10, [sp, #32]
	ldr r8, [sp, #12]
	add r10, r10, r8, lsl #19
	ldr r8, [sp, #8]
	add r10, r10, r8, lsl #18
	ldr r8, [sp, #4]
	add r10, r10, r8, lsl #17
	ldr r8, [sp, #0]
	ldr r11, [sp, #16]
	add r8, r10, r8, lsl #16
	add r8, r8, r1, lsl #15
	add r8, r8, r0, lsl #14
	add r8, r8, r2, lsl #13
	add r8, r8, r3, lsl #12
	add r8, r8, r4, lsl #11
	add r8, r8, r5, lsl #10
	add r8, r8, r6, lsl #9
	add r8, r8, r7, lsl #8
	add r10, r8, r11, lsl #7
	add r11, r9, #1
	ldr r8, [sp, #20]
	add r10, r10, r8, lsl #6
	ldr r8, [sp, #28]
	add r10, r10, r8, lsl #5
	add r8, r8, #1
	str r9, [r10, #0]
	cmp r8, #2
	str r11, [r10, #4]
	add r11, r9, #2
	str r11, [r10, #8]
	add r11, r9, #3
	str r11, [r10, #12]
	add r11, r9, #4
	str r11, [r10, #16]
	add r11, r9, #5
	str r11, [r10, #20]
	add r11, r9, #6
	str r11, [r10, #24]
	add r11, r9, #7
	add r9, r9, #8
	str r11, [r10, #28]
	bge label163
	str r8, [sp, #28]
	b label7
.p2align 4
label394:
	ldr r11, [sp, #16]
	add r11, r11, #1
	cmp r11, #2
	bge label409
	ldr r10, [sp, #36]
	str r10, [sp, #28]
	mov r8, r10
	str r10, [sp, #20]
	str r11, [sp, #16]
	b label7
.p2align 4
label409:
	add r7, r7, #1
	cmp r7, #2
	bge label423
	ldr r10, [sp, #36]
	mov r11, r10
	str r10, [sp, #28]
	mov r8, r10
	str r10, [sp, #20]
	str r10, [sp, #16]
	b label7
.p2align 4
label423:
	add r6, r6, #1
	cmp r6, #2
	bge label431
	ldr r10, [sp, #36]
	mov r7, r10
	str r10, [sp, #28]
	mov r11, r10
	mov r8, r10
	str r10, [sp, #20]
	str r10, [sp, #16]
	b label7
.p2align 4
label431:
	add r5, r5, #1
	cmp r5, #2
	bge label438
	ldr r10, [sp, #36]
	mov r7, r10
	mov r6, r10
	str r10, [sp, #28]
	mov r8, r10
	mov r11, r10
	str r10, [sp, #20]
	str r10, [sp, #16]
	b label7
.p2align 4
label438:
	add r4, r4, #1
	cmp r4, #2
	bge label444
	ldr r10, [sp, #36]
	mov r6, r10
	mov r5, r10
	str r10, [sp, #28]
	mov r7, r10
	mov r8, r10
	str r10, [sp, #20]
	mov r11, r10
	str r10, [sp, #16]
	b label7
.p2align 4
label444:
	add r3, r3, #1
	cmp r3, #2
	bge label449
	ldr r10, [sp, #36]
	mov r7, r10
	mov r6, r10
	str r10, [sp, #28]
	mov r8, r10
	mov r5, r10
	str r10, [sp, #20]
	mov r11, r10
	mov r4, r10
	str r10, [sp, #16]
	b label7
.p2align 4
label449:
	add r2, r2, #1
	cmp r2, #2
	bge label453
	ldr r10, [sp, #36]
	mov r7, r10
	mov r6, r10
	str r10, [sp, #28]
	mov r8, r10
	mov r5, r10
	str r10, [sp, #20]
	mov r4, r10
	mov r3, r10
	str r10, [sp, #16]
	mov r11, r10
	b label7
.p2align 4
label453:
	add r0, r0, #1
	cmp r0, #2
	bge label456
	ldr r10, [sp, #36]
	mov r6, r10
	mov r5, r10
	str r10, [sp, #28]
	mov r11, r10
	mov r8, r10
	str r10, [sp, #20]
	mov r4, r10
	mov r3, r10
	str r10, [sp, #16]
	mov r2, r10
	mov r7, r10
	b label7
label456:
	add r1, r1, #1
	cmp r1, #2
	bge label403
	ldr r10, [sp, #36]
	mov r6, r10
	mov r5, r10
	str r10, [sp, #28]
	mov r3, r10
	mov r8, r10
	str r10, [sp, #20]
	mov r4, r10
	mov r2, r10
	str r10, [sp, #16]
	mov r0, r10
	mov r7, r10
	mov r11, r10
	b label7
label403:
	ldr r8, [sp, #0]
	add r0, r8, #1
	cmp r0, #2
	bge label404
	ldr r10, [sp, #36]
	mov r8, r0
	mov r7, r10
	mov r6, r10
	str r10, [sp, #28]
	mov r5, r10
	mov r4, r10
	str r10, [sp, #20]
	mov r1, r10
	mov r2, r10
	str r10, [sp, #16]
	mov r11, r10
	mov r3, r10
	str r0, [sp, #0]
	mov r0, r10
	b label7
label404:
	ldr r8, [sp, #4]
	add r0, r8, #1
	cmp r0, #2
	bge label405
	ldr r10, [sp, #36]
	mov r7, r10
	str r10, [sp, #28]
	mov r11, r10
	mov r5, r10
	mov r8, r10
	str r10, [sp, #20]
	mov r1, r10
	mov r2, r10
	str r10, [sp, #16]
	mov r3, r10
	mov r4, r10
	str r0, [sp, #4]
	mov r6, r10
	mov r0, r10
	str r10, [sp, #0]
	b label7
label405:
	ldr r8, [sp, #8]
	add r0, r8, #1
	cmp r0, #2
	bge label406
	ldr r10, [sp, #36]
	mov r7, r10
	mov r6, r10
	str r10, [sp, #28]
	mov r3, r10
	mov r11, r10
	str r10, [sp, #20]
	mov r8, r10
	mov r2, r10
	str r10, [sp, #16]
	mov r1, r10
	mov r4, r10
	str r0, [sp, #8]
	mov r5, r10
	mov r0, r10
	str r10, [sp, #4]
	str r10, [sp, #0]
	b label7
label406:
	ldr r8, [sp, #12]
	add r0, r8, #1
	cmp r0, #2
	bge label407
	ldr r10, [sp, #36]
	mov r7, r10
	mov r5, r10
	str r10, [sp, #28]
	mov r8, r10
	mov r11, r10
	str r10, [sp, #20]
	mov r1, r10
	mov r2, r10
	str r10, [sp, #16]
	mov r4, r10
	mov r6, r10
	str r0, [sp, #12]
	mov r3, r10
	mov r0, r10
	str r10, [sp, #8]
	str r10, [sp, #4]
	str r10, [sp, #0]
	b label7
label407:
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #2
	bge label41
	ldr r10, [sp, #32]
	add r10, r10, #1048576
	str r10, [sp, #32]
	ldr r10, [sp, #36]
	mov r7, r10
	mov r5, r10
	str r10, [sp, #28]
	mov r1, r10
	mov r3, r10
	str r10, [sp, #20]
	mov r4, r10
	mov r6, r10
	str r10, [sp, #16]
	mov r8, r10
	mov r2, r10
	str r0, [sp, #24]
	mov r11, r10
	mov r0, r10
	str r10, [sp, #12]
	str r10, [sp, #8]
	str r10, [sp, #4]
	str r10, [sp, #0]
	b label7
label41:
	movw r0, #:lower16:array
	movt r0, #:upper16:array
	ldr r1, [r0, #0]
	ldr r2, [r0, #8]
	add r1, r1, r2
	ldr r2, [r0, #4]
	add r1, r1, r2
	ldr r2, [r0, #40]
	add r1, r1, r2
	ldr r2, [r0, #24]
	add r1, r1, r2
	ldr r2, [r0, #228]
	add r1, r1, r2
	ldr r2, [r0, #56]
	add r1, r1, r2
	ldr r2, [r0, #964]
	add r1, r1, r2
	ldr r2, [r0, #224]
	add r1, r1, r2
	ldr r2, [r0, #804]
	add r1, r1, r2
	ldr r2, [r0, #1996]
	add r1, r1, r2
	ldr r2, [r0, #3224]
	add r1, r1, r2
	movw r2, #26400
	add r2, r0, r2
	ldr r2, [r2, #0]
	add r1, r1, r2
	ldr r2, [r0, #508]
	add r1, r1, r2
	ldr r2, [r0, #124]
	add r1, r1, r2
	movw r2, #50064
	movt r2, #3
	add r2, r0, r2
	ldr r2, [r2, #0]
	add r1, r1, r2
	movw r2, #15956
	add r2, r0, r2
	ldr r2, [r2, #0]
	add r1, r1, r2
	movw r2, #41932
	movt r2, #12
	add r2, r0, r2
	ldr r2, [r2, #0]
	add r1, r1, r2
	movw r2, #19456
	movt r2, #4
	add r0, r0, r2
	ldr r0, [r0, #0]
	add r0, r1, r0
	bl putint
	ldr r10, [sp, #36]
	add sp, sp, #44
	mov r0, r10
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
