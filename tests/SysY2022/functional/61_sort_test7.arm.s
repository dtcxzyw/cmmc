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
	mov r9, r1
	mov r8, r0
	sub sp, sp, #28
	str r0, [sp, #8]
	add r0, r0, #1
	str r1, [sp, #20]
	cmp r1, r0
	ble label2
	mov r6, #0
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r8, [sp, #8]
	add r3, r2, #400
	str r3, [sp, #16]
	add r7, r8, #4
	add r1, r8, r1
	str r7, [sp, #4]
	add r1, r1, r1, lsr #31
	asr r4, r1, #1
	add r1, r8, #20
	sub r5, r4, #4
	cmp r8, r4
	str r1, [sp, #0]
	movwlt r6, #1
	sub r1, r9, #16
	cmp r0, r4
	str r1, [sp, #12]
	blt label138
label4:
	add r0, r4, #1
	ldr r9, [sp, #20]
	mov r7, #0
	cmp r9, r4
	movwgt r7, #1
	cmp r9, r0
	ble label71
	add r0, r9, r4
	add r0, r0, r0, lsr #31
	asr r8, r0, #1
	mov r0, r4
	mov r1, r8
	bl merge_sort
	mov r0, r8
	mov r1, r9
	bl merge_sort
	mov r0, #0
	mov r11, #0
	cmp r4, r8
	movwlt r11, #1
	cmp r9, r8
	movwgt r0, #1
	ands r0, r11, r0
	beq label237
	ldr r3, [sp, #16]
	mov r9, r8
	mov r1, r4
	add r0, r3, r4, lsl #2
	mov r3, r4
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r10, [r2, r4, lsl #2]
	ldr r2, [r2, r8, lsl #2]
	cmp r10, r2
	blt label12
	b label249
label60:
	add r1, r1, #4
label57:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r3, [r2, r0, lsl #2]
	ldr r9, [sp, #20]
	add r0, r0, #1
	cmp r9, r0
	bgt label60
label71:
	ands r0, r6, r7
	beq label457
	ldr r3, [sp, #16]
	mov r6, r4
	ldr r8, [sp, #8]
	mov r1, r8
	add r0, r3, r8, lsl #2
	mov r3, r8
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r7, [r2, r8, lsl #2]
	ldr r2, [r2, r4, lsl #2]
	cmp r7, r2
	bge label469
.p2align 4
label78:
	str r7, [r0, #0]
	add r3, r3, #1
	mov r2, r6
	cmp r4, r3
	mov r6, #0
	ldr r9, [sp, #20]
	mov r7, #0
	add r1, r1, #1
	movwgt r6, #1
	cmp r9, r2
	movwgt r7, #1
	ands r7, r6, r7
	beq label972
.p2align 4
label82:
	add r0, r0, #4
	mov r6, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r7, [r2, r3, lsl #2]
	ldr r2, [r2, r6, lsl #2]
	cmp r7, r2
	blt label78
.p2align 4
label469:
	str r2, [r0, #0]
	cmp r4, r3
	mov r7, #0
	add r1, r1, #1
	ldr r9, [sp, #20]
	add r2, r6, #1
	mov r6, #0
	movwgt r6, #1
	cmp r9, r2
	movwgt r7, #1
	ands r7, r6, r7
	bne label82
	b label972
label138:
	ldr r8, [sp, #8]
	add r0, r8, r4
	add r0, r0, r0, lsr #31
	asr r7, r0, #1
	mov r0, r8
	mov r1, r7
	bl merge_sort
	mov r0, r7
	mov r1, r4
	bl merge_sort
	sub r1, r7, #4
	mov r10, #0
	mov r0, #0
	cmp r4, r7
	movwgt r0, #1
	cmp r8, r7
	movwlt r10, #1
	ands r0, r0, r10
	sub r0, r4, #16
	beq label681
	ldr r3, [sp, #16]
	mov r10, r7
	ldr r8, [sp, #8]
	mov r9, r8
	add r3, r3, r8, lsl #2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r11, [r2, r8, lsl #2]
	ldr r2, [r2, r7, lsl #2]
	cmp r11, r2
	bge label199
.p2align 4
label200:
	str r11, [r3, #0]
	add r9, r9, #1
	mov r2, r10
	cmp r7, r9
	mov r10, #0
	mov r11, #0
	add r8, r8, #1
	movwgt r10, #1
	cmp r4, r2
	movwgt r11, #1
	ands r11, r10, r11
	beq label969
.p2align 4
label204:
	add r3, r3, #4
	mov r10, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r11, [r2, r9, lsl #2]
	ldr r2, [r2, r10, lsl #2]
	cmp r11, r2
	blt label200
.p2align 4
label199:
	str r2, [r3, #0]
	cmp r7, r9
	mov r11, #0
	add r8, r8, #1
	add r2, r10, #1
	mov r10, #0
	movwgt r10, #1
	cmp r4, r2
	movwgt r11, #1
	ands r11, r10, r11
	bne label204
	b label969
.p2align 4
label249:
	str r2, [r0, #0]
	cmp r8, r3
	mov r10, #0
	add r1, r1, #1
	add r2, r9, #1
	movwgt r10, #1
	ldr r9, [sp, #20]
	cmp r9, r2
	mov r9, #0
	movwgt r9, #1
	ands r9, r10, r9
	beq label971
.p2align 4
label16:
	add r0, r0, #4
	mov r9, r2
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	ldr r10, [r2, r3, lsl #2]
	ldr r2, [r2, r9, lsl #2]
	cmp r10, r2
	bge label249
.p2align 4
label12:
	str r10, [r0, #0]
	add r3, r3, #1
	mov r2, r9
	cmp r8, r3
	mov r10, #0
	ldr r9, [sp, #20]
	add r1, r1, #1
	movwgt r10, #1
	cmp r9, r2
	mov r9, #0
	movwgt r9, #1
	ands r9, r10, r9
	bne label16
label971:
	mov r11, r10
	mov r9, r3
	mov r0, r2
	mov r10, r1
label18:
	cmp r11, #0
	beq label262
	add r1, r9, #4
	cmp r8, r1
	ble label267
	ldr r3, [sp, #16]
	add r3, r3, r10, lsl #2
	b label30
label969:
	mov r3, r9
	mov r9, r2
label139:
	cmp r10, #0
	beq label684
	add r2, r3, #4
	cmp r7, r2
	ble label837
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r10, r3
	add r2, r2, r3, lsl #2
label181:
	ldr r11, [r2, #0]
	add r10, r10, #4
	ldr r3, [sp, #16]
	cmp r1, r10
	add r3, r3, r8, lsl #2
	add r8, r8, #4
	str r11, [r3, #0]
	ldr r11, [r2, #4]
	str r11, [r3, #4]
	ldr r11, [r2, #8]
	str r11, [r3, #8]
	ldr r11, [r2, #12]
	str r11, [r3, #12]
	ble label857
	add r2, r2, #16
	b label181
label35:
	add r3, r3, #16
	mov r9, r1
	mov r1, r2
label30:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r10, r10, #4
	add r2, r2, r9, lsl #2
	ldr r9, [r2, #0]
	str r9, [r3, #0]
	ldr r9, [r2, #4]
	str r9, [r3, #4]
	ldr r9, [r2, #8]
	str r9, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	add r2, r1, #4
	cmp r8, r2
	bgt label35
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r1, lsl #2
	b label24
label192:
	add r1, r1, #4
label188:
	ldr r2, [r1, #0]
	add r10, r10, #1
	ldr r3, [sp, #16]
	cmp r7, r10
	str r2, [r3, r8, lsl #2]
	add r8, r8, #1
	bgt label192
label684:
	mov r7, r8
	cmp r4, r9
	ble label161
	add r1, r9, #4
	cmp r4, r1
	ble label693
	ldr r3, [sp, #16]
	add r3, r3, r8, lsl #2
	b label148
label153:
	add r3, r3, #16
	mov r9, r1
	mov r1, r2
label148:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r7, r7, #4
	add r2, r2, r9, lsl #2
	ldr r8, [r2, #0]
	str r8, [r3, #0]
	ldr r8, [r2, #4]
	str r8, [r3, #4]
	ldr r8, [r2, #8]
	str r8, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	add r2, r1, #4
	cmp r4, r2
	bgt label153
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r1, lsl #2
	b label156
label160:
	add r2, r2, #4
label156:
	ldr r8, [r2, #0]
	add r1, r1, #1
	ldr r3, [sp, #16]
	cmp r4, r1
	str r8, [r3, r7, lsl #2]
	add r7, r7, #1
	bgt label160
label161:
	ldr r8, [sp, #8]
	cmp r8, r4
	bge label4
	ldr r7, [sp, #4]
	cmp r4, r7
	ble label163
	ldr r1, [sp, #0]
	cmp r4, r1
	ble label751
	ldr r3, [sp, #16]
	add r1, r3, r7, lsl #2
	b label170
label174:
	add r1, r1, #64
	mov r7, r2
label170:
	ldr r3, [sp, #16]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r3, r8, lsl #2
	add r8, r2, r8, lsl #2
	ldr r9, [r3, #0]
	add r2, r2, r7, lsl #2
	str r9, [r8, #0]
	ldr r9, [r3, #4]
	str r9, [r8, #4]
	ldr r9, [r3, #8]
	str r9, [r8, #8]
	ldr r3, [r3, #12]
	str r3, [r8, #12]
	add r8, r7, #12
	ldr r3, [r1, #0]
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
	add r2, r7, #16
	cmp r0, r2
	bgt label174
	mov r0, r2
	b label175
label28:
	add r2, r2, #4
label24:
	ldr r9, [r2, #0]
	add r1, r1, #1
	ldr r3, [sp, #16]
	cmp r8, r1
	str r9, [r3, r10, lsl #2]
	add r10, r10, #1
	bgt label28
label262:
	mov r8, r10
	ldr r9, [sp, #20]
	cmp r9, r0
	ble label55
	add r1, r0, #4
	cmp r9, r1
	ble label312
	ldr r3, [sp, #16]
	add r3, r3, r10, lsl #2
	b label42
label47:
	add r3, r3, #16
	mov r0, r1
	mov r1, r2
label42:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r8, r8, #4
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0]
	str r2, [r3, #0]
	ldr r2, [r0, #4]
	str r2, [r3, #4]
	ldr r2, [r0, #8]
	str r2, [r3, #8]
	add r2, r1, #4
	ldr r0, [r0, #12]
	str r0, [r3, #12]
	ldr r9, [sp, #20]
	cmp r9, r2
	bgt label47
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r1, lsl #2
label50:
	ldr r0, [r2, #0]
	add r1, r1, #1
	ldr r3, [sp, #16]
	str r0, [r3, r8, lsl #2]
	ldr r9, [sp, #20]
	add r8, r8, #1
	cmp r9, r1
	ble label55
	add r2, r2, #4
	b label50
label830:
	mov r8, r0
	mov r0, r1
label175:
	ldr r3, [sp, #16]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r8, lsl #2
	add r1, r3, r8, lsl #2
	ldr r3, [r1, #0]
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	add r1, r0, #4
	cmp r4, r1
	bgt label830
	ldr r3, [sp, #16]
	add r1, r3, r0, lsl #2
	b label164
label167:
	add r1, r1, #4
label164:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r3, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r4, r0
	bgt label167
	b label4
label972:
	mov r0, r2
	mov r8, r1
label84:
	cmp r6, #0
	beq label482
	add r1, r3, #4
	cmp r4, r1
	ble label636
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r6, r3
	add r1, r2, r3, lsl #2
	mov r2, r8
	b label131
.p2align 4
label135:
	add r1, r1, #16
	mov r2, r3
.p2align 4
label131:
	ldr r7, [r1, #0]
	add r6, r6, #4
	ldr r3, [sp, #16]
	cmp r5, r6
	add r3, r3, r2, lsl #2
	str r7, [r3, #0]
	ldr r7, [r1, #4]
	str r7, [r3, #4]
	ldr r7, [r1, #8]
	str r7, [r3, #8]
	ldr r7, [r1, #12]
	str r7, [r3, #12]
	add r3, r2, #4
	bgt label135
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r8, r3
	add r1, r2, r6, lsl #2
label125:
	ldr r2, [r1, #0]
	add r6, r6, #1
	ldr r3, [sp, #16]
	cmp r4, r6
	str r2, [r3, r8, lsl #2]
	add r8, r8, #1
	ble label482
	add r1, r1, #4
	b label125
label482:
	mov r4, r8
	ldr r9, [sp, #20]
	cmp r9, r0
	ble label91
	add r1, r0, #4
	cmp r9, r1
	ble label595
	ldr r3, [sp, #16]
	mov r5, r0
	add r3, r3, r8, lsl #2
	b label111
.p2align 4
label117:
	add r3, r3, #16
	mov r5, r1
	mov r1, r0
.p2align 4
label111:
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
	ldr r9, [sp, #20]
	add r0, r1, #4
	cmp r9, r0
	bgt label117
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r1, lsl #2
label118:
	ldr r0, [r2, #0]
	add r1, r1, #1
	ldr r3, [sp, #16]
	str r0, [r3, r4, lsl #2]
	ldr r9, [sp, #20]
	add r4, r4, #1
	cmp r9, r1
	ble label91
	add r2, r2, #4
	b label118
label91:
	ldr r9, [sp, #20]
	ldr r8, [sp, #8]
	cmp r8, r9
	bge label2
	ldr r7, [sp, #4]
	cmp r9, r7
	ble label494
	ldr r1, [sp, #0]
	cmp r9, r1
	ble label507
	ldr r3, [sp, #16]
	add r0, r3, r7, lsl #2
	mov r1, r7
.p2align 4
label99:
	ldr r3, [sp, #16]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r4, r2, r8, lsl #2
	add r2, r2, r1, lsl #2
	add r3, r3, r8, lsl #2
	add r8, r1, #12
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
	ldr r1, [sp, #12]
	cmp r1, r2
	ble label565
	add r0, r0, #64
	mov r1, r2
	b label99
label565:
	mov r0, r2
label104:
	ldr r3, [sp, #16]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r2, r2, r8, lsl #2
	add r1, r3, r8, lsl #2
	ldr r3, [r1, #0]
	str r3, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r9, [sp, #20]
	add r1, r0, #4
	cmp r9, r1
	ble label585
	mov r8, r0
	mov r0, r1
	b label104
label585:
	ldr r3, [sp, #16]
	add r1, r3, r0, lsl #2
label93:
	ldr r3, [r1, #0]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	str r3, [r2, r0, lsl #2]
	ldr r9, [sp, #20]
	add r0, r0, #1
	cmp r9, r0
	ble label2
	add r1, r1, #4
	b label93
label2:
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label55:
	ldr r9, [sp, #20]
	cmp r9, r4
	ble label71
	add r1, r4, #4
	cmp r9, r1
	ble label356
	add r0, r4, #20
	cmp r9, r0
	ble label372
	mov r8, r4
	b label67
label453:
	mov r1, r0
	mov r0, r2
label67:
	ldr r3, [sp, #16]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r9, r3, r8, lsl #2
	add r3, r3, r1, lsl #2
	add r8, r2, r8, lsl #2
	ldr r10, [r9, #0]
	add r2, r2, r1, lsl #2
	str r10, [r8, #0]
	ldr r10, [r9, #4]
	str r10, [r8, #4]
	ldr r10, [r9, #8]
	str r10, [r8, #8]
	ldr r9, [r9, #12]
	str r9, [r8, #12]
	ldr r8, [r3, #0]
	str r8, [r2, #0]
	ldr r8, [r3, #4]
	str r8, [r2, #4]
	ldr r8, [r3, #8]
	str r8, [r2, #8]
	ldr r8, [r3, #12]
	str r8, [r2, #12]
	ldr r8, [r3, #16]
	str r8, [r2, #16]
	ldr r8, [r3, #20]
	str r8, [r2, #20]
	ldr r8, [r3, #24]
	str r8, [r2, #24]
	ldr r8, [r3, #28]
	str r8, [r2, #28]
	ldr r8, [r3, #32]
	str r8, [r2, #32]
	ldr r8, [r3, #36]
	str r8, [r2, #36]
	ldr r8, [r3, #40]
	str r8, [r2, #40]
	add r8, r1, #12
	ldr r3, [r3, #44]
	str r3, [r2, #44]
	ldr r9, [sp, #20]
	add r2, r0, #16
	cmp r9, r2
	bgt label453
	mov r1, r8
	b label63
label392:
	mov r1, r0
	mov r0, r2
label63:
	ldr r3, [sp, #16]
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r3, r3, r1, lsl #2
	add r1, r2, r1, lsl #2
	ldr r8, [r3, #0]
	str r8, [r1, #0]
	ldr r2, [r3, #4]
	str r2, [r1, #4]
	ldr r2, [r3, #8]
	str r2, [r1, #8]
	ldr r2, [r3, #12]
	str r2, [r1, #12]
	ldr r9, [sp, #20]
	add r2, r0, #4
	cmp r9, r2
	bgt label392
	ldr r3, [sp, #16]
	add r1, r3, r0, lsl #2
	b label57
label163:
	ldr r3, [sp, #16]
	ldr r8, [sp, #8]
	mov r0, r8
	add r1, r3, r8, lsl #2
	b label164
label494:
	ldr r3, [sp, #16]
	ldr r8, [sp, #8]
	mov r0, r8
	add r1, r3, r8, lsl #2
	b label93
label693:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r1, r9
	add r2, r2, r9, lsl #2
	b label156
label681:
	ldr r8, [sp, #8]
	mov r9, r7
	mov r3, r8
	b label139
label372:
	mov r0, r1
	mov r1, r4
	b label63
label356:
	ldr r3, [sp, #16]
	mov r0, r4
	add r1, r3, r4, lsl #2
	b label57
label595:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r1, r0
	add r2, r2, r0, lsl #2
	b label118
label857:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	add r1, r2, r10, lsl #2
	b label188
label751:
	ldr r7, [sp, #4]
	ldr r8, [sp, #8]
	mov r0, r7
	b label175
label507:
	ldr r7, [sp, #4]
	ldr r8, [sp, #8]
	mov r0, r7
	b label104
label312:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r1, r0
	add r2, r2, r0, lsl #2
	b label50
label267:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r1, r9
	add r2, r2, r9, lsl #2
	b label24
label237:
	mov r9, r4
	mov r0, r8
	mov r10, r4
	b label18
label837:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r10, r3
	add r1, r2, r3, lsl #2
	b label188
label457:
	ldr r8, [sp, #8]
	mov r0, r4
	mov r3, r8
	b label84
label636:
	movw r2, #:lower16:buf
	movt r2, #:upper16:buf
	mov r6, r3
	add r1, r2, r3, lsl #2
	b label125
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
