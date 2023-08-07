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
	ble label5
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
	bgt label148
	add r5, r5, #1
	add r4, r4, #4096
	cmp r7, r5
	bgt label143
	b label5
.p2align 4
label148:
	add r6, r6, #4
	mov r7, r0
	b label144
label5:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r5, #0
	mov r4, r3
	ldr r7, [sp, #4]
	cmp r7, r5
	ble label15
.p2align 4
label9:
	mov r6, r4
	mov r7, #0
.p2align 4
label10:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label13
	add r5, r5, #1
	add r4, r4, #4096
	cmp r7, r5
	bgt label9
	b label15
.p2align 4
label13:
	add r6, r6, #4
	mov r7, r0
	b label10
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
label74:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r5, #0
	mov r0, r3
	mov r1, r5
	ldr r7, [sp, #4]
	cmp r7, r5
	bgt label79
	b label102
.p2align 4
label103:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	movw r5, #:lower16:A
	movt r5, #:upper16:A
	mov r8, #0
	ldr r7, [sp, #4]
	cmp r7, r8
	ble label108
.p2align 4
label109:
	ldr r4, [r5, r2, lsl #2]
	cmp r4, #0
	beq label122
	b label110
.p2align 4
label459:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label109
	b label617
.p2align 4
label122:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label109
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label103
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
.p2align 4
label110:
	ldr r7, [sp, #4]
	cmp r7, #4
	ble label111
	mov r7, r3
	mov r6, #0
.p2align 4
label113:
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
	ble label445
	add r7, r7, #16
	mov r6, r9
	b label113
.p2align 4
label445:
	add r6, r3, r9, lsl #2
	ldr r7, [r6, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r6, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label121
	b label616
.p2align 4
label118:
	ldr r7, [r6, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r6, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	ble label459
.p2align 4
label121:
	add r6, r6, #4
	b label118
.p2align 4
label79:
	ldr r7, [sp, #4]
	cmp r7, #4
	bgt label80
	mov r2, r0
	mov r3, #0
	ldr r4, [r0, #0]
	add r3, r3, #1
	add r5, r5, r4
	cmp r7, r3
	bgt label100
	b label397
.p2align 4
label80:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label81
	mov r2, r0
	mov r3, #0
.p2align 4
label83:
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
	ble label368
	add r2, r2, #64
	b label83
.p2align 4
label397:
	add r1, r1, #1
	add r0, r0, #4096
	ldr r7, [sp, #4]
	cmp r7, r1
	bgt label79
label102:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label111:
	mov r6, r3
	mov r9, #0
	ldr r7, [r3, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label121
	add r8, r8, #1
	add r5, r5, #4096
	add r3, r3, #4096
	cmp r7, r8
	bgt label109
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label103
	b label594
.p2align 4
label21:
	ldr r7, [sp, #4]
	cmp r7, #4
	bgt label28
	b label181
.p2align 4
label25:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label21
	b label585
.p2align 4
label28:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label192
	mov r3, r1
	mov r5, #0
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
	ble label212
	add r3, r3, #64
	b label30
.p2align 4
label22:
	mov r5, #0
	add r4, r4, #1
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label26
	b label25
.p2align 4
label585:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label45
	b label230
.p2align 4
label26:
	add r3, r3, #4
	b label22
.p2align 4
label223:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label26
.p2align 4
label607:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label21
	b label585
label608:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	mov r2, #0
	mov r1, r3
	b label70
.p2align 4
label45:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	movw r5, #:lower16:A
	movt r5, #:upper16:A
	mov r8, #0
	ldr r7, [sp, #4]
	cmp r7, r8
	ble label50
.p2align 4
label51:
	ldr r4, [r5, r2, lsl #2]
	cmp r4, #0
	beq label64
	b label52
.p2align 4
label257:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label51
	b label610
.p2align 4
label64:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label51
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label45
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	mov r1, r3
	cmp r7, r2
	bgt label123
	b label608
label70:
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label103
	b label73
.p2align 4
label52:
	ldr r7, [sp, #4]
	cmp r7, #4
	ble label53
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
	ble label287
	add r7, r7, #16
	mov r6, r9
	b label59
.p2align 4
label54:
	ldr r7, [r6, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r6, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	ble label257
.p2align 4
label57:
	add r6, r6, #4
	b label54
.p2align 4
label287:
	add r6, r3, r9, lsl #2
	ldr r7, [r6, #0]
	ldr r10, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r7, r4, r10, r7
	str r7, [r6, #0]
	ldr r7, [sp, #4]
	cmp r7, r9
	bgt label57
	add r8, r8, #1
	add r5, r5, #4096
	add r3, r3, #4096
	cmp r7, r8
	bgt label51
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label45
	b label624
.p2align 4
label123:
	ldr r7, [sp, #4]
	cmp r7, #4
	bgt label130
	b label124
.p2align 4
label471:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label123
	b label619
.p2align 4
label130:
	ldr r6, [sp, #0]
	cmp r6, #16
	bgt label132
	mov r3, r1
	mov r5, #0
	mov r4, #0
	add r5, r5, #4
	str r4, [r1, #0]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #12]
	cmp r6, r5
	bgt label141
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label128
	b label471
.p2align 4
label132:
	mov r3, r1
	mov r5, #0
.p2align 4
label133:
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
	ble label136
	add r3, r3, #64
	b label133
.p2align 4
label125:
	mov r5, #0
	add r4, r4, #1
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label128
	b label471
.p2align 4
label619:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label103
	b label73
.p2align 4
label128:
	add r3, r3, #4
	b label125
.p2align 4
label508:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label128
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label123
	b label619
.p2align 4
label212:
	add r3, r1, r5, lsl #2
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label38
	b label606
.p2align 4
label35:
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label223
.p2align 4
label38:
	add r3, r3, #16
	b label35
.p2align 4
label136:
	add r3, r1, r5, lsl #2
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label141
	b label599
.p2align 4
label138:
	mov r4, #0
	add r5, r5, #4
	str r4, [r3, #0]
	str r4, [r3, #4]
	str r4, [r3, #8]
	str r4, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label508
.p2align 4
label141:
	add r3, r3, #16
	b label138
.p2align 4
label53:
	mov r6, r3
	mov r9, #0
	b label54
.p2align 4
label93:
	add r2, r0, r3, lsl #2
	mov r5, r4
	add r3, r3, #1
	ldr r4, [r2, #0]
	ldr r7, [sp, #4]
	add r5, r5, r4
	cmp r7, r3
	bgt label100
	b label592
.p2align 4
label96:
	ldr r4, [r2, #0]
	add r3, r3, #1
	ldr r7, [sp, #4]
	add r5, r5, r4
	cmp r7, r3
	ble label397
.p2align 4
label100:
	add r2, r2, #4
	b label96
.p2align 4
label368:
	add r2, r0, r3, lsl #2
	mov r4, r5
.p2align 4
label89:
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
	ble label93
	add r2, r2, #16
	b label89
.p2align 4
label616:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #4]
	add r3, r3, #4096
	cmp r7, r8
	bgt label109
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label103
	b label630
.p2align 4
label124:
	mov r3, r1
	mov r4, #0
	b label125
.p2align 4
label606:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label26
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label21
	b label585
.p2align 4
label599:
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label128
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label123
	b label619
.p2align 4
label50:
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
	bgt label123
	b label608
.p2align 4
label108:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label103
label594:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
.p2align 4
label192:
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
	bgt label38
	add r3, r1, r5, lsl #2
	add r4, r5, #1
	mov r5, #0
	str r5, [r3, #0]
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label26
	b label607
label81:
	mov r2, r0
	mov r4, r5
	mov r3, #0
	b label89
.p2align 4
label610:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label45
label624:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label123
	b label608
.p2align 4
label617:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label103
label630:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
.p2align 4
label592:
	add r1, r1, #1
	add r0, r0, #4096
	ldr r7, [sp, #4]
	cmp r7, r1
	bgt label79
	b label102
label230:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	mov r2, #0
	ldr r7, [sp, #4]
	mov r1, r3
	cmp r7, r2
	bgt label123
	b label608
label73:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
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
label181:
	mov r3, r1
	mov r4, #0
	b label22
