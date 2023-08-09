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
	sub r4, r0, #18
	str r0, [sp, #4]
	mov r7, r0
	sub r6, r0, #3
	str r6, [sp, #0]
	str r4, [sp, #8]
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	cmp r0, r5
	bgt label5
	b label187
.p2align 4
label10:
	add r6, r6, #4
	mov r7, r0
.p2align 4
label6:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label10
	add r5, r5, #1
	add r4, r4, #4096
	cmp r7, r5
	ble label187
.p2align 4
label5:
	mov r6, r4
	mov r7, #0
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
label703:
	add r3, r3, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label62
label700:
	add r0, r0, #1
	cmp r0, #5
	bge label667
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
label75:
	add r6, r6, #4
	mov r7, r8
.p2align 4
label72:
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
	ble label703
.p2align 4
label66:
	ldr r2, [r4, r3, lsl #2]
	add r5, r6, #1
	cmp r2, #0
	bne label67
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label66
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	ble label705
.p2align 4
label62:
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	mov r6, #0
	ldr r7, [sp, #4]
	cmp r7, r6
	bgt label66
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label62
	b label700
.p2align 4
label67:
	ldr r7, [sp, #4]
	cmp r7, #1
	blt label296
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	add r8, r7, r6, lsl #12
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label301
	mov r7, r8
	mov r6, #0
	b label79
.p2align 4
label82:
	add r7, r7, #16
	mov r6, r9
.p2align 4
label79:
	ldr r10, [r7, #0]
	add r9, r1, r6, lsl #2
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
	bgt label82
	ldr r7, [sp, #4]
	cmp r7, r9
	ble label670
.p2align 4
label71:
	add r6, r8, r9, lsl #2
	mov r7, r9
	b label72
.p2align 4
label49:
	add r3, r3, #4
.p2align 4
label46:
	mov r5, #0
	add r4, r4, #1
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label49
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	ble label666
.p2align 4
label27:
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label216
	ldr r6, [sp, #0]
	cmp r6, #15
	ble label219
	mov r3, r1
	mov r5, #0
	b label30
.p2align 4
label33:
	add r3, r3, #64
.p2align 4
label30:
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
	bgt label33
	mov r4, r5
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label662
.p2align 4
label37:
	add r3, r1, r4, lsl #2
	b label38
.p2align 4
label41:
	add r3, r3, #16
.p2align 4
label38:
	mov r5, #0
	add r4, r4, #4
	str r5, [r3, #0]
	str r5, [r3, #4]
	str r5, [r3, #8]
	str r5, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label41
	ldr r7, [sp, #4]
	cmp r7, r4
	ble label664
.p2align 4
label45:
	add r3, r1, r4, lsl #2
	b label46
.p2align 4
label301:
	mov r9, #0
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label71
	add r4, r4, #4096
	mov r6, r5
	cmp r7, r5
	bgt label66
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label62
	b label700
.p2align 4
label670:
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label66
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label62
	b label700
.p2align 4
label662:
	mov r4, r5
	ldr r7, [sp, #4]
	cmp r7, r5
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
.p2align 4
label219:
	mov r4, #0
	ldr r6, [sp, #0]
	mov r5, r4
	cmp r6, r4
	bgt label37
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label45
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label27
	b label213
.p2align 4
label296:
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label66
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label62
	b label700
label667:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r5, #0
	mov r0, r7
	mov r1, r5
label88:
	ldr r7, [sp, #4]
	cmp r7, r1
	bgt label92
	b label126
.p2align 4
label459:
	mov r5, r3
	add r1, r1, #1
	ldr r7, [sp, #4]
	add r0, r0, #4096
	cmp r7, r1
	ble label126
.p2align 4
label92:
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label367
	ldr r6, [sp, #0]
	cmp r6, #15
	ble label370
	mov r2, r0
	mov r3, #0
	b label109
.p2align 4
label113:
	add r2, r2, #64
.p2align 4
label109:
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
	bgt label113
	mov r7, r3
	mov r4, r5
	ldr r6, [sp, #0]
	cmp r6, r3
	ble label677
.p2align 4
label102:
	add r2, r0, r7, lsl #2
	mov r3, r7
.p2align 4
label103:
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
	ble label392
	add r2, r2, #16
	b label103
.p2align 4
label392:
	mov r2, r4
	ldr r7, [sp, #4]
	mov r5, r4
	mov r4, r3
	cmp r7, r3
	ble label676
.p2align 4
label118:
	add r2, r0, r4, lsl #2
	mov r3, r5
.p2align 4
label119:
	ldr r5, [r2, #0]
	add r4, r4, #1
	ldr r7, [sp, #4]
	add r3, r3, r5
	cmp r7, r4
	ble label459
	add r2, r2, #4
	b label119
label370:
	mov r7, #0
	mov r4, r5
	mov r3, r7
	mov r5, r7
	ldr r6, [sp, #0]
	cmp r6, r7
	bgt label102
	mov r2, r7
	mov r4, r7
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label118
	mov r5, r2
	add r1, r1, #1
	add r0, r0, #4096
	cmp r7, r1
	bgt label92
	b label126
.p2align 4
label677:
	mov r2, r5
	mov r4, r3
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label118
	add r1, r1, #1
	add r0, r0, #4096
	cmp r7, r1
	bgt label92
	b label126
label367:
	mov r4, #0
	ldr r7, [sp, #4]
	mov r2, r4
	cmp r7, r4
	bgt label118
	mov r5, r4
	add r1, r1, #1
	add r0, r0, #4096
	b label88
.p2align 4
label664:
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
	bgt label150
	b label693
.p2align 4
label172:
	add r6, r6, #4
	mov r7, r8
.p2align 4
label168:
	ldr r8, [r6, #0]
	ldr r9, [r1, r7, lsl #2]
	mla r8, r2, r9, r8
	str r8, [r6, #0]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label172
	add r4, r4, #4096
	mov r6, r5
	cmp r7, r5
	ble label690
.p2align 4
label154:
	ldr r2, [r4, r3, lsl #2]
	add r5, r6, #1
	cmp r2, #0
	bne label530
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label154
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	ble label713
.p2align 4
label150:
	movw r4, #:lower16:A
	movt r4, #:upper16:A
	mov r6, #0
	ldr r7, [sp, #4]
	cmp r7, r6
	bgt label154
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label150
	b label693
.p2align 4
label530:
	ldr r7, [sp, #4]
	cmp r7, #1
	blt label684
	movw r7, #:lower16:C
	movt r7, #:upper16:C
	add r8, r7, r6, lsl #12
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label540
	mov r7, r8
	mov r6, #0
.p2align 4
label160:
	ldr r10, [r7, #0]
	add r9, r1, r6, lsl #2
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
	ble label569
	add r7, r7, #16
	mov r6, r9
	b label160
.p2align 4
label569:
	ldr r7, [sp, #4]
	cmp r7, r9
	ble label688
.p2align 4
label167:
	add r6, r8, r9, lsl #2
	mov r7, r9
	b label168
.p2align 4
label540:
	mov r9, #0
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label167
	add r4, r4, #4096
	mov r6, r5
	cmp r7, r5
	bgt label154
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label150
	b label693
.p2align 4
label688:
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label154
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label150
	b label693
.p2align 4
label690:
	add r3, r3, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label150
label693:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r2, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label127
	b label58
.p2align 4
label135:
	add r3, r3, #4
.p2align 4
label132:
	mov r5, #0
	add r4, r4, #1
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label135
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	ble label680
.p2align 4
label127:
	ldr r7, [sp, #4]
	cmp r7, #3
	ble label465
	ldr r6, [sp, #0]
	cmp r6, #15
	ble label482
	mov r3, r1
	mov r5, #0
	b label146
.p2align 4
label149:
	add r3, r3, #64
.p2align 4
label146:
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
	bgt label149
	mov r4, r5
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label683
.p2align 4
label140:
	add r3, r1, r4, lsl #2
.p2align 4
label141:
	mov r5, #0
	add r4, r4, #4
	str r5, [r3, #0]
	str r5, [r3, #4]
	str r5, [r3, #8]
	str r5, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label496
	add r3, r3, #16
	b label141
.p2align 4
label496:
	ldr r7, [sp, #4]
	cmp r7, r4
	ble label682
.p2align 4
label131:
	add r3, r1, r4, lsl #2
	b label132
.p2align 4
label465:
	mov r4, #0
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label131
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label127
	b label58
.p2align 4
label482:
	mov r4, #0
	mov r5, r4
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label140
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label131
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label127
	b label58
.p2align 4
label683:
	mov r4, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label131
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label127
	b label58
.p2align 4
label684:
	add r4, r4, #4096
	mov r6, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label154
	add r3, r3, #1
	add r1, r1, #4096
	cmp r7, r3
	bgt label150
	b label693
.p2align 4
label682:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label127
label58:
	movw r7, #:lower16:C
	movt r7, #:upper16:C
	mov r3, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label62
	b label281
label126:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label705:
	add r0, r0, #1
	cmp r0, #5
	blt label22
	b label667
.p2align 4
label676:
	mov r5, r2
	add r1, r1, #1
	ldr r7, [sp, #4]
	add r0, r0, #4096
	cmp r7, r1
	bgt label92
	b label126
label666:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r3, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label150
	b label693
label680:
	movw r7, #:lower16:C
	movt r7, #:upper16:C
	mov r3, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r3
	bgt label62
label281:
	add r0, r0, #1
	cmp r0, #5
	blt label22
	b label667
label713:
	movw r7, #:lower16:B
	movt r7, #:upper16:B
	mov r2, #0
	mov r1, r7
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label127
	b label58
