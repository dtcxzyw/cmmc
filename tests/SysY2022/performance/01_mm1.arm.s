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
	movw r5, #:lower16:A
	movt r5, #:upper16:A
	sub r4, r0, #20
	str r0, [sp, #4]
	mov r7, r0
	sub r6, r0, #4
	str r6, [sp, #0]
	str r4, [sp, #8]
	mov r4, r5
	mov r5, #0
	cmp r0, r5
	bgt label5
label161:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r5, #0
	mov r4, r3
	b label12
.p2align 4
label5:
	mov r6, r4
	mov r7, #0
	b label6
.p2align 4
label9:
	add r5, r5, #1
	add r4, r4, #4096
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label5
	b label161
label12:
	ldr r7, [sp, #4]
	cmp r7, r5
	ble label15
.p2align 4
label143:
	mov r6, r4
	mov r7, #0
.p2align 4
label144:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label147
	add r5, r5, #1
	add r4, r4, #4096
	cmp r7, r5
	bgt label143
	b label15
.p2align 4
label147:
	add r6, r6, #4
	mov r7, r0
	b label144
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
label15:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
.p2align 4
label16:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	mov r2, #0
	mov r1, r3
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label21
	b label178
label597:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r5, #0
	mov r0, r3
	mov r1, r5
	b label115
.p2align 4
label98:
	ldr r4, [r5, r2, lsl #2]
	cmp r4, #0
	bne label360
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label98
	b label599
.p2align 4
label377:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label98
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label93
label623:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label597
label115:
	ldr r7, [sp, #4]
	cmp r7, r1
	bgt label119
	b label142
.p2align 4
label360:
	ldr r7, [sp, #4]
	cmp r7, #4
	ble label598
	mov r7, r3
	mov r6, #0
.p2align 4
label106:
	ldr r10, [r7, #0]
	add r9, r1, r6, lsl #2
	ldr r11, [r9, #0]
	mla r10, r4, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r4, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r4, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r9, [r9, #12]
	mla r9, r4, r9, r10
	str r9, [r7, #12]
	add r9, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r9
	ble label109
	add r7, r7, #16
	mov r6, r9
	b label106
.p2align 4
label101:
	ldr r7, [r6, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r6, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	ble label377
.p2align 4
label104:
	add r6, r6, #4
	b label101
.p2align 4
label109:
	add r6, r3, r9, lsl #2
	ldr r7, [r6, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r6, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label104
	add r8, r8, #1
	add r5, r5, #4096
	add r3, r3, #4096
	cmp r7, r8
	bgt label98
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label93
	b label623
.p2align 4
label119:
	ldr r7, [sp, #4]
	cmp r7, #4
	bgt label127
	b label120
.p2align 4
label431:
	add r1, r1, #1
	add r0, r0, #4096
	ldr r7, [sp, #4]
	cmp r7, r1
	bgt label119
	b label142
.p2align 4
label127:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label128
	mov r2, r0
	mov r3, #0
.p2align 4
label136:
	ldr r4, [r2, #0]
	add r3, r3, #16
	add r4, r5, r4
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
	add r5, r4, r5
	ldr r4, [sp, #8]
	cmp r4, r3
	ble label508
	add r2, r2, #64
	b label136
.p2align 4
label93:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	movw r5, #:lower16:A
	movt r5, #:upper16:A
	mov r8, #0
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label98
	b label353
.p2align 4
label599:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label93
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label597
.p2align 4
label21:
	ldr r7, [sp, #4]
	cmp r7, #4
	ble label181
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label184
	mov r3, r1
	mov r5, #0
	b label24
.p2align 4
label223:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label21
.p2align 4
label611:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label45
	b label230
.p2align 4
label24:
	mov r4, #0
	add r5, r5, #16
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	str r4, [r3, #32]
	str r4, [r3, #36]
	str r4, [r3, #40]
	str r4, [r3, #44]
	str r4, [r3, #48]
	str r4, [r3, #52]
	str r4, [r3, #56]
	str r4, [r3, #60]
	ldr r4, [sp, #8]
	cmp r4, r5
	ble label27
	add r3, r3, #64
	b label24
.p2align 4
label27:
	add r3, r1, r5, lsl #2
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label33
	b label585
.p2align 4
label30:
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label215
.p2align 4
label33:
	add r3, r3, #16
	b label30
.p2align 4
label215:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label39
	b label610
.p2align 4
label36:
	mov r5, #0
	add r4, r4, #1
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	ble label223
.p2align 4
label39:
	add r3, r3, #4
	b label36
.p2align 4
label45:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	movw r5, #:lower16:A
	movt r5, #:upper16:A
	mov r8, #0
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label50
	b label234
.p2align 4
label589:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label45
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	mov r1, r3
	cmp r7, r2
	bgt label69
	b label297
.p2align 4
label50:
	ldr r4, [r5, r2, lsl #2]
	cmp r4, #0
	bne label241
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label50
	b label589
.p2align 4
label258:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label50
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label45
label615:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label69
	b label297
.p2align 4
label241:
	ldr r7, [sp, #4]
	cmp r7, #4
	ble label588
	mov r7, r3
	mov r6, #0
.p2align 4
label59:
	ldr r10, [r7, #0]
	add r9, r1, r6, lsl #2
	ldr r11, [r9, #0]
	mla r10, r4, r11, r10
	str r10, [r7, #0]
	ldr r10, [r7, #4]
	ldr r11, [r9, #4]
	mla r10, r4, r11, r10
	str r10, [r7, #4]
	ldr r10, [r7, #8]
	ldr r11, [r9, #8]
	mla r10, r4, r11, r10
	str r10, [r7, #8]
	ldr r10, [r7, #12]
	ldr r9, [r9, #12]
	mla r9, r4, r9, r10
	str r9, [r7, #12]
	add r9, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r9
	ble label288
	add r7, r7, #16
	mov r6, r9
	b label59
.p2align 4
label53:
	ldr r7, [r6, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r6, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	ble label258
.p2align 4
label56:
	add r6, r6, #4
	b label53
.p2align 4
label288:
	add r6, r3, r9, lsl #2
	ldr r7, [r6, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r6, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label56
	add r8, r8, #1
	add r5, r5, #4096
	add r3, r3, #4096
	cmp r7, r8
	bgt label50
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label45
	b label615
.p2align 4
label69:
	ldr r7, [sp, #4]
	cmp r7, #4
	bgt label76
	b label70
.p2align 4
label305:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label69
	b label618
.p2align 4
label76:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label77
	mov r3, r1
	mov r5, #0
.p2align 4
label84:
	mov r4, #0
	add r5, r5, #16
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	str r4, [r3, #16]
	str r4, [r3, #20]
	str r4, [r3, #24]
	str r4, [r3, #28]
	str r4, [r3, #32]
	str r4, [r3, #36]
	str r4, [r3, #40]
	str r4, [r3, #44]
	str r4, [r3, #48]
	str r4, [r3, #52]
	str r4, [r3, #56]
	str r4, [r3, #60]
	ldr r4, [sp, #8]
	cmp r4, r5
	ble label87
	add r3, r3, #64
	b label84
label297:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label93
	b label349
.p2align 4
label71:
	mov r5, #0
	add r4, r4, #1
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	ble label305
.p2align 4
label74:
	add r3, r3, #4
	b label71
.p2align 4
label81:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label74
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label69
	b label297
.p2align 4
label78:
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label81
.p2align 4
label82:
	add r3, r3, #16
	b label78
.p2align 4
label87:
	add r3, r1, r5, lsl #2
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label82
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label74
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label69
	b label297
.p2align 4
label598:
	mov r6, r3
	mov r9, #0
	ldr r7, [r3, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label104
	add r8, r8, #1
	add r5, r5, #4096
	add r3, r3, #4096
	cmp r7, r8
	bgt label98
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label93
	b label623
.p2align 4
label588:
	mov r6, r3
	mov r9, #0
	ldr r7, [r3, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label56
	add r8, r8, #1
	add r5, r5, #4096
	add r3, r3, #4096
	cmp r7, r8
	bgt label50
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label45
	b label615
.p2align 4
label70:
	mov r3, r1
	mov r4, #0
	b label71
.p2align 4
label77:
	mov r3, r1
	mov r5, #0
	b label78
.p2align 4
label585:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label39
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label21
	b label611
.p2align 4
label181:
	mov r3, r1
	mov r4, #0
	mov r5, #0
	add r4, r4, #1
	str r5, [r1, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label39
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label21
	b label611
.p2align 4
label184:
	mov r3, r1
	mov r5, #0
	mov r4, #0
	add r5, r5, #4
	str r4, [r1, #0]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label33
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label39
.p2align 4
label610:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label21
	b label611
label120:
	mov r2, r0
	mov r3, #0
.p2align 4
label121:
	ldr r4, [r2, #0]
	add r3, r3, #1
	ldr r7, [sp, #4]
	add r5, r5, r4
	cmp r7, r3
	ble label431
.p2align 4
label125:
	add r2, r2, #4
	b label121
.p2align 4
label453:
	add r2, r0, r3, lsl #2
	mov r5, r4
	add r3, r3, #1
	ldr r4, [r2, #0]
	ldr r7, [sp, #4]
	add r5, r5, r4
	cmp r7, r3
	bgt label125
	add r1, r1, #1
	add r0, r0, #4096
	cmp r7, r1
	bgt label119
	b label142
label128:
	mov r2, r0
	mov r4, r5
	mov r3, #0
.p2align 4
label129:
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
	ble label453
	add r2, r2, #16
	b label129
label142:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label349:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label597
.p2align 4
label353:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label93
	b label349
label230:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label69
	b label297
.p2align 4
label234:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label45
	b label230
label618:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label93
	b label349
label178:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label45
	b label230
.p2align 4
label508:
	add r2, r0, r3, lsl #2
	mov r4, r5
	b label129
