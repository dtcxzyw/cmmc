.arch armv7ve
.data
.bss
.align 4
count:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
QuickSort:
.p2align 4
	push { r4, r5, r6, r7, lr }
	mov r5, r2
	mov r4, r0
	sub sp, sp, #4
label2:
	cmp r5, r1
	bgt label4
	b label21
label8:
	str r0, [r4, r6, lsl #2]
	sub r2, r6, #1
	mov r0, r4
	bl QuickSort
	add r1, r6, #1
	b label2
label20:
.p2align 4
	ldr r7, [r4, r3, lsl #2]
	str r7, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r3, r6
	bgt label16
	b label8
label21:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label19:
.p2align 4
	ldr r7, [r4, r6, lsl #2]
	str r7, [r4, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r6
	bgt label9
	b label8
label16:
.p2align 4
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	bgt label17
	cmp r3, r6
	bgt label19
	b label8
label17:
.p2align 4
	add r6, r6, #1
	cmp r3, r6
	bgt label16
	b label8
label4:
	ldr r0, [r4, r1, lsl #2]
	mov r3, r5
	mov r6, r1
	sub r2, r0, #1
	cmp r5, r1
	ble label8
label9:
.p2align 4
	cmp r6, r3
	blt label11
	cmp r3, r6
	bgt label16
	b label8
label11:
.p2align 4
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	blt label12
	cmp r6, r3
	blt label20
	cmp r3, r6
	bgt label16
	b label8
label12:
.p2align 4
	sub r3, r3, #1
	cmp r6, r3
	blt label11
	cmp r3, r6
	bgt label16
	b label8
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r1, #7
	mov r5, #26
	sub sp, sp, #364
	movw r6, #282
	mov r9, #1
	mov r2, #23
	mov r11, #254
	mov r4, #89
	mov r7, #39
	mov r8, #28
	movw r10, #290
	add r0, sp, #96
	add r3, sp, #232
	str r3, [sp, #92]
	str r0, [sp, #68]
	str r1, [sp, #96]
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r5, [r0, #12]
	str r6, [r0, #16]
	str r11, [sp, #88]
	str r11, [r0, #20]
	mov r11, #27
	str r11, [sp, #56]
	str r11, [r0, #24]
	mov r11, #5
	str r11, [sp, #64]
	str r11, [r0, #28]
	mov r11, #83
	str r11, [sp, #0]
	str r11, [r0, #32]
	movw r11, #273
	str r11, [sp, #224]
	str r11, [r0, #36]
	movw r11, #574
	str r11, [sp, #4]
	str r11, [r0, #40]
	movw r11, #905
	str r11, [sp, #228]
	str r11, [r0, #44]
	movw r11, #354
	str r11, [sp, #8]
	str r11, [r0, #48]
	movw r11, #657
	str r11, [sp, #12]
	str r11, [r0, #52]
	movw r11, #935
	str r11, [sp, #16]
	str r11, [r0, #56]
	mov r11, #264
	str r11, [sp, #20]
	str r11, [r0, #60]
	movw r11, #639
	str r11, [sp, #24]
	str r11, [r0, #64]
	movw r11, #459
	str r11, [sp, #28]
	str r11, [r0, #68]
	mov r11, #29
	str r11, [sp, #32]
	str r11, [r0, #72]
	mov r11, #68
	str r11, [sp, #36]
	str r11, [r0, #76]
	movw r11, #929
	str r11, [sp, #40]
	str r11, [r0, #80]
	mov r11, #756
	str r11, [sp, #44]
	str r11, [r0, #84]
	mov r11, #452
	str r11, [sp, #48]
	str r11, [r0, #88]
	movw r11, #279
	str r11, [sp, #52]
	str r11, [r0, #92]
	mov r11, #58
	str r11, [sp, #72]
	str r11, [r0, #96]
	mov r11, #87
	str r11, [sp, #76]
	str r11, [r0, #100]
	mov r11, #96
	str r11, [sp, #80]
	str r11, [r0, #104]
	mov r11, #36
	str r11, [sp, #84]
	str r11, [r0, #108]
	str r7, [r0, #112]
	str r8, [r0, #116]
	str r9, [r0, #120]
	str r10, [r0, #124]
	str r1, [sp, #232]
	str r2, [r3, #4]
	str r4, [r3, #8]
	mov r4, #0
	str r5, [r3, #12]
	str r6, [r3, #16]
	ldr r11, [sp, #88]
	str r11, [r3, #20]
	ldr r11, [sp, #56]
	str r11, [r3, #24]
	ldr r11, [sp, #64]
	str r11, [r3, #28]
	ldr r11, [sp, #0]
	str r11, [r3, #32]
	ldr r11, [sp, #224]
	str r11, [r3, #36]
	ldr r11, [sp, #4]
	str r11, [r3, #40]
	ldr r11, [sp, #228]
	str r11, [r3, #44]
	ldr r11, [sp, #8]
	str r11, [r3, #48]
	ldr r11, [sp, #12]
	str r11, [r3, #52]
	ldr r11, [sp, #16]
	str r11, [r3, #56]
	ldr r11, [sp, #20]
	str r11, [r3, #60]
	ldr r11, [sp, #24]
	str r11, [r3, #64]
	ldr r11, [sp, #28]
	str r11, [r3, #68]
	ldr r11, [sp, #32]
	str r11, [r3, #72]
	ldr r11, [sp, #36]
	str r11, [r3, #76]
	ldr r11, [sp, #40]
	str r11, [r3, #80]
	ldr r11, [sp, #44]
	str r11, [r3, #84]
	ldr r11, [sp, #48]
	str r11, [r3, #88]
	ldr r11, [sp, #52]
	str r11, [r3, #92]
	ldr r11, [sp, #72]
	str r11, [r3, #96]
	ldr r11, [sp, #76]
	str r11, [r3, #100]
	ldr r11, [sp, #80]
	str r11, [r3, #104]
	ldr r11, [sp, #84]
	str r11, [r3, #108]
	str r7, [r3, #112]
	str r8, [r3, #116]
	str r9, [r3, #120]
	str r10, [r3, #124]
	movw r3, #:lower16:count
	movt r3, #:upper16:count
	str r3, [sp, #60]
label112:
.p2align 4
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label112
	mov r1, #0
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label285
label821:
.p2align 4
	mov r4, #0
label121:
.p2align 4
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label121
	ldr r3, [sp, #92]
	ldr r0, [r3, #64]
	ldr r1, [r3, #60]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r1, #0
	b label124
label285:
.p2align 4
	mov r0, #0
	cmp r2, r0
	bgt label118
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label285
	b label821
label118:
.p2align 4
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	bgt label119
	mov r0, r6
	cmp r2, r6
	bgt label118
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label285
	b label821
label119:
.p2align 4
	ldr r3, [sp, #92]
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label118
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label285
	b label821
label124:
.p2align 4
	ldr r3, [sp, #60]
	mov r2, #0
	add r0, r3, r1, lsl #2
	str r2, [r3, r1, lsl #2]
	add r1, r1, #16
	str r2, [r0, #4]
	cmp r1, #992
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	str r2, [r0, #32]
	str r2, [r0, #36]
	str r2, [r0, #40]
	str r2, [r0, #44]
	str r2, [r0, #48]
	str r2, [r0, #52]
	str r2, [r0, #56]
	str r2, [r0, #60]
	blt label124
	mov r4, r2
	str r2, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	mov r5, r2
	mov r0, #4
label127:
	ldr r3, [sp, #92]
	add r1, r3, r5, lsl #2
	ldr r5, [r3, r5, lsl #2]
	ldr r3, [sp, #60]
	ldr r6, [r3, r5, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	str r6, [r3, r5, lsl #2]
	movlt r2, r5
	movle r4, r6
	ldr r6, [r1, #4]
	mov r5, r2
	ldr r7, [r3, r6, lsl #2]
	add r7, r7, #1
	str r7, [r3, r6, lsl #2]
	cmp r4, r7
	movlt r5, r6
	ldr r6, [r1, #8]
	mov r2, r4
	movle r2, r7
	ldr r4, [r3, r6, lsl #2]
	add r7, r4, #1
	str r7, [r3, r6, lsl #2]
	mov r4, r2
	cmp r2, r7
	movle r4, r7
	movlt r5, r6
	ldr r6, [r1, #12]
	mov r2, r5
	ldr r1, [r3, r6, lsl #2]
	add r7, r1, #1
	str r7, [r3, r6, lsl #2]
	mov r1, r4
	cmp r4, r7
	add r3, r0, #4
	movle r1, r7
	movlt r2, r6
	cmp r3, #32
	bge label132
	mov r4, r1
	mov r5, r0
	mov r0, r3
	b label127
label132:
	ldr r3, [sp, #92]
	ldr r4, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #60]
	ldr r5, [r3, r4, lsl #2]
	add r5, r5, #1
	str r5, [r3, r4, lsl #2]
	cmp r1, r5
	movle r1, r5
	movlt r2, r4
	cmp r0, #32
	blt label132
	mov r0, r2
	bl putint
	mov r2, #0
label137:
.p2align 4
	add r1, r2, #4
	cmp r1, #32
	bge label140
	ldr r0, [sp, #68]
	ldr r5, [r0, r2, lsl #2]
	add r4, r0, r2, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r2, lsl #2]
	add r0, r3, r2, lsl #2
	ldr r2, [r4, #4]
	str r2, [r0, #4]
	ldr r2, [r4, #8]
	str r2, [r0, #8]
	ldr r2, [r4, #12]
	str r2, [r0, #12]
	mov r2, r1
	b label137
label140:
	ldr r0, [sp, #68]
	ldr r0, [r0, r2, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #32
	blt label140
	mov r1, #0
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label441
label440:
.p2align 4
	mov r4, #0
label149:
.p2align 4
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label149
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	blt label153
	b label154
label151:
.p2align 4
	add r2, r1, #4
	cmp r2, #32
	bge label154
label153:
	ldr r0, [sp, #68]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	mov r1, r2
	b label151
label148:
.p2align 4
	ldr r3, [sp, #92]
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label147
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	bge label440
label441:
.p2align 4
	mov r0, #0
	cmp r2, r0
	bgt label147
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label441
	b label440
label147:
.p2align 4
	ldr r3, [sp, #92]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	bgt label148
	mov r0, r6
	cmp r2, r6
	bgt label147
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label441
	b label440
label154:
	ldr r0, [sp, #68]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label154
	mov r0, #1
	cmp r0, #32
	bge label499
label158:
.p2align 4
	ldr r3, [sp, #92]
	sub r2, r0, #1
	ldr r1, [r3, r0, lsl #2]
	cmn r2, #1
	bgt label162
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r3, r2, lsl #2]
	cmp r0, #32
	blt label158
	b label499
label162:
.p2align 4
	ldr r3, [sp, #92]
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	blt label163
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r3, r2, lsl #2]
	cmp r0, #32
	blt label158
	b label499
label163:
.p2align 4
	add r5, r2, #1
	ldr r3, [sp, #92]
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	bgt label162
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r3, r2, lsl #2]
	cmp r0, #32
	blt label158
label499:
.p2align 4
	mov r4, #0
label164:
.p2align 4
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label164
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	blt label204
	b label168
label166:
.p2align 4
	add r2, r1, #4
	cmp r2, #32
	blt label204
label168:
	ldr r0, [sp, #68]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label168
	mov r1, #0
	mov r2, #31
	mov r0, r3
	bl QuickSort
	mov r4, #0
	b label171
label204:
	ldr r0, [sp, #68]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	mov r1, r2
	b label166
label171:
.p2align 4
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label171
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	blt label203
	b label175
label173:
.p2align 4
	add r2, r1, #4
	cmp r2, #32
	bge label175
label203:
	ldr r0, [sp, #68]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	mov r1, r2
	b label173
label175:
	ldr r0, [sp, #68]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label175
	mov r1, #0
	mov r0, r1
	cmp r1, #32
	blt label180
label572:
.p2align 4
	mov r4, #0
	b label183
label180:
.p2align 4
	ldr r3, [sp, #92]
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	bne label182
	str r1, [r3, r0, lsl #2]
	mov r1, #0
	add r0, r0, #1
	cmp r0, #32
	blt label180
	b label572
label182:
.p2align 4
	mov r2, #0
	ldr r3, [sp, #92]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	blt label180
	b label572
label183:
.p2align 4
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label183
	mov r1, #0
	add r2, r1, #4
	cmp r2, #32
	blt label202
	b label187
label185:
.p2align 4
	add r2, r1, #4
	cmp r2, #32
	bge label187
label202:
	ldr r0, [sp, #68]
	ldr r5, [r0, r1, lsl #2]
	add r4, r0, r1, lsl #2
	ldr r3, [sp, #92]
	str r5, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	ldr r1, [r4, #12]
	str r1, [r0, #12]
	mov r1, r2
	b label185
label187:
	ldr r0, [sp, #68]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #92]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label187
	mov r2, #0
	mov r1, r2
	mov r0, r2
label189:
.p2align 4
	cmp r1, #32
	blt label193
label614:
.p2align 4
	mov r4, #0
	ldr r3, [sp, #92]
	str r4, [r3, #120]
	str r4, [r3, #124]
	b label199
label193:
.p2align 4
	cmp r1, #2
	blt label194
	beq label628
	b label196
label194:
.p2align 4
	ldr r3, [sp, #92]
	ldr r3, [r3, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r3
	cmp r1, #32
	blt label193
	b label614
label196:
	ldr r3, [sp, #92]
	add r4, r3, r1, lsl #2
	ldr r3, [r3, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r3
	sub r0, r0, r2
	movw r2, #21846
	movt r2, #21845
	smmul r2, r0, r2
	add r3, r2, r2, lsr #31
	ldr r2, [r4, #-8]
	str r3, [r4, #-8]
	b label189
label199:
.p2align 4
	ldr r3, [sp, #92]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label199
	mov r0, #0
	add sp, sp, #364
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label628:
	ldr r2, [sp, #232]
	movw r1, #21846
	movt r1, #21845
	smmul r1, r0, r1
	add r1, r1, r1, lsr #31
	str r1, [sp, #232]
	mov r1, #3
	b label189
