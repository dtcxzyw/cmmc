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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	sub r5, r0, #18
	str r0, [sp, #4]
	mov r7, r0
	sub r6, r0, #3
	str r6, [sp, #0]
	str r5, [sp, #8]
	mov r5, #0
	cmp r0, r5
	bgt label5
	b label187
.p2align 4
label9:
	add r5, r5, #1
	add r4, r4, #4096
	ldr r7, [sp, #4]
	cmp r7, r5
	ble label187
.p2align 4
label5:
	mov r6, r4
	mov r7, #0
.p2align 4
label6:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	ble label9
	add r6, r6, #4
	mov r7, r0
	b label6
label187:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r5, #0
	mov r4, r7
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label15
	b label21
.p2align 4
label19:
	add r6, r6, #4
	mov r7, r0
.p2align 4
label16:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label19
	add r5, r5, #1
	add r4, r4, #4096
	cmp r7, r5
	ble label21
.p2align 4
label15:
	mov r6, r4
	mov r7, #0
	b label16
label21:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	b label22
.p2align 4
label676:
	add r3, r3, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label86
label674:
	add r0, r0, #1
	cmp r0, #5
	bge label673
.p2align 4
label22:
	movw r7, #:lower16:C
	movt r7, #:upper16:C
	mov r2, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label27
	b label213
.p2align 4
label102:
	add r6, r6, #4
	mov r7, r8
.p2align 4
label98:
	ldr r8, [r6, #0]
	ldr r9, [r1, r7, lsl #2]
	mla r8, r2, r9, r8
	str r8, [r6, #0]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label102
	add r4, r4, #4096
	mov r6, r5
	cmp r7, r5
	ble label676
.p2align 4
label91:
	ldr r2, [r4, r3, lsl #2]
	add r5, r6, #1
	cmp r2, #0
	bne label92
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label91
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	ble label711
.p2align 4
label86:
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	mov r6, #0
	ldr r7, [sp, #4]
	cmp r7, r6
	bgt label91
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label86
	b label674
.p2align 4
label92:
	ldr r7, [sp, #4]
	cmp r7, #1
	blt label93
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	add r8, r7, r6, lsl #12
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label378
	mov r7, r8
	mov r6, #0
.p2align 4
label105:
	add r9, r1, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r9, #0]
	mla r10, r2, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r2, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r2, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r9, [r9, #12]
	mla r9, r2, r9, r10
	str r9, [r7, #12]
	add r9, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r9
	ble label427
	add r7, r7, #16
	mov r6, r9
	b label105
.p2align 4
label427:
	ldr r7, [sp, #4]
	cmp r7, r9
	ble label678
.p2align 4
label97:
	add r6, r8, r9, lsl #2
	mov r7, r9
	b label98
.p2align 4
label268:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	ble label665
.p2align 4
label27:
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label216
	ldr r6, [sp, #0]
	cmp r6, #15
	ble label219
	mov r3, r1
	mov r4, #0
.p2align 4
label38:
	add r4, r4, #16
	mov r5, #0
	str r5, [r3, #0]
	str r5, [r3, #4]
	str r5, [r3, #8]
	str r5, [r3, #12]
	str r5, [r3, #16]
	str r5, [r3, #20]
	str r5, [r3, #24]
	str r5, [r3, #28]
	str r5, [r3, #32]
	str r5, [r3, #36]
	str r5, [r3, #40]
	str r5, [r3, #44]
	str r5, [r3, #48]
	str r5, [r3, #52]
	str r5, [r3, #56]
	str r5, [r3, #60]
	ldr r5, [sp, #8]
	cmp r5, r4
	ble label254
	add r3, r3, #64
	b label38
.p2align 4
label378:
	mov r9, #0
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label97
	add r4, r4, #4096
	mov r6, r5
	cmp r7, r5
	bgt label91
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label86
	b label674
.p2align 4
label254:
	mov r5, r4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label663
.p2align 4
label32:
	add r3, r1, r5, lsl #2
	mov r4, r5
	b label33
.p2align 4
label36:
	add r3, r3, #16
.p2align 4
label33:
	add r4, r4, #4
	mov r5, #0
	str r5, [r3, #0]
	str r5, [r3, #4]
	str r5, [r3, #8]
	str r5, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label36
	ldr r7, [sp, #4]
	cmp r7, r4
	ble label662
.p2align 4
label45:
	add r3, r1, r4, lsl #2
.p2align 4
label46:
	add r4, r4, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	ble label268
	add r3, r3, #4
	b label46
.p2align 4
label93:
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label91
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label86
	b label674
.p2align 4
label678:
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label91
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label86
	b label674
.p2align 4
label219:
	mov r5, #0
	mov r4, r5
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label32
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label45
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label27
	b label213
.p2align 4
label663:
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label45
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label27
	b label213
.p2align 4
label216:
	mov r4, #0
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label45
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label27
	b label213
label673:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r4, #0
	mov r0, r7
	mov r1, r4
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label116
	b label150
.p2align 4
label454:
	mov r4, r3
	add r1, r1, #1
	ldr r7, [sp, #4]
	add r0, r0, #4096
	cmp r7, r1
	ble label150
.p2align 4
label116:
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label441
	ldr r6, [sp, #0]
	cmp r6, #15
	ble label460
	mov r2, r0
	mov r3, #0
.p2align 4
label145:
	ldr r5, [r2, #0]
	add r3, r3, #16
	add r4, r4, r5
	ldr r5, [r2, #4]
	add r4, r4, r5
	ldr r5, [r2, #8]
	add r4, r4, r5
	ldr r5, [r2, #12]
	add r4, r4, r5
	ldr r5, [r2, #16]
	add r4, r4, r5
	ldr r5, [r2, #20]
	add r4, r4, r5
	ldr r5, [r2, #24]
	add r4, r4, r5
	ldr r5, [r2, #28]
	add r4, r4, r5
	ldr r5, [r2, #32]
	add r4, r4, r5
	ldr r5, [r2, #36]
	add r4, r4, r5
	ldr r5, [r2, #40]
	add r4, r4, r5
	ldr r5, [r2, #44]
	add r4, r4, r5
	ldr r5, [r2, #48]
	add r4, r4, r5
	ldr r5, [r2, #52]
	add r4, r4, r5
	ldr r5, [r2, #56]
	add r4, r4, r5
	ldr r5, [r2, #60]
	add r4, r4, r5
	ldr r5, [sp, #8]
	cmp r5, r3
	ble label535
	add r2, r2, #64
	b label145
.p2align 4
label535:
	mov r5, r3
	mov r7, r4
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label683
.p2align 4
label138:
	add r2, r0, r5, lsl #2
	mov r4, r7
	mov r3, r5
.p2align 4
label139:
	ldr r5, [r2, #0]
	add r3, r3, #4
	add r4, r4, r5
	ldr r5, [r2, #4]
	add r4, r4, r5
	ldr r5, [r2, #8]
	add r4, r4, r5
	ldr r5, [r2, #12]
	ldr r6, [sp, #0]
	add r4, r4, r5
	cmp r6, r3
	ble label482
	add r2, r2, #16
	b label139
.p2align 4
label482:
	mov r2, r4
	ldr r7, [sp, #4]
	mov r4, r3
	mov r3, r2
	cmp r7, r4
	ble label682
.p2align 4
label121:
	add r2, r0, r4, lsl #2
.p2align 4
label122:
	ldr r5, [r2, #0]
	add r4, r4, #1
	ldr r7, [sp, #4]
	add r3, r3, r5
	cmp r7, r4
	ble label454
	add r2, r2, #4
	b label122
label441:
	mov r3, r4
	mov r4, #0
	mov r2, r4
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label121
	add r1, r1, #1
	add r0, r0, #4096
	cmp r7, r1
	bgt label116
	b label150
.p2align 4
label683:
	mov r2, r4
	ldr r7, [sp, #4]
	mov r4, r3
	mov r3, r2
	cmp r7, r4
	bgt label121
	mov r4, r2
	add r1, r1, #1
	add r0, r0, #4096
	cmp r7, r1
	bgt label116
	b label150
label460:
	mov r5, #0
	mov r7, r4
	mov r3, r5
	mov r4, r5
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label138
	mov r2, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label121
	add r1, r1, #1
	add r0, r0, #4096
	cmp r7, r1
	bgt label116
	b label150
.p2align 4
label662:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label27
label213:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r3, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label54
	b label273
.p2align 4
label75:
	add r6, r6, #4
	mov r7, r8
.p2align 4
label71:
	ldr r8, [r6, #0]
	ldr r9, [r1, r7, lsl #2]
	mla r8, r2, r9, r8
	str r8, [r6, #0]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label75
	add r4, r4, #4096
	mov r6, r5
	cmp r7, r5
	ble label670
.p2align 4
label58:
	ldr r2, [r4, r3, lsl #2]
	add r5, r6, #1
	cmp r2, #0
	bne label59
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label58
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	ble label705
.p2align 4
label54:
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	mov r6, #0
	ldr r7, [sp, #4]
	cmp r7, r6
	bgt label58
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label54
	b label273
.p2align 4
label59:
	ldr r7, [sp, #4]
	cmp r7, #1
	blt label60
	movw r7, #:lower16:C
	movt r7, #:upper16:C
	add r8, r7, r6, lsl #12
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label294
	mov r7, r8
	mov r6, #0
.p2align 4
label63:
	add r9, r1, r6, lsl #2
	ldr r10, [r7, #0]
	ldr r11, [r9, #0]
	mla r10, r2, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r2, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r2, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r9, [r9, #12]
	mla r9, r2, r9, r10
	str r9, [r7, #12]
	add r9, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r9
	ble label323
	add r7, r7, #16
	mov r6, r9
	b label63
.p2align 4
label323:
	ldr r7, [sp, #4]
	cmp r7, r9
	ble label668
.p2align 4
label70:
	add r6, r8, r9, lsl #2
	mov r7, r9
	b label71
.p2align 4
label60:
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label58
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label54
	b label273
.p2align 4
label294:
	mov r9, #0
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label70
	add r4, r4, #4096
	mov r6, r5
	cmp r7, r5
	bgt label58
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label54
	b label273
.p2align 4
label668:
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label58
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label54
	b label273
.p2align 4
label670:
	add r3, r3, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label54
label273:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r2, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label151
	b label698
.p2align 4
label173:
	add r3, r3, #4
.p2align 4
label170:
	add r4, r4, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label173
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	ble label690
.p2align 4
label151:
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label539
	ldr r6, [sp, #0]
	cmp r6, #15
	ble label542
	mov r3, r1
	mov r4, #0
	b label154
.p2align 4
label157:
	add r3, r3, #64
.p2align 4
label154:
	add r4, r4, #16
	mov r5, #0
	str r5, [r3, #0]
	str r5, [r3, #4]
	str r5, [r3, #8]
	str r5, [r3, #12]
	str r5, [r3, #16]
	str r5, [r3, #20]
	str r5, [r3, #24]
	str r5, [r3, #28]
	str r5, [r3, #32]
	str r5, [r3, #36]
	str r5, [r3, #40]
	str r5, [r3, #44]
	str r5, [r3, #48]
	str r5, [r3, #52]
	str r5, [r3, #56]
	str r5, [r3, #60]
	ldr r5, [sp, #8]
	cmp r5, r4
	bgt label157
	mov r5, r4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label686
.p2align 4
label161:
	add r3, r1, r5, lsl #2
	mov r4, r5
.p2align 4
label162:
	add r4, r4, #4
	mov r5, #0
	str r5, [r3, #0]
	str r5, [r3, #4]
	str r5, [r3, #8]
	str r5, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label577
	add r3, r3, #16
	b label162
.p2align 4
label577:
	ldr r7, [sp, #4]
	cmp r7, r4
	ble label688
.p2align 4
label169:
	add r3, r1, r4, lsl #2
	b label170
.p2align 4
label686:
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label169
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label151
	b label698
.p2align 4
label539:
	mov r4, #0
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label169
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label151
	b label698
.p2align 4
label542:
	mov r5, #0
	ldr r6, [sp, #0]
	mov r4, r5
	cmp r6, r5
	bgt label161
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label169
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label151
	b label698
.p2align 4
label688:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label151
label698:
	movw r7, #:lower16:C
	movt r7, #:upper16:C
	mov r3, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label86
	b label355
label150:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label711:
	add r0, r0, #1
	cmp r0, #5
	blt label22
	b label673
.p2align 4
label682:
	mov r4, r2
	add r1, r1, #1
	ldr r7, [sp, #4]
	add r0, r0, #4096
	cmp r7, r1
	bgt label116
	b label150
label690:
	movw r7, #:lower16:C
	movt r7, #:upper16:C
	mov r3, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label86
label355:
	add r0, r0, #1
	cmp r0, #5
	blt label22
	b label673
label665:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r3, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label54
	b label273
label705:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r2, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label151
	b label698
