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
	mov r7, r0
	sub sp, sp, #36
	str r0, [sp, #12]
	add r0, r0, #1
	str r1, [sp, #24]
	cmp r1, r0
	bgt label2
label207:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label2:
	ldr r8, [sp, #24]
	mov r5, #0
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r7, [sp, #12]
	add r9, r2, #400
	add r1, r7, r8
	add r2, r7, #4
	add r1, r1, r1, lsr #31
	asr r3, r1, #1
	add r1, r7, #20
	sub r4, r3, #4
	str r3, [sp, #0]
	cmp r7, r3
	str r9, [sp, #20]
	movwlt r5, #1
	str r2, [sp, #8]
	cmp r0, r3
	str r1, [sp, #4]
	sub r1, r8, #16
	str r1, [sp, #16]
	bge label3
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
	sub r1, r6, #4
	mov r11, #0
	ldr r3, [sp, #0]
	mov r10, #0
	cmp r3, r6
	movwgt r10, #1
	cmp r7, r6
	movwlt r11, #1
	ands r0, r10, r11
	sub r0, r3, #16
	bne label195
	b label682
label140:
	cmp r11, #0
	bne label181
	b label685
label195:
	ldr r9, [sp, #20]
	mov r10, r6
	ldr r7, [sp, #12]
	add r8, r9, r7, lsl #2
	mov r9, r7
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r2, r7, lsl #2]
	ldr r2, [r2, r6, lsl #2]
	cmp r3, r2
	blt label206
	b label884
label891:
	mov r8, r2
	b label140
.p2align 4
label204:
	add r8, r8, #4
	mov r10, r2
	mov r7, r3
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r3, [r2, r9, lsl #2]
	ldr r2, [r2, r10, lsl #2]
	cmp r3, r2
	bge label969
.p2align 4
label206:
	str r3, [r8, #0]
	add r9, r9, #1
	mov r2, r10
	mov r11, #0
	ldr r3, [sp, #0]
	cmp r6, r9
	movwgt r11, #1
	cmp r3, r10
	mov r10, #0
	movwgt r10, #1
	ands r3, r11, r10
	add r3, r7, #1
	bne label204
	b label891
label181:
	add r2, r9, #4
	cmp r6, r2
	ble label837
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r7, r9
	add r2, r2, r9, lsl #2
label189:
	ldr r11, [r2, #0]
	add r7, r7, #4
	ldr r9, [sp, #20]
	cmp r1, r7
	add r9, r9, r3, lsl #2
	add r3, r3, #4
	str r11, [r9, #0]
	ldr r11, [r2, #4]
	str r11, [r9, #4]
	ldr r11, [r2, #8]
	str r11, [r9, #8]
	ldr r11, [r2, #12]
	str r11, [r9, #12]
	ble label869
	add r2, r2, #16
	b label189
label182:
	ldr r2, [r1, #0]
	add r7, r7, #1
	ldr r9, [sp, #20]
	cmp r6, r7
	str r2, [r9, r3, lsl #2]
	add r3, r3, #1
	ble label685
	add r1, r1, #4
	b label182
label869:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r7, lsl #2
	b label182
label3:
	ldr r3, [sp, #0]
	mov r6, #0
	ldr r8, [sp, #24]
	add r0, r3, #1
	cmp r8, r3
	movwgt r6, #1
	cmp r8, r0
	bgt label72
label4:
	ands r0, r5, r6
	beq label236
	ldr r9, [sp, #20]
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
	mov r5, r7
	add r0, r9, r7, lsl #2
	mov r1, r7
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r6, [r2, r7, lsl #2]
	ldr r2, [r2, r3, lsl #2]
	cmp r6, r2
	blt label11
.p2align 4
label248:
	str r2, [r0, #0]
	add r2, r3, #1
	b label13
.p2align 4
label11:
	str r6, [r0, #0]
	add r5, r5, #1
	mov r2, r3
.p2align 4
label13:
	ldr r3, [sp, #0]
	mov r6, #0
	add r1, r1, #1
	ldr r8, [sp, #24]
	cmp r3, r5
	mov r3, #0
	movwgt r3, #1
	cmp r8, r2
	movwgt r6, #1
	ands r7, r3, r6
	beq label257
	add r0, r0, #4
	mov r3, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r6, [r2, r5, lsl #2]
	ldr r2, [r2, r3, lsl #2]
	cmp r6, r2
	blt label11
	b label248
label72:
	ldr r8, [sp, #24]
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
	mov r0, #0
	mov r9, #0
	ldr r3, [sp, #0]
	cmp r3, r7
	movwlt r9, #1
	cmp r8, r7
	movwgt r0, #1
	ands r1, r9, r0
	beq label457
	ldr r9, [sp, #20]
	mov r1, r7
	mov r8, r3
	add r0, r9, r3, lsl #2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r9, [r2, r3, lsl #2]
	ldr r2, [r2, r7, lsl #2]
	cmp r9, r2
	blt label79
.p2align 4
label469:
	str r2, [r0, #0]
	add r1, r1, #1
	cmp r7, r8
	mov r9, #0
	add r3, r3, #1
	mov r2, r8
	movwgt r9, #1
	ldr r8, [sp, #24]
	cmp r8, r1
	mov r8, #0
	movwgt r8, #1
	ands r10, r9, r8
	beq label972
.p2align 4
label83:
	add r0, r0, #4
	mov r8, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r9, [r2, r8, lsl #2]
	ldr r2, [r2, r1, lsl #2]
	cmp r9, r2
	blt label79
	b label469
label972:
	mov r0, r8
	mov r10, r3
	mov r8, r2
	b label85
.p2align 4
label79:
	str r9, [r0, #0]
	add r2, r8, #1
	cmp r7, r2
	mov r9, #0
	ldr r8, [sp, #24]
	add r3, r3, #1
	movwgt r9, #1
	cmp r8, r1
	mov r8, #0
	movwgt r8, #1
	ands r10, r9, r8
	bne label83
	b label972
label85:
	cmp r9, #0
	beq label482
	add r3, r8, #4
	cmp r7, r3
	ble label487
	ldr r9, [sp, #20]
	add r9, r9, r10, lsl #2
	b label99
label257:
	mov r8, r3
	mov r0, r2
	mov r7, r1
label17:
	cmp r8, #0
	beq label261
	add r1, r5, #4
	ldr r3, [sp, #0]
	cmp r3, r1
	ble label266
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r3, r5
	add r1, r2, r5, lsl #2
	mov r2, r7
.p2align 4
label31:
	ldr r7, [r1, #0]
	add r3, r3, #4
	ldr r9, [sp, #20]
	cmp r4, r3
	add r5, r9, r2, lsl #2
	str r7, [r5, #0]
	ldr r7, [r1, #4]
	str r7, [r5, #4]
	ldr r7, [r1, #8]
	str r7, [r5, #8]
	ldr r7, [r1, #12]
	str r7, [r5, #12]
	add r5, r2, #4
	ble label298
	add r1, r1, #16
	mov r2, r5
	b label31
label99:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r10, r10, #4
	add r2, r2, r8, lsl #2
	ldr r8, [r2, #0]
	str r8, [r9, #0]
	ldr r8, [r2, #4]
	str r8, [r9, #4]
	ldr r8, [r2, #8]
	str r8, [r9, #8]
	ldr r2, [r2, #12]
	str r2, [r9, #12]
	add r2, r3, #4
	cmp r7, r2
	ble label519
	add r9, r9, #16
	mov r8, r3
	mov r3, r2
	b label99
label685:
	mov r7, r3
	cmp r10, #0
	beq label163
	add r1, r8, #4
	ldr r3, [sp, #0]
	cmp r3, r1
	ble label693
	ldr r9, [sp, #20]
	mov r3, r7
	add r6, r9, r7, lsl #2
label156:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r8, lsl #2
	ldr r7, [r2, #0]
	str r7, [r6, #0]
	ldr r7, [r2, #4]
	str r7, [r6, #4]
	ldr r7, [r2, #8]
	str r7, [r6, #8]
	add r7, r3, #4
	ldr r2, [r2, #12]
	str r2, [r6, #12]
	ldr r3, [sp, #0]
	add r2, r1, #4
	cmp r3, r2
	ble label725
	add r6, r6, #16
	mov r3, r7
	mov r8, r1
	mov r1, r2
	b label156
label149:
	ldr r3, [r2, #0]
	add r1, r1, #1
	ldr r9, [sp, #20]
	str r3, [r9, r7, lsl #2]
	ldr r3, [sp, #0]
	add r7, r7, #1
	cmp r3, r1
	ble label163
	add r2, r2, #4
	b label149
label725:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r1, lsl #2
	b label149
label482:
	mov r7, r10
	cmp r0, #0
	beq label108
	add r0, r1, #4
	ldr r8, [sp, #24]
	cmp r8, r0
	ble label636
	ldr r9, [sp, #20]
	add r3, r9, r10, lsl #2
label132:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r7, r7, #4
	add r1, r2, r1, lsl #2
	ldr r2, [r1, #0]
	str r2, [r3, #0]
	ldr r2, [r1, #4]
	str r2, [r3, #4]
	ldr r2, [r1, #8]
	str r2, [r3, #8]
	add r2, r0, #4
	ldr r1, [r1, #12]
	str r1, [r3, #12]
	ldr r8, [sp, #24]
	cmp r8, r2
	ble label668
	add r3, r3, #16
	mov r1, r0
	mov r0, r2
	b label132
label125:
	ldr r1, [r2, #0]
	add r0, r0, #1
	ldr r9, [sp, #20]
	str r1, [r9, r7, lsl #2]
	ldr r8, [sp, #24]
	add r7, r7, #1
	cmp r8, r0
	ble label108
	add r2, r2, #4
	b label125
label668:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r0, lsl #2
	b label125
label163:
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
	cmp r7, r3
	bge label3
	ldr r2, [sp, #8]
	cmp r3, r2
	ble label165
	ldr r1, [sp, #4]
	cmp r3, r1
	ble label751
	ldr r9, [sp, #20]
	add r1, r9, r2, lsl #2
	mov r3, r2
label176:
	ldr r9, [sp, #20]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r6, r9, r7, lsl #2
	add r7, r2, r7, lsl #2
	ldr r8, [r6, #0]
	add r2, r2, r3, lsl #2
	str r8, [r7, #0]
	ldr r8, [r6, #4]
	str r8, [r7, #4]
	ldr r8, [r6, #8]
	str r8, [r7, #8]
	ldr r6, [r6, #12]
	str r6, [r7, #12]
	add r7, r3, #12
	ldr r6, [r1, #0]
	str r6, [r2, #0]
	ldr r6, [r1, #4]
	str r6, [r2, #4]
	ldr r6, [r1, #8]
	str r6, [r2, #8]
	ldr r6, [r1, #12]
	str r6, [r2, #12]
	ldr r6, [r1, #16]
	str r6, [r2, #16]
	ldr r6, [r1, #20]
	str r6, [r2, #20]
	ldr r6, [r1, #24]
	str r6, [r2, #24]
	ldr r6, [r1, #28]
	str r6, [r2, #28]
	ldr r6, [r1, #32]
	str r6, [r2, #32]
	ldr r6, [r1, #36]
	str r6, [r2, #36]
	ldr r6, [r1, #40]
	str r6, [r2, #40]
	ldr r6, [r1, #44]
	str r6, [r2, #44]
	add r2, r3, #16
	cmp r0, r2
	ble label831
	add r1, r1, #64
	mov r3, r2
	b label176
label171:
	ldr r9, [sp, #20]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r7, lsl #2
	add r1, r9, r7, lsl #2
	ldr r3, [r1, #0]
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r3, [sp, #0]
	add r1, r0, #4
	cmp r3, r1
	ble label770
	mov r7, r0
	mov r0, r1
	b label171
label831:
	mov r0, r2
	b label171
label166:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r3, [r2, r0, lsl #2]
	ldr r3, [sp, #0]
	add r0, r0, #1
	cmp r3, r0
	ble label3
	add r1, r1, #4
	b label166
label770:
	ldr r9, [sp, #20]
	add r1, r9, r0, lsl #2
	b label166
label108:
	ldr r8, [sp, #24]
	ldr r3, [sp, #0]
	cmp r8, r3
	ble label4
	add r1, r3, #4
	cmp r8, r1
	ble label534
	add r0, r3, #20
	cmp r8, r0
	ble label550
label120:
	ldr r9, [sp, #20]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r7, r9, r3, lsl #2
	add r3, r2, r3, lsl #2
	ldr r8, [r7, #0]
	add r2, r2, r1, lsl #2
	str r8, [r3, #0]
	ldr r8, [r7, #4]
	str r8, [r3, #4]
	ldr r8, [r7, #8]
	str r8, [r3, #8]
	ldr r7, [r7, #12]
	str r7, [r3, #12]
	add r3, r9, r1, lsl #2
	ldr r7, [r3, #0]
	str r7, [r2, #0]
	ldr r7, [r3, #4]
	str r7, [r2, #4]
	ldr r7, [r3, #8]
	str r7, [r2, #8]
	ldr r7, [r3, #12]
	str r7, [r2, #12]
	ldr r7, [r3, #16]
	str r7, [r2, #16]
	ldr r7, [r3, #20]
	str r7, [r2, #20]
	ldr r7, [r3, #24]
	str r7, [r2, #24]
	ldr r7, [r3, #28]
	str r7, [r2, #28]
	ldr r7, [r3, #32]
	str r7, [r2, #32]
	ldr r7, [r3, #36]
	str r7, [r2, #36]
	ldr r7, [r3, #40]
	str r7, [r2, #40]
	ldr r3, [r3, #44]
	str r3, [r2, #44]
	ldr r8, [sp, #24]
	add r3, r1, #12
	add r2, r0, #16
	cmp r8, r2
	ble label116
	mov r1, r0
	mov r0, r2
	b label120
label116:
	ldr r9, [sp, #20]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r3, lsl #2
	add r1, r9, r3, lsl #2
	ldr r7, [r1, #0]
	str r7, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r8, [sp, #24]
	add r1, r0, #4
	cmp r8, r1
	ble label569
	mov r3, r0
	mov r0, r1
	b label116
label884:
	str r2, [r8, #0]
	add r2, r10, #1
	cmp r6, r9
	mov r11, #0
	ldr r3, [sp, #0]
	mov r10, #0
	movwgt r11, #1
	cmp r3, r2
	movwgt r10, #1
	ands r3, r11, r10
	add r3, r7, #1
	bne label204
	b label891
.p2align 4
label969:
	str r2, [r8, #0]
	cmp r6, r9
	mov r11, #0
	ldr r3, [sp, #0]
	add r2, r10, #1
	movwgt r11, #1
	mov r10, #0
	cmp r3, r2
	movwgt r10, #1
	ands r3, r11, r10
	add r3, r7, #1
	bne label204
	b label891
label165:
	ldr r9, [sp, #20]
	ldr r7, [sp, #12]
	mov r0, r7
	add r1, r9, r7, lsl #2
	b label166
label236:
	mov r8, r5
	ldr r7, [sp, #12]
	ldr r3, [sp, #0]
	mov r5, r7
	mov r0, r3
	b label17
label569:
	ldr r9, [sp, #20]
	add r1, r9, r0, lsl #2
label110:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r3, [r2, r0, lsl #2]
	ldr r8, [sp, #24]
	add r0, r0, #1
	cmp r8, r0
	ble label4
	add r1, r1, #4
	b label110
label751:
	ldr r2, [sp, #8]
	ldr r7, [sp, #12]
	mov r0, r2
	b label171
label682:
	ldr r7, [sp, #12]
	mov r8, r6
	mov r3, r7
	mov r9, r7
	b label140
label693:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r1, r8
	add r2, r2, r8, lsl #2
	b label149
label636:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r0, r1
	add r2, r2, r1, lsl #2
	b label125
label298:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r3, lsl #2
label24:
	ldr r2, [r1, #0]
	ldr r9, [sp, #20]
	str r2, [r9, r5, lsl #2]
	add r5, r5, #1
	add r2, r3, #1
	ldr r3, [sp, #0]
	cmp r3, r2
	ble label275
	add r1, r1, #4
	mov r3, r2
	b label24
label275:
	mov r4, r5
label37:
	cmp r6, #0
	beq label39
	add r1, r0, #4
	ldr r8, [sp, #24]
	cmp r8, r1
	ble label413
	ldr r9, [sp, #20]
	mov r5, r0
	add r3, r9, r4, lsl #2
.p2align 4
label59:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r4, r4, #4
	add r0, r2, r5, lsl #2
	ldr r2, [r0, #0]
	str r2, [r3, #0]
	ldr r2, [r0, #4]
	str r2, [r3, #4]
	ldr r2, [r0, #8]
	str r2, [r3, #8]
	ldr r0, [r0, #12]
	str r0, [r3, #12]
	ldr r8, [sp, #24]
	add r0, r1, #4
	cmp r8, r0
	ble label433
	add r3, r3, #16
	mov r5, r1
	mov r1, r0
	b label59
label487:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r3, r8
	add r2, r2, r8, lsl #2
label92:
	ldr r8, [r2, #0]
	add r3, r3, #1
	ldr r9, [sp, #20]
	cmp r7, r3
	str r8, [r9, r10, lsl #2]
	add r10, r10, #1
	ble label482
	add r2, r2, #4
	b label92
label261:
	mov r4, r7
	b label37
label433:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r1, lsl #2
label66:
	ldr r0, [r2, #0]
	add r1, r1, #1
	ldr r9, [sp, #20]
	str r0, [r9, r4, lsl #2]
	ldr r8, [sp, #24]
	add r4, r4, #1
	cmp r8, r1
	ble label39
	add r2, r2, #4
	b label66
label39:
	ldr r8, [sp, #24]
	ldr r7, [sp, #12]
	cmp r7, r8
	bge label207
	ldr r2, [sp, #8]
	cmp r8, r2
	ble label312
	ldr r1, [sp, #4]
	cmp r8, r1
	ble label316
	ldr r9, [sp, #20]
	add r0, r9, r2, lsl #2
	mov r1, r2
.p2align 4
label43:
	ldr r9, [sp, #20]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r4, r2, r7, lsl #2
	add r2, r2, r1, lsl #2
	add r3, r9, r7, lsl #2
	add r7, r1, #12
	ldr r5, [r3, #0]
	str r5, [r4, #0]
	ldr r5, [r3, #4]
	str r5, [r4, #4]
	ldr r5, [r3, #8]
	str r5, [r4, #8]
	ldr r3, [r3, #12]
	str r3, [r4, #12]
	ldr r3, [r0, #0]
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
	add r2, r1, #16
	ldr r1, [sp, #16]
	cmp r1, r2
	ble label374
	add r0, r0, #64
	mov r1, r2
	b label43
label550:
	mov r0, r1
	ldr r3, [sp, #0]
	b label116
label534:
	ldr r9, [sp, #20]
	ldr r3, [sp, #0]
	mov r0, r3
	add r1, r9, r3, lsl #2
	b label110
label312:
	ldr r9, [sp, #20]
	ldr r7, [sp, #12]
	mov r0, r7
	add r1, r9, r7, lsl #2
label52:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r3, [r2, r0, lsl #2]
	ldr r8, [sp, #24]
	add r0, r0, #1
	cmp r8, r0
	ble label207
	add r1, r1, #4
	b label52
label316:
	ldr r2, [sp, #8]
	ldr r7, [sp, #12]
	mov r0, r2
label48:
	ldr r9, [sp, #20]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r7, lsl #2
	add r1, r9, r7, lsl #2
	ldr r3, [r1, #0]
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r8, [sp, #24]
	add r1, r0, #4
	cmp r8, r1
	ble label394
	mov r7, r0
	mov r0, r1
	b label48
label413:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r1, r0
	add r2, r2, r0, lsl #2
	b label66
label394:
	ldr r9, [sp, #20]
	add r1, r9, r0, lsl #2
	b label52
label266:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r3, r5
	add r1, r2, r5, lsl #2
	mov r5, r7
	b label24
label457:
	ldr r3, [sp, #0]
	mov r1, r7
	mov r10, r3
	mov r8, r3
	b label85
label374:
	mov r0, r2
	b label48
label519:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r3, lsl #2
	b label92
label837:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r7, r9
	add r1, r2, r9, lsl #2
	b label182
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
