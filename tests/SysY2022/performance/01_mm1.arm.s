.arch armv7ve
.data
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #220
	bl getint
	mov r1, r0
	str r0, [sp, #64]
	movw r1, #:lower16:A
	movt r1, #:upper16:A
	str r1, [sp, #72]
	movw r1, #:lower16:B
	movt r1, #:upper16:B
	str r1, [sp, #68]
	movw r1, #:lower16:C
	movt r1, #:upper16:C
	str r1, [sp, #76]
	mov r4, #0
	mov r1, r0
	cmp r4, r0
	bge label126
	cmp r0, #0
	ble label114
	ldr r1, [sp, #72]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	b label1605
label126:
	mov r4, #0
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label6
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label109
	ldr r1, [sp, #68]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	b label1606
label6:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #80]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label134
	ldr r1, [sp, #76]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label23
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label14
	b label22
label134:
	mov r0, #0
	str r0, [sp, #88]
	ldr r1, [sp, #68]
	add r2, r1, r0, lsl #12
	str r2, [sp, #92]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label219
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	b label1520
label22:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label14
	b label22
label1520:
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
label1550:
	ldr r1, [sp, #72]
	ldr r0, [sp, #160]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	b label1580
label28:
	ldr r0, [sp, #88]
	add r0, r0, #1
	str r0, [sp, #88]
	ldr r1, [sp, #68]
	add r2, r1, r0, lsl #12
	str r2, [sp, #92]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label219
	mov r0, #0
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	b label1550
label1580:
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	b label1610
label43:
	ldr r1, [sp, #136]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #92]
	ldr r3, [r2, r0, lsl #2]
	ldr r2, [sp, #56]
	mla r2, r3, r2, r1
	ldr r1, [sp, #136]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label46
	b label43
label46:
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label28
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	b label1580
label1610:
	ldr r1, [sp, #72]
	ldr r0, [sp, #160]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #88]
	add r2, r1, r0, lsl #2
	str r2, [sp, #40]
	ldr r0, [sp, #88]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label30
	b label1580
label30:
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label46
	ldr r1, [sp, #76]
	ldr r0, [sp, #160]
	add r1, r1, r0, lsl #12
	str r1, [sp, #136]
	ldr r1, [sp, #64]
	cmp r1, #16
	ble label241
	b label1334
label241:
	mov r0, #0
	ldr r2, [sp, #40]
	ldr r2, [r2, #0]
	str r2, [sp, #56]
	add r2, r0, #16
	str r2, [sp, #12]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label41
	b label40
label219:
	mov r0, #0
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label571
	ldr r1, [sp, #68]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label104
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label96
	b label95
label571:
	mov r0, #0
	str r0, [sp, #84]
	ldr r1, [sp, #76]
	add r2, r1, r0, lsl #12
	str r2, [sp, #176]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label72
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	b label1616
label71:
	ldr r0, [sp, #84]
	add r0, r0, #1
	str r0, [sp, #84]
	ldr r1, [sp, #76]
	add r2, r1, r0, lsl #12
	str r2, [sp, #176]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label72
	mov r0, #0
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	b label1557
label72:
	ldr r0, [sp, #80]
	add r0, r0, #1
	cmp r0, #5
	bge label930
	str r0, [sp, #80]
	mov r0, #0
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label134
	ldr r1, [sp, #76]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label23
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label14
	b label22
label1616:
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
label1557:
	ldr r1, [sp, #72]
	ldr r0, [sp, #168]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
label1587:
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	b label1617
label54:
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	ldr r0, [sp, #168]
	add r0, r0, #1
	str r0, [sp, #168]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label71
	ldr r1, [sp, #72]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	b label1587
label68:
	ldr r1, [sp, #148]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #176]
	ldr r3, [r2, r0, lsl #2]
	ldr r2, [sp, #60]
	mla r2, r3, r2, r1
	ldr r1, [sp, #148]
	str r2, [r1, r0, lsl #2]
	add r0, r0, #1
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label54
	b label68
label1617:
	ldr r1, [sp, #72]
	ldr r0, [sp, #168]
	add r1, r1, r0, lsl #12
	ldr r0, [sp, #84]
	add r2, r1, r0, lsl #2
	str r2, [sp, #44]
	ldr r0, [sp, #84]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	bne label55
	b label1587
label96:
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label98
	b label103
label1626:
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	b label1626
label103:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label98
	b label103
label104:
	add r0, r0, #1
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label571
	ldr r1, [sp, #68]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label104
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label96
	b label95
label19:
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	b label1608
label23:
	add r0, r0, #1
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label134
	ldr r1, [sp, #76]
	add r3, r1, r0, lsl #12
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label23
	mov r2, #0
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label14
	b label22
label1608:
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label23
	b label1608
label40:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	str r1, [sp, #208]
	ldr r1, [sp, #136]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #92]
	add r1, r2, r0, lsl #2
	str r1, [sp, #188]
	ldr r2, [sp, #92]
	ldr r1, [r2, r0, lsl #2]
	ldr r2, [sp, #56]
	mla r2, r2, r1, r3
	ldr r1, [sp, #136]
	str r2, [r1, r0, lsl #2]
	ldr r1, [sp, #208]
	ldr r0, [r1, #4]
	ldr r1, [sp, #188]
	ldr r1, [r1, #4]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #4]
	ldr r1, [sp, #208]
	ldr r0, [r1, #8]
	ldr r1, [sp, #188]
	ldr r1, [r1, #8]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #8]
	ldr r1, [sp, #208]
	ldr r0, [r1, #12]
	ldr r1, [sp, #188]
	ldr r1, [r1, #12]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #12]
	ldr r1, [sp, #208]
	ldr r0, [r1, #16]
	ldr r1, [sp, #188]
	ldr r1, [r1, #16]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #16]
	ldr r1, [sp, #208]
	ldr r0, [r1, #20]
	ldr r1, [sp, #188]
	ldr r1, [r1, #20]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #20]
	ldr r1, [sp, #208]
	ldr r0, [r1, #24]
	ldr r1, [sp, #188]
	ldr r1, [r1, #24]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #24]
	ldr r1, [sp, #208]
	ldr r0, [r1, #28]
	ldr r1, [sp, #188]
	ldr r1, [r1, #28]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #28]
	ldr r1, [sp, #208]
	ldr r0, [r1, #32]
	ldr r1, [sp, #188]
	ldr r1, [r1, #32]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #32]
	ldr r1, [sp, #208]
	ldr r0, [r1, #36]
	ldr r1, [sp, #188]
	ldr r1, [r1, #36]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #36]
	ldr r1, [sp, #208]
	ldr r0, [r1, #40]
	ldr r1, [sp, #188]
	ldr r1, [r1, #40]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #40]
	ldr r1, [sp, #208]
	ldr r0, [r1, #44]
	ldr r1, [sp, #188]
	ldr r1, [r1, #44]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #44]
	ldr r1, [sp, #208]
	ldr r0, [r1, #48]
	ldr r1, [sp, #188]
	ldr r1, [r1, #48]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #48]
	ldr r1, [sp, #208]
	ldr r0, [r1, #52]
	ldr r1, [sp, #188]
	ldr r1, [r1, #52]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #52]
	ldr r1, [sp, #208]
	ldr r0, [r1, #56]
	ldr r1, [sp, #188]
	ldr r1, [r1, #56]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #56]
	ldr r1, [sp, #208]
	ldr r0, [r1, #60]
	ldr r1, [sp, #188]
	ldr r1, [r1, #60]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #208]
	str r0, [r1, #60]
	ldr r2, [sp, #12]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #12]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label41
	b label40
label33:
	ldr r1, [sp, #136]
	add r0, r1, r3, lsl #2
	str r0, [sp, #200]
	ldr r1, [sp, #136]
	ldr r1, [r1, r3, lsl #2]
	ldr r2, [sp, #92]
	add r0, r2, r3, lsl #2
	str r0, [sp, #164]
	ldr r2, [sp, #92]
	ldr r2, [r2, r3, lsl #2]
	ldr r0, [sp, #36]
	mla r0, r2, r0, r1
	ldr r1, [sp, #136]
	str r0, [r1, r3, lsl #2]
	ldr r0, [sp, #200]
	ldr r1, [r0, #4]
	ldr r0, [sp, #164]
	ldr r2, [r0, #4]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #4]
	ldr r0, [sp, #200]
	ldr r1, [r0, #8]
	ldr r0, [sp, #164]
	ldr r2, [r0, #8]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #8]
	ldr r0, [sp, #200]
	ldr r1, [r0, #12]
	ldr r0, [sp, #164]
	ldr r2, [r0, #12]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #12]
	ldr r0, [sp, #200]
	ldr r1, [r0, #16]
	ldr r0, [sp, #164]
	ldr r2, [r0, #16]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #16]
	ldr r0, [sp, #200]
	ldr r1, [r0, #20]
	ldr r0, [sp, #164]
	ldr r2, [r0, #20]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #20]
	ldr r0, [sp, #200]
	ldr r1, [r0, #24]
	ldr r0, [sp, #164]
	ldr r2, [r0, #24]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #24]
	ldr r0, [sp, #200]
	ldr r1, [r0, #28]
	ldr r0, [sp, #164]
	ldr r2, [r0, #28]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #28]
	ldr r0, [sp, #200]
	ldr r1, [r0, #32]
	ldr r0, [sp, #164]
	ldr r2, [r0, #32]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #32]
	ldr r0, [sp, #200]
	ldr r1, [r0, #36]
	ldr r0, [sp, #164]
	ldr r2, [r0, #36]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #36]
	ldr r0, [sp, #200]
	ldr r1, [r0, #40]
	ldr r0, [sp, #164]
	ldr r2, [r0, #40]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #40]
	ldr r0, [sp, #200]
	ldr r1, [r0, #44]
	ldr r0, [sp, #164]
	ldr r2, [r0, #44]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #44]
	ldr r0, [sp, #200]
	ldr r1, [r0, #48]
	ldr r0, [sp, #164]
	ldr r2, [r0, #48]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #48]
	ldr r0, [sp, #200]
	ldr r1, [r0, #52]
	ldr r0, [sp, #164]
	ldr r2, [r0, #52]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #52]
	ldr r0, [sp, #200]
	ldr r1, [r0, #56]
	ldr r0, [sp, #164]
	ldr r2, [r0, #56]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #56]
	ldr r0, [sp, #200]
	ldr r1, [r0, #60]
	ldr r0, [sp, #164]
	ldr r2, [r0, #60]
	ldr r0, [sp, #36]
	mla r1, r2, r0, r1
	ldr r0, [sp, #200]
	str r1, [r0, #60]
	ldr r0, [sp, #32]
	add r2, r0, #16
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label345
	ldr r0, [sp, #32]
	mov r3, r0
	mov r0, r2
	str r2, [sp, #32]
	b label33
label345:
	ldr r0, [sp, #32]
	ldr r2, [sp, #40]
	ldr r2, [r2, #0]
	str r2, [sp, #56]
	add r2, r0, #16
	str r2, [sp, #12]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label41
	b label40
label41:
	add r2, r0, #16
	str r2, [sp, #8]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label43
label45:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	str r1, [sp, #204]
	ldr r1, [sp, #136]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #92]
	add r1, r2, r0, lsl #2
	str r1, [sp, #172]
	ldr r2, [sp, #92]
	ldr r1, [r2, r0, lsl #2]
	ldr r2, [sp, #56]
	mla r2, r2, r1, r3
	ldr r1, [sp, #136]
	str r2, [r1, r0, lsl #2]
	ldr r1, [sp, #204]
	ldr r0, [r1, #4]
	ldr r1, [sp, #172]
	ldr r1, [r1, #4]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #4]
	ldr r1, [sp, #204]
	ldr r0, [r1, #8]
	ldr r1, [sp, #172]
	ldr r1, [r1, #8]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #8]
	ldr r1, [sp, #204]
	ldr r0, [r1, #12]
	ldr r1, [sp, #172]
	ldr r1, [r1, #12]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #12]
	ldr r1, [sp, #204]
	ldr r0, [r1, #16]
	ldr r1, [sp, #172]
	ldr r1, [r1, #16]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #16]
	ldr r1, [sp, #204]
	ldr r0, [r1, #20]
	ldr r1, [sp, #172]
	ldr r1, [r1, #20]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #20]
	ldr r1, [sp, #204]
	ldr r0, [r1, #24]
	ldr r1, [sp, #172]
	ldr r1, [r1, #24]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #24]
	ldr r1, [sp, #204]
	ldr r0, [r1, #28]
	ldr r1, [sp, #172]
	ldr r1, [r1, #28]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #28]
	ldr r1, [sp, #204]
	ldr r0, [r1, #32]
	ldr r1, [sp, #172]
	ldr r1, [r1, #32]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #32]
	ldr r1, [sp, #204]
	ldr r0, [r1, #36]
	ldr r1, [sp, #172]
	ldr r1, [r1, #36]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #36]
	ldr r1, [sp, #204]
	ldr r0, [r1, #40]
	ldr r1, [sp, #172]
	ldr r1, [r1, #40]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #40]
	ldr r1, [sp, #204]
	ldr r0, [r1, #44]
	ldr r1, [sp, #172]
	ldr r1, [r1, #44]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #44]
	ldr r1, [sp, #204]
	ldr r0, [r1, #48]
	ldr r1, [sp, #172]
	ldr r1, [r1, #48]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #48]
	ldr r1, [sp, #204]
	ldr r0, [r1, #52]
	ldr r1, [sp, #172]
	ldr r1, [r1, #52]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #52]
	ldr r1, [sp, #204]
	ldr r0, [r1, #56]
	ldr r1, [sp, #172]
	ldr r1, [r1, #56]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #56]
	ldr r1, [sp, #204]
	ldr r0, [r1, #60]
	ldr r1, [sp, #172]
	ldr r1, [r1, #60]
	ldr r2, [sp, #56]
	mla r0, r2, r1, r0
	ldr r1, [sp, #204]
	str r0, [r1, #60]
	ldr r2, [sp, #8]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #8]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label43
	b label45
label55:
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label54
	ldr r1, [sp, #68]
	ldr r0, [sp, #168]
	add r1, r1, r0, lsl #12
	str r1, [sp, #148]
	ldr r1, [sp, #64]
	cmp r1, #16
	ble label599
	b label1387
label98:
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label101
	b label100
label101:
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label104
	b label1626
label1334:
	ldr r2, [sp, #40]
	ldr r0, [r2, #0]
	str r0, [sp, #36]
	mov r0, #16
	str r0, [sp, #32]
	mov r3, #0
	b label33
label1387:
	ldr r2, [sp, #44]
	ldr r0, [r2, #0]
	str r0, [sp, #28]
	mov r0, #16
	str r0, [sp, #24]
	mov r3, #0
label58:
	ldr r1, [sp, #148]
	add r0, r1, r3, lsl #2
	str r0, [sp, #196]
	ldr r1, [sp, #148]
	ldr r1, [r1, r3, lsl #2]
	ldr r2, [sp, #176]
	add r0, r2, r3, lsl #2
	str r0, [sp, #184]
	ldr r2, [sp, #176]
	ldr r2, [r2, r3, lsl #2]
	ldr r0, [sp, #28]
	mla r0, r2, r0, r1
	ldr r1, [sp, #148]
	str r0, [r1, r3, lsl #2]
	ldr r0, [sp, #196]
	ldr r1, [r0, #4]
	ldr r0, [sp, #184]
	ldr r2, [r0, #4]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #4]
	ldr r0, [sp, #196]
	ldr r1, [r0, #8]
	ldr r0, [sp, #184]
	ldr r2, [r0, #8]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #8]
	ldr r0, [sp, #196]
	ldr r1, [r0, #12]
	ldr r0, [sp, #184]
	ldr r2, [r0, #12]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #12]
	ldr r0, [sp, #196]
	ldr r1, [r0, #16]
	ldr r0, [sp, #184]
	ldr r2, [r0, #16]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #16]
	ldr r0, [sp, #196]
	ldr r1, [r0, #20]
	ldr r0, [sp, #184]
	ldr r2, [r0, #20]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #20]
	ldr r0, [sp, #196]
	ldr r1, [r0, #24]
	ldr r0, [sp, #184]
	ldr r2, [r0, #24]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #24]
	ldr r0, [sp, #196]
	ldr r1, [r0, #28]
	ldr r0, [sp, #184]
	ldr r2, [r0, #28]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #28]
	ldr r0, [sp, #196]
	ldr r1, [r0, #32]
	ldr r0, [sp, #184]
	ldr r2, [r0, #32]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #32]
	ldr r0, [sp, #196]
	ldr r1, [r0, #36]
	ldr r0, [sp, #184]
	ldr r2, [r0, #36]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #36]
	ldr r0, [sp, #196]
	ldr r1, [r0, #40]
	ldr r0, [sp, #184]
	ldr r2, [r0, #40]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #40]
	ldr r0, [sp, #196]
	ldr r1, [r0, #44]
	ldr r0, [sp, #184]
	ldr r2, [r0, #44]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #44]
	ldr r0, [sp, #196]
	ldr r1, [r0, #48]
	ldr r0, [sp, #184]
	ldr r2, [r0, #48]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #48]
	ldr r0, [sp, #196]
	ldr r1, [r0, #52]
	ldr r0, [sp, #184]
	ldr r2, [r0, #52]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #52]
	ldr r0, [sp, #196]
	ldr r1, [r0, #56]
	ldr r0, [sp, #184]
	ldr r2, [r0, #56]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #56]
	ldr r0, [sp, #196]
	ldr r1, [r0, #60]
	ldr r0, [sp, #184]
	ldr r2, [r0, #60]
	ldr r0, [sp, #28]
	mla r1, r2, r0, r1
	ldr r0, [sp, #196]
	str r1, [r0, #60]
	ldr r0, [sp, #24]
	add r2, r0, #16
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label703
	ldr r0, [sp, #24]
	mov r3, r0
	mov r0, r2
	str r2, [sp, #24]
	b label58
label703:
	ldr r0, [sp, #24]
	ldr r2, [sp, #44]
	ldr r2, [r2, #0]
	str r2, [sp, #60]
	add r2, r0, #16
	str r2, [sp, #16]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label65
	b label70
label65:
	add r2, r0, #16
	str r2, [sp, #20]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label68
label67:
	ldr r1, [sp, #148]
	add r1, r1, r0, lsl #2
	str r1, [sp, #0]
	ldr r1, [sp, #148]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #176]
	add r1, r2, r0, lsl #2
	str r1, [sp, #192]
	ldr r2, [sp, #176]
	ldr r1, [r2, r0, lsl #2]
	ldr r2, [sp, #60]
	mla r2, r2, r1, r3
	ldr r1, [sp, #148]
	str r2, [r1, r0, lsl #2]
	ldr r1, [sp, #0]
	ldr r0, [r1, #4]
	ldr r1, [sp, #192]
	ldr r1, [r1, #4]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #4]
	ldr r1, [sp, #0]
	ldr r0, [r1, #8]
	ldr r1, [sp, #192]
	ldr r1, [r1, #8]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #8]
	ldr r1, [sp, #0]
	ldr r0, [r1, #12]
	ldr r1, [sp, #192]
	ldr r1, [r1, #12]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #12]
	ldr r1, [sp, #0]
	ldr r0, [r1, #16]
	ldr r1, [sp, #192]
	ldr r1, [r1, #16]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #16]
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	ldr r1, [sp, #192]
	ldr r1, [r1, #20]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r1, #24]
	ldr r1, [sp, #192]
	ldr r1, [r1, #24]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r1, #28]
	ldr r1, [sp, #192]
	ldr r1, [r1, #28]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r1, #32]
	ldr r1, [sp, #192]
	ldr r1, [r1, #32]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldr r0, [r1, #36]
	ldr r1, [sp, #192]
	ldr r1, [r1, #36]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #36]
	ldr r1, [sp, #0]
	ldr r0, [r1, #40]
	ldr r1, [sp, #192]
	ldr r1, [r1, #40]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #40]
	ldr r1, [sp, #0]
	ldr r0, [r1, #44]
	ldr r1, [sp, #192]
	ldr r1, [r1, #44]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #44]
	ldr r1, [sp, #0]
	ldr r0, [r1, #48]
	ldr r1, [sp, #192]
	ldr r1, [r1, #48]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #48]
	ldr r1, [sp, #0]
	ldr r0, [r1, #52]
	ldr r1, [sp, #192]
	ldr r1, [r1, #52]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #52]
	ldr r1, [sp, #0]
	ldr r0, [r1, #56]
	ldr r1, [sp, #192]
	ldr r1, [r1, #56]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #56]
	ldr r1, [sp, #0]
	ldr r0, [r1, #60]
	ldr r1, [sp, #192]
	ldr r1, [r1, #60]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #0]
	str r0, [r1, #60]
	ldr r2, [sp, #20]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #20]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label68
	b label67
label70:
	ldr r1, [sp, #148]
	add r1, r1, r0, lsl #2
	str r1, [sp, #4]
	ldr r1, [sp, #148]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #176]
	add r1, r2, r0, lsl #2
	str r1, [sp, #180]
	ldr r2, [sp, #176]
	ldr r1, [r2, r0, lsl #2]
	ldr r2, [sp, #60]
	mla r2, r2, r1, r3
	ldr r1, [sp, #148]
	str r2, [r1, r0, lsl #2]
	ldr r1, [sp, #4]
	ldr r0, [r1, #4]
	ldr r1, [sp, #180]
	ldr r1, [r1, #4]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #4]
	ldr r1, [sp, #4]
	ldr r0, [r1, #8]
	ldr r1, [sp, #180]
	ldr r1, [r1, #8]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	ldr r1, [sp, #4]
	ldr r0, [r1, #12]
	ldr r1, [sp, #180]
	ldr r1, [r1, #12]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #12]
	ldr r1, [sp, #4]
	ldr r0, [r1, #16]
	ldr r1, [sp, #180]
	ldr r1, [r1, #16]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #16]
	ldr r1, [sp, #4]
	ldr r0, [r1, #20]
	ldr r1, [sp, #180]
	ldr r1, [r1, #20]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #20]
	ldr r1, [sp, #4]
	ldr r0, [r1, #24]
	ldr r1, [sp, #180]
	ldr r1, [r1, #24]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #24]
	ldr r1, [sp, #4]
	ldr r0, [r1, #28]
	ldr r1, [sp, #180]
	ldr r1, [r1, #28]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #28]
	ldr r1, [sp, #4]
	ldr r0, [r1, #32]
	ldr r1, [sp, #180]
	ldr r1, [r1, #32]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #32]
	ldr r1, [sp, #4]
	ldr r0, [r1, #36]
	ldr r1, [sp, #180]
	ldr r1, [r1, #36]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #36]
	ldr r1, [sp, #4]
	ldr r0, [r1, #40]
	ldr r1, [sp, #180]
	ldr r1, [r1, #40]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #40]
	ldr r1, [sp, #4]
	ldr r0, [r1, #44]
	ldr r1, [sp, #180]
	ldr r1, [r1, #44]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #44]
	ldr r1, [sp, #4]
	ldr r0, [r1, #48]
	ldr r1, [sp, #180]
	ldr r1, [r1, #48]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #48]
	ldr r1, [sp, #4]
	ldr r0, [r1, #52]
	ldr r1, [sp, #180]
	ldr r1, [r1, #52]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #52]
	ldr r1, [sp, #4]
	ldr r0, [r1, #56]
	ldr r1, [sp, #180]
	ldr r1, [r1, #56]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #56]
	ldr r1, [sp, #4]
	ldr r0, [r1, #60]
	ldr r1, [sp, #180]
	ldr r1, [r1, #60]
	ldr r2, [sp, #60]
	mla r0, r2, r1, r0
	ldr r1, [sp, #4]
	str r0, [r1, #60]
	ldr r2, [sp, #16]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #16]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label65
	b label70
label599:
	mov r0, #0
	ldr r2, [sp, #44]
	ldr r2, [r2, #0]
	str r2, [sp, #60]
	add r2, r0, #16
	str r2, [sp, #16]
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label65
	b label70
label1573:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	b label1603
label114:
	add r4, r4, #1
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label126
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label114
	ldr r1, [sp, #72]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	b label1573
label1603:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	b label1633
label1605:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	b label1573
label1633:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label114
	b label1633
label1569:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	b label1599
label109:
	add r4, r4, #1
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label6
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label109
	ldr r1, [sp, #68]
	add r6, r1, r4, lsl #12
	mov r5, #0
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	b label1569
label1599:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
label1629:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	b label1629
label1606:
	bl getint
	str r0, [r6, r5, lsl #2]
	add r5, r5, #1
	ldr r1, [sp, #64]
	cmp r5, r1
	bge label109
	b label1569
label14:
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label17
	b label16
label17:
	add r4, r2, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label19
	b label21
label95:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label96
	b label95
label100:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label101
	b label100
label21:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label19
	b label21
label16:
	add r1, r3, r2, lsl #2
	mov r5, #0
	str r5, [r3, r2, lsl #2]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	mov r2, r4
	add r4, r4, #16
	ldr r1, [sp, #64]
	cmp r4, r1
	bge label17
	b label16
label930:
	mov r0, #0
	str r0, [sp, #52]
	mov r4, r0
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label76
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label78
	b label1351
label76:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #220
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1351:
	ldr r1, [sp, #68]
	ldr r0, [sp, #52]
	add r1, r1, r0, lsl #12
	str r1, [sp, #48]
	mov r2, #0
	mov r0, r4
	add r3, r2, #16
	str r3, [sp, #132]
	ldr r1, [sp, #64]
	cmp r3, r1
	bge label84
	b label91
label1624:
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	b label1624
label959:
	mov r4, r0
	ldr r0, [sp, #52]
	add r0, r0, #1
	str r0, [sp, #52]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label76
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label78
	b label1351
label91:
	ldr r1, [sp, #48]
	add r8, r1, r2, lsl #2
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	ldr r5, [r8, #4]
	ldr r10, [r8, #8]
	ldr r6, [r8, #12]
	ldr r3, [r8, #16]
	ldr r9, [r8, #20]
	ldr r2, [r8, #24]
	ldr r4, [r8, #28]
	ldr r7, [r8, #32]
	ldr r11, [r8, #36]
	str r11, [sp, #152]
	ldr r11, [r8, #40]
	str r11, [sp, #128]
	ldr r11, [r8, #44]
	str r11, [sp, #120]
	ldr r11, [r8, #48]
	str r11, [sp, #112]
	ldr r11, [r8, #52]
	str r11, [sp, #104]
	ldr r11, [r8, #56]
	str r11, [sp, #96]
	ldr r8, [r8, #60]
	add r0, r0, r1
	add r0, r0, r5
	add r0, r0, r10
	add r0, r0, r6
	add r0, r0, r3
	add r0, r0, r9
	add r0, r0, r2
	add r0, r0, r4
	add r0, r0, r7
	ldr r11, [sp, #152]
	add r0, r0, r11
	ldr r11, [sp, #128]
	add r0, r0, r11
	ldr r11, [sp, #120]
	add r0, r0, r11
	ldr r11, [sp, #112]
	add r0, r0, r11
	ldr r11, [sp, #104]
	add r0, r0, r11
	ldr r11, [sp, #96]
	add r0, r0, r11
	add r0, r0, r8
	ldr r3, [sp, #132]
	mov r2, r3
	add r3, r3, #16
	str r3, [sp, #132]
	ldr r1, [sp, #64]
	cmp r3, r1
	bge label84
	b label91
label84:
	add r3, r2, #16
	str r3, [sp, #156]
	ldr r1, [sp, #64]
	cmp r3, r1
	bge label87
label90:
	ldr r1, [sp, #48]
	add r5, r1, r2, lsl #2
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	ldr r8, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #12]
	ldr r4, [r5, #16]
	ldr r10, [r5, #20]
	ldr r9, [r5, #24]
	ldr r7, [r5, #28]
	ldr r6, [r5, #32]
	ldr r11, [r5, #36]
	str r11, [sp, #140]
	ldr r11, [r5, #40]
	str r11, [sp, #124]
	ldr r11, [r5, #44]
	str r11, [sp, #116]
	ldr r11, [r5, #48]
	str r11, [sp, #108]
	ldr r11, [r5, #52]
	str r11, [sp, #100]
	ldr r11, [r5, #56]
	str r11, [sp, #144]
	ldr r5, [r5, #60]
	add r0, r0, r1
	add r0, r0, r8
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r4
	add r0, r0, r10
	add r0, r0, r9
	add r0, r0, r7
	add r0, r0, r6
	ldr r11, [sp, #140]
	add r0, r0, r11
	ldr r11, [sp, #124]
	add r0, r0, r11
	ldr r11, [sp, #116]
	add r0, r0, r11
	ldr r11, [sp, #108]
	add r0, r0, r11
	ldr r11, [sp, #100]
	add r0, r0, r11
	ldr r11, [sp, #144]
	add r0, r0, r11
	add r0, r0, r5
	ldr r3, [sp, #156]
	mov r2, r3
	add r3, r3, #16
	str r3, [sp, #156]
	ldr r1, [sp, #64]
	cmp r3, r1
	bge label87
	b label90
label87:
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	ldr r1, [sp, #48]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, r1
	add r2, r2, #1
	ldr r1, [sp, #64]
	cmp r2, r1
	bge label959
	b label1624
label78:
	ldr r0, [sp, #52]
	add r0, r0, #1
	str r0, [sp, #52]
	ldr r1, [sp, #64]
	cmp r0, r1
	bge label76
	ldr r1, [sp, #64]
	cmp r1, #0
	ble label78
	b label1351
