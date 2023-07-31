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
merge_sort:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r7, r1
	mov r6, r0
	sub sp, sp, #36
	str r0, [sp, #8]
	add r0, r0, #1
	str r1, [sp, #28]
	cmp r1, r0
	ble label2
	movw r3, #:lower16:buf
	ldr r6, [sp, #8]
	movt r3, #:upper16:buf
	str r3, [sp, #20]
	add r3, r3, #400
	sub r2, r1, #4
	str r3, [sp, #24]
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
	bge label4
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
.p2align 4
label73:
	cmp r7, r6
	mov r3, #0
	mov r9, #0
	movwgt r3, #1
	cmp r4, r1
	movwgt r9, #1
	ands r3, r3, r9
	beq label538
	ldr r3, [sp, #20]
	add r9, r2, #1
	ldr r10, [r3, r6, lsl #2]
	ldr r11, [r3, r1, lsl #2]
	cmp r10, r11
	bge label549
	ldr r3, [sp, #24]
	add r6, r6, #1
	str r10, [r3, r2, lsl #2]
	mov r2, r9
	b label73
.p2align 4
label538:
	cmp r7, r6
	ble label81
	add r3, r6, #4
	cmp r7, r3
	bgt label103
label100:
	ldr r3, [sp, #20]
	ldr r8, [r3, r6, lsl #2]
	add r6, r6, #1
	ldr r3, [sp, #24]
	cmp r7, r6
	str r8, [r3, r2, lsl #2]
	add r2, r2, #1
	bgt label100
	b label81
label103:
	ldr r3, [sp, #20]
	add r9, r3, r6, lsl #2
	add r6, r6, #4
	ldr r10, [r9, #0]
	cmp r8, r6
	ldr r3, [sp, #24]
	add r3, r3, r2, lsl #2
	add r2, r2, #4
	str r10, [r3, #0]
	ldr r10, [r9, #4]
	str r10, [r3, #4]
	ldr r10, [r9, #8]
	str r10, [r3, #8]
	ldr r9, [r9, #12]
	str r9, [r3, #12]
	bgt label103
	b label100
label2:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label16:
	ldr r7, [sp, #28]
	ldr r1, [sp, #4]
	cmp r7, r1
	ble label166
	ldr r2, [sp, #16]
	ldr r1, [sp, #0]
	cmp r1, r2
	bge label170
	ldr r6, [sp, #8]
label18:
	ldr r3, [sp, #24]
	add r0, r3, r6, lsl #2
	ldr r2, [r0, #0]
	ldr r3, [sp, #20]
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
	bgt label18
label20:
	ldr r3, [sp, #24]
	add r0, r3, r6, lsl #2
	ldr r2, [r0, #0]
	ldr r3, [sp, #20]
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
	bgt label20
label22:
	ldr r3, [sp, #24]
	ldr r0, [r3, r6, lsl #2]
	ldr r3, [sp, #20]
	str r0, [r3, r6, lsl #2]
	ldr r7, [sp, #28]
	add r6, r6, #1
	cmp r7, r6
	bgt label22
	b label2
label4:
	add r0, r4, #1
	ldr r7, [sp, #28]
	cmp r7, r0
	ble label130
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
.p2align 4
label39:
	cmp r6, r2
	mov r3, #0
	ldr r7, [sp, #28]
	movwgt r3, #1
	cmp r7, r0
	mov r7, #0
	movwgt r7, #1
	ands r3, r3, r7
	beq label335
	ldr r3, [sp, #20]
	add r7, r1, #1
	ldr r9, [r3, r2, lsl #2]
	ldr r10, [r3, r0, lsl #2]
	cmp r9, r10
	blt label44
	ldr r3, [sp, #24]
	add r0, r0, #1
	str r10, [r3, r1, lsl #2]
	mov r1, r7
	b label39
.p2align 4
label335:
	cmp r6, r2
	ble label54
	add r3, r2, #4
	cmp r6, r3
	ble label51
label48:
	ldr r3, [sp, #20]
	add r7, r3, r2, lsl #2
	add r2, r2, #4
	ldr r9, [r7, #0]
	cmp r8, r2
	ldr r3, [sp, #24]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r9, [r3, #0]
	ldr r9, [r7, #4]
	str r9, [r3, #4]
	ldr r9, [r7, #8]
	str r9, [r3, #8]
	ldr r7, [r7, #12]
	str r7, [r3, #12]
	bgt label48
label51:
	ldr r3, [sp, #20]
	ldr r7, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #24]
	cmp r6, r2
	str r7, [r3, r1, lsl #2]
	add r1, r1, #1
	bgt label51
label54:
	ldr r7, [sp, #28]
	cmp r7, r0
	ble label56
	add r2, r0, #4
	cmp r7, r2
	ble label66
label69:
	ldr r3, [sp, #20]
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	ldr r6, [r2, #0]
	ldr r3, [sp, #24]
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
	bgt label69
	b label66
label56:
	ldr r7, [sp, #28]
	cmp r7, r4
	bgt label57
	b label130
label66:
	ldr r3, [sp, #20]
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #24]
	str r2, [r3, r1, lsl #2]
	ldr r7, [sp, #28]
	add r1, r1, #1
	cmp r7, r0
	bgt label66
	b label56
label130:
	ldr r6, [sp, #8]
	mov r0, r4
	mov r2, r6
	mov r1, r6
	b label5
label408:
	mov r0, r4
label59:
	ldr r3, [sp, #24]
	add r1, r3, r0, lsl #2
	ldr r6, [r1, #0]
	ldr r3, [sp, #20]
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
	bgt label59
label63:
	ldr r3, [sp, #24]
	ldr r1, [r3, r0, lsl #2]
	ldr r3, [sp, #20]
	str r1, [r3, r0, lsl #2]
	ldr r7, [sp, #28]
	add r0, r0, #1
	cmp r7, r0
	bgt label63
	b label130
.p2align 4
label5:
	cmp r4, r2
	mov r3, #0
	ldr r7, [sp, #28]
	mov r6, #0
	movwgt r3, #1
	cmp r7, r0
	movwgt r6, #1
	ands r3, r3, r6
	beq label135
.p2align 4
label9:
	ldr r3, [sp, #20]
	add r6, r1, #1
	ldr r7, [r3, r2, lsl #2]
	ldr r8, [r3, r0, lsl #2]
	cmp r7, r8
	bge label146
	ldr r3, [sp, #24]
	add r2, r2, #1
	str r7, [r3, r1, lsl #2]
	mov r1, r6
	cmp r4, r2
	mov r3, #0
	ldr r7, [sp, #28]
	mov r6, #0
	movwgt r3, #1
	cmp r7, r0
	movwgt r6, #1
	ands r3, r3, r6
	bne label9
	cmp r4, r2
	bgt label31
	b label13
.p2align 4
label146:
	ldr r3, [sp, #24]
	add r0, r0, #1
	str r8, [r3, r1, lsl #2]
	mov r1, r6
	cmp r4, r2
	mov r3, #0
	ldr r7, [sp, #28]
	mov r6, #0
	movwgt r3, #1
	cmp r7, r0
	movwgt r6, #1
	ands r3, r3, r6
	bne label9
	cmp r4, r2
	ble label13
label31:
	add r3, r2, #4
	cmp r4, r3
	ble label35
label32:
	ldr r3, [sp, #20]
	add r6, r3, r2, lsl #2
	add r2, r2, #4
	ldr r7, [r6, #0]
	cmp r5, r2
	ldr r3, [sp, #24]
	add r3, r3, r1, lsl #2
	add r1, r1, #4
	str r7, [r3, #0]
	ldr r7, [r6, #4]
	str r7, [r3, #4]
	ldr r7, [r6, #8]
	str r7, [r3, #8]
	ldr r6, [r6, #12]
	str r6, [r3, #12]
	bgt label32
	b label35
label13:
	ldr r7, [sp, #28]
	cmp r7, r0
	bgt label24
	b label15
label35:
	ldr r3, [sp, #20]
	ldr r5, [r3, r2, lsl #2]
	add r2, r2, #1
	ldr r3, [sp, #24]
	cmp r4, r2
	str r5, [r3, r1, lsl #2]
	add r1, r1, #1
	bgt label35
	b label13
label15:
	ldr r7, [sp, #28]
	ldr r6, [sp, #8]
	cmp r6, r7
	blt label16
	b label2
label24:
	add r2, r0, #4
	ldr r7, [sp, #28]
	cmp r7, r2
	ble label28
label25:
	ldr r3, [sp, #20]
	add r2, r3, r0, lsl #2
	add r0, r0, #4
	ldr r4, [r2, #0]
	ldr r3, [sp, #24]
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
	bgt label25
label28:
	ldr r3, [sp, #20]
	ldr r2, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #24]
	str r2, [r3, r1, lsl #2]
	ldr r7, [sp, #28]
	add r1, r1, #1
	cmp r7, r0
	bgt label28
	b label15
label81:
	cmp r4, r1
	ble label90
	add r3, r1, #4
	cmp r4, r3
	ble label87
label84:
	ldr r3, [sp, #20]
	add r6, r3, r1, lsl #2
	add r1, r1, #4
	ldr r7, [r6, #0]
	cmp r5, r1
	ldr r3, [sp, #24]
	add r3, r3, r2, lsl #2
	add r2, r2, #4
	str r7, [r3, #0]
	ldr r7, [r6, #4]
	str r7, [r3, #4]
	ldr r7, [r6, #8]
	str r7, [r3, #8]
	ldr r6, [r6, #12]
	str r6, [r3, #12]
	bgt label84
label87:
	ldr r3, [sp, #20]
	ldr r6, [r3, r1, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #24]
	cmp r4, r1
	str r6, [r3, r2, lsl #2]
	add r2, r2, #1
	bgt label87
label90:
	ldr r6, [sp, #8]
	cmp r6, r4
	bge label4
	ldr r1, [sp, #4]
	cmp r4, r1
	bgt label94
	b label605
label92:
	ldr r3, [sp, #24]
	ldr r0, [r3, r6, lsl #2]
	ldr r3, [sp, #20]
	str r0, [r3, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label92
	b label4
label94:
	ldr r1, [sp, #0]
	cmp r5, r1
	ble label619
	ldr r6, [sp, #8]
label95:
	ldr r3, [sp, #24]
	add r1, r3, r6, lsl #2
	ldr r7, [r1, #0]
	ldr r3, [sp, #20]
	add r2, r3, r6, lsl #2
	add r6, r6, #16
	str r7, [r2, #0]
	cmp r0, r6
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
	bgt label95
label97:
	ldr r3, [sp, #24]
	add r0, r3, r6, lsl #2
	ldr r2, [r0, #0]
	ldr r3, [sp, #20]
	add r1, r3, r6, lsl #2
	add r6, r6, #4
	str r2, [r1, #0]
	cmp r5, r6
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r0, #8]
	str r2, [r1, #8]
	ldr r0, [r0, #12]
	str r0, [r1, #12]
	bgt label97
	b label92
label57:
	add r0, r4, #4
	ldr r7, [sp, #28]
	cmp r7, r0
	ble label403
	add r0, r4, #16
	ldr r2, [sp, #16]
	cmp r2, r0
	ble label408
	mov r0, r4
label61:
	ldr r3, [sp, #24]
	add r1, r3, r0, lsl #2
	ldr r6, [r1, #0]
	ldr r3, [sp, #20]
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
	bgt label61
	b label59
.p2align 4
label135:
	cmp r4, r2
	bgt label31
	b label13
label166:
	ldr r6, [sp, #8]
	b label22
label619:
	ldr r6, [sp, #8]
	b label97
label403:
	mov r0, r4
	b label63
label605:
	ldr r6, [sp, #8]
	b label92
label549:
	ldr r3, [sp, #24]
	add r1, r1, #1
	str r11, [r3, r2, lsl #2]
	mov r2, r9
	b label73
label170:
	ldr r6, [sp, #8]
	b label20
label44:
	ldr r3, [sp, #24]
	add r2, r2, #1
	str r9, [r3, r1, lsl #2]
	mov r1, r7
	b label39
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	movw r4, #:lower16:buf
	sub sp, sp, #4
	movt r4, #:upper16:buf
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
