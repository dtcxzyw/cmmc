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
	mov r7, r1
	mov r6, r0
	sub sp, sp, #36
	str r0, [sp, #8]
	add r0, r0, #1
	str r1, [sp, #24]
	cmp r1, r0
	ble label105
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r6, [sp, #8]
	add r3, r3, #400
	str r3, [sp, #20]
	sub r2, r1, #4
	add r1, r6, r1
	add r1, r1, r1, lsr #31
	asr r4, r1, #1
	cmp r0, r4
	add r1, r6, #4
	sub r5, r4, #4
	str r1, [sp, #4]
	add r1, r6, #16
	str r1, [sp, #0]
	sub r1, r7, #20
	str r2, [sp, #16]
	str r1, [sp, #12]
	bge label3
	add r0, r6, r4
	add r0, r0, r0, lsr #31
	asr r7, r0, #1
	mov r0, r6
	mov r1, r7
	bl merge_sort
	mov r0, r7
	mov r1, r4
	bl merge_sort
	mov r1, r7
	mov r2, r6
	sub r0, r4, #20
	sub r8, r7, #4
	cmp r7, r6
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r4, r7
	movwgt r9, #1
	ands r3, r3, r9
	bne label102
label76:
	cmp r7, r6
	bgt label95
label77:
	cmp r4, r1
	bgt label88
	b label79
label95:
	add r3, r6, #4
	cmp r7, r3
	ble label99
label96:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r9, r3, r6, lsl #2
	add r6, r6, #4
	ldr r10, [r9, #0]
	cmp r8, r6
	ldr r3, [sp, #20]
	add r3, r3, r2, lsl #2
	add r2, r2, #4
	str r10, [r3, #0]
	ldr r10, [r9, #4]
	str r10, [r3, #4]
	ldr r10, [r9, #8]
	str r10, [r3, #8]
	ldr r9, [r9, #12]
	str r9, [r3, #12]
	bgt label96
label99:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r8, [r3, r6, lsl #2]
	add r6, r6, #1
	ldr r3, [sp, #20]
	cmp r7, r6
	str r8, [r3, r2, lsl #2]
	add r2, r2, #1
	bgt label99
	b label77
.p2align 4
label102:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r9, r2, #1
	ldr r10, [r3, r6, lsl #2]
	ldr r11, [r3, r1, lsl #2]
	cmp r10, r11
	blt label103
	ldr r3, [sp, #20]
	add r1, r1, #1
	str r11, [r3, r2, lsl #2]
	mov r2, r9
	cmp r7, r6
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r4, r1
	movwgt r9, #1
	ands r3, r3, r9
	bne label102
	b label76
.p2align 4
label103:
	ldr r3, [sp, #20]
	add r6, r6, #1
	str r10, [r3, r2, lsl #2]
	mov r2, r9
	cmp r7, r6
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r4, r1
	movwgt r9, #1
	ands r3, r3, r9
	bne label102
	b label76
label3:
	add r0, r4, #1
	ldr r7, [sp, #24]
	cmp r7, r0
	bgt label37
label130:
	ldr r6, [sp, #8]
	mov r0, r4
	mov r1, r6
	mov r2, r6
	cmp r4, r6
	mov r3, #0
	ldr r7, [sp, #24]
	mov r6, #0
	movwgt r3, #1
	cmp r7, r4
	movwgt r6, #1
	ands r3, r3, r6
	bne label8
	b label11
label80:
	ldr r1, [sp, #4]
	cmp r4, r1
	bgt label83
	b label552
label81:
	ldr r3, [sp, #20]
	ldr r0, [r3, r6, lsl #2]
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	str r0, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label81
	b label3
label83:
	ldr r1, [sp, #0]
	cmp r5, r1
	ble label566
	ldr r6, [sp, #8]
label84:
	ldr r3, [sp, #20]
	add r1, r3, r6, lsl #2
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r7, [r1, #0]
	add r2, r3, r6, lsl #2
	add r6, r6, #16
	cmp r0, r6
	str r7, [r2, #0]
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
	ldr r1, [r1, #60]
	str r1, [r2, #60]
	bgt label84
label86:
	ldr r3, [sp, #20]
	add r0, r3, r6, lsl #2
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r2, [r0, #0]
	add r1, r3, r6, lsl #2
	add r6, r6, #4
	cmp r5, r6
	str r2, [r1, #0]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r0, [r0, #12]
	str r0, [r1, #12]
	bgt label86
	b label81
.p2align 4
label8:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r6, r2, #1
	ldr r7, [r3, r1, lsl #2]
	ldr r8, [r3, r0, lsl #2]
	cmp r7, r8
	blt label10
	ldr r3, [sp, #20]
	add r0, r0, #1
	str r8, [r3, r2, lsl #2]
	mov r2, r6
	cmp r4, r1
	mov r3, #0
	ldr r7, [sp, #24]
	mov r6, #0
	movwgt r3, #1
	cmp r7, r0
	movwgt r6, #1
	ands r3, r3, r6
	bne label8
	b label11
.p2align 4
label10:
	ldr r3, [sp, #20]
	add r1, r1, #1
	str r7, [r3, r2, lsl #2]
	mov r2, r6
	cmp r4, r1
	mov r3, #0
	ldr r7, [sp, #24]
	mov r6, #0
	movwgt r3, #1
	cmp r7, r0
	movwgt r6, #1
	ands r3, r3, r6
	bne label8
label11:
	cmp r4, r1
	bgt label30
label155:
	mov r1, r2
	ldr r7, [sp, #24]
	cmp r7, r0
	ble label21
	add r2, r0, #4
	cmp r7, r2
	bgt label15
	b label18
label30:
	add r3, r1, #4
	cmp r4, r3
	ble label34
.p2align 4
label31:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r6, r3, r1, lsl #2
	add r1, r1, #4
	ldr r7, [r6, #0]
	cmp r5, r1
	ldr r3, [sp, #20]
	add r3, r3, r2, lsl #2
	add r2, r2, #4
	str r7, [r3, #0]
	ldr r7, [r6, #4]
	str r7, [r3, #4]
	ldr r7, [r6, #8]
	str r7, [r3, #8]
	ldr r6, [r6, #12]
	str r6, [r3, #12]
	bgt label31
label34:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r5, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #20]
	cmp r4, r1
	str r5, [r3, r2, lsl #2]
	add r2, r2, #1
	bgt label34
	b label155
.p2align 4
label15:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	ldr r4, [r2, #0]
	ldr r3, [sp, #20]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r4, [r3, #0]
	ldr r4, [r2, #4]
	str r4, [r3, #4]
	ldr r4, [r2, #8]
	str r4, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label15
label18:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #20]
	str r2, [r3, r1, lsl #2]
	ldr r7, [sp, #24]
	add r1, r1, #1
	cmp r7, r0
	bgt label18
label21:
	ldr r7, [sp, #24]
	ldr r6, [sp, #8]
	cmp r6, r7
	bge label105
	ldr r1, [sp, #4]
	cmp r7, r1
	bgt label25
	b label202
label23:
	ldr r3, [sp, #20]
	ldr r0, [r3, r6, lsl #2]
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	str r0, [r3, r6, lsl #2]
	ldr r7, [sp, #24]
	add r6, r6, #1
	cmp r7, r6
	bgt label23
	b label105
label25:
	ldr r2, [sp, #16]
	ldr r1, [sp, #0]
	cmp r1, r2
	bge label216
	ldr r6, [sp, #8]
	b label28
label26:
	ldr r3, [sp, #20]
	add r0, r3, r6, lsl #2
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r2, [r0, #0]
	add r1, r3, r6, lsl #2
	add r6, r6, #4
	str r2, [r1, #0]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r0, [r0, #12]
	str r0, [r1, #12]
	ldr r2, [sp, #16]
	cmp r2, r6
	bgt label26
	b label23
.p2align 4
label28:
	ldr r3, [sp, #20]
	add r0, r3, r6, lsl #2
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r2, [r0, #0]
	add r1, r3, r6, lsl #2
	add r6, r6, #16
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
	ldr r0, [r0, #60]
	str r0, [r1, #60]
	ldr r1, [sp, #12]
	cmp r1, r6
	bgt label28
	b label26
label105:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label37:
	ldr r7, [sp, #24]
	add r0, r7, r4
	add r0, r0, r0, lsr #31
	asr r6, r0, #1
	mov r0, r4
	mov r1, r6
	bl merge_sort
	mov r0, r6
	mov r1, r7
	bl merge_sort
	mov r2, r4
	mov r0, r6
	mov r1, r4
	sub r8, r6, #4
	cmp r6, r4
	mov r3, #0
	ldr r7, [sp, #24]
	movwgt r3, #1
	cmp r7, r6
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label68
label42:
	cmp r6, r2
	ble label50
	add r3, r2, #4
	cmp r6, r3
	ble label47
label44:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r7, r3, r2, lsl #2
	add r2, r2, #4
	ldr r9, [r7, #0]
	cmp r8, r2
	ldr r3, [sp, #20]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r9, [r3, #0]
	ldr r9, [r7, #4]
	str r9, [r3, #4]
	ldr r9, [r7, #8]
	str r9, [r3, #8]
	ldr r7, [r7, #12]
	str r7, [r3, #12]
	bgt label44
label47:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r7, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #20]
	cmp r6, r2
	str r7, [r3, r1, lsl #2]
	add r1, r1, #1
	bgt label47
label50:
	ldr r7, [sp, #24]
	cmp r7, r0
	bgt label61
label52:
	ldr r7, [sp, #24]
	cmp r7, r4
	ble label130
	add r0, r4, #4
	cmp r7, r0
	bgt label54
	b label386
label61:
	add r2, r0, #4
	ldr r7, [sp, #24]
	cmp r7, r2
	bgt label65
label62:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #20]
	str r2, [r3, r1, lsl #2]
	ldr r7, [sp, #24]
	add r1, r1, #1
	cmp r7, r0
	bgt label62
	b label52
label65:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	ldr r6, [r2, #0]
	ldr r3, [sp, #20]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r6, [r3, #0]
	ldr r6, [r2, #4]
	str r6, [r3, #4]
	ldr r6, [r2, #8]
	str r6, [r3, #8]
	ldr r2, [r2, #12]
	str r2, [r3, #12]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label65
	b label62
.p2align 4
label68:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r7, r1, #1
	ldr r9, [r3, r2, lsl #2]
	ldr r10, [r3, r0, lsl #2]
	cmp r9, r10
	blt label69
	ldr r3, [sp, #20]
	add r0, r0, #1
	str r10, [r3, r1, lsl #2]
	mov r1, r7
	cmp r6, r2
	mov r3, #0
	ldr r7, [sp, #24]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label68
	b label42
.p2align 4
label69:
	ldr r3, [sp, #20]
	add r2, r2, #1
	str r9, [r3, r1, lsl #2]
	mov r1, r7
	cmp r6, r2
	mov r3, #0
	ldr r7, [sp, #24]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	bne label68
	b label42
label54:
	add r0, r4, #16
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label391
	mov r0, r4
label55:
	ldr r3, [sp, #20]
	add r1, r3, r0, lsl #2
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r6, [r1, #0]
	add r2, r3, r0, lsl #2
	add r0, r0, #16
	str r6, [r2, #0]
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
	ldr r1, [r1, #60]
	str r1, [r2, #60]
	ldr r1, [sp, #12]
	cmp r1, r0
	bgt label55
label57:
	ldr r3, [sp, #20]
	add r1, r3, r0, lsl #2
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r6, [r1, #0]
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	str r6, [r2, #0]
	ldr r3, [r1, #4]
	str r3, [r2, #4]
	ldr r3, [r1, #8]
	str r3, [r2, #8]
	ldr r1, [r1, #12]
	str r1, [r2, #12]
	ldr r2, [sp, #16]
	cmp r2, r0
	bgt label57
label59:
	ldr r3, [sp, #20]
	ldr r1, [r3, r0, lsl #2]
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	str r1, [r3, r0, lsl #2]
	ldr r7, [sp, #24]
	add r0, r0, #1
	cmp r7, r0
	bgt label59
	b label130
label79:
	ldr r6, [sp, #8]
	cmp r6, r4
	blt label80
	b label3
label88:
	add r3, r1, #4
	cmp r4, r3
	ble label92
label89:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	add r6, r3, r1, lsl #2
	add r1, r1, #4
	ldr r7, [r6, #0]
	cmp r5, r1
	ldr r3, [sp, #20]
	add r3, r3, r2, lsl #2
	add r2, r2, #4
	str r7, [r3, #0]
	ldr r7, [r6, #4]
	str r7, [r3, #4]
	ldr r7, [r6, #8]
	str r7, [r3, #8]
	ldr r6, [r6, #12]
	str r6, [r3, #12]
	bgt label89
label92:
	movw r3, #:lower16:buf
	movt r3, #:upper16:buf
	ldr r6, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #20]
	cmp r4, r1
	str r6, [r3, r2, lsl #2]
	add r2, r2, #1
	bgt label92
	b label79
label202:
	ldr r6, [sp, #8]
	b label23
label391:
	mov r0, r4
	b label57
label386:
	mov r0, r4
	b label59
label566:
	ldr r6, [sp, #8]
	b label86
label216:
	ldr r6, [sp, #8]
	b label26
label552:
	ldr r6, [sp, #8]
	b label81
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
