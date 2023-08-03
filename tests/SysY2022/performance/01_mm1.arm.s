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
	sub r5, r0, #20
	sub r6, r0, #4
	str r0, [sp, #8]
	mov r7, r0
	str r6, [sp, #0]
	str r5, [sp, #12]
	movw r5, #:lower16:A
	movt r5, #:upper16:A
	mov r4, r5
	mov r5, #0
	str r5, [sp, #4]
	mov r6, r5
	cmp r0, r5
	ble label159
.p2align 4
label5:
	mov r8, r4
	ldr r6, [sp, #4]
.p2align 4
label6:
	bl getint
	str r0, [r8, #0]
	ldr r7, [sp, #8]
	add r0, r6, #1
	cmp r7, r0
	bgt label10
	add r5, r5, #1
	add r4, r4, #4096
	cmp r7, r5
	bgt label5
	b label159
.p2align 4
label10:
	add r8, r8, #4
	mov r6, r0
	b label6
label159:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	ldr r6, [sp, #4]
	mov r4, r3
	mov r5, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label143
label15:
	mov r0, #65
	bl _sysy_starttime
	ldr r6, [sp, #4]
	mov r0, r6
	b label16
.p2align 4
label143:
	mov r8, r4
	ldr r6, [sp, #4]
	b label144
.p2align 4
label517:
	add r5, r5, #1
	add r4, r4, #4096
	ldr r7, [sp, #8]
	cmp r7, r5
	bgt label143
	b label15
.p2align 4
label144:
	bl getint
	str r0, [r8, #0]
	ldr r7, [sp, #8]
	add r0, r6, #1
	cmp r7, r0
	ble label517
	add r8, r8, #4
	mov r6, r0
	b label144
.p2align 4
label16:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	ldr r6, [sp, #4]
	mov r1, r3
	mov r2, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label21
	b label178
.p2align 4
label103:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	movw r5, #:lower16:A
	movt r5, #:upper16:A
	ldr r6, [sp, #4]
	mov r8, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label108
	b label404
.p2align 4
label601:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label103
	add r0, r0, #1
	cmp r0, #5
	blt label16
label74:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	ldr r6, [sp, #4]
	mov r0, r3
	mov r1, r6
	mov r4, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label79
	b label102
.p2align 4
label108:
	ldr r4, [r5, r2, lsl #2]
	cmp r4, #0
	bne label411
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #8]
	add r3, r3, #4096
	cmp r7, r8
	bgt label108
	b label601
.p2align 4
label428:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #8]
	add r3, r3, #4096
	cmp r7, r8
	bgt label108
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label103
label624:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
.p2align 4
label411:
	ldr r7, [sp, #8]
	cmp r7, #4
	ble label600
	mov r7, r3
	ldr r6, [sp, #4]
.p2align 4
label117:
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
	ble label120
	add r7, r7, #16
	mov r6, r9
	b label117
.p2align 4
label112:
	ldr r6, [r10, #0]
	ldr r7, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r6, r4, r7, r6
	str r6, [r10, #0]
	ldr r7, [sp, #8]
	cmp r7, r9
	ble label428
.p2align 4
label115:
	add r10, r10, #4
	b label112
.p2align 4
label120:
	add r10, r3, r9, lsl #2
	ldr r6, [r10, #0]
	ldr r7, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r6, r4, r7, r6
	str r6, [r10, #0]
	ldr r7, [sp, #8]
	cmp r7, r9
	bgt label115
	add r8, r8, #1
	add r5, r5, #4096
	add r3, r3, #4096
	cmp r7, r8
	bgt label108
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label103
	b label624
.p2align 4
label79:
	ldr r7, [sp, #8]
	cmp r7, #4
	bgt label80
	mov r2, r0
	ldr r6, [sp, #4]
	ldr r3, [r0, #0]
	add r4, r4, r3
	add r3, r6, #1
	cmp r7, r3
	bgt label100
	b label397
.p2align 4
label80:
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label81
	mov r2, r0
	ldr r6, [sp, #4]
	mov r3, r4
.p2align 4
label89:
	ldr r4, [r2, #0]
	add r6, r6, #16
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
	add r3, r3, r4
	ldr r4, [r2, #60]
	ldr r5, [sp, #12]
	add r3, r3, r4
	cmp r5, r6
	ble label93
	add r2, r2, #64
	b label89
.p2align 4
label397:
	add r1, r1, #1
	add r0, r0, #4096
	ldr r7, [sp, #8]
	cmp r7, r1
	bgt label79
label102:
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
label21:
	ldr r7, [sp, #8]
	cmp r7, #4
	ble label181
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label184
	mov r3, r1
	ldr r6, [sp, #4]
	mov r4, r6
	b label30
.p2align 4
label223:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label21
.p2align 4
label614:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	ldr r6, [sp, #4]
	mov r1, r3
	ldr r7, [sp, #8]
	mov r2, r6
	cmp r7, r6
	bgt label45
	b label230
.p2align 4
label30:
	ldr r6, [sp, #4]
	add r4, r4, #16
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	str r6, [r3, #20]
	str r6, [r3, #24]
	str r6, [r3, #28]
	str r6, [r3, #32]
	str r6, [r3, #36]
	str r6, [r3, #40]
	str r6, [r3, #44]
	str r6, [r3, #48]
	str r6, [r3, #52]
	str r6, [r3, #56]
	str r6, [r3, #60]
	ldr r5, [sp, #12]
	cmp r5, r4
	ble label215
	add r3, r3, #64
	b label30
.p2align 4
label23:
	ldr r6, [sp, #4]
	add r4, r4, #4
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label192
.p2align 4
label26:
	add r3, r3, #16
	b label23
.p2align 4
label215:
	add r3, r1, r4, lsl #2
	ldr r6, [sp, #4]
	add r4, r4, #4
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label26
	add r3, r1, r4, lsl #2
	ldr r6, [sp, #4]
	add r4, r4, #1
	str r6, [r3, #0]
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label38
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label21
	b label614
.p2align 4
label192:
	add r3, r1, r4, lsl #2
	ldr r6, [sp, #4]
	add r4, r4, #1
	str r6, [r3, #0]
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label38
	b label612
.p2align 4
label35:
	ldr r6, [sp, #4]
	add r4, r4, #1
	str r6, [r3, #0]
	ldr r7, [sp, #8]
	cmp r7, r4
	ble label223
.p2align 4
label38:
	add r3, r3, #4
	b label35
.p2align 4
label45:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	movw r5, #:lower16:A
	movt r5, #:upper16:A
	ldr r6, [sp, #4]
	mov r8, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label50
	b label234
.p2align 4
label593:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label45
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	ldr r6, [sp, #4]
	mov r1, r3
	mov r2, r6
	cmp r7, r6
	bgt label123
	b label615
.p2align 4
label50:
	ldr r4, [r5, r2, lsl #2]
	cmp r4, #0
	bne label241
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #8]
	add r3, r3, #4096
	cmp r7, r8
	bgt label50
	b label593
.p2align 4
label258:
	add r8, r8, #1
	add r5, r5, #4096
	ldr r7, [sp, #8]
	add r3, r3, #4096
	cmp r7, r8
	bgt label50
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label45
label618:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	ldr r6, [sp, #4]
	mov r1, r3
	ldr r7, [sp, #8]
	mov r2, r6
	cmp r7, r6
	bgt label123
	b label615
.p2align 4
label241:
	ldr r7, [sp, #8]
	cmp r7, #4
	ble label592
	mov r7, r3
	ldr r6, [sp, #4]
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
	ldr r6, [r10, #0]
	ldr r7, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r6, r4, r7, r6
	str r6, [r10, #0]
	ldr r7, [sp, #8]
	cmp r7, r9
	ble label258
.p2align 4
label56:
	add r10, r10, #4
	b label53
.p2align 4
label288:
	add r10, r3, r9, lsl #2
	ldr r6, [r10, #0]
	ldr r7, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r6, r4, r7, r6
	str r6, [r10, #0]
	ldr r7, [sp, #8]
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
	b label618
.p2align 4
label123:
	ldr r7, [sp, #8]
	cmp r7, #4
	ble label466
	ldr r6, [sp, #0]
	cmp r6, #16
	ble label125
	mov r3, r1
	ldr r6, [sp, #4]
	mov r4, r6
	b label132
.p2align 4
label508:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label123
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	ldr r6, [sp, #4]
	mov r1, r3
	mov r2, r6
	cmp r7, r6
	bgt label103
	b label73
.p2align 4
label132:
	ldr r6, [sp, #4]
	add r4, r4, #16
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	str r6, [r3, #16]
	str r6, [r3, #20]
	str r6, [r3, #24]
	str r6, [r3, #28]
	str r6, [r3, #32]
	str r6, [r3, #36]
	str r6, [r3, #40]
	str r6, [r3, #44]
	str r6, [r3, #48]
	str r6, [r3, #52]
	str r6, [r3, #56]
	str r6, [r3, #60]
	ldr r5, [sp, #12]
	cmp r5, r4
	ble label500
	add r3, r3, #64
	b label132
.p2align 4
label126:
	ldr r6, [sp, #4]
	add r4, r4, #4
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label129
.p2align 4
label130:
	add r3, r3, #16
	b label126
.p2align 4
label500:
	add r3, r1, r4, lsl #2
	ldr r6, [sp, #4]
	add r4, r4, #4
	str r6, [r3, #0]
	str r6, [r3, #4]
	str r6, [r3, #8]
	str r6, [r3, #12]
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label130
	add r3, r1, r4, lsl #2
	ldr r6, [sp, #4]
	add r4, r4, #1
	str r6, [r3, #0]
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label140
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label123
	b label615
.p2align 4
label129:
	add r3, r1, r4, lsl #2
	ldr r6, [sp, #4]
	add r4, r4, #1
	str r6, [r3, #0]
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label140
	b label605
.p2align 4
label137:
	ldr r6, [sp, #4]
	add r4, r4, #1
	str r6, [r3, #0]
	ldr r7, [sp, #8]
	cmp r7, r4
	ble label508
.p2align 4
label140:
	add r3, r3, #4
	b label137
.p2align 4
label86:
	add r2, r0, r4, lsl #2
	mov r6, r4
	mov r4, r3
	ldr r3, [r2, #0]
	ldr r7, [sp, #8]
	add r4, r4, r3
	add r3, r6, #1
	cmp r7, r3
	bgt label100
	b label598
.p2align 4
label96:
	ldr r3, [r2, #0]
	ldr r7, [sp, #8]
	add r4, r4, r3
	add r3, r6, #1
	cmp r7, r3
	ble label397
.p2align 4
label100:
	add r2, r2, #4
	mov r6, r3
	b label96
.p2align 4
label592:
	mov r10, r3
	ldr r6, [sp, #4]
	mov r9, r6
	ldr r6, [r3, #0]
	ldr r7, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r6, r4, r7, r6
	str r6, [r3, #0]
	ldr r7, [sp, #8]
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
	b label618
.p2align 4
label600:
	mov r10, r3
	ldr r6, [sp, #4]
	mov r9, r6
	ldr r6, [r3, #0]
	ldr r7, [r1, r9, lsl #2]
	add r9, r9, #1
	mla r6, r4, r7, r6
	str r6, [r3, #0]
	ldr r7, [sp, #8]
	cmp r7, r9
	bgt label115
	add r8, r8, #1
	add r5, r5, #4096
	add r3, r3, #4096
	cmp r7, r8
	bgt label108
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label103
	b label624
.p2align 4
label93:
	add r2, r0, r6, lsl #2
.p2align 4
label82:
	ldr r4, [r2, #0]
	add r3, r3, r4
	ldr r4, [r2, #4]
	add r3, r3, r4
	ldr r4, [r2, #8]
	add r3, r3, r4
	ldr r4, [r2, #12]
	add r3, r3, r4
	add r4, r6, #4
	ldr r6, [sp, #0]
	cmp r6, r4
	ble label86
	add r2, r2, #16
	mov r6, r4
	b label82
.p2align 4
label125:
	mov r3, r1
	ldr r6, [sp, #4]
	mov r4, r6
	b label126
.p2align 4
label466:
	mov r3, r1
	ldr r6, [sp, #4]
	add r4, r6, #1
	str r6, [r1, #0]
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label140
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label123
	b label615
.p2align 4
label181:
	mov r3, r1
	ldr r6, [sp, #4]
	add r4, r6, #1
	str r6, [r1, #0]
	ldr r7, [sp, #8]
	cmp r7, r4
	bgt label38
	add r2, r2, #1
	add r1, r1, #4096
	cmp r7, r2
	bgt label21
	b label614
label81:
	mov r2, r0
	mov r3, r4
	ldr r6, [sp, #4]
	b label82
label615:
	movw r3, #:lower16:C
	movt r3, #:upper16:C
	ldr r6, [sp, #4]
	mov r1, r3
	mov r2, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	bgt label103
	b label73
.p2align 4
label605:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label123
	b label615
.p2align 4
label612:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label21
	b label614
.p2align 4
label598:
	add r1, r1, #1
	add r0, r0, #4096
	ldr r7, [sp, #8]
	cmp r7, r1
	bgt label79
	b label102
label230:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	ldr r6, [sp, #4]
	mov r1, r3
	ldr r7, [sp, #8]
	mov r2, r6
	cmp r7, r6
	bgt label123
	b label615
.p2align 4
label234:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label45
	b label230
label73:
	add r0, r0, #1
	cmp r0, #5
	blt label16
	b label74
.p2align 4
label404:
	add r2, r2, #1
	add r1, r1, #4096
	ldr r7, [sp, #8]
	cmp r7, r2
	bgt label103
	b label73
label178:
	movw r3, #:lower16:B
	movt r3, #:upper16:B
	ldr r6, [sp, #4]
	mov r1, r3
	ldr r7, [sp, #8]
	mov r2, r6
	cmp r7, r6
	bgt label45
	b label230
.p2align 4
label184:
	mov r3, r1
	ldr r6, [sp, #4]
	mov r4, r6
	b label23
