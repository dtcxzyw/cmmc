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
	sub r4, r0, #20
	str r0, [sp, #8]
	mov r7, r0
	sub r6, r0, #4
	str r6, [sp, #0]
	mov r6, r5
	str r4, [sp, #12]
	str r5, [sp, #4]
	cmp r0, r5
	bgt label4
label90:
	ldr r6, [sp, #4]
	mov r5, r6
	b label8
.p2align 4
label4:
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	ldr r6, [sp, #4]
	add r4, r3, r5, lsl #12
.p2align 4
label5:
	bl getint
	str r0, [r4, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	cmp r7, r6
	bgt label5
	add r5, r5, #1
	cmp r7, r5
	bgt label4
	b label90
label8:
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label76
label10:
	mov r0, #65
	bl _sysy_starttime
	ldr r6, [sp, #4]
	movw r0, #:lower16:C
	movt r0, #:upper16:C
	mov r1, r6
	b label11
.p2align 4
label76:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r4, r6, r5, lsl #12
	ldr r6, [sp, #4]
.p2align 4
label77:
	bl getint
	str r0, [r4, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	cmp r7, r6
	bgt label77
	add r5, r5, #1
	cmp r7, r5
	bgt label76
	b label10
.p2align 4
label11:
	ldr r6, [sp, #4]
	mov r2, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label15
	b label111
label557:
	ldr r6, [sp, #4]
	mov r0, r6
	mov r4, r6
	b label60
.p2align 4
label288:
	ldr r6, [sp, #4]
	mov r5, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	ble label51
.p2align 4
label52:
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	add r3, r3, r5, lsl #12
	ldr r3, [r3, r4, lsl #2]
	cmp r3, #0
	beq label53
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r8, r6, r5, lsl #12
	cmp r7, #4
	bgt label308
	b label307
.p2align 4
label53:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label52
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label288
	add r1, r1, #1
	cmp r1, #5
	blt label11
	b label557
label60:
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label63
	b label75
.p2align 4
label308:
	ldr r6, [sp, #4]
.p2align 4
label55:
	add r7, r8, r6, lsl #2
	add r9, r2, r6, lsl #2
	ldr r10, [r7, #0]
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
	ldr r9, [r9, #12]
	mla r9, r3, r9, r10
	str r9, [r7, #12]
	add r7, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label338
	mov r6, r7
	b label55
.p2align 4
label338:
	add r6, r8, r7, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label352
	b label562
.p2align 4
label57:
	add r6, r8, r7, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	ble label351
.p2align 4
label352:
	mov r7, r6
	b label57
.p2align 4
label63:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r1, r6, r0, lsl #12
	cmp r7, #4
	ble label365
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label368
	ldr r6, [sp, #4]
	mov r3, r4
	b label68
.p2align 4
label386:
	mov r6, r3
	ldr r3, [r1, r3, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	add r2, r2, r3
	cmp r7, r6
	bgt label71
	b label565
.p2align 4
label68:
	add r2, r1, r6, lsl #2
	add r6, r6, #16
	ldr r4, [r2, #0]
	add r3, r3, r4
	ldr r4, [r2, #4]
	add r3, r3, r4
	ldr r4, [r2, #8]
	add r3, r3, r4
	ldr r4, [r2, #12]
	add r3, r3, r4
	ldr r4, [r2, #16]
	add r3, r3, r4
	ldr r4, [r2, #20]
	add r3, r3, r4
	ldr r4, [r2, #24]
	add r3, r3, r4
	ldr r4, [r2, #28]
	add r3, r3, r4
	ldr r4, [r2, #32]
	add r3, r3, r4
	ldr r4, [r2, #36]
	add r3, r3, r4
	ldr r4, [r2, #40]
	add r3, r3, r4
	ldr r4, [r2, #44]
	add r3, r3, r4
	ldr r4, [r2, #48]
	add r3, r3, r4
	ldr r4, [r2, #52]
	add r3, r3, r4
	ldr r4, [r2, #56]
	ldr r2, [r2, #60]
	add r3, r3, r4
	ldr r4, [sp, #12]
	add r2, r3, r2
	cmp r4, r6
	ble label440
	mov r3, r2
	b label68
.p2align 4
label71:
	ldr r3, [r1, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	add r2, r2, r3
	cmp r7, r6
	bgt label71
.p2align 4
label74:
	add r0, r0, #1
	mov r4, r2
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label63
label75:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r6, [sp, #4]
	add sp, sp, #20
	mov r0, r6
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label307:
	ldr r6, [sp, #4]
	mov r7, r6
	add r6, r8, r6, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label352
	add r5, r5, #1
	cmp r7, r5
	bgt label52
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label288
	b label582
.p2align 4
label15:
	add r3, r0, r2, lsl #12
	ldr r7, [sp, #8]
	cmp r7, #4
	bgt label19
	ldr r6, [sp, #4]
	mov r4, r6
.p2align 4
label16:
	ldr r6, [sp, #4]
	str r6, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label16
	add r2, r2, #1
	cmp r7, r2
	bgt label15
.p2align 4
label543:
	ldr r6, [sp, #4]
	mov r4, r6
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label166
	b label165
.p2align 4
label19:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label127
	ldr r6, [sp, #4]
	mov r5, r6
.p2align 4
label20:
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	add r5, r5, #16
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	str r6, [r4, #16]
	str r6, [r4, #20]
	str r6, [r4, #24]
	str r6, [r4, #28]
	str r6, [r4, #32]
	str r6, [r4, #36]
	str r6, [r4, #40]
	str r6, [r4, #44]
	str r6, [r4, #48]
	str r6, [r4, #52]
	str r6, [r4, #56]
	str r6, [r4, #60]
	ldr r4, [sp, #12]
	cmp r4, r5
	bgt label20
.p2align 4
label22:
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	add r5, r5, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label22
	mov r4, r5
	ldr r6, [sp, #4]
	str r6, [r3, r5, lsl #2]
	ldr r7, [sp, #8]
	add r4, r5, #1
	cmp r7, r4
	bgt label16
.p2align 4
label545:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label15
	b label543
.p2align 4
label166:
	ldr r6, [sp, #4]
	mov r5, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label28
	b label169
.p2align 4
label548:
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label166
	ldr r6, [sp, #4]
	mov r2, r6
	cmp r7, r6
	bgt label38
label233:
	ldr r6, [sp, #4]
	mov r4, r6
	add r2, r0, r6, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label288
	b label287
.p2align 4
label28:
	movw r3, #:lower16:A
	movt r3, #:upper16:A
	add r3, r3, r5, lsl #12
	ldr r3, [r3, r4, lsl #2]
	cmp r3, #0
	bne label178
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label28
	b label548
.p2align 4
label228:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label28
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label166
label575:
	ldr r6, [sp, #4]
	mov r2, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label38
	b label233
.p2align 4
label178:
	add r8, r0, r5, lsl #12
	ldr r7, [sp, #8]
	cmp r7, #4
	ble label184
	ldr r6, [sp, #4]
.p2align 4
label31:
	add r7, r8, r6, lsl #2
	add r9, r2, r6, lsl #2
	ldr r10, [r7, #0]
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
	ldr r9, [r9, #12]
	mla r9, r3, r9, r10
	str r9, [r7, #12]
	add r7, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r7
	ble label215
	mov r6, r7
	b label31
.p2align 4
label215:
	add r6, r8, r7, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label229
	b label550
.p2align 4
label33:
	add r6, r8, r7, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	ble label228
.p2align 4
label229:
	mov r7, r6
	b label33
.p2align 4
label184:
	ldr r6, [sp, #4]
	mov r7, r6
	add r6, r8, r6, lsl #2
	ldr r9, [r6, #0]
	ldr r10, [r2, r7, lsl #2]
	mla r9, r3, r10, r9
	str r9, [r6, #0]
	add r6, r7, #1
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label229
	add r5, r5, #1
	cmp r7, r5
	bgt label28
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label166
	b label575
.p2align 4
label38:
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r3, r6, r2, lsl #12
	cmp r7, #4
	ble label238
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label241
	ldr r6, [sp, #4]
	mov r5, r6
.p2align 4
label40:
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	add r5, r5, #16
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	str r6, [r4, #16]
	str r6, [r4, #20]
	str r6, [r4, #24]
	str r6, [r4, #28]
	str r6, [r4, #32]
	str r6, [r4, #36]
	str r6, [r4, #40]
	str r6, [r4, #44]
	str r6, [r4, #48]
	str r6, [r4, #52]
	str r6, [r4, #56]
	str r6, [r4, #60]
	ldr r4, [sp, #12]
	cmp r4, r5
	bgt label40
.p2align 4
label42:
	add r4, r3, r5, lsl #2
	ldr r6, [sp, #4]
	add r5, r5, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label42
	mov r4, r5
.p2align 4
label44:
	ldr r6, [sp, #4]
	str r6, [r3, r4, lsl #2]
	ldr r7, [sp, #8]
	add r4, r4, #1
	cmp r7, r4
	bgt label44
.p2align 4
label46:
	add r2, r2, #1
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label38
.p2align 4
label556:
	ldr r6, [sp, #4]
	mov r4, r6
	add r2, r0, r6, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label288
label287:
	add r1, r1, #1
	cmp r1, #5
	blt label11
	b label557
.p2align 4
label65:
	add r2, r1, r6, lsl #2
	ldr r3, [r2, #0]
	add r3, r4, r3
	ldr r4, [r2, #4]
	add r3, r3, r4
	ldr r4, [r2, #8]
	ldr r2, [r2, #12]
	add r3, r3, r4
	add r2, r3, r2
	add r3, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label386
	mov r4, r2
	mov r6, r3
	b label65
.p2align 4
label440:
	mov r4, r2
	b label65
.p2align 4
label351:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label52
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label288
label582:
	add r1, r1, #1
	cmp r1, #5
	blt label11
	b label557
.p2align 4
label550:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label28
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label166
	b label575
.p2align 4
label562:
	add r5, r5, #1
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label52
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	cmp r7, r4
	bgt label288
	b label582
.p2align 4
label51:
	add r4, r4, #1
	add r2, r0, r4, lsl #12
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label288
	add r1, r1, #1
	cmp r1, #5
	blt label11
	b label557
.p2align 4
label238:
	ldr r6, [sp, #4]
	mov r4, r6
	str r6, [r3, r6, lsl #2]
	ldr r7, [sp, #8]
	add r4, r6, #1
	cmp r7, r4
	bgt label44
	add r2, r2, #1
	cmp r7, r2
	bgt label38
	b label556
.p2align 4
label127:
	ldr r6, [sp, #4]
	mov r5, r6
	add r4, r3, r6, lsl #2
	add r5, r6, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label22
	mov r4, r5
	ldr r6, [sp, #4]
	str r6, [r3, r5, lsl #2]
	ldr r7, [sp, #8]
	add r4, r5, #1
	cmp r7, r4
	bgt label16
	b label545
.p2align 4
label241:
	ldr r6, [sp, #4]
	mov r5, r6
	add r4, r3, r6, lsl #2
	add r5, r6, #4
	str r6, [r4, #0]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label42
	mov r4, r5
	ldr r6, [sp, #4]
	str r6, [r3, r5, lsl #2]
	ldr r7, [sp, #8]
	add r4, r5, #1
	cmp r7, r4
	bgt label44
	b label46
label365:
	ldr r6, [sp, #4]
	mov r2, r4
	ldr r3, [r1, r6, lsl #2]
	ldr r7, [sp, #8]
	add r6, r6, #1
	add r2, r4, r3
	cmp r7, r6
	bgt label71
	b label74
.p2align 4
label565:
	add r0, r0, #1
	mov r4, r2
	ldr r7, [sp, #8]
	cmp r7, r0
	bgt label63
	b label75
label165:
	ldr r6, [sp, #4]
	mov r2, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label38
	b label233
.p2align 4
label169:
	add r4, r4, #1
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label166
	b label165
label111:
	ldr r6, [sp, #4]
	mov r4, r6
	movw r6, #:lower16:B
	movt r6, #:upper16:B
	ldr r7, [sp, #8]
	add r2, r6, r4, lsl #12
	cmp r7, r4
	bgt label166
	b label165
label368:
	ldr r6, [sp, #4]
	b label65
