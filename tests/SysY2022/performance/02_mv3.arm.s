.arch armv7ve
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r9, #0
	movw r4, #:lower16:C
	movt r4, #:upper16:C
	str r0, [sp, #0]
	mov r8, r0
	movw r5, #:lower16:B
	movt r5, #:upper16:B
	sub r2, r0, #20
	sub r6, r0, #4
	str r2, [sp, #4]
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r7, r2
	cmp r0, r9
	ble label11
.p2align 4
label5:
	mov r10, r7
	mov r8, #0
.p2align 4
label6:
	bl getint
	str r0, [r10, #0]
	add r0, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	bgt label9
	add r9, r9, #1
	movw r0, #8040
	add r7, r7, r0
	cmp r8, r9
	bgt label5
	b label11
.p2align 4
label9:
	add r10, r10, #4
	mov r8, r0
	b label6
label11:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label17
	mov r7, r5
	mov r8, #0
.p2align 4
label13:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	ble label17
	add r7, r7, #4
	mov r8, r0
	b label13
label17:
	mov r0, #59
	bl _sysy_starttime
	mov r0, #0
.p2align 4
label18:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label156
	cmp r8, #4
	ble label159
	cmp r6, #16
	ble label168
	mov r1, r4
	mov r3, #0
.p2align 4
label29:
	mov r2, #0
	add r3, r3, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r2, [sp, #4]
	cmp r2, r3
	ble label188
	add r1, r1, #64
	b label29
.p2align 4
label95:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label349
	cmp r8, #4
	ble label97
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label103
	b label102
.p2align 4
label429:
	add r3, r3, #1
	movw r7, #8040
	ldr r8, [sp, #0]
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label95
.p2align 4
label556:
	add r0, r0, #1
	cmp r0, #50
	blt label18
label120:
	mov r0, #67
	bl _sysy_stoptime
	ldr r8, [sp, #0]
	mov r0, r8
	mov r1, r4
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label103:
	add r9, r8, #1
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label104
	ldr r11, [r1, #0]
	ldr r9, [r4, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
.p2align 4
label104:
	add r9, r8, #2
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label106
	ldr r11, [r1, #0]
	ldr r9, [r4, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
.p2align 4
label106:
	add r9, r8, #3
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label107
	ldr r11, [r1, #0]
	ldr r9, [r4, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
.p2align 4
label107:
	add r8, r8, #4
	cmp r6, r8
	ble label398
.p2align 4
label108:
	add r7, r7, #16
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label103
	ldr r10, [r1, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	add r9, r8, #1
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label104
	ldr r11, [r1, #0]
	ldr r9, [r4, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
	add r9, r8, #2
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label106
	ldr r11, [r1, #0]
	ldr r9, [r4, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
	add r9, r8, #3
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label107
	ldr r11, [r1, #0]
	add r8, r8, #4
	ldr r9, [r4, r9, lsl #2]
	cmp r6, r8
	mla r9, r10, r9, r11
	str r9, [r1, #0]
	bgt label108
	add r7, r2, r8, lsl #2
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label116
	b label555
.p2align 4
label398:
	add r7, r2, r8, lsl #2
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label116
.p2align 4
label555:
	ldr r10, [r1, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	add r9, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r9
	bgt label117
	b label572
.p2align 4
label116:
	add r9, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r9
	ble label429
.p2align 4
label117:
	add r7, r7, #4
	mov r8, r9
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label116
	ldr r10, [r1, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	add r9, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r9
	bgt label117
	add r3, r3, #1
	movw r7, #8040
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label95
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label120
.p2align 4
label102:
	ldr r10, [r1, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	b label103
.p2align 4
label97:
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label116
	ldr r10, [r1, #0]
	ldr r11, [r4, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	add r9, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r9
	bgt label117
	add r3, r3, #1
	movw r7, #8040
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label95
	b label556
.p2align 4
label21:
	mov r3, #0
	add r2, r2, #1
	str r3, [r1, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label164
.p2align 4
label24:
	add r1, r1, #4
	b label21
label168:
	mov r1, r4
	mov r3, #0
	mov r2, #0
	add r3, r3, #4
	str r2, [r4, #0]
	cmp r6, r3
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #12]
	bgt label38
.p2align 4
label199:
	add r1, r4, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	str r3, [r1, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	bgt label24
	mov r1, r4
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	cmp r8, r3
	ble label206
.p2align 4
label45:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label46
	cmp r8, #4
	ble label215
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label53
	b label52
.p2align 4
label292:
	add r3, r3, #1
	movw r7, #8040
	ldr r8, [sp, #0]
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label45
.p2align 4
label528:
	ldr r8, [sp, #0]
	cmp r8, #0
	ble label525
.p2align 4
label70:
	ldr r8, [sp, #0]
	cmp r8, #4
	ble label299
	cmp r6, #16
	ble label308
	mov r1, r5
	mov r3, #0
.p2align 4
label84:
	mov r2, #0
	add r3, r3, #16
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	ldr r2, [sp, #4]
	cmp r2, r3
	ble label339
	add r1, r1, #64
	b label84
.p2align 4
label52:
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
.p2align 4
label53:
	add r9, r8, #1
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label55
	ldr r11, [r1, #0]
	ldr r9, [r5, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
.p2align 4
label55:
	add r9, r8, #2
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label57
	ldr r11, [r1, #0]
	ldr r9, [r5, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
.p2align 4
label57:
	add r9, r8, #3
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	bne label58
.p2align 4
label59:
	add r8, r8, #4
	cmp r6, r8
	ble label273
.p2align 4
label60:
	add r7, r7, #16
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label53
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	add r9, r8, #1
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label55
	ldr r11, [r1, #0]
	ldr r9, [r5, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
	add r9, r8, #2
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label57
	ldr r11, [r1, #0]
	ldr r9, [r5, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
	add r9, r8, #3
	ldr r10, [r2, r9, lsl #2]
	cmp r10, #0
	beq label59
	ldr r11, [r1, #0]
	add r8, r8, #4
	ldr r9, [r5, r9, lsl #2]
	cmp r6, r8
	mla r9, r10, r9, r11
	str r9, [r1, #0]
	bgt label60
	add r7, r2, r8, lsl #2
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label66
	b label550
.p2align 4
label58:
	ldr r11, [r1, #0]
	ldr r9, [r5, r9, lsl #2]
	mla r9, r10, r9, r11
	str r9, [r1, #0]
	b label59
.p2align 4
label273:
	add r7, r2, r8, lsl #2
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label66
.p2align 4
label550:
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	add r9, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r9
	bgt label67
	b label568
.p2align 4
label66:
	add r9, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r9
	ble label292
.p2align 4
label67:
	add r7, r7, #4
	mov r8, r9
	ldr r9, [r7, #0]
	cmp r9, #0
	beq label66
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	add r9, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r9
	bgt label67
	add r3, r3, #1
	movw r7, #8040
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label45
	cmp r8, #0
	bgt label70
	b label525
.p2align 4
label78:
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	cmp r6, r3
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ble label81
.p2align 4
label82:
	add r1, r1, #16
	b label78
.p2align 4
label339:
	add r1, r5, r3, lsl #2
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	cmp r6, r3
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	bgt label82
	add r1, r5, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	str r3, [r1, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	bgt label75
	mov r1, r5
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	cmp r8, r3
	bgt label95
	b label346
.p2align 4
label71:
	mov r3, #0
	add r2, r2, #1
	str r3, [r1, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label74
.p2align 4
label75:
	add r1, r1, #4
	b label71
.p2align 4
label81:
	add r1, r5, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	str r3, [r1, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	bgt label75
	mov r1, r5
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	cmp r8, r3
	bgt label95
	b label346
.p2align 4
label188:
	add r1, r4, r3, lsl #2
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	cmp r6, r3
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	bgt label38
	b label547
.p2align 4
label35:
	mov r2, #0
	add r3, r3, #4
	str r2, [r1, #0]
	cmp r6, r3
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ble label199
.p2align 4
label38:
	add r1, r1, #16
	b label35
.p2align 4
label215:
	mov r7, r2
	mov r8, #0
	ldr r9, [r2, #0]
	cmp r9, #0
	beq label66
	ldr r10, [r1, #0]
	ldr r11, [r5, r8, lsl #2]
	mla r9, r9, r11, r10
	str r9, [r1, #0]
	add r9, r8, #1
	ldr r8, [sp, #0]
	cmp r8, r9
	bgt label67
	add r3, r3, #1
	movw r7, #8040
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label45
	b label528
label206:
	ldr r8, [sp, #0]
	cmp r8, #0
	bgt label70
	b label525
.p2align 4
label46:
	add r3, r3, #1
	movw r7, #8040
	ldr r8, [sp, #0]
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label45
	b label206
.p2align 4
label74:
	mov r1, r5
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r8, [sp, #0]
	mov r3, #0
	cmp r8, r3
	bgt label95
	b label346
.p2align 4
label572:
	add r3, r3, #1
	movw r7, #8040
	ldr r8, [sp, #0]
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label95
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label120
.p2align 4
label568:
	add r3, r3, #1
	movw r7, #8040
	ldr r8, [sp, #0]
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label45
	cmp r8, #0
	bgt label70
	b label525
.p2align 4
label547:
	add r1, r4, r3, lsl #2
	add r2, r3, #1
	mov r3, #0
	str r3, [r1, #0]
	ldr r8, [sp, #0]
	cmp r8, r2
	bgt label24
	mov r1, r4
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	cmp r8, r3
	bgt label45
	b label206
label525:
	mov r1, r5
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r3, #0
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label95
	b label346
label156:
	mov r1, r4
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	mov r3, #0
	ldr r8, [sp, #0]
	cmp r8, r3
	bgt label45
	b label206
label346:
	add r0, r0, #1
	cmp r0, #50
	blt label18
	b label120
.p2align 4
label349:
	add r3, r3, #1
	movw r7, #8040
	ldr r8, [sp, #0]
	add r1, r1, #4
	add r2, r2, r7
	cmp r8, r3
	bgt label95
	b label346
.p2align 4
label164:
	mov r1, r4
	movw r2, #:lower16:A
	movt r2, #:upper16:A
	ldr r8, [sp, #0]
	mov r3, #0
	cmp r8, r3
	bgt label45
	b label206
label159:
	mov r1, r4
	mov r2, #0
	b label21
label308:
	mov r1, r5
	mov r3, #0
	b label78
label299:
	mov r1, r5
	mov r2, #0
	b label71
