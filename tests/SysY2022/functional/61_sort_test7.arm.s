.arch armv7ve
.data
.bss
.align 8
buf:
	.zero	800
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
merge_sort:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[32] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r8, r1
	mov r7, r0
	sub sp, sp, #36
	str r0, [sp, #12]
	add r0, r0, #1
	str r1, [sp, #28]
	cmp r1, r0
	bgt label3
label2:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	ldr r8, [sp, #28]
	mov r5, #0
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r7, [sp, #12]
	add r2, r2, #400
	add r1, r7, r8
	add r1, r1, r1, lsr #31
	asr r3, r1, #1
	add r1, r7, #3
	sub r4, r3, #3
	str r3, [sp, #0]
	cmp r7, r3
	str r2, [sp, #24]
	movwlt r5, #1
	sub r2, r8, #3
	str r1, [sp, #8]
	cmp r0, r3
	add r1, r7, #15
	str r1, [sp, #4]
	sub r1, r8, #18
	str r1, [sp, #16]
	str r2, [sp, #20]
	bge label4
	add r0, r7, r3
	add r0, r0, r0, lsr #31
	asr r6, r0, #1
	mov r0, r7
	mov r1, r6
	bl merge_sort
	ldr r3, [sp, #0]
	mov r0, r6
	mov r1, r3
	bl merge_sort
	sub r1, r6, #3
	mov r11, #0
	ldr r3, [sp, #0]
	mov r9, #0
	cmp r3, r6
	movwgt r9, #1
	cmp r7, r6
	movwlt r11, #1
	ands r0, r9, r11
	sub r0, r3, #18
	beq label724
	ldr r2, [sp, #24]
	mov r9, r6
	ldr r7, [sp, #12]
	mov r10, r7
	add r8, r2, r7, lsl #2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r2, r7, lsl #2]
	ldr r2, [r2, r6, lsl #2]
	cmp r3, r2
	blt label235
	str r2, [r8, #0]
	add r2, r6, #1
	cmp r6, r7
	mov r11, #0
	ldr r3, [sp, #0]
	mov r9, #0
	movwgt r11, #1
	cmp r3, r2
	movwgt r9, #1
	ands r3, r11, r9
	add r3, r7, #1
	bne label234
	b label940
.p2align 4
label235:
	str r3, [r8, #0]
	add r10, r10, #1
	mov r2, r9
	mov r11, #0
	ldr r3, [sp, #0]
	cmp r6, r10
	movwgt r11, #1
	cmp r3, r9
	mov r9, #0
	movwgt r9, #1
	ands r3, r11, r9
	add r3, r7, #1
	beq label940
.p2align 4
label234:
	add r8, r8, #4
	mov r9, r2
	mov r7, r3
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r2, r10, lsl #2]
	ldr r2, [r2, r9, lsl #2]
	cmp r3, r2
	blt label235
	str r2, [r8, #0]
	cmp r6, r10
	mov r11, #0
	ldr r3, [sp, #0]
	add r2, r9, #1
	movwgt r11, #1
	mov r9, #0
	cmp r3, r2
	movwgt r9, #1
	ands r3, r11, r9
	add r3, r7, #1
	bne label234
label940:
	mov r8, r2
label160:
	cmp r11, #0
	beq label727
	add r2, r10, #3
	cmp r6, r2
	ble label732
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r7, r2, r10, lsl #2
label168:
	ldr r2, [sp, #24]
	add r10, r10, #4
	ldr r11, [r7, #0]
	cmp r1, r10
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	str r11, [r2, #0]
	ldr r11, [r7, #4]
	str r11, [r2, #4]
	ldr r11, [r7, #8]
	str r11, [r2, #8]
	ldr r11, [r7, #12]
	str r11, [r2, #12]
	ble label752
	add r7, r7, #16
	b label168
label752:
	mov r1, r3
label173:
	cmp r6, r10
	ble label727
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r10, lsl #2
label178:
	ldr r7, [r3, #0]
	add r10, r10, #1
	ldr r2, [sp, #24]
	cmp r6, r10
	str r7, [r2, r1, lsl #2]
	add r1, r1, #1
	ble label183
	add r3, r3, #4
	b label178
label4:
	ldr r3, [sp, #0]
	mov r6, #0
	ldr r8, [sp, #28]
	add r0, r3, #1
	cmp r8, r3
	movwgt r6, #1
	cmp r8, r0
	bgt label82
label5:
	ands r0, r5, r6
	beq label266
	ldr r2, [sp, #24]
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
	mov r5, r7
	add r0, r2, r7, lsl #2
	mov r1, r7
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r6, [r2, r7, lsl #2]
	ldr r2, [r2, r3, lsl #2]
	cmp r6, r2
	blt label80
.p2align 4
label475:
	str r2, [r0, #0]
	add r2, r3, #1
.p2align 4
label76:
	ldr r3, [sp, #0]
	mov r6, #0
	add r1, r1, #1
	ldr r8, [sp, #28]
	cmp r3, r5
	mov r3, #0
	movwgt r3, #1
	cmp r8, r2
	movwgt r6, #1
	ands r7, r3, r6
	beq label482
	add r0, r0, #4
	mov r3, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r6, [r2, r5, lsl #2]
	ldr r2, [r2, r3, lsl #2]
	cmp r6, r2
	bge label475
.p2align 4
label80:
	str r6, [r0, #0]
	add r5, r5, #1
	mov r2, r3
	b label76
label82:
	ldr r8, [sp, #28]
	ldr r3, [sp, #0]
	add r0, r8, r3
	add r0, r0, r0, lsr #31
	asr r7, r0, #1
	mov r0, r3
	mov r1, r7
	bl merge_sort
	mov r0, r7
	mov r1, r8
	bl merge_sort
	mov r10, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	movwlt r10, #1
	cmp r8, r7
	mov r8, #0
	movwgt r8, #1
	ands r0, r10, r8
	sub r0, r7, #3
	beq label494
	ldr r2, [sp, #24]
	mov r8, r7
	mov r9, r3
	add r1, r2, r3, lsl #2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r10, [r2, r3, lsl #2]
	ldr r2, [r2, r7, lsl #2]
	cmp r10, r2
	bge label89
.p2align 4
label90:
	str r10, [r1, #0]
	add r9, r9, #1
	mov r2, r8
	cmp r7, r9
	mov r10, #0
	ldr r8, [sp, #28]
	add r3, r3, #1
	movwgt r10, #1
	cmp r8, r2
	mov r8, #0
	movwgt r8, #1
	ands r11, r10, r8
	beq label1008
.p2align 4
label94:
	add r1, r1, #4
	mov r8, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r10, [r2, r9, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	cmp r10, r2
	blt label90
.p2align 4
label89:
	str r2, [r1, #0]
	cmp r7, r9
	mov r10, #0
	add r3, r3, #1
	add r2, r8, #1
	movwgt r10, #1
	ldr r8, [sp, #28]
	cmp r8, r2
	mov r8, #0
	movwgt r8, #1
	ands r11, r10, r8
	bne label94
	b label1008
label482:
	mov r8, r3
	mov r0, r2
	mov r7, r1
label6:
	cmp r8, #0
	beq label269
	add r1, r5, #3
	ldr r3, [sp, #0]
	cmp r3, r1
	ble label274
	ldr r2, [sp, #24]
	mov r3, r7
	add r1, r2, r7, lsl #2
	b label24
.p2align 4
label28:
	add r1, r1, #16
.p2align 4
label24:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r3, #4
	add r2, r2, r5, lsl #2
	add r5, r5, #4
	ldr r7, [r2, #0]
	cmp r4, r5
	str r7, [r1, #0]
	ldr r7, [r2, #4]
	str r7, [r1, #4]
	ldr r7, [r2, #8]
	str r7, [r1, #8]
	ldr r2, [r2, #12]
	str r2, [r1, #12]
	bgt label28
	mov r7, r3
	mov r1, r3
label13:
	ldr r3, [sp, #0]
	cmp r3, r5
	ble label278
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r5, lsl #2
	b label18
label22:
	add r1, r1, #4
	mov r7, r2
label18:
	ldr r3, [r1, #0]
	add r5, r5, #1
	ldr r2, [sp, #24]
	str r3, [r2, r7, lsl #2]
	ldr r3, [sp, #0]
	add r2, r7, #1
	cmp r3, r5
	bgt label22
	mov r3, r2
label29:
	cmp r6, #0
	beq label47
	add r1, r0, #3
	ldr r8, [sp, #28]
	cmp r8, r1
	ble label32
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
.p2align 4
label42:
	ldr r2, [sp, #24]
	add r0, r0, #4
	ldr r4, [r1, #0]
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	str r4, [r2, #0]
	ldr r4, [r1, #4]
	str r4, [r2, #4]
	ldr r4, [r1, #8]
	str r4, [r2, #8]
	ldr r4, [r1, #12]
	str r4, [r2, #12]
	ldr r2, [sp, #20]
	cmp r2, r0
	ble label32
	add r1, r1, #16
	b label42
label32:
	ldr r8, [sp, #28]
	cmp r8, r0
	ble label47
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
	b label36
label40:
	add r1, r1, #4
label36:
	ldr r4, [r1, #0]
	add r0, r0, #1
	ldr r2, [sp, #24]
	str r4, [r2, r3, lsl #2]
	ldr r8, [sp, #28]
	add r3, r3, #1
	cmp r8, r0
	bgt label40
label47:
	ldr r8, [sp, #28]
	ldr r7, [sp, #12]
	cmp r7, r8
	bge label2
	ldr r1, [sp, #8]
	cmp r8, r1
	ble label364
	ldr r2, [sp, #20]
	ldr r1, [sp, #4]
	cmp r1, r2
	bge label383
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r7, lsl #2
.p2align 4
label66:
	ldr r2, [sp, #24]
	add r1, r2, r7, lsl #2
	add r7, r7, #16
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #12]
	str r2, [r0, #12]
	ldr r2, [r1, #16]
	str r2, [r0, #16]
	ldr r2, [r1, #20]
	str r2, [r0, #20]
	ldr r2, [r1, #24]
	str r2, [r0, #24]
	ldr r2, [r1, #28]
	str r2, [r0, #28]
	ldr r2, [r1, #32]
	str r2, [r0, #32]
	ldr r2, [r1, #36]
	str r2, [r0, #36]
	ldr r2, [r1, #40]
	str r2, [r0, #40]
	ldr r2, [r1, #44]
	str r2, [r0, #44]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r1, [r1, #60]
	str r1, [r0, #60]
	ldr r1, [sp, #16]
	cmp r1, r7
	ble label462
	add r0, r0, #64
	b label66
label462:
	mov r0, r7
label57:
	ldr r2, [sp, #20]
	cmp r2, r0
	ble label49
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
	b label61
label64:
	add r1, r1, #16
label61:
	ldr r2, [sp, #24]
	add r2, r2, r0, lsl #2
	add r0, r0, #4
	ldr r3, [r2, #0]
	str r3, [r1, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	ldr r2, [r2, #12]
	str r2, [r1, #12]
	ldr r2, [sp, #20]
	cmp r2, r0
	bgt label64
	mov r7, r0
label49:
	ldr r8, [sp, #28]
	cmp r8, r7
	ble label2
	ldr r2, [sp, #24]
	add r0, r2, r7, lsl #2
	b label52
label55:
	add r0, r0, #4
label52:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r7, lsl #2]
	ldr r8, [sp, #28]
	add r7, r7, #1
	cmp r8, r7
	bgt label55
	b label2
label183:
	cmp r9, #0
	beq label185
	add r2, r8, #3
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label215
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r8, lsl #2
	b label210
label214:
	add r3, r3, #16
label210:
	ldr r2, [sp, #24]
	add r8, r8, #4
	ldr r6, [r3, #0]
	cmp r4, r8
	add r2, r2, r1, lsl #2
	add r1, r1, #4
	str r6, [r2, #0]
	ldr r6, [r3, #4]
	str r6, [r2, #4]
	ldr r6, [r3, #8]
	str r6, [r2, #8]
	ldr r6, [r3, #12]
	str r6, [r2, #12]
	bgt label214
label215:
	ldr r3, [sp, #0]
	cmp r3, r8
	ble label185
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r6, r2, r8, lsl #2
label219:
	ldr r3, [r6, #0]
	add r8, r8, #1
	ldr r2, [sp, #24]
	str r3, [r2, r1, lsl #2]
	ldr r3, [sp, #0]
	add r1, r1, #1
	cmp r3, r8
	ble label185
	add r6, r6, #4
	b label219
label185:
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
	cmp r7, r3
	bge label4
	ldr r1, [sp, #8]
	cmp r3, r1
	ble label779
	ldr r1, [sp, #4]
	cmp r4, r1
	ble label783
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r7, lsl #2
label197:
	ldr r2, [sp, #24]
	add r2, r2, r7, lsl #2
	add r7, r7, #16
	ldr r3, [r2, #0]
	cmp r0, r7
	str r3, [r1, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	ldr r3, [r2, #12]
	str r3, [r1, #12]
	ldr r3, [r2, #16]
	str r3, [r1, #16]
	ldr r3, [r2, #20]
	str r3, [r1, #20]
	ldr r3, [r2, #24]
	str r3, [r1, #24]
	ldr r3, [r2, #28]
	str r3, [r1, #28]
	ldr r3, [r2, #32]
	str r3, [r1, #32]
	ldr r3, [r2, #36]
	str r3, [r1, #36]
	ldr r3, [r2, #40]
	str r3, [r1, #40]
	ldr r3, [r2, #44]
	str r3, [r1, #44]
	ldr r3, [r2, #48]
	str r3, [r1, #48]
	ldr r3, [r2, #52]
	str r3, [r1, #52]
	ldr r3, [r2, #56]
	str r3, [r1, #56]
	ldr r2, [r2, #60]
	str r2, [r1, #60]
	ble label862
	add r1, r1, #64
	b label197
label862:
	mov r0, r7
label188:
	cmp r4, r0
	ble label201
	ldr r2, [sp, #24]
	add r1, r2, r0, lsl #2
label192:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r1, #0]
	add r2, r2, r0, lsl #2
	add r0, r0, #4
	cmp r4, r0
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r3, [r1, #12]
	str r3, [r2, #12]
	ble label806
	add r1, r1, #16
	b label192
label806:
	mov r7, r0
label201:
	ldr r3, [sp, #0]
	cmp r3, r7
	ble label4
	ldr r2, [sp, #24]
	add r0, r2, r7, lsl #2
label204:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r7, lsl #2]
	ldr r3, [sp, #0]
	add r7, r7, #1
	cmp r3, r7
	ble label4
	add r0, r0, #4
	b label204
label1008:
	mov r1, r2
label95:
	cmp r10, #0
	beq label118
	add r2, r9, #3
	cmp r7, r2
	ble label524
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r10, r2, r9, lsl #2
	b label103
label107:
	add r10, r10, #16
label103:
	ldr r2, [sp, #24]
	add r9, r9, #4
	ldr r11, [r10, #0]
	cmp r0, r9
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	str r11, [r2, #0]
	ldr r11, [r10, #4]
	str r11, [r2, #4]
	ldr r11, [r10, #8]
	str r11, [r2, #8]
	ldr r11, [r10, #12]
	str r11, [r2, #12]
	bgt label107
	mov r0, r3
label108:
	cmp r7, r9
	ble label118
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r9, lsl #2
	b label113
label117:
	add r3, r3, #4
label113:
	ldr r10, [r3, #0]
	add r9, r9, #1
	ldr r2, [sp, #24]
	cmp r7, r9
	str r10, [r2, r0, lsl #2]
	add r0, r0, #1
	bgt label117
	mov r3, r0
label118:
	cmp r8, #0
	beq label136
	add r0, r1, #3
	ldr r8, [sp, #28]
	cmp r8, r0
	ble label127
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r1, lsl #2
	b label122
label126:
	add r0, r0, #16
label122:
	ldr r2, [sp, #24]
	add r1, r1, #4
	ldr r7, [r0, #0]
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	str r7, [r2, #0]
	ldr r7, [r0, #4]
	str r7, [r2, #4]
	ldr r7, [r0, #8]
	str r7, [r2, #8]
	ldr r7, [r0, #12]
	str r7, [r2, #12]
	ldr r2, [sp, #20]
	cmp r2, r1
	bgt label126
label127:
	ldr r8, [sp, #28]
	cmp r8, r1
	ble label136
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r1, lsl #2
	b label131
label135:
	add r0, r0, #4
label131:
	ldr r7, [r0, #0]
	add r1, r1, #1
	ldr r2, [sp, #24]
	str r7, [r2, r3, lsl #2]
	ldr r8, [sp, #28]
	add r3, r3, #1
	cmp r8, r1
	bgt label135
label136:
	ldr r8, [sp, #28]
	ldr r3, [sp, #0]
	cmp r8, r3
	ble label5
	add r0, r3, #3
	cmp r8, r0
	ble label614
	ldr r2, [sp, #20]
	add r0, r3, #15
	cmp r2, r0
	ble label619
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r3, lsl #2
	b label148
label151:
	add r0, r0, #64
label148:
	ldr r2, [sp, #24]
	add r1, r2, r3, lsl #2
	add r3, r3, #16
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #12]
	str r2, [r0, #12]
	ldr r2, [r1, #16]
	str r2, [r0, #16]
	ldr r2, [r1, #20]
	str r2, [r0, #20]
	ldr r2, [r1, #24]
	str r2, [r0, #24]
	ldr r2, [r1, #28]
	str r2, [r0, #28]
	ldr r2, [r1, #32]
	str r2, [r0, #32]
	ldr r2, [r1, #36]
	str r2, [r0, #36]
	ldr r2, [r1, #40]
	str r2, [r0, #40]
	ldr r2, [r1, #44]
	str r2, [r0, #44]
	ldr r2, [r1, #48]
	str r2, [r0, #48]
	ldr r2, [r1, #52]
	str r2, [r0, #52]
	ldr r2, [r1, #56]
	str r2, [r0, #56]
	ldr r1, [r1, #60]
	str r1, [r0, #60]
	ldr r1, [sp, #16]
	cmp r1, r3
	bgt label151
	mov r0, r3
label139:
	ldr r2, [sp, #20]
	cmp r2, r0
	ble label152
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
label143:
	ldr r2, [sp, #24]
	add r2, r2, r0, lsl #2
	add r0, r0, #4
	ldr r3, [r2, #0]
	str r3, [r1, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	ldr r2, [r2, #12]
	str r2, [r1, #12]
	ldr r2, [sp, #20]
	cmp r2, r0
	ble label642
	add r1, r1, #16
	b label143
label642:
	mov r3, r0
label152:
	ldr r8, [sp, #28]
	cmp r8, r3
	ble label5
	ldr r2, [sp, #24]
	add r0, r2, r3, lsl #2
	b label155
label158:
	add r0, r0, #4
label155:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r3, lsl #2]
	ldr r8, [sp, #28]
	add r3, r3, #1
	cmp r8, r3
	bgt label158
	b label5
label727:
	mov r1, r3
	b label183
label494:
	ldr r3, [sp, #0]
	mov r1, r7
	mov r9, r3
	b label95
label619:
	ldr r3, [sp, #0]
	mov r0, r3
	mov r3, #0
	b label139
label614:
	ldr r3, [sp, #0]
	b label152
label524:
	mov r0, r3
	mov r3, #0
	b label108
label783:
	ldr r7, [sp, #12]
	mov r0, r7
	mov r7, #0
	b label188
label732:
	mov r1, r3
	mov r3, #0
	b label173
label266:
	mov r8, r5
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
	mov r5, r7
	mov r0, r3
	b label6
label269:
	mov r3, r7
	b label29
label724:
	ldr r7, [sp, #12]
	mov r8, r6
	mov r3, r7
	mov r10, r7
	b label160
label274:
	mov r1, #0
	b label13
label278:
	mov r3, r1
	b label29
label383:
	ldr r7, [sp, #12]
	mov r0, r7
	mov r7, #0
	b label57
label364:
	ldr r7, [sp, #12]
	b label49
label779:
	ldr r7, [sp, #12]
	b label201
.p2align 4
.globl main
main:
	push { r4, r5, lr }
	movw r4, #:lower16:buf
	movt r4, #:upper16:buf
	sub sp, sp, #4
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r1, r0
	mov r0, #0
	bl merge_sort
	mov r0, r5
	mov r1, r4
	bl putarray
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, pc }
