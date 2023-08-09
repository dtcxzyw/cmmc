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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[28] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r8, r1
	mov r9, r0
	sub sp, sp, #36
	str r0, [sp, #8]
	add r0, r0, #1
	str r1, [sp, #24]
	cmp r1, r0
	ble label2
	mov r6, #0
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r9, [sp, #8]
	add r2, r2, #400
	str r2, [sp, #20]
	sub r2, r1, #18
	add r1, r9, r1
	add r1, r1, r1, lsr #31
	asr r4, r1, #1
	add r1, r9, #3
	sub r5, r4, #3
	cmp r9, r4
	str r1, [sp, #4]
	movwlt r6, #1
	add r1, r9, #15
	cmp r0, r4
	str r1, [sp, #0]
	str r2, [sp, #12]
	sub r2, r8, #3
	str r2, [sp, #16]
	blt label157
label4:
	add r0, r4, #1
	ldr r8, [sp, #24]
	mov r7, #0
	cmp r8, r4
	movwgt r7, #1
	cmp r8, r0
	ble label81
	add r0, r8, r4
	add r0, r0, r0, lsr #31
	asr r9, r0, #1
	mov r0, r4
	mov r1, r9
	bl merge_sort
	mov r0, r9
	mov r1, r8
	bl merge_sort
	mov r0, #0
	mov r11, #0
	cmp r4, r9
	movwlt r11, #1
	cmp r8, r9
	movwgt r0, #1
	ands r0, r11, r0
	sub r0, r9, #3
	beq label268
	ldr r2, [sp, #20]
	mov r10, r4
	mov r8, r9
	mov r3, r4
	add r1, r2, r4, lsl #2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r11, [r2, r4, lsl #2]
	ldr r2, [r2, r9, lsl #2]
	cmp r11, r2
	bge label280
.p2align 4
label12:
	str r11, [r1, #0]
	add r10, r10, #1
	mov r2, r8
	cmp r9, r10
	mov r11, #0
	ldr r8, [sp, #24]
	add r3, r3, #1
	movwgt r11, #1
	cmp r8, r2
	mov r8, #0
	movwgt r8, #1
	ands r8, r11, r8
	beq label1012
.p2align 4
label16:
	add r1, r1, #4
	mov r8, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r11, [r2, r10, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	cmp r11, r2
	blt label12
.p2align 4
label280:
	str r2, [r1, #0]
	cmp r9, r10
	mov r11, #0
	add r3, r3, #1
	add r2, r8, #1
	movwgt r11, #1
	ldr r8, [sp, #24]
	cmp r8, r2
	mov r8, #0
	movwgt r8, #1
	ands r8, r11, r8
	bne label16
	b label1012
label66:
	add r1, r1, #4
label63:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r3, [r2, r0, lsl #2]
	ldr r8, [sp, #24]
	add r0, r0, #1
	cmp r8, r0
	bgt label66
label81:
	ands r0, r6, r7
	beq label493
	ldr r2, [sp, #20]
	mov r6, r4
	ldr r9, [sp, #8]
	mov r1, r9
	mov r3, r9
	add r0, r2, r9, lsl #2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r7, [r2, r9, lsl #2]
	ldr r2, [r2, r4, lsl #2]
	cmp r7, r2
	blt label88
.p2align 4
label505:
	str r2, [r0, #0]
	cmp r4, r3
	mov r7, #0
	add r1, r1, #1
	ldr r8, [sp, #24]
	add r2, r6, #1
	mov r6, #0
	movwgt r6, #1
	cmp r8, r2
	movwgt r7, #1
	ands r7, r6, r7
	beq label1013
.p2align 4
label92:
	add r0, r0, #4
	mov r6, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r7, [r2, r3, lsl #2]
	ldr r2, [r2, r6, lsl #2]
	cmp r7, r2
	bge label505
.p2align 4
label88:
	str r7, [r0, #0]
	add r3, r3, #1
	mov r2, r6
	cmp r4, r3
	mov r6, #0
	ldr r8, [sp, #24]
	mov r7, #0
	add r1, r1, #1
	movwgt r6, #1
	cmp r8, r2
	movwgt r7, #1
	ands r7, r6, r7
	bne label92
label1013:
	mov r7, r6
	mov r0, r2
	mov r6, r3
	mov r3, r1
label94:
	cmp r7, #0
	beq label99
	add r1, r6, #3
	cmp r4, r1
	ble label676
	ldr r2, [sp, #20]
	add r1, r2, r3, lsl #2
.p2align 4
label142:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r3, #4
	add r2, r2, r6, lsl #2
	add r6, r6, #4
	ldr r7, [r2, #0]
	cmp r5, r6
	str r7, [r1, #0]
	ldr r7, [r2, #4]
	str r7, [r1, #4]
	ldr r7, [r2, #8]
	str r7, [r1, #8]
	ldr r2, [r2, #12]
	str r2, [r1, #12]
	ble label696
	add r1, r1, #16
	b label142
label696:
	mov r1, r3
label147:
	cmp r4, r6
	ble label99
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r6, lsl #2
label152:
	ldr r5, [r3, #0]
	add r6, r6, #1
	ldr r2, [sp, #20]
	cmp r4, r6
	str r5, [r2, r1, lsl #2]
	add r1, r1, #1
	ble label712
	add r3, r3, #4
	b label152
label712:
	mov r3, r1
label99:
	ldr r8, [sp, #24]
	cmp r8, r0
	ble label117
	add r1, r0, #3
	cmp r8, r1
	ble label102
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
	b label112
.p2align 4
label116:
	add r1, r1, #16
.p2align 4
label112:
	ldr r2, [sp, #20]
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
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label116
label102:
	ldr r8, [sp, #24]
	cmp r8, r0
	ble label117
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
	b label106
label110:
	add r1, r1, #4
label106:
	ldr r4, [r1, #0]
	add r0, r0, #1
	ldr r2, [sp, #20]
	str r4, [r2, r3, lsl #2]
	ldr r8, [sp, #24]
	add r3, r3, #1
	cmp r8, r0
	bgt label110
label117:
	ldr r8, [sp, #24]
	ldr r9, [sp, #8]
	cmp r9, r8
	bge label2
	ldr r1, [sp, #4]
	cmp r8, r1
	ble label572
	ldr r2, [sp, #16]
	ldr r1, [sp, #0]
	cmp r1, r2
	bge label591
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r9, lsl #2
.p2align 4
label136:
	ldr r2, [sp, #20]
	add r1, r2, r9, lsl #2
	add r9, r9, #16
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
	ldr r2, [sp, #12]
	cmp r2, r9
	ble label670
	add r0, r0, #64
	b label136
label670:
	mov r0, r9
label127:
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label119
	ldr r2, [sp, #20]
	add r1, r2, r0, lsl #2
	b label131
label134:
	add r1, r1, #16
label131:
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
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label134
	mov r9, r0
label119:
	ldr r8, [sp, #24]
	cmp r8, r9
	ble label2
	ldr r2, [sp, #20]
	add r0, r2, r9, lsl #2
label122:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r9, lsl #2]
	ldr r8, [sp, #24]
	add r9, r9, #1
	cmp r8, r9
	ble label2
	add r0, r0, #4
	b label122
label2:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label157:
	ldr r9, [sp, #8]
	add r0, r9, r4
	add r0, r0, r0, lsr #31
	asr r7, r0, #1
	mov r0, r9
	mov r1, r7
	bl merge_sort
	mov r0, r7
	mov r1, r4
	bl merge_sort
	sub r1, r7, #3
	mov r10, #0
	mov r0, #0
	cmp r4, r7
	movwgt r0, #1
	cmp r9, r7
	movwlt r10, #1
	ands r0, r0, r10
	sub r0, r4, #18
	beq label723
	ldr r2, [sp, #20]
	mov r10, r7
	ldr r9, [sp, #8]
	mov r8, r9
	add r3, r2, r9, lsl #2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r11, [r2, r9, lsl #2]
	ldr r2, [r2, r7, lsl #2]
	cmp r11, r2
	blt label232
	str r2, [r3, #0]
	add r2, r7, #1
	cmp r7, r9
	mov r10, #0
	mov r11, #0
	add r9, r9, #1
	movwgt r10, #1
	cmp r4, r2
	movwgt r11, #1
	ands r11, r10, r11
	bne label231
	b label940
.p2align 4
label232:
	str r11, [r3, #0]
	add r8, r8, #1
	mov r2, r10
	add r9, r9, #1
	mov r11, #0
	cmp r7, r8
	mov r10, #0
	movwgt r10, #1
	cmp r4, r2
	movwgt r11, #1
	ands r11, r10, r11
	beq label940
.p2align 4
label231:
	add r3, r3, #4
	mov r10, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r11, [r2, r8, lsl #2]
	ldr r2, [r2, r10, lsl #2]
	cmp r11, r2
	blt label232
	str r2, [r3, #0]
	cmp r7, r8
	mov r11, #0
	add r9, r9, #1
	add r2, r10, #1
	mov r10, #0
	movwgt r10, #1
	cmp r4, r2
	movwgt r11, #1
	ands r11, r10, r11
	bne label231
label940:
	mov r3, r2
label158:
	cmp r10, #0
	beq label726
	add r2, r8, #3
	cmp r7, r2
	ble label883
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r10, r2, r8, lsl #2
	b label216
label220:
	add r10, r10, #16
label216:
	ldr r2, [sp, #20]
	add r8, r8, #4
	ldr r11, [r10, #0]
	cmp r1, r8
	add r2, r2, r9, lsl #2
	add r9, r9, #4
	str r11, [r2, #0]
	ldr r11, [r10, #4]
	str r11, [r2, #4]
	ldr r11, [r10, #8]
	str r11, [r2, #8]
	ldr r11, [r10, #12]
	str r11, [r2, #12]
	bgt label220
	mov r1, r9
label205:
	cmp r7, r8
	ble label726
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r9, r2, r8, lsl #2
	b label210
label214:
	add r9, r9, #4
label210:
	ldr r10, [r9, #0]
	add r8, r8, #1
	ldr r2, [sp, #20]
	cmp r7, r8
	str r10, [r2, r1, lsl #2]
	add r1, r1, #1
	bgt label214
label163:
	cmp r4, r3
	ble label181
	add r2, r3, #3
	cmp r4, r2
	ble label172
	ldr r2, [sp, #20]
	add r7, r2, r1, lsl #2
	b label167
label171:
	add r7, r7, #16
label167:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r1, #4
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	ldr r8, [r2, #0]
	cmp r5, r3
	str r8, [r7, #0]
	ldr r8, [r2, #4]
	str r8, [r7, #4]
	ldr r8, [r2, #8]
	str r8, [r7, #8]
	ldr r2, [r2, #12]
	str r2, [r7, #12]
	bgt label171
label172:
	cmp r4, r3
	ble label181
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r7, r2, r3, lsl #2
label176:
	ldr r8, [r7, #0]
	add r3, r3, #1
	ldr r2, [sp, #20]
	cmp r4, r3
	str r8, [r2, r1, lsl #2]
	add r1, r1, #1
	ble label181
	add r7, r7, #4
	b label176
label181:
	ldr r9, [sp, #8]
	cmp r9, r4
	bge label4
	ldr r1, [sp, #4]
	cmp r4, r1
	ble label779
	ldr r1, [sp, #0]
	cmp r5, r1
	ble label783
	ldr r2, [sp, #20]
	add r1, r2, r9, lsl #2
	b label193
label196:
	add r1, r1, #64
label193:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r1, #0]
	add r2, r2, r9, lsl #2
	add r9, r9, #16
	cmp r0, r9
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
	bgt label196
	mov r0, r9
label184:
	cmp r5, r0
	ble label197
	ldr r2, [sp, #20]
	add r1, r2, r0, lsl #2
label188:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r1, #0]
	add r2, r2, r0, lsl #2
	add r0, r0, #4
	cmp r5, r0
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r3, [r1, #12]
	str r3, [r2, #12]
	ble label806
	add r1, r1, #16
	b label188
label1012:
	mov r1, r2
label18:
	cmp r11, #0
	beq label40
	add r2, r10, #3
	cmp r9, r2
	ble label298
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r8, r2, r10, lsl #2
	b label25
label29:
	add r8, r8, #16
label25:
	ldr r2, [sp, #20]
	add r10, r10, #4
	ldr r11, [r8, #0]
	cmp r0, r10
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	str r11, [r2, #0]
	ldr r11, [r8, #4]
	str r11, [r2, #4]
	ldr r11, [r8, #8]
	str r11, [r2, #8]
	ldr r11, [r8, #12]
	str r11, [r2, #12]
	bgt label29
	mov r0, r3
label30:
	cmp r9, r10
	ble label40
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r10, lsl #2
	b label35
label39:
	add r3, r3, #4
label35:
	ldr r8, [r3, #0]
	add r10, r10, #1
	ldr r2, [sp, #20]
	cmp r9, r10
	str r8, [r2, r0, lsl #2]
	add r0, r0, #1
	bgt label39
	mov r3, r0
label40:
	ldr r8, [sp, #24]
	cmp r8, r1
	ble label58
	add r0, r1, #3
	cmp r8, r0
	ble label49
	ldr r2, [sp, #20]
	add r0, r2, r3, lsl #2
	b label44
label48:
	add r0, r0, #16
label44:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r3, #4
	add r2, r2, r1, lsl #2
	add r1, r1, #4
	ldr r8, [r2, #0]
	str r8, [r0, #0]
	ldr r8, [r2, #4]
	str r8, [r0, #4]
	ldr r8, [r2, #8]
	str r8, [r0, #8]
	ldr r2, [r2, #12]
	str r2, [r0, #12]
	ldr r2, [sp, #16]
	cmp r2, r1
	bgt label48
label49:
	ldr r8, [sp, #24]
	cmp r8, r1
	ble label58
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r1, lsl #2
	b label53
label57:
	add r0, r0, #4
label53:
	ldr r8, [r0, #0]
	add r1, r1, #1
	ldr r2, [sp, #20]
	str r8, [r2, r3, lsl #2]
	ldr r8, [sp, #24]
	add r3, r3, #1
	cmp r8, r1
	bgt label57
label58:
	ldr r8, [sp, #24]
	cmp r8, r4
	ble label81
	add r0, r4, #3
	cmp r8, r0
	ble label389
	add r0, r4, #15
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label409
	ldr r2, [sp, #20]
	mov r1, r4
	add r0, r2, r4, lsl #2
	b label77
label80:
	add r0, r0, #64
label77:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r0, #0]
	add r2, r2, r1, lsl #2
	add r1, r1, #16
	str r3, [r2, #0]
	ldr r3, [r0, #4]
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	str r3, [r2, #8]
	ldr r3, [r0, #12]
	str r3, [r2, #12]
	ldr r3, [r0, #16]
	str r3, [r2, #16]
	ldr r3, [r0, #20]
	str r3, [r2, #20]
	ldr r3, [r0, #24]
	str r3, [r2, #24]
	ldr r3, [r0, #28]
	str r3, [r2, #28]
	ldr r3, [r0, #32]
	str r3, [r2, #32]
	ldr r3, [r0, #36]
	str r3, [r2, #36]
	ldr r3, [r0, #40]
	str r3, [r2, #40]
	ldr r3, [r0, #44]
	str r3, [r2, #44]
	ldr r3, [r0, #48]
	str r3, [r2, #48]
	ldr r3, [r0, #52]
	str r3, [r2, #52]
	ldr r3, [r0, #56]
	str r3, [r2, #56]
	ldr r3, [r0, #60]
	str r3, [r2, #60]
	ldr r2, [sp, #12]
	cmp r2, r1
	bgt label80
	mov r0, r1
label68:
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label413
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
label72:
	ldr r2, [sp, #20]
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
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label60
	add r1, r1, #16
	b label72
label806:
	mov r9, r0
label197:
	cmp r4, r9
	ble label4
	ldr r2, [sp, #20]
	add r0, r2, r9, lsl #2
	b label200
label203:
	add r0, r0, #4
label200:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r9, lsl #2]
	add r9, r9, #1
	cmp r4, r9
	bgt label203
	b label4
label60:
	ldr r8, [sp, #24]
	cmp r8, r0
	ble label81
	ldr r2, [sp, #20]
	add r1, r2, r0, lsl #2
	b label63
label726:
	mov r1, r9
	b label163
label572:
	ldr r9, [sp, #8]
	b label119
label413:
	mov r0, r1
	b label60
label409:
	mov r0, r4
	mov r1, #0
	b label68
label389:
	mov r0, r4
	b label60
label298:
	mov r0, r3
	mov r3, #0
	b label30
label779:
	ldr r9, [sp, #8]
	b label197
label883:
	mov r1, r9
	mov r9, #0
	b label205
label676:
	mov r1, r3
	mov r3, #0
	b label147
label591:
	ldr r9, [sp, #8]
	mov r0, r9
	mov r9, #0
	b label127
label783:
	ldr r9, [sp, #8]
	mov r0, r9
	mov r9, #0
	b label184
label268:
	mov r10, r4
	mov r1, r9
	mov r3, r4
	b label18
label723:
	ldr r9, [sp, #8]
	mov r3, r7
	mov r8, r9
	b label158
label493:
	mov r7, r6
	ldr r9, [sp, #8]
	mov r0, r4
	mov r3, r9
	mov r6, r9
	b label94
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
