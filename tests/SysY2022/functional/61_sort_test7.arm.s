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
	ble label5
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
	beq label491
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
	bge label503
.p2align 4
label88:
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
label92:
	add r1, r1, #4
	mov r8, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r11, [r2, r10, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	cmp r11, r2
	blt label88
.p2align 4
label503:
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
	bne label92
	b label1012
label125:
	add r1, r1, #4
label122:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r3, [r2, r0, lsl #2]
	ldr r8, [sp, #24]
	add r0, r0, #1
	cmp r8, r0
	bgt label125
label5:
	ands r0, r6, r7
	beq label262
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
	bge label472
.p2align 4
label75:
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
	beq label1011
.p2align 4
label79:
	add r0, r0, #4
	mov r6, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r7, [r2, r3, lsl #2]
	ldr r2, [r2, r6, lsl #2]
	cmp r7, r2
	blt label75
.p2align 4
label472:
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
	bne label79
label1011:
	mov r7, r6
	mov r0, r2
	mov r6, r3
	mov r3, r1
label6:
	cmp r7, #0
	beq label28
	add r1, r6, #3
	cmp r4, r1
	ble label270
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r6, lsl #2
	b label23
.p2align 4
label27:
	add r1, r1, #16
.p2align 4
label23:
	ldr r7, [r1, #0]
	add r6, r6, #4
	ldr r2, [sp, #20]
	cmp r5, r6
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	str r7, [r2, #0]
	ldr r7, [r1, #4]
	str r7, [r2, #4]
	ldr r7, [r1, #8]
	str r7, [r2, #8]
	ldr r7, [r1, #12]
	str r7, [r2, #12]
	bgt label27
	mov r1, r3
label12:
	cmp r4, r6
	ble label28
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r6, lsl #2
	b label17
label21:
	add r3, r3, #4
label17:
	ldr r5, [r3, #0]
	add r6, r6, #1
	ldr r2, [sp, #20]
	cmp r4, r6
	str r5, [r2, r1, lsl #2]
	add r1, r1, #1
	bgt label21
	mov r3, r1
label28:
	ldr r8, [sp, #24]
	cmp r8, r0
	ble label30
	add r1, r0, #3
	cmp r8, r1
	ble label54
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
	b label64
.p2align 4
label68:
	add r1, r1, #16
.p2align 4
label64:
	ldr r4, [r1, #0]
	add r0, r0, #4
	ldr r2, [sp, #20]
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
	bgt label68
label54:
	ldr r8, [sp, #24]
	cmp r8, r0
	ble label30
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r0, lsl #2
	b label58
label62:
	add r1, r1, #4
label58:
	ldr r4, [r1, #0]
	add r0, r0, #1
	ldr r2, [sp, #20]
	str r4, [r2, r3, lsl #2]
	ldr r8, [sp, #24]
	add r3, r3, #1
	cmp r8, r0
	bgt label62
label30:
	ldr r8, [sp, #24]
	ldr r9, [sp, #8]
	cmp r9, r8
	bge label2
	ldr r1, [sp, #4]
	cmp r8, r1
	ble label319
	ldr r2, [sp, #16]
	ldr r1, [sp, #0]
	cmp r1, r2
	bge label323
	ldr r2, [sp, #20]
	add r0, r2, r9, lsl #2
.p2align 4
label42:
	ldr r3, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r9, lsl #2
	add r9, r9, #16
	str r3, [r1, #0]
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
	ldr r2, [sp, #12]
	cmp r2, r9
	ble label402
	add r0, r0, #64
	b label42
label402:
	mov r0, r9
label33:
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label46
	ldr r2, [sp, #20]
	add r1, r2, r0, lsl #2
label37:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
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
	ble label346
	add r1, r1, #16
	b label37
label346:
	mov r9, r0
label46:
	ldr r8, [sp, #24]
	cmp r8, r9
	ble label2
	ldr r2, [sp, #20]
	add r0, r2, r9, lsl #2
label49:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r9, lsl #2]
	ldr r8, [sp, #24]
	add r9, r9, #1
	cmp r8, r9
	ble label2
	add r0, r0, #4
	b label49
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
	beq label722
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
	blt label169
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
	bne label168
	b label742
.p2align 4
label169:
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
	beq label742
.p2align 4
label168:
	add r3, r3, #4
	mov r10, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r11, [r2, r8, lsl #2]
	ldr r2, [r2, r10, lsl #2]
	cmp r11, r2
	blt label169
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
	bne label168
label742:
	mov r3, r2
label170:
	cmp r10, #0
	beq label192
	add r2, r8, #3
	cmp r7, r2
	ble label752
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r10, r2, r8, lsl #2
label187:
	ldr r11, [r10, #0]
	add r8, r8, #4
	ldr r2, [sp, #20]
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
	ble label788
	add r10, r10, #16
	b label187
label788:
	mov r1, r9
label176:
	cmp r7, r8
	ble label192
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r9, r2, r8, lsl #2
label181:
	ldr r10, [r9, #0]
	add r8, r8, #1
	ldr r2, [sp, #20]
	cmp r7, r8
	str r10, [r2, r1, lsl #2]
	add r1, r1, #1
	ble label767
	add r9, r9, #4
	b label181
label767:
	mov r9, r1
label192:
	cmp r4, r3
	ble label210
	add r1, r3, #3
	cmp r4, r1
	ble label201
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r3, lsl #2
label196:
	ldr r7, [r1, #0]
	add r3, r3, #4
	ldr r2, [sp, #20]
	cmp r5, r3
	add r2, r2, r9, lsl #2
	add r9, r9, #4
	str r7, [r2, #0]
	ldr r7, [r1, #4]
	str r7, [r2, #4]
	ldr r7, [r1, #8]
	str r7, [r2, #8]
	ldr r7, [r1, #12]
	str r7, [r2, #12]
	ble label201
	add r1, r1, #16
	b label196
label201:
	cmp r4, r3
	ble label210
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r3, lsl #2
label205:
	ldr r7, [r1, #0]
	add r3, r3, #1
	ldr r2, [sp, #20]
	cmp r4, r3
	str r7, [r2, r9, lsl #2]
	add r9, r9, #1
	ble label210
	add r1, r1, #4
	b label205
label210:
	ldr r9, [sp, #8]
	cmp r9, r4
	bge label4
	ldr r1, [sp, #4]
	cmp r4, r1
	ble label842
	ldr r1, [sp, #0]
	cmp r5, r1
	ble label846
	ldr r2, [sp, #20]
	add r1, r2, r9, lsl #2
label222:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
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
	ble label925
	add r1, r1, #64
	b label222
label925:
	mov r0, r9
label213:
	cmp r5, r0
	ble label226
	ldr r2, [sp, #20]
	add r1, r2, r0, lsl #2
label217:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
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
	ble label869
	add r1, r1, #16
	b label217
label1012:
	mov r1, r2
label94:
	cmp r11, #0
	beq label99
	add r2, r10, #3
	cmp r9, r2
	ble label675
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r8, r2, r10, lsl #2
	b label142
label146:
	add r8, r8, #16
label142:
	ldr r11, [r8, #0]
	add r10, r10, #4
	ldr r2, [sp, #20]
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
	bgt label146
	mov r0, r3
label147:
	cmp r9, r10
	ble label99
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r2, r10, lsl #2
label152:
	ldr r8, [r3, #0]
	add r10, r10, #1
	ldr r2, [sp, #20]
	cmp r9, r10
	str r8, [r2, r0, lsl #2]
	add r0, r0, #1
	ble label711
	add r3, r3, #4
	b label152
label711:
	mov r3, r0
label99:
	ldr r8, [sp, #24]
	cmp r8, r1
	ble label117
	add r0, r1, #3
	cmp r8, r0
	ble label108
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r1, lsl #2
label103:
	ldr r8, [r0, #0]
	add r1, r1, #4
	ldr r2, [sp, #20]
	add r2, r2, r3, lsl #2
	add r3, r3, #4
	str r8, [r2, #0]
	ldr r8, [r0, #4]
	str r8, [r2, #4]
	ldr r8, [r0, #8]
	str r8, [r2, #8]
	ldr r8, [r0, #12]
	str r8, [r2, #12]
	ldr r2, [sp, #16]
	cmp r2, r1
	ble label108
	add r0, r0, #16
	b label103
label108:
	ldr r8, [sp, #24]
	cmp r8, r1
	ble label117
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r0, r2, r1, lsl #2
label112:
	ldr r8, [r0, #0]
	add r1, r1, #1
	ldr r2, [sp, #20]
	str r8, [r2, r3, lsl #2]
	ldr r8, [sp, #24]
	add r3, r3, #1
	cmp r8, r1
	ble label117
	add r0, r0, #4
	b label112
label117:
	ldr r8, [sp, #24]
	cmp r8, r4
	ble label5
	add r0, r4, #3
	cmp r8, r0
	ble label570
	add r0, r4, #15
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label590
	ldr r2, [sp, #20]
	mov r1, r4
	add r0, r2, r4, lsl #2
	b label136
label139:
	add r0, r0, #64
label136:
	ldr r3, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
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
	bgt label139
	mov r0, r1
label127:
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label594
	ldr r2, [sp, #20]
	add r1, r2, r0, lsl #2
	b label131
label134:
	add r1, r1, #16
label131:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
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
label119:
	ldr r8, [sp, #24]
	cmp r8, r0
	ble label5
	ldr r2, [sp, #20]
	add r1, r2, r0, lsl #2
	b label122
label869:
	mov r9, r0
label226:
	cmp r4, r9
	ble label4
	ldr r2, [sp, #20]
	add r0, r2, r9, lsl #2
	b label229
label232:
	add r0, r0, #4
label229:
	ldr r1, [r0, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r1, [r2, r9, lsl #2]
	add r9, r9, #1
	cmp r4, r9
	bgt label232
	b label4
label594:
	mov r0, r1
	b label119
label590:
	mov r0, r4
	mov r1, #0
	b label127
label570:
	mov r0, r4
	b label119
label675:
	mov r0, r3
	mov r3, #0
	b label147
label846:
	ldr r9, [sp, #8]
	mov r0, r9
	mov r9, #0
	b label213
label491:
	mov r10, r4
	mov r1, r9
	mov r3, r4
	b label94
label319:
	ldr r9, [sp, #8]
	b label46
label323:
	ldr r9, [sp, #8]
	mov r0, r9
	mov r9, #0
	b label33
label752:
	mov r1, r9
	mov r9, #0
	b label176
label262:
	mov r7, r6
	ldr r9, [sp, #8]
	mov r0, r4
	mov r3, r9
	mov r6, r9
	b label6
label270:
	mov r1, r3
	mov r3, #0
	b label12
label722:
	ldr r9, [sp, #8]
	mov r3, r7
	mov r8, r9
	b label170
label842:
	ldr r9, [sp, #8]
	b label226
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
