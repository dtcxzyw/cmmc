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
	ble label2
	mov r5, #0
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r7, [sp, #12]
	add r2, r2, #400
	add r1, r7, r1
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
	str r2, [sp, #20]
	str r1, [sp, #16]
	blt label4
label81:
	ldr r3, [sp, #0]
	mov r6, #0
	ldr r8, [sp, #28]
	add r0, r3, #1
	cmp r8, r3
	movwgt r6, #1
	cmp r8, r0
	bgt label159
label82:
	ands r0, r5, r6
	beq label494
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
	blt label94
.p2align 4
label506:
	str r2, [r0, #0]
	add r2, r3, #1
.p2align 4
label89:
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
	beq label513
	add r0, r0, #4
	mov r3, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r6, [r2, r5, lsl #2]
	ldr r2, [r2, r3, lsl #2]
	cmp r6, r2
	bge label506
.p2align 4
label94:
	str r6, [r0, #0]
	add r5, r5, #1
	mov r2, r3
	b label89
label4:
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
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
	beq label266
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
	bge label11
.p2align 4
label12:
	str r3, [r8, #0]
	add r10, r10, #1
	mov r2, r9
	cmp r6, r10
	mov r11, #0
	ldr r3, [sp, #0]
	mov r9, #0
	movwgt r11, #1
	cmp r3, r2
	movwgt r9, #1
	ands r3, r11, r9
	add r3, r7, #1
	beq label1007
.p2align 4
label16:
	add r8, r8, #4
	mov r9, r2
	mov r7, r3
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r2, r10, lsl #2]
	ldr r2, [r2, r9, lsl #2]
	cmp r3, r2
	blt label12
.p2align 4
label11:
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
	bne label16
	b label1007
label158:
	add r0, r0, #4
label155:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r7, lsl #2]
	ldr r8, [sp, #28]
	add r7, r7, #1
	cmp r8, r7
	bgt label158
label2:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label513:
	mov r8, r3
	mov r0, r2
	mov r7, r1
label95:
	cmp r8, #0
	beq label519
	add r1, r5, #3
	ldr r3, [sp, #0]
	cmp r3, r1
	ble label524
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r3, r7
	add r1, r2, r5, lsl #2
	b label103
.p2align 4
label107:
	add r1, r1, #16
.p2align 4
label103:
	ldr r2, [sp, #24]
	add r5, r5, #4
	ldr r7, [r1, #0]
	cmp r4, r5
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	str r7, [r2, #0]
	ldr r7, [r1, #4]
	str r7, [r2, #4]
	ldr r7, [r1, #8]
	str r7, [r2, #8]
	ldr r7, [r1, #12]
	str r7, [r2, #12]
	bgt label107
	mov r7, r3
	mov r1, r3
label108:
	ldr r3, [sp, #0]
	cmp r3, r5
	ble label549
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r5, lsl #2
label113:
	ldr r3, [r1, #0]
	add r5, r5, #1
	ldr r2, [sp, #24]
	str r3, [r2, r7, lsl #2]
	ldr r3, [sp, #0]
	add r2, r7, #1
	cmp r3, r5
	ble label560
	add r1, r1, #4
	mov r7, r2
	b label113
label560:
	mov r3, r2
label118:
	cmp r6, #0
	beq label136
	add r1, r0, #3
	ldr r8, [sp, #28]
	cmp r8, r1
	ble label127
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
.p2align 4
label122:
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
	ble label127
	add r1, r1, #16
	b label122
label127:
	ldr r8, [sp, #28]
	cmp r8, r0
	ble label136
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
	b label131
label135:
	add r1, r1, #4
label131:
	ldr r4, [r1, #0]
	add r0, r0, #1
	ldr r2, [sp, #24]
	str r4, [r2, r3, lsl #2]
	ldr r8, [sp, #28]
	add r3, r3, #1
	cmp r8, r0
	bgt label135
label136:
	ldr r8, [sp, #28]
	ldr r7, [sp, #12]
	cmp r7, r8
	bge label2
	ldr r1, [sp, #8]
	cmp r8, r1
	ble label614
	ldr r2, [sp, #20]
	ldr r1, [sp, #4]
	cmp r1, r2
	bge label618
	ldr r2, [sp, #24]
	add r0, r2, r7, lsl #2
	b label148
.p2align 4
label151:
	add r0, r0, #64
.p2align 4
label148:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r7, lsl #2
	add r7, r7, #16
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r2, [r0, #12]
	str r2, [r1, #12]
	ldr r2, [r0, #16]
	str r2, [r1, #16]
	ldr r2, [r0, #20]
	str r2, [r1, #20]
	ldr r2, [r0, #24]
	str r2, [r1, #24]
	ldr r2, [r0, #28]
	str r2, [r1, #28]
	ldr r2, [r0, #32]
	str r2, [r1, #32]
	ldr r2, [r0, #36]
	str r2, [r1, #36]
	ldr r2, [r0, #40]
	str r2, [r1, #40]
	ldr r2, [r0, #44]
	str r2, [r1, #44]
	ldr r2, [r0, #48]
	str r2, [r1, #48]
	ldr r2, [r0, #52]
	str r2, [r1, #52]
	ldr r2, [r0, #56]
	str r2, [r1, #56]
	ldr r2, [r0, #60]
	str r2, [r1, #60]
	ldr r1, [sp, #16]
	cmp r1, r7
	bgt label151
	mov r0, r7
label139:
	ldr r2, [sp, #20]
	cmp r2, r0
	ble label152
	ldr r2, [sp, #24]
	add r1, r2, r0, lsl #2
	b label143
label146:
	add r1, r1, #16
label143:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r1, #0]
	add r2, r2, r0, lsl #2
	add r0, r0, #4
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r3, [r1, #12]
	str r3, [r2, #12]
	ldr r2, [sp, #20]
	cmp r2, r0
	bgt label146
	mov r7, r0
label152:
	ldr r8, [sp, #28]
	cmp r8, r7
	ble label2
	ldr r2, [sp, #24]
	add r0, r2, r7, lsl #2
	b label155
label159:
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
	beq label722
	ldr r2, [sp, #24]
	mov r8, r7
	mov r9, r3
	add r1, r2, r3, lsl #2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r10, [r2, r3, lsl #2]
	ldr r2, [r2, r7, lsl #2]
	cmp r10, r2
	blt label166
.p2align 4
label734:
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
	beq label1012
.p2align 4
label170:
	add r1, r1, #4
	mov r8, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r10, [r2, r9, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	cmp r10, r2
	bge label734
.p2align 4
label166:
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
	bne label170
label1012:
	mov r1, r2
label172:
	cmp r10, #0
	beq label195
	add r2, r9, #3
	cmp r7, r2
	ble label752
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r10, r2, r9, lsl #2
label180:
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
	ble label772
	add r10, r10, #16
	b label180
label1007:
	mov r8, r2
label17:
	cmp r11, #0
	beq label291
	add r2, r10, #3
	cmp r6, r2
	ble label447
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r7, r2, r10, lsl #2
	b label76
label80:
	add r7, r7, #16
label76:
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
	bgt label80
	mov r1, r3
label65:
	cmp r6, r10
	ble label291
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r10, lsl #2
label70:
	ldr r7, [r3, #0]
	add r10, r10, #1
	ldr r2, [sp, #24]
	cmp r6, r10
	str r7, [r2, r1, lsl #2]
	add r1, r1, #1
	ble label23
	add r3, r3, #4
	b label70
label23:
	cmp r9, #0
	beq label41
	add r2, r8, #3
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label32
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r8, lsl #2
label27:
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
	ble label32
	add r3, r3, #16
	b label27
label32:
	ldr r3, [sp, #0]
	cmp r3, r8
	ble label41
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r6, r2, r8, lsl #2
	b label36
label40:
	add r6, r6, #4
label36:
	ldr r3, [r6, #0]
	add r8, r8, #1
	ldr r2, [sp, #24]
	str r3, [r2, r1, lsl #2]
	ldr r3, [sp, #0]
	add r1, r1, #1
	cmp r3, r8
	bgt label40
label41:
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
	cmp r7, r3
	bge label81
	ldr r1, [sp, #8]
	cmp r3, r1
	ble label343
	ldr r1, [sp, #4]
	cmp r4, r1
	ble label362
	ldr r2, [sp, #24]
	add r1, r2, r7, lsl #2
	b label52
label55:
	add r1, r1, #64
label52:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r1, #0]
	add r2, r2, r7, lsl #2
	add r7, r7, #16
	cmp r0, r7
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r3, [r1, #12]
	str r3, [r2, #12]
	ldr r3, [r1, #16]
	str r3, [r2, #16]
	ldr r3, [r1, #20]
	str r3, [r2, #20]
	ldr r3, [r1, #24]
	str r3, [r2, #24]
	ldr r3, [r1, #28]
	str r3, [r2, #28]
	ldr r3, [r1, #32]
	str r3, [r2, #32]
	ldr r3, [r1, #36]
	str r3, [r2, #36]
	ldr r3, [r1, #40]
	str r3, [r2, #40]
	ldr r3, [r1, #44]
	str r3, [r2, #44]
	ldr r3, [r1, #48]
	str r3, [r2, #48]
	ldr r3, [r1, #52]
	str r3, [r2, #52]
	ldr r3, [r1, #56]
	str r3, [r2, #56]
	ldr r3, [r1, #60]
	str r3, [r2, #60]
	bgt label55
	mov r0, r7
label56:
	cmp r4, r0
	ble label43
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
	b label60
label63:
	add r1, r1, #16
label60:
	ldr r2, [sp, #24]
	add r2, r2, r0, lsl #2
	add r0, r0, #4
	ldr r3, [r2, #0]
	cmp r4, r0
	str r3, [r1, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	ldr r2, [r2, #12]
	str r2, [r1, #12]
	bgt label63
	mov r7, r0
label43:
	ldr r3, [sp, #0]
	cmp r3, r7
	ble label81
	ldr r2, [sp, #24]
	add r0, r2, r7, lsl #2
	b label46
label49:
	add r0, r0, #4
label46:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r7, lsl #2]
	ldr r3, [sp, #0]
	add r7, r7, #1
	cmp r3, r7
	bgt label49
	b label81
label772:
	mov r0, r3
label185:
	cmp r7, r9
	ble label195
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r9, lsl #2
	b label190
label194:
	add r3, r3, #4
label190:
	ldr r10, [r3, #0]
	add r9, r9, #1
	ldr r2, [sp, #24]
	cmp r7, r9
	str r10, [r2, r0, lsl #2]
	add r0, r0, #1
	bgt label194
	mov r3, r0
label195:
	cmp r8, #0
	beq label213
	add r0, r1, #3
	ldr r8, [sp, #28]
	cmp r8, r0
	ble label204
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r1, lsl #2
label199:
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
	ble label204
	add r0, r0, #16
	b label199
label204:
	ldr r8, [sp, #28]
	cmp r8, r1
	ble label213
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r1, lsl #2
	b label208
label212:
	add r0, r0, #4
label208:
	ldr r7, [r0, #0]
	add r1, r1, #1
	ldr r2, [sp, #24]
	str r7, [r2, r3, lsl #2]
	ldr r8, [sp, #28]
	add r3, r3, #1
	cmp r8, r1
	bgt label212
label213:
	ldr r8, [sp, #28]
	ldr r3, [sp, #0]
	cmp r8, r3
	ble label82
	add r0, r3, #3
	cmp r8, r0
	ble label842
	ldr r2, [sp, #20]
	add r0, r3, #15
	cmp r2, r0
	ble label862
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r3, lsl #2
label224:
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
	ble label917
	add r0, r0, #64
	b label224
label917:
	mov r0, r3
label228:
	ldr r2, [sp, #20]
	cmp r2, r0
	ble label215
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
label232:
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
	ble label941
	add r1, r1, #16
	b label232
label941:
	mov r3, r0
label215:
	ldr r8, [sp, #28]
	cmp r8, r3
	ble label82
	ldr r2, [sp, #24]
	add r0, r2, r3, lsl #2
	b label218
label221:
	add r0, r0, #4
label218:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r3, lsl #2]
	ldr r8, [sp, #28]
	add r3, r3, #1
	cmp r8, r3
	bgt label221
	b label82
label291:
	mov r1, r3
	b label23
label862:
	ldr r3, [sp, #0]
	mov r0, r3
	mov r3, #0
	b label228
label842:
	ldr r3, [sp, #0]
	b label215
label614:
	ldr r7, [sp, #12]
	b label152
label362:
	ldr r7, [sp, #12]
	mov r0, r7
	mov r7, #0
	b label56
label343:
	ldr r7, [sp, #12]
	b label43
label549:
	mov r3, r1
	b label118
label447:
	mov r1, r3
	mov r3, #0
	b label65
label519:
	mov r3, r7
	b label118
label524:
	mov r1, #0
	b label108
label752:
	mov r0, r3
	mov r3, #0
	b label185
label494:
	mov r8, r5
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
	mov r5, r7
	mov r0, r3
	b label95
label618:
	ldr r7, [sp, #12]
	mov r0, r7
	mov r7, #0
	b label139
label266:
	ldr r7, [sp, #12]
	mov r8, r6
	mov r3, r7
	mov r10, r7
	b label17
label722:
	ldr r3, [sp, #0]
	mov r1, r7
	mov r9, r3
	b label172
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
