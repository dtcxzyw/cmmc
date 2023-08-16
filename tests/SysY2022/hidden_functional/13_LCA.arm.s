.arch armv7ve
.data
.bss
.align 8
f:
	.zero	800400
.align 8
dep:
	.zero	40020
.align 8
to:
	.zero	40020
.align 8
next:
	.zero	40020
.align 8
head:
	.zero	40020
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
tree:
	push { r4, r5, r6, r7, r8, lr }
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	movw r6, #:lower16:next
	movt r6, #:upper16:next
	mov r2, r0
	add r3, r0, r0, lsl #2
	mov r0, r1
	add r4, r1, #1
	movw r1, #:lower16:dep
	movt r1, #:upper16:dep
	str r0, [r1, r2, lsl #2]
	movw r1, #:lower16:f
	movt r1, #:upper16:f
	add r7, r1, r3, lsl #4
	ldr r3, [r7, #0]
	cmp r3, #0
	beq label8
	mov r0, r7
	mov r3, #0
.p2align 4
label3:
	ldr r7, [r7, #0]
	add r7, r7, r7, lsl #2
	add r7, r1, r7, lsl #4
	ldr r8, [r7, r3, lsl #2]
	add r3, r3, #1
	add r7, r0, #4
	cmp r8, #0
	str r8, [r0, #4]
	beq label8
	add r0, r0, #4
	b label3
label8:
	movw r0, #:lower16:head
	movt r0, #:upper16:head
	ldr r7, [r0, r2, lsl #2]
	cmn r7, #1
	beq label11
.p2align 4
label9:
	ldr r0, [r5, r7, lsl #2]
	mov r1, r4
	bl tree
	ldr r7, [r6, r7, lsl #2]
	cmn r7, #1
	bne label9
label11:
	pop { r4, r5, r6, r7, r8, pc }
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[12] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getch
	mvn r6, #0
	sub r1, r0, #48
	cmp r1, #9
	bls label194
	mov r4, r0
	mov r5, #0
.p2align 4
label81:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label202
	mov r4, r0
	b label81
label202:
	mov r4, r5
label84:
	sub r1, r0, #48
	cmp r1, #10
	bhs label207
	mov r5, r0
	mov r7, #0
	b label87
.p2align 4
label217:
	mov r5, r0
.p2align 4
label87:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r5, r2
	blo label217
label90:
	bl getch
	str r7, [sp, #4]
	cmp r4, #0
	sub r2, r0, #48
	rsb r3, r7, #0
	mov r1, r0
	mov r0, r7
	movne r0, r3
	cmp r2, #9
	sub r8, r0, #17
	sub r7, r0, #2
	str r0, [sp, #4]
	bls label227
	mov r4, r1
	mov r5, #0
.p2align 4
label188:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label740
	mov r4, r0
	b label188
label740:
	mov r4, r5
label92:
	sub r1, r0, #48
	cmp r1, #10
	bhs label232
	mov r5, r0
	mov r9, #0
.p2align 4
label185:
	bl getch
	add r2, r9, r9, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r9, r5, r2
	bhs label95
	mov r5, r0
	b label185
label95:
	cmp r4, #0
	rsb r1, r9, #0
	str r9, [sp, #0]
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	mov r0, r9
	movw r4, #:lower16:head
	movt r4, #:upper16:head
	movne r0, r1
	str r0, [sp, #0]
	movw r0, #16191
	movt r0, #16191
	str r0, [r5, #0]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label119
	add r1, r0, #1
	cmp r1, #4
	ble label248
	cmp r7, #16
	ble label264
	add r0, r4, #4
	mov r2, #1
	b label115
.p2align 4
label118:
	add r0, r0, #64
.p2align 4
label115:
	add r2, r2, #16
	str r6, [r0, #0]
	cmp r8, r2
	str r6, [r0, #4]
	str r6, [r0, #8]
	str r6, [r0, #12]
	str r6, [r0, #16]
	str r6, [r0, #20]
	str r6, [r0, #24]
	str r6, [r0, #28]
	str r6, [r0, #32]
	str r6, [r0, #36]
	str r6, [r0, #40]
	str r6, [r0, #44]
	str r6, [r0, #48]
	str r6, [r0, #52]
	str r6, [r0, #56]
	str r6, [r0, #60]
	bgt label118
	mov r3, r2
label106:
	cmp r7, r3
	ble label268
	add r0, r4, r3, lsl #2
	mov r2, r3
label110:
	add r2, r2, #4
	str r6, [r0, #0]
	cmp r7, r2
	str r6, [r0, #4]
	str r6, [r0, #8]
	str r6, [r0, #12]
	ble label268
	add r0, r0, #16
	b label110
label268:
	mov r0, r2
label98:
	cmp r1, r0
	ble label119
	add r2, r4, r0, lsl #2
label101:
	add r0, r0, #1
	str r6, [r2, #0]
	cmp r1, r0
	ble label119
	add r2, r2, #4
	b label101
label119:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq label148
	movw r5, #:lower16:to
	movt r5, #:upper16:to
	mov r6, #0
	mov r7, #1
	b label121
.p2align 4
label139:
	cmp r9, #0
	rsb r0, r11, #0
	mov r1, r11
	movw r3, #:lower16:next
	movt r3, #:upper16:next
	add r7, r7, #1
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	movne r1, r0
	str r1, [r5, #0]
	add r0, r1, r1, lsl #2
	add r1, r4, r8, lsl #2
	lsl r0, r0, #4
	ldr r2, [r1, #0]
	str r2, [r3, r6, lsl #2]
	str r6, [r1, #0]
	add r6, r6, #1
	str r8, [r9, r0]
	ldr r0, [sp, #4]
	cmp r0, r7
	beq label148
	add r5, r5, #4
.p2align 4
label121:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label315
	mov r8, r0
	mov r9, #0
	b label145
.p2align 4
label388:
	mov r8, r0
.p2align 4
label145:
	bl getch
	cmp r8, #45
	sub r1, r0, #48
	moveq r9, #1
	cmp r1, #9
	bhi label388
	mov r8, r9
	cmp r1, #10
	bhs label320
.p2align 4
label321:
	mov r9, r0
	mov r10, #0
	b label128
.p2align 4
label330:
	mov r9, r0
.p2align 4
label128:
	bl getch
	add r2, r10, r10, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r10, r9, r2
	blo label330
.p2align 4
label131:
	bl getch
	rsb r2, r10, #0
	cmp r8, #0
	sub r1, r0, #48
	mov r8, r10
	movne r8, r2
	cmp r1, #9
	bls label338
	mov r9, r0
	mov r10, #0
.p2align 4
label142:
	bl getch
	cmp r9, #45
	sub r1, r0, #48
	moveq r10, #1
	cmp r1, #9
	bls label379
	mov r9, r0
	b label142
.p2align 4
label379:
	mov r9, r10
	sub r1, r0, #48
	cmp r1, #10
	bhs label343
.p2align 4
label344:
	mov r10, r0
	mov r11, #0
.p2align 4
label136:
	bl getch
	add r2, r11, r11, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r11, r10, r2
	bhs label139
	mov r10, r0
	b label136
label315:
	mov r8, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label321
	b label320
label148:
	mov r0, #1
	mov r1, #1
	bl tree
	ldr r0, [sp, #0]
	cmp r0, #0
	beq label149
	str r0, [sp, #8]
	b label150
.p2align 4
label490:
	mov r0, r3
.p2align 4
label179:
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [sp, #8]
	subs r0, r0, #1
	beq label149
	str r0, [sp, #8]
.p2align 4
label150:
	bl getch
	sub r1, r0, #48
	cmp r1, #9
	bls label397
	mov r4, r0
	mov r5, #0
.p2align 4
label152:
	bl getch
	cmp r4, #45
	sub r1, r0, #48
	moveq r5, #1
	cmp r1, #9
	bls label405
	mov r4, r0
	b label152
.p2align 4
label405:
	mov r4, r5
	sub r1, r0, #48
	cmp r1, #10
	bhs label944
.p2align 4
label411:
	mov r5, r0
	mov r6, #0
	b label182
.p2align 4
label724:
	mov r5, r0
.p2align 4
label182:
	bl getch
	add r2, r6, r6, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r6, r5, r2
	blo label724
.p2align 4
label158:
	bl getch
	rsb r2, r6, #0
	cmp r4, #0
	sub r1, r0, #48
	mov r4, r6
	movne r4, r2
	cmp r1, #9
	bls label419
	mov r5, r0
	mov r6, #0
.p2align 4
label160:
	bl getch
	cmp r5, #45
	sub r1, r0, #48
	moveq r6, #1
	cmp r1, #9
	bls label427
	mov r5, r0
	b label160
.p2align 4
label427:
	mov r5, r6
	sub r1, r0, #48
	cmp r1, #10
	bhs label945
.p2align 4
label433:
	mov r6, r0
	mov r7, #0
.p2align 4
label166:
	bl getch
	add r2, r7, r7, lsl #2
	sub r1, r0, #48
	cmp r1, #10
	lsl r2, r2, #1
	sub r2, r2, #48
	add r7, r6, r2
	bhs label169
	mov r6, r0
	b label166
.p2align 4
label169:
	cmp r5, #0
	rsb r1, r7, #0
	mov r0, r7
	mov r3, r4
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	movne r0, r1
	ldr r1, [r5, r4, lsl #2]
	ldr r2, [r5, r0, lsl #2]
	cmp r1, r2
	mov r1, r0
	movlt r3, r0
	movlt r1, r4
	ldr r2, [r5, r3, lsl #2]
	ldr r0, [r5, r1, lsl #2]
	cmp r2, r0
	ble label177
	mov r2, #19
	b label171
.p2align 4
label174:
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	bge label480
.p2align 4
label171:
	add r4, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r4, r9, r4, lsl #4
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	beq label174
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	sub r2, r2, #1
	ldr r5, [r5, r4, lsl #2]
	cmp r0, r5
	movw r5, #:lower16:dep
	movt r5, #:upper16:dep
	movle r3, r4
	ldr r4, [r5, r3, lsl #2]
	cmp r0, r4
	blt label171
	cmp r1, r3
	beq label490
.p2align 4
label181:
	add r0, r3, r3, lsl #2
	movw r9, #:lower16:f
	movt r9, #:upper16:f
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #76]
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r2, [r0, #76]
	mov r0, r3
	cmp r4, r2
	movne r1, r2
	movne r0, r4
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r3, [r3, #72]
	ldr r2, [r2, #72]
	cmp r3, r2
	movne r1, r2
	movne r0, r3
	add r2, r1, r1, lsl #2
	add r3, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #68]
	ldr r3, [r2, #68]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #64]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #64]
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #60]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #60]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #56]
	ldr r4, [r3, #56]
	cmp r2, r4
	movne r1, r4
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #52]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r5, [r2, #52]
	mov r2, r0
	cmp r3, r5
	movne r2, r3
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #48]
	mov r0, r1
	movne r0, r5
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #48]
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #44]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #44]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #40]
	ldr r3, [r3, #40]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #36]
	ldr r4, [r3, #36]
	cmp r2, r4
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #32]
	mov r2, r1
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #32]
	mov r1, r0
	cmp r3, r4
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #28]
	mov r0, r2
	movne r0, r4
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #28]
	cmp r3, r2
	movne r0, r2
	movne r1, r3
	add r2, r0, r0, lsl #2
	add r3, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	add r3, r9, r3, lsl #4
	ldr r4, [r3, #24]
	ldr r3, [r2, #24]
	mov r2, r1
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #20]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #20]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r3, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	add r3, r9, r3, lsl #4
	add r2, r9, r2, lsl #4
	ldr r2, [r2, #16]
	ldr r3, [r3, #16]
	cmp r2, r3
	movne r1, r3
	movne r0, r2
	add r2, r0, r0, lsl #2
	add r2, r9, r2, lsl #4
	ldr r4, [r2, #12]
	add r2, r1, r1, lsl #2
	add r2, r9, r2, lsl #4
	ldr r3, [r2, #12]
	mov r2, r0
	cmp r4, r3
	movne r2, r4
	add r0, r2, r2, lsl #2
	add r0, r9, r0, lsl #4
	ldr r4, [r0, #8]
	mov r0, r1
	movne r0, r3
	add r1, r0, r0, lsl #2
	add r1, r9, r1, lsl #4
	ldr r3, [r1, #8]
	cmp r4, r3
	movne r2, r4
	add r1, r2, r2, lsl #2
	add r1, r9, r1, lsl #4
	ldr r4, [r1, #4]
	mov r1, r0
	movne r1, r3
	add r0, r1, r1, lsl #2
	add r0, r9, r0, lsl #4
	ldr r3, [r0, #4]
	mov r0, r2
	cmp r4, r3
	movne r1, r3
	movne r0, r4
	add r1, r1, r1, lsl #2
	add r2, r0, r0, lsl #2
	lsl r1, r1, #4
	lsl r2, r2, #4
	ldr r2, [r9, r2]
	ldr r1, [r9, r1]
	cmp r2, r1
	movne r0, r2
	add r0, r0, r0, lsl #2
	lsl r0, r0, #4
	ldr r0, [r9, r0]
	b label179
.p2align 4
label480:
	cmp r1, r3
	beq label490
	b label181
label149:
	mov r0, #0
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label419:
	mov r5, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label433
label945:
	mov r7, #0
	b label169
label397:
	mov r4, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label411
label944:
	mov r6, #0
	b label158
label177:
	cmp r1, r3
	beq label490
	b label181
label338:
	mov r9, #0
	sub r1, r0, #48
	cmp r1, #10
	blo label344
label343:
	mov r11, #0
	b label139
label320:
	mov r10, #0
	b label131
label194:
	mov r4, #0
	b label84
label227:
	mov r0, r1
	mov r4, #0
	b label92
label264:
	mov r3, #1
	mov r2, #0
	b label106
label232:
	mov r9, #0
	b label95
label207:
	mov r7, #0
	b label90
label248:
	mov r0, #1
	b label98
