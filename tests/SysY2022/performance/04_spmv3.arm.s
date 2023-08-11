.arch armv7ve
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	sub sp, sp, #28
	mov r0, r1
	bl getarray
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r4, r0
	mov r0, r5
	bl getarray
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	mov r0, r5
	bl getarray
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r0, r5
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	sub r1, r4, #19
	sub r2, r4, #4
	sub r0, r4, #1
	str r0, [sp, #20]
	mov r0, #0
	str r2, [sp, #16]
	str r1, [sp, #12]
	str r0, [sp, #8]
	ldr r0, [sp, #20]
	cmp r0, #0
	bgt label4
	b label127
.p2align 4
label566:
	ldr r0, [sp, #8]
	add r0, r0, #1
	cmp r0, #100
	bge label59
.p2align 4
label299:
	str r0, [sp, #8]
	ldr r0, [sp, #20]
	cmp r0, #0
	ble label127
.p2align 4
label4:
	ldr r0, [sp, #20]
	cmp r0, #3
	ble label130
	ldr r2, [sp, #16]
	cmp r2, #15
	ble label145
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	mov r0, #0
	b label16
.p2align 4
label19:
	add r6, r6, #64
.p2align 4
label16:
	add r0, r0, #16
	mov r1, #0
	str r1, [r6, #0]
	str r1, [r6, #4]
	str r1, [r6, #8]
	str r1, [r6, #12]
	str r1, [r6, #16]
	str r1, [r6, #20]
	str r1, [r6, #24]
	str r1, [r6, #28]
	str r1, [r6, #32]
	str r1, [r6, #36]
	str r1, [r6, #40]
	str r1, [r6, #44]
	str r1, [r6, #48]
	str r1, [r6, #52]
	str r1, [r6, #56]
	str r1, [r6, #60]
	ldr r1, [sp, #12]
	cmp r1, r0
	bgt label19
	mov r1, r0
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label537
.p2align 4
label23:
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r0, r6, r1, lsl #2
.p2align 4
label24:
	add r1, r1, #4
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	ldr r2, [sp, #16]
	cmp r2, r1
	ble label180
	add r0, r0, #16
	b label24
.p2align 4
label180:
	mov r2, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label539
.p2align 4
label8:
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r1, r6, r2, lsl #2
	b label9
.p2align 4
label12:
	add r1, r1, #4
.p2align 4
label9:
	add r2, r2, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label12
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	cmp r0, r2
	bgt label84
label31:
	ldr r0, [sp, #20]
	cmp r0, #0
	bgt label60
	b label32
.p2align 4
label384:
	add r1, r1, #4
	ldr r3, [sp, #0]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	ble label572
.p2align 4
label84:
	ldr r4, [r1, #0]
	add r3, r2, #1
	ldr r0, [r1, #4]
	str r3, [sp, #0]
	cmp r4, r0
	bge label85
	add r5, r4, #3
	sub r3, r0, #3
	cmp r0, r5
	ble label393
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r8, r4
	add r7, r5, r4, lsl #2
	b label102
.p2align 4
label105:
	add r7, r7, #16
.p2align 4
label102:
	ldr r5, [r7, #0]
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r9, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r3, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r6, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r6, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r6, r6, r9, lsl #2
	ldr r9, [r6, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r6, #0]
	bgt label105
	cmp r0, r8
	ble label558
.p2align 4
label96:
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r7, r8
	add r3, r5, r8, lsl #2
.p2align 4
label97:
	ldr r5, [r3, #0]
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r6, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r6, #0]
	ldr r5, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r0, r7
	add r5, r8, r5
	str r5, [r6, #0]
	ble label412
	add r3, r3, #4
	b label97
.p2align 4
label412:
	cmp r4, r0
	bge label557
.p2align 4
label86:
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	ldr r2, [r5, r2, lsl #2]
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	add r3, r5, r4, lsl #2
	sub r2, r2, #1
.p2align 4
label87:
	ldr r5, [r3, #0]
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	add r6, r6, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r7, [r6, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r5, r2, r5, r7
	str r5, [r6, #0]
	ble label384
	add r3, r3, #4
	b label87
.p2align 4
label572:
	ldr r0, [sp, #20]
	cmp r0, #0
	ble label32
.p2align 4
label60:
	ldr r0, [sp, #20]
	cmp r0, #3
	ble label301
	ldr r2, [sp, #16]
	cmp r2, #15
	ble label316
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r0, #0
.p2align 4
label80:
	add r0, r0, #16
	mov r1, #0
	str r1, [r5, #0]
	str r1, [r5, #4]
	str r1, [r5, #8]
	str r1, [r5, #12]
	str r1, [r5, #16]
	str r1, [r5, #20]
	str r1, [r5, #24]
	str r1, [r5, #28]
	str r1, [r5, #32]
	str r1, [r5, #36]
	str r1, [r5, #40]
	str r1, [r5, #44]
	str r1, [r5, #48]
	str r1, [r5, #52]
	str r1, [r5, #56]
	str r1, [r5, #60]
	ldr r1, [sp, #12]
	cmp r1, r0
	ble label351
	add r5, r5, #64
	b label80
.p2align 4
label393:
	mov r8, r4
	cmp r0, r4
	bgt label96
	cmp r4, r0
	blt label86
	add r1, r1, #4
	ldr r3, [sp, #0]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label84
	b label31
.p2align 4
label351:
	mov r1, r0
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label553
.p2align 4
label74:
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	add r0, r5, r1, lsl #2
.p2align 4
label75:
	add r1, r1, #4
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	ldr r2, [sp, #16]
	cmp r2, r1
	ble label330
	add r0, r0, #16
	b label75
.p2align 4
label85:
	cmp r4, r0
	blt label86
	add r1, r1, #4
	ldr r3, [sp, #0]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label84
	b label31
.p2align 4
label330:
	mov r2, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label552
.p2align 4
label63:
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	add r1, r5, r2, lsl #2
	b label64
.p2align 4
label68:
	add r1, r1, #4
.p2align 4
label64:
	add r2, r2, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label68
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	cmp r0, r2
	bgt label36
label192:
	ldr r0, [sp, #8]
	add r0, r0, #1
	cmp r0, #100
	blt label299
	b label59
.p2align 4
label55:
	add r3, r3, #4
.p2align 4
label52:
	ldr r6, [r3, #0]
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	add r6, r5, r6, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r7, [r6, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r5, r2, r5, r7
	str r5, [r6, #0]
	bgt label55
	add r1, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	ble label566
.p2align 4
label36:
	ldr r4, [r1, #0]
	add r3, r2, #1
	ldr r0, [r1, #4]
	str r3, [sp, #4]
	cmp r4, r0
	bge label200
	add r5, r4, #3
	sub r3, r0, #3
	cmp r0, r5
	ble label206
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	mov r7, r4
	add r6, r5, r4, lsl #2
.p2align 4
label39:
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	add r8, r5, r7, lsl #2
	add r7, r7, #4
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	ldr r9, [r8, #0]
	cmp r3, r7
	add r9, r5, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #0]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #4]
	add r9, r5, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r8, #8]
	add r9, r5, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r6, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r8, [r8, #12]
	add r5, r5, r8, lsl #2
	ldr r8, [r5, #0]
	ldr r9, [r6, #12]
	add r8, r8, r9
	str r8, [r5, #0]
	ble label245
	add r6, r6, #16
	b label39
.p2align 4
label245:
	cmp r0, r7
	ble label543
.p2align 4
label45:
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	mov r6, r7
	add r3, r5, r7, lsl #2
.p2align 4
label46:
	ldr r7, [r3, #0]
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	add r7, r5, r7, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	ldr r5, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r0, r6
	add r5, r8, r5
	str r5, [r7, #0]
	ble label265
	add r3, r3, #4
	b label46
.p2align 4
label265:
	cmp r4, r0
	bge label545
.p2align 4
label51:
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	movw r5, #:lower16:y
	movt r5, #:upper16:y
	ldr r2, [r6, r2, lsl #2]
	add r3, r5, r4, lsl #2
	sub r2, r2, #1
	b label52
.p2align 4
label206:
	mov r7, r4
	cmp r0, r4
	bgt label45
	cmp r4, r0
	blt label51
	b label541
.p2align 4
label558:
	cmp r4, r0
	blt label86
	add r1, r1, #4
	ldr r3, [sp, #0]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label84
	b label31
.p2align 4
label543:
	cmp r4, r0
	blt label51
	add r1, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label36
	b label192
.p2align 4
label301:
	mov r2, #0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label63
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	b label192
.p2align 4
label130:
	mov r2, #0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label8
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	b label31
.p2align 4
label553:
	mov r2, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label63
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	cmp r0, r2
	bgt label36
	b label192
.p2align 4
label316:
	mov r1, #0
	mov r0, r1
	ldr r2, [sp, #16]
	cmp r2, r1
	bgt label74
	mov r2, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label63
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	cmp r0, r2
	bgt label36
	b label192
.p2align 4
label537:
	mov r2, r0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label8
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	cmp r0, r2
	bgt label84
	b label31
.p2align 4
label200:
	cmp r4, r0
	blt label51
label541:
	add r1, r1, #4
	ldr r3, [sp, #4]
	mov r2, r3
.p2align 4
label33:
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label36
	b label192
label127:
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label84
	b label31
label32:
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	b label33
.p2align 4
label145:
	mov r1, #0
	ldr r2, [sp, #16]
	mov r0, r1
	cmp r2, r1
	bgt label23
	mov r2, r1
	ldr r0, [sp, #20]
	cmp r0, r1
	bgt label8
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	cmp r0, r2
	bgt label84
	b label31
.p2align 4
label557:
	add r1, r1, #4
	ldr r3, [sp, #0]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label84
	b label31
.p2align 4
label545:
	add r1, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [sp, #20]
	mov r2, r3
	cmp r0, r3
	bgt label36
	b label192
label59:
	mov r0, #47
	bl _sysy_stoptime
	movw r6, #:lower16:b
	movt r6, #:upper16:b
	ldr r0, [sp, #20]
	mov r1, r6
	bl putarray
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label552:
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label36
	b label192
.p2align 4
label539:
	movw r1, #:lower16:x
	movt r1, #:upper16:x
	mov r2, #0
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt label84
	b label31
