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
	mov r6, r1
	mov r5, r0
	sub sp, sp, #36
	str r0, [sp, #12]
	add r0, r0, #1
	str r1, [sp, #28]
	cmp r1, r0
	ble label2
	ldr r5, [sp, #12]
	add r2, r5, #16
	add r1, r5, r1
	add r1, r1, r1, lsr #31
	asr r8, r1, #1
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	sub r4, r8, #4
	str r8, [sp, #0]
	cmp r0, r8
	add r1, r1, #400
	str r1, [sp, #20]
	add r1, r5, #4
	str r1, [sp, #8]
	sub r1, r6, #4
	str r2, [sp, #4]
	str r1, [sp, #24]
	sub r1, r6, #20
	str r1, [sp, #16]
	blt label131
label4:
	ldr r8, [sp, #0]
	ldr r6, [sp, #28]
	add r0, r8, #1
	cmp r6, r0
	ble label106
	add r0, r6, r8
	add r0, r0, r0, lsr #31
	asr r5, r0, #1
	mov r0, r8
	mov r1, r5
	bl merge_sort
	mov r0, r5
	mov r1, r6
	bl merge_sort
	mov r0, r5
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	ldr r8, [sp, #0]
	sub r2, r5, #4
	add r3, r1, r5, lsl #2
	mov r9, r8
	add r7, r1, r8, lsl #2
	ldr r1, [sp, #20]
	add r1, r1, r8, lsl #2
	cmp r5, r8
	mov r10, #0
	ldr r6, [sp, #28]
	movwgt r10, #1
	cmp r6, r5
	mov r6, #0
	movwgt r6, #1
	ands r6, r10, r6
	beq label74
.p2align 4
label127:
	ldr r6, [r7, #0]
	add r9, r9, #1
	ldr r10, [r3, #0]
	cmp r6, r10
	blt label128
	str r10, [r1, #0]
	add r0, r0, #1
	add r3, r3, #4
	add r1, r1, #4
	cmp r5, r8
	mov r10, #0
	ldr r6, [sp, #28]
	movwgt r10, #1
	cmp r6, r0
	mov r6, #0
	movwgt r6, #1
	ands r6, r10, r6
	bne label127
	b label74
.p2align 4
label128:
	str r6, [r1, #0]
	add r8, r8, #1
	add r7, r7, #4
	add r1, r1, #4
	cmp r5, r8
	mov r10, #0
	ldr r6, [sp, #28]
	movwgt r10, #1
	cmp r6, r0
	mov r6, #0
	movwgt r6, #1
	ands r6, r10, r6
	bne label127
	b label74
label5:
	ldr r8, [sp, #0]
	ldr r6, [sp, #28]
	cmp r8, r5
	mov r8, #0
	movwgt r8, #1
	cmp r6, r0
	mov r6, #0
	movwgt r6, #1
	ands r6, r8, r6
	bne label63
	b label12
label106:
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	ldr r5, [sp, #12]
	ldr r8, [sp, #0]
	add r3, r1, r5, lsl #2
	mov r7, r5
	mov r0, r8
	add r2, r1, r8, lsl #2
	ldr r1, [sp, #20]
	add r1, r1, r5, lsl #2
	b label5
label12:
	ldr r8, [sp, #0]
	cmp r8, r5
	ble label225
	add r1, r5, #4
	cmp r8, r1
	ble label376
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r2, r1, r5, lsl #2
	b label51
.p2align 4
label63:
	ldr r6, [r3, #0]
	add r7, r7, #1
	ldr r8, [r2, #0]
	cmp r6, r8
	blt label65
	str r8, [r1, #0]
	add r0, r0, #1
	add r2, r2, #4
	add r1, r1, #4
	ldr r8, [sp, #0]
	ldr r6, [sp, #28]
	cmp r8, r5
	mov r8, #0
	movwgt r8, #1
	cmp r6, r0
	mov r6, #0
	movwgt r6, #1
	ands r6, r8, r6
	bne label63
	b label12
.p2align 4
label65:
	str r6, [r1, #0]
	add r5, r5, #1
	add r3, r3, #4
	add r1, r1, #4
	ldr r8, [sp, #0]
	ldr r6, [sp, #28]
	cmp r8, r5
	mov r8, #0
	movwgt r8, #1
	cmp r6, r0
	mov r6, #0
	movwgt r6, #1
	ands r6, r8, r6
	bne label63
	b label12
.p2align 4
label51:
	ldr r3, [r2, #0]
	add r5, r5, #4
	ldr r1, [sp, #20]
	cmp r4, r5
	add r1, r1, r7, lsl #2
	add r7, r7, #4
	str r3, [r1, #0]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	ldr r3, [r2, #12]
	str r3, [r1, #12]
	ble label376
	add r2, r2, #16
	b label51
label376:
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r2, r1, r5, lsl #2
label58:
	ldr r3, [r2, #0]
	add r5, r5, #1
	ldr r1, [sp, #20]
	str r3, [r1, r7, lsl #2]
	ldr r8, [sp, #0]
	add r7, r7, #1
	cmp r8, r5
	ble label225
	add r2, r2, #4
	b label58
label225:
	mov r3, r7
	ldr r6, [sp, #28]
	cmp r6, r0
	ble label29
	add r1, r0, #4
	cmp r6, r1
	bgt label16
label233:
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r2, r1, r0, lsl #2
label23:
	ldr r4, [r2, #0]
	add r0, r0, #1
	ldr r1, [sp, #20]
	str r4, [r1, r3, lsl #2]
	ldr r6, [sp, #28]
	add r3, r3, #1
	cmp r6, r0
	ble label29
	add r2, r2, #4
	b label23
label29:
	ldr r6, [sp, #28]
	ldr r5, [sp, #12]
	cmp r5, r6
	bge label2
	ldr r1, [sp, #8]
	cmp r6, r1
	ble label276
	ldr r1, [sp, #24]
	ldr r2, [sp, #4]
	cmp r2, r1
	bge label280
	ldr r1, [sp, #20]
	add r0, r1, r5, lsl #2
.p2align 4
label39:
	ldr r2, [r0, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r1, r1, r5, lsl #2
	add r5, r5, #16
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
	cmp r1, r5
	ble label357
	add r0, r0, #64
	b label39
label32:
	ldr r2, [r0, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r1, r1, r5, lsl #2
	add r5, r5, #4
	str r2, [r1, #0]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r2, [r0, #12]
	str r2, [r1, #12]
	ldr r1, [sp, #24]
	cmp r1, r5
	ble label35
	add r0, r0, #16
	b label32
label357:
	ldr r1, [sp, #20]
	add r0, r1, r5, lsl #2
	b label32
label35:
	ldr r1, [sp, #20]
	add r0, r1, r5, lsl #2
label44:
	ldr r2, [r0, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	str r2, [r1, r5, lsl #2]
	ldr r6, [sp, #28]
	add r5, r5, #1
	cmp r6, r5
	ble label2
	add r0, r0, #4
	b label44
label2:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label131:
	ldr r5, [sp, #12]
	ldr r8, [sp, #0]
	add r0, r5, r8
	add r0, r0, r0, lsr #31
	asr r6, r0, #1
	mov r0, r5
	mov r1, r6
	bl merge_sort
	ldr r8, [sp, #0]
	mov r0, r6
	mov r1, r8
	bl merge_sort
	mov r2, r6
	mov r9, r5
	ldr r8, [sp, #0]
	sub r3, r6, #4
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r7, r1, r6, lsl #2
	add r10, r1, r5, lsl #2
	sub r0, r8, #20
	ldr r1, [sp, #20]
	add r1, r1, r5, lsl #2
	cmp r6, r5
	mov r11, #0
	movwgt r11, #1
	cmp r8, r6
	mov r8, #0
	movwgt r8, #1
	ands r8, r11, r8
	bne label190
label139:
	cmp r6, r5
	ble label680
	add r1, r5, #4
	cmp r6, r1
	ble label685
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r7, r1, r5, lsl #2
label147:
	ldr r8, [r7, #0]
	add r5, r5, #4
	ldr r1, [sp, #20]
	cmp r3, r5
	add r1, r1, r9, lsl #2
	add r9, r9, #4
	str r8, [r1, #0]
	ldr r8, [r7, #4]
	str r8, [r1, #4]
	ldr r8, [r7, #8]
	str r8, [r1, #8]
	ldr r8, [r7, #12]
	str r8, [r1, #12]
	ble label685
	add r7, r7, #16
	b label147
.p2align 4
label190:
	ldr r8, [r10, #0]
	add r9, r9, #1
	ldr r11, [r7, #0]
	cmp r8, r11
	blt label191
	str r11, [r1, #0]
	add r2, r2, #1
	add r7, r7, #4
	add r1, r1, #4
	cmp r6, r5
	mov r11, #0
	ldr r8, [sp, #0]
	movwgt r11, #1
	cmp r8, r2
	mov r8, #0
	movwgt r8, #1
	ands r8, r11, r8
	bne label190
	b label139
.p2align 4
label191:
	str r8, [r1, #0]
	add r5, r5, #1
	add r10, r10, #4
	add r1, r1, #4
	cmp r6, r5
	mov r11, #0
	ldr r8, [sp, #0]
	movwgt r11, #1
	cmp r8, r2
	mov r8, #0
	movwgt r8, #1
	ands r8, r11, r8
	bne label190
	b label139
label680:
	mov r5, r9
	ldr r8, [sp, #0]
	cmp r8, r2
	ble label170
	add r1, r2, #4
	cmp r8, r1
	ble label728
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r3, r1, r2, lsl #2
label158:
	ldr r6, [r3, #0]
	add r2, r2, #4
	ldr r1, [sp, #20]
	cmp r4, r2
	add r1, r1, r5, lsl #2
	add r5, r5, #4
	str r6, [r1, #0]
	ldr r6, [r3, #4]
	str r6, [r1, #4]
	ldr r6, [r3, #8]
	str r6, [r1, #8]
	ldr r6, [r3, #12]
	str r6, [r1, #12]
	ble label728
	add r3, r3, #16
	b label158
label728:
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r3, r1, r2, lsl #2
label164:
	ldr r6, [r3, #0]
	add r2, r2, #1
	ldr r1, [sp, #20]
	str r6, [r1, r5, lsl #2]
	ldr r8, [sp, #0]
	add r5, r5, #1
	cmp r8, r2
	ble label170
	add r3, r3, #4
	b label164
label74:
	cmp r5, r8
	ble label442
	add r1, r8, #4
	cmp r5, r1
	ble label447
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r3, r1, r8, lsl #2
label77:
	ldr r6, [r3, #0]
	add r8, r8, #4
	ldr r1, [sp, #20]
	cmp r2, r8
	add r1, r1, r9, lsl #2
	add r9, r9, #4
	str r6, [r1, #0]
	ldr r6, [r3, #4]
	str r6, [r1, #4]
	ldr r6, [r3, #8]
	str r6, [r1, #8]
	ldr r6, [r3, #12]
	str r6, [r1, #12]
	ble label447
	add r3, r3, #16
	b label77
label442:
	mov r3, r9
	ldr r6, [sp, #28]
	cmp r6, r0
	ble label105
	add r1, r0, #4
	cmp r6, r1
	ble label490
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r2, r1, r0, lsl #2
label93:
	ldr r5, [r2, #0]
	add r0, r0, #4
	ldr r1, [sp, #20]
	add r1, r1, r3, lsl #2
	add r3, r3, #4
	str r5, [r1, #0]
	ldr r5, [r2, #4]
	str r5, [r1, #4]
	ldr r5, [r2, #8]
	str r5, [r1, #8]
	ldr r5, [r2, #12]
	str r5, [r1, #12]
	ldr r1, [sp, #24]
	cmp r1, r0
	ble label490
	add r2, r2, #16
	b label93
label170:
	ldr r5, [sp, #12]
	ldr r8, [sp, #0]
	cmp r5, r8
	bge label4
	ldr r1, [sp, #8]
	cmp r8, r1
	ble label771
	ldr r2, [sp, #4]
	cmp r4, r2
	ble label173
	ldr r1, [sp, #20]
	add r2, r1, r5, lsl #2
label175:
	ldr r3, [r2, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r1, r1, r5, lsl #2
	add r5, r5, #16
	cmp r0, r5
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
	ldr r3, [r2, #60]
	str r3, [r1, #60]
	ble label832
	add r2, r2, #64
	b label175
label832:
	ldr r1, [sp, #20]
	add r0, r1, r5, lsl #2
label180:
	ldr r2, [r0, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r1, r1, r5, lsl #2
	add r5, r5, #4
	cmp r4, r5
	str r2, [r1, #0]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r2, [r0, #12]
	str r2, [r1, #12]
	ble label852
	add r0, r0, #16
	b label180
label852:
	ldr r1, [sp, #20]
	add r0, r1, r5, lsl #2
label186:
	ldr r2, [r0, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	str r2, [r1, r5, lsl #2]
	ldr r8, [sp, #0]
	add r5, r5, #1
	cmp r8, r5
	ble label4
	add r0, r0, #4
	b label186
label447:
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r2, r1, r8, lsl #2
label83:
	ldr r3, [r2, #0]
	add r8, r8, #1
	ldr r1, [sp, #20]
	cmp r5, r8
	str r3, [r1, r9, lsl #2]
	add r9, r9, #1
	ble label442
	add r2, r2, #4
	b label83
label490:
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r2, r1, r0, lsl #2
label99:
	ldr r5, [r2, #0]
	add r0, r0, #1
	ldr r1, [sp, #20]
	str r5, [r1, r3, lsl #2]
	ldr r6, [sp, #28]
	add r3, r3, #1
	cmp r6, r0
	ble label105
	add r2, r2, #4
	b label99
label105:
	ldr r6, [sp, #28]
	ldr r8, [sp, #0]
	cmp r6, r8
	ble label106
	add r0, r8, #4
	cmp r6, r0
	ble label540
	ldr r1, [sp, #24]
	add r0, r8, #16
	cmp r1, r0
	ble label545
	ldr r1, [sp, #20]
	add r0, r1, r8, lsl #2
label116:
	ldr r2, [r0, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r1, r1, r8, lsl #2
	add r8, r8, #16
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
	cmp r1, r8
	ble label119
	add r0, r0, #64
	b label116
label109:
	ldr r2, [r0, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r1, r1, r8, lsl #2
	add r8, r8, #4
	str r2, [r1, #0]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r2, [r0, #12]
	str r2, [r1, #12]
	ldr r1, [sp, #24]
	cmp r1, r8
	ble label112
	add r0, r0, #16
	b label109
label119:
	ldr r1, [sp, #20]
	add r0, r1, r8, lsl #2
	b label109
label112:
	ldr r1, [sp, #20]
	add r0, r1, r8, lsl #2
label121:
	ldr r2, [r0, #0]
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	str r2, [r1, r8, lsl #2]
	ldr r6, [sp, #28]
	add r8, r8, #1
	cmp r6, r8
	ble label106
	add r0, r0, #4
	b label121
label685:
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r3, r1, r5, lsl #2
label141:
	ldr r7, [r3, #0]
	add r5, r5, #1
	ldr r1, [sp, #20]
	cmp r6, r5
	str r7, [r1, r9, lsl #2]
	add r9, r9, #1
	ble label680
	add r3, r3, #4
	b label141
label173:
	ldr r1, [sp, #20]
	ldr r5, [sp, #12]
	add r0, r1, r5, lsl #2
	b label180
label16:
	movw r1, #:lower16:buf
	movt r1, #:upper16:buf
	add r2, r1, r0, lsl #2
.p2align 4
label17:
	ldr r4, [r2, #0]
	add r0, r0, #4
	ldr r1, [sp, #20]
	add r1, r1, r3, lsl #2
	add r3, r3, #4
	str r4, [r1, #0]
	ldr r4, [r2, #4]
	str r4, [r1, #4]
	ldr r4, [r2, #8]
	str r4, [r1, #8]
	ldr r4, [r2, #12]
	str r4, [r1, #12]
	ldr r1, [sp, #24]
	cmp r1, r0
	ble label233
	add r2, r2, #16
	b label17
label540:
	ldr r1, [sp, #20]
	ldr r8, [sp, #0]
	add r0, r1, r8, lsl #2
	b label121
label280:
	ldr r1, [sp, #20]
	ldr r5, [sp, #12]
	add r0, r1, r5, lsl #2
	b label32
label276:
	ldr r1, [sp, #20]
	ldr r5, [sp, #12]
	add r0, r1, r5, lsl #2
	b label44
label545:
	ldr r1, [sp, #20]
	ldr r8, [sp, #0]
	add r0, r1, r8, lsl #2
	b label109
label771:
	ldr r1, [sp, #20]
	ldr r5, [sp, #12]
	add r0, r1, r5, lsl #2
	b label186
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
