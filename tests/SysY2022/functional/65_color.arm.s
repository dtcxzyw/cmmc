.arch armv7ve
.data
.bss
.align 4
dp:
	.zero	52907904
.text
.syntax unified
.arm
.fpu vfpv4
dfs:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	mov r5, r0
	mov r6, r1
	mov r7, r2
	ldr r10, [sp, #48]
	movw r0, #:lower16:dp
	mov r8, r3
	ldr r9, [sp, #52]
	movw r1, #55744
	movt r0, #:upper16:dp
	movt r1, #44
	mla r0, r5, r1, r0
	movw r1, #32224
	movt r1, #2
	mla r0, r6, r1, r0
	movw r1, #9072
	mla r0, r2, r1, r0
	mov r1, #504
	mla r0, r3, r1, r0
	mov r1, #28
	mla r11, r10, r1, r0
	ldr r0, [r11, r9, lsl #2]
	cmn r0, #1
	bne label19
	add r0, r5, r6
	add r0, r2, r0
	add r0, r3, r0
	adds r0, r10, r0
	beq label54
	cmp r5, #0
	bne label4
	b label57
label54:
	mov r0, #1
	b label19
label4:
	sub r0, r5, #1
	str r10, [sp, #0]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, r6
	mov r2, r7
	mov r3, r8
	bl dfs
	movw r2, #12185
	sub r1, r9, #2
	movt r2, #17592
	clz r1, r1
	lsr r1, r1, #5
	sub r1, r5, r1
	mul r0, r0, r1
	movw r1, #51719
	movt r1, #15258
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r4, r2, r1, r0
label5:
	cmp r6, #0
	bne label7
	b label8
label19:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label7:
	add r0, r5, #1
	sub r1, r6, #1
	str r10, [sp, #0]
	mov r2, #2
	str r2, [sp, #4]
	mov r2, r7
	mov r3, r8
	bl dfs
	sub r1, r9, #3
	movw r2, #12185
	clz r1, r1
	movt r2, #17592
	lsr r1, r1, #5
	sub r1, r6, r1
	mla r0, r0, r1, r4
	movw r1, #51719
	movt r1, #15258
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r4, r2, r1, r0
label8:
	cmp r7, #0
	bne label18
label10:
	cmp r8, #0
	bne label12
	b label13
label18:
	add r1, r6, #1
	sub r2, r7, #1
	str r10, [sp, #0]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, r5
	mov r3, r8
	bl dfs
	sub r1, r9, #4
	movw r2, #12185
	clz r1, r1
	movt r2, #17592
	lsr r1, r1, #5
	sub r1, r7, r1
	mla r0, r0, r1, r4
	movw r1, #51719
	movt r1, #15258
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r4, r2, r1, r0
	b label10
label12:
	add r2, r7, #1
	sub r3, r8, #1
	str r10, [sp, #0]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r6
	bl dfs
	sub r1, r9, #5
	movw r2, #12185
	clz r1, r1
	movt r2, #17592
	lsr r1, r1, #5
	sub r1, r8, r1
	mla r0, r0, r1, r4
	movw r1, #51719
	movt r1, #15258
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r4, r2, r1, r0
label13:
	cmp r10, #0
	beq label16
	add r3, r8, #1
	sub r0, r10, #1
	str r0, [sp, #0]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl dfs
	movw r1, #51719
	movw r2, #12185
	mla r0, r10, r0, r4
	movt r1, #15258
	movt r2, #17592
	smmul r2, r0, r2
	asr r3, r2, #28
	add r2, r3, r2, lsr #31
	mls r4, r2, r1, r0
label16:
	movw r0, #51719
	movw r1, #12185
	movt r0, #15258
	movt r1, #17592
	smmul r1, r4, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	mls r0, r1, r0, r4
	str r0, [r11, r9, lsl #2]
	b label19
label57:
	mov r4, #0
	b label5
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #108
	mov r4, #0
	add r1, sp, #8
	str r1, [sp, #88]
	str r4, [sp, #8]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #12]
	str r4, [r1, #16]
	str r4, [r1, #20]
	str r4, [r1, #24]
	str r4, [r1, #28]
	str r4, [r1, #32]
	str r4, [r1, #36]
	str r4, [r1, #40]
	str r4, [r1, #44]
	str r4, [r1, #48]
	str r4, [r1, #52]
	str r4, [r1, #56]
	str r4, [r1, #60]
	str r4, [r1, #64]
	str r4, [r1, #68]
	str r4, [r1, #72]
	str r4, [r1, #76]
	bl getint
	movw r2, #:lower16:dp
	str r0, [sp, #92]
	movt r2, #:upper16:dp
	mov r0, r4
	str r2, [sp, #96]
	movw r1, #55744
	cmp r4, #18
	movt r1, #44
	mla r1, r4, r1, r2
	blt label232
label231:
	ldr r0, [sp, #92]
	cmp r0, #0
	bgt label307
	b label203
label232:
	mov r2, #0
	b label188
label237:
	add r0, r0, #1
	movw r1, #55744
	ldr r2, [sp, #96]
	cmp r0, #18
	movt r1, #44
	mla r1, r0, r1, r2
	blt label232
	b label231
label238:
	mov r4, #0
	b label190
label243:
	add r2, r2, #1
	movw r3, #32224
	cmp r2, #18
	movt r3, #2
	mla r3, r2, r3, r1
	blt label238
	b label237
label244:
	mov r6, #0
label193:
	mov r7, #504
	cmp r6, #18
	mla r7, r6, r7, r5
	blt label251
	add r4, r4, #1
	movw r5, #9072
	cmp r4, #18
	mla r5, r4, r5, r3
	blt label244
	b label243
label251:
	mov r10, #0
label195:
	mov r8, #28
	mvn r9, #0
	mul r11, r10, r8
	mla r8, r10, r8, r7
	add r10, r10, #4
	str r9, [r7, r11]
	cmp r10, #16
	str r9, [r8, #4]
	str r9, [r8, #8]
	str r9, [r8, #12]
	str r9, [r8, #16]
	str r9, [r8, #20]
	str r9, [r8, #24]
	str r9, [r8, #28]
	str r9, [r8, #32]
	str r9, [r8, #36]
	str r9, [r8, #40]
	str r9, [r8, #44]
	str r9, [r8, #48]
	str r9, [r8, #52]
	str r9, [r8, #56]
	str r9, [r8, #60]
	str r9, [r8, #64]
	str r9, [r8, #68]
	str r9, [r8, #72]
	str r9, [r8, #76]
	str r9, [r8, #80]
	str r9, [r8, #84]
	str r9, [r8, #88]
	str r9, [r8, #92]
	str r9, [r8, #96]
	str r9, [r8, #100]
	str r9, [r8, #104]
	str r9, [r8, #108]
	blt label195
	mov r8, #28
	add r6, r6, #1
	mul r11, r10, r8
	mla r8, r10, r8, r7
	str r9, [r7, r11]
	str r9, [r8, #4]
	str r9, [r8, #8]
	str r9, [r8, #12]
	str r9, [r8, #16]
	str r9, [r8, #20]
	str r9, [r8, #24]
	str r9, [r8, #28]
	str r9, [r8, #32]
	str r9, [r8, #36]
	str r9, [r8, #40]
	str r9, [r8, #44]
	str r9, [r8, #48]
	str r9, [r8, #52]
	b label193
label307:
	mov r4, #0
label201:
	bl getint
	add r4, r4, #1
	ldr r1, [sp, #88]
	ldr r2, [r1, r0, lsl #2]
	add r2, r2, #1
	str r2, [r1, r0, lsl #2]
	ldr r0, [sp, #92]
	cmp r0, r4
	bgt label201
label203:
	ldr r1, [sp, #88]
	ldr r0, [r1, #4]
	ldr r3, [r1, #8]
	ldr r2, [r1, #12]
	ldr r4, [r1, #16]
	ldr r1, [r1, #20]
	str r1, [sp, #0]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, r3
	mov r3, r4
	bl dfs
	mov r4, r0
	bl putint
	add sp, sp, #108
	mov r0, r4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label190:
	movw r5, #9072
	cmp r4, #18
	mla r5, r4, r5, r3
	blt label244
	b label243
label188:
	movw r3, #32224
	cmp r2, #18
	movt r3, #2
	mla r3, r2, r3, r1
	blt label238
	b label237
