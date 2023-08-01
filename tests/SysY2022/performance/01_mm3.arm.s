.arch armv7ve
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r5, #0
	movw r3, #:lower16:A
	str r0, [sp, #8]
	mov r7, r0
	movw r6, #:lower16:B
	movt r3, #:upper16:A
	sub r7, r0, #8
	movt r6, #:upper16:B
	str r7, [sp, #12]
	str r6, [sp, #4]
	str r3, [sp, #0]
label2:
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label4
label87:
	mov r5, #0
	b label9
.p2align 4
label4:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label90
	ldr r3, [sp, #0]
	mov r6, #0
	add r4, r3, r5, lsl #12
.p2align 4
label6:
	bl getint
	str r0, [r4, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	cmp r7, r6
	bgt label6
	add r5, r5, #1
	cmp r7, r5
	bgt label4
	b label87
label9:
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label73
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:C
	movt r0, #:upper16:C
	b label12
.p2align 4
label73:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label429
	ldr r6, [sp, #4]
	add r4, r6, r5, lsl #12
	mov r6, #0
.p2align 4
label75:
	bl getint
	str r0, [r4, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	cmp r7, r6
	bgt label75
	add r5, r5, #1
	cmp r7, r5
	bgt label73
	b label11
label12:
	mov r2, #0
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label16
	b label111
label508:
	mov r4, #0
	mov r0, r4
	b label48
.p2align 4
label279:
	mov r5, #0
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label65
	b label509
label48:
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label51
	b label61
.p2align 4
label65:
	ldr r3, [sp, #0]
	add r3, r3, r5, lsl #12
	ldr r3, [r3, r4, lsl #2]
	cmp r3, #0
	beq label72
	ldr r7, [sp, #8]
	cmp r7, #0
	bgt label67
	b label352
.p2align 4
label72:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label65
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label279
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label508
.p2align 4
label67:
	ldr r6, [sp, #4]
	ldr r7, [sp, #8]
	add r6, r6, r5, lsl #12
	cmp r7, #8
	ble label357
	mov r8, #0
.p2align 4
label68:
	add r7, r6, r8, lsl #2
	add r9, r2, r8, lsl #2
	ldr r10, [r7, #0]
	add r8, r8, #8
	ldr r11, [r9, #0]
	mla r10, r3, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r3, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r3, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r11, [r9, #12]
	mla r10, r3, r11, r10
	str r10, [r7, #12]
	ldr r10, [r7, #16]
	ldr r11, [r9, #16]
	mla r10, r3, r11, r10
	str r10, [r7, #16]
	ldr r10, [r7, #20]
	ldr r11, [r9, #20]
	mla r10, r3, r11, r10
	str r10, [r7, #20]
	ldr r10, [r7, #24]
	ldr r11, [r9, #24]
	mla r10, r3, r11, r10
	str r10, [r7, #24]
	ldr r10, [r7, #28]
	ldr r9, [r9, #28]
	mla r9, r3, r9, r10
	str r9, [r7, #28]
	ldr r7, [sp, #12]
	cmp r7, r8
	bgt label68
.p2align 4
label412:
	mov r7, r8
	add r8, r6, r8, lsl #2
	ldr r9, [r8, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r8, #0]
	add r8, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label412
	add r5, r5, #1
	cmp r7, r5
	bgt label65
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label279
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label508
label111:
	mov r4, #0
	ldr r6, [sp, #4]
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label148
	b label147
.p2align 4
label16:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label114
	add r3, r0, r2, lsl #12
	cmp r7, #8
	bgt label120
	mov r4, #0
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r7, r4
	bgt label18
	b label494
.p2align 4
label120:
	mov r4, #0
	b label20
.p2align 4
label18:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label18
	add r2, r2, #1
	cmp r7, r2
	bgt label16
	b label518
.p2align 4
label20:
	add r5, r3, r4, lsl #2
	mov r6, #0
	add r4, r4, #8
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	str r6, [r5, #16]
	str r6, [r5, #20]
	str r6, [r5, #24]
	str r6, [r5, #28]
	ldr r7, [sp, #12]
	cmp r7, r4
	bgt label20
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label18
	add r2, r2, #1
	cmp r7, r2
	bgt label16
	b label111
.p2align 4
label148:
	mov r5, #0
	ldr r7, [sp, #8]
	cmp r7, r5
	ble label27
.p2align 4
label28:
	ldr r3, [sp, #0]
	add r3, r3, r5, lsl #12
	ldr r3, [r3, r4, lsl #2]
	cmp r3, #0
	beq label29
	ldr r7, [sp, #8]
	cmp r7, #0
	bgt label31
	b label499
.p2align 4
label29:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label28
	add r4, r4, #1
	ldr r6, [sp, #4]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label148
	mov r2, #0
	cmp r7, r2
	bgt label38
	b label242
.p2align 4
label31:
	add r6, r0, r5, lsl #12
	ldr r7, [sp, #8]
	cmp r7, #8
	ble label170
	mov r8, #0
.p2align 4
label32:
	add r7, r6, r8, lsl #2
	add r9, r2, r8, lsl #2
	ldr r10, [r7, #0]
	add r8, r8, #8
	ldr r11, [r9, #0]
	mla r10, r3, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r3, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r3, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r11, [r9, #12]
	mla r10, r3, r11, r10
	str r10, [r7, #12]
	ldr r10, [r7, #16]
	ldr r11, [r9, #16]
	mla r10, r3, r11, r10
	str r10, [r7, #16]
	ldr r10, [r7, #20]
	ldr r11, [r9, #20]
	mla r10, r3, r11, r10
	str r10, [r7, #20]
	ldr r10, [r7, #24]
	ldr r11, [r9, #24]
	mla r10, r3, r11, r10
	str r10, [r7, #24]
	ldr r10, [r7, #28]
	ldr r9, [r9, #28]
	mla r9, r3, r9, r10
	str r9, [r7, #28]
	ldr r7, [sp, #12]
	cmp r7, r8
	bgt label32
.p2align 4
label225:
	mov r7, r8
	add r8, r6, r8, lsl #2
	ldr r9, [r8, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r8, #0]
	add r8, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label225
	add r5, r5, #1
	cmp r7, r5
	bgt label28
	add r4, r4, #1
	ldr r6, [sp, #4]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label148
label525:
	mov r2, #0
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label38
label242:
	mov r4, #0
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label279
	b label278
.p2align 4
label38:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label245
	ldr r6, [sp, #4]
	add r3, r6, r2, lsl #12
	cmp r7, #8
	bgt label251
	mov r4, #0
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r7, r4
	bgt label40
	b label505
.p2align 4
label251:
	mov r4, #0
	b label42
.p2align 4
label40:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label40
	add r2, r2, #1
	cmp r7, r2
	bgt label38
	b label527
.p2align 4
label42:
	add r5, r3, r4, lsl #2
	mov r6, #0
	add r4, r4, #8
	str r6, [r5, #0]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	str r6, [r5, #16]
	str r6, [r5, #20]
	str r6, [r5, #24]
	str r6, [r5, #28]
	ldr r7, [sp, #12]
	cmp r7, r4
	bgt label42
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label40
	add r2, r2, #1
	cmp r7, r2
	bgt label38
	b label242
.p2align 4
label357:
	mov r7, #0
	add r8, r6, r7, lsl #2
	ldr r9, [r8, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r8, #0]
	add r8, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label412
	add r5, r5, #1
	cmp r7, r5
	bgt label65
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label279
	b label513
.p2align 4
label170:
	mov r7, #0
	add r8, r6, r7, lsl #2
	ldr r9, [r8, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r8, #0]
	add r8, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r8
	bgt label225
	add r5, r5, #1
	cmp r7, r5
	bgt label28
	add r4, r4, #1
	ldr r6, [sp, #4]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label148
	b label525
.p2align 4
label51:
	ldr r7, [sp, #8]
	cmp r7, #0
	ble label290
	ldr r6, [sp, #4]
	add r1, r6, r0, lsl #12
	cmp r7, #8
	bgt label296
	mov r3, #0
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	add r2, r2, r4
	cmp r7, r3
	bgt label53
	b label510
.p2align 4
label296:
	mov r2, #0
	b label56
.p2align 4
label53:
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	ldr r7, [sp, #8]
	add r2, r2, r4
	cmp r7, r3
	bgt label53
	mov r4, r2
	add r0, r0, #1
	cmp r7, r0
	bgt label51
	b label61
.p2align 4
label56:
	add r3, r1, r2, lsl #2
	add r2, r2, #8
	ldr r5, [r3, #0]
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	add r4, r4, r5
	ldr r5, [r3, #12]
	add r4, r4, r5
	ldr r5, [r3, #16]
	add r4, r4, r5
	ldr r5, [r3, #20]
	add r4, r4, r5
	ldr r5, [r3, #24]
	ldr r3, [r3, #28]
	ldr r7, [sp, #12]
	add r4, r4, r5
	add r4, r4, r3
	cmp r7, r2
	bgt label56
	mov r3, r2
	mov r2, r4
	ldr r4, [r1, r3, lsl #2]
	add r3, r3, #1
	ldr r7, [sp, #8]
	add r2, r2, r4
	cmp r7, r3
	bgt label53
	mov r4, r2
	add r0, r0, #1
	cmp r7, r0
	bgt label51
	b label61
label27:
	add r4, r4, #1
	ldr r6, [sp, #4]
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label148
label498:
	mov r2, #0
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label38
	b label242
.p2align 4
label352:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label65
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label279
	b label513
.p2align 4
label499:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label28
	add r4, r4, #1
	ldr r6, [sp, #4]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label148
	b label498
label61:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label114:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label16
	b label111
label509:
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label279
label513:
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label508
label245:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label38
	b label242
label494:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label16
	b label111
label505:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label38
	b label242
label518:
	mov r4, #0
	ldr r6, [sp, #4]
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label148
label147:
	mov r2, #0
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label38
	b label242
label527:
	mov r4, #0
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label279
label278:
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label508
label510:
	mov r4, r2
	add r0, r0, #1
	b label48
label429:
	add r5, r5, #1
	b label9
label290:
	add r0, r0, #1
	b label48
label90:
	add r5, r5, #1
	b label2
