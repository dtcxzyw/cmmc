.arch armv7ve
.data
.bss
.align 8
dp:
	.zero	52907904
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
dfs:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	mov r7, r2
	mov r5, r0
	mov r6, r1
	ldr r10, [sp, #48]
	mov r8, r3
	movw r0, #:lower16:dp
	movt r0, #:upper16:dp
	ldr r9, [sp, #52]
	movw r1, #55744
	movt r1, #44
	mla r0, r5, r1, r0
	movw r1, #32224
	movt r1, #2
	mla r0, r6, r1, r0
	movw r1, #9072
	mla r0, r2, r1, r0
	rsb r1, r3, r3, lsl #6
	add r0, r0, r1, lsl #3
	rsb r1, r10, r10, lsl #3
	add r11, r0, r1, lsl #2
	ldr r0, [r11, r9, lsl #2]
	cmn r0, #1
	beq label4
label2:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	add r0, r5, r6
	add r0, r7, r0
	add r0, r8, r0
	adds r0, r10, r0
	bne label5
	mov r0, #1
	b label2
label5:
	cmp r5, #0
	bne label20
	mov r4, #0
label6:
	cmp r6, #0
	bne label8
	b label9
label20:
	sub r0, r5, #1
	str r10, [sp, #0]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, r6
	mov r2, r7
	mov r3, r8
	bl dfs
	sub r1, r9, #2
	clz r1, r1
	lsr r1, r1, #5
	sub r1, r5, r1
	mul r0, r0, r1
	movw r1, #12185
	movt r1, #17592
	smmul r1, r0, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	movw r2, #51719
	movt r2, #15258
	mls r4, r1, r2, r0
	b label6
label8:
	add r0, r5, #1
	sub r1, r6, #1
	str r10, [sp, #0]
	mov r2, #2
	str r2, [sp, #4]
	mov r2, r7
	mov r3, r8
	bl dfs
	sub r1, r9, #3
	clz r1, r1
	lsr r1, r1, #5
	sub r1, r6, r1
	mla r0, r0, r1, r4
	movw r1, #12185
	movt r1, #17592
	smmul r1, r0, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	movw r2, #51719
	movt r2, #15258
	mls r4, r1, r2, r0
label9:
	cmp r7, #0
	beq label12
	add r1, r6, #1
	sub r2, r7, #1
	str r10, [sp, #0]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, r5
	mov r3, r8
	bl dfs
	sub r1, r9, #4
	clz r1, r1
	lsr r1, r1, #5
	sub r1, r7, r1
	mla r0, r0, r1, r4
	movw r1, #12185
	movt r1, #17592
	smmul r1, r0, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	movw r2, #51719
	movt r2, #15258
	mls r4, r1, r2, r0
label12:
	cmp r8, #0
	beq label15
	add r2, r7, #1
	sub r3, r8, #1
	str r10, [sp, #0]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r6
	bl dfs
	sub r1, r9, #5
	clz r1, r1
	lsr r1, r1, #5
	sub r1, r8, r1
	mla r0, r0, r1, r4
	movw r1, #12185
	movt r1, #17592
	smmul r1, r0, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	movw r2, #51719
	movt r2, #15258
	mls r4, r1, r2, r0
label15:
	cmp r10, #0
	bne label17
label109:
	movw r0, #12185
	movt r0, #17592
	smmul r0, r4, r0
	asr r1, r0, #28
	add r0, r1, r0, lsr #31
	movw r1, #51719
	movt r1, #15258
	mls r0, r0, r1, r4
	str r0, [r11, r9, lsl #2]
	b label2
label17:
	add r3, r8, #1
	sub r0, r10, #1
	str r0, [sp, #0]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl dfs
	movw r1, #12185
	movt r1, #17592
	mla r0, r10, r0, r4
	smmul r1, r0, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	movw r2, #51719
	movt r2, #15258
	mls r4, r1, r2, r0
	b label109
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #92
	mov r4, #0
	add r6, sp, #8
	str r4, [sp, #8]
	str r4, [sp, #12]
	str r4, [sp, #16]
	str r4, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	str r4, [sp, #52]
	str r4, [sp, #56]
	str r4, [sp, #60]
	str r4, [sp, #64]
	str r4, [sp, #68]
	str r4, [sp, #72]
	str r4, [sp, #76]
	str r4, [sp, #80]
	str r4, [sp, #84]
	bl getint
	mov r3, r4
	movw r2, #:lower16:dp
	movt r2, #:upper16:dp
	mov r5, r0
	mvn r0, #0
	cmp r4, #18
	blt label210
label206:
	cmp r5, #0
	ble label207
	mov r7, r4
	b label208
label207:
	ldr r0, [sp, #12]
	ldr r1, [sp, #16]
	ldr r2, [sp, #20]
	ldr r3, [sp, #24]
	ldr r5, [sp, #28]
	str r5, [sp, #0]
	str r4, [sp, #4]
	bl dfs
	mov r4, r0
	bl putint
	add sp, sp, #92
	mov r0, r4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label208:
	bl getint
	add r7, r7, #1
	add r0, r6, r0, lsl #2
	cmp r5, r7
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bgt label208
	b label207
.p2align 4
label210:
	mov r7, r2
	mov r8, r4
	cmp r4, #18
	bge label214
.p2align 4
label215:
	mov r9, r7
	mov r10, r4
	cmp r4, #18
	bge label219
.p2align 4
label220:
	mov r1, r9
	mov r11, r4
	b label221
.p2align 4
label224:
	add r10, r10, #1
	movw r1, #9072
	add r9, r9, r1
	cmp r10, #18
	blt label220
	add r8, r8, #1
	movw r1, #32224
	movt r1, #2
	add r7, r7, r1
	cmp r8, #18
	blt label215
	add r3, r3, #1
	movw r1, #55744
	movt r1, #44
	add r2, r2, r1
	cmp r3, #18
	blt label210
	b label206
.p2align 4
label221:
	str r0, [r1, #0]
	add r11, r11, #1
	str r0, [r1, #4]
	cmp r11, #18
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r0, [r1, #160]
	str r0, [r1, #164]
	str r0, [r1, #168]
	str r0, [r1, #172]
	str r0, [r1, #176]
	str r0, [r1, #180]
	str r0, [r1, #184]
	str r0, [r1, #188]
	str r0, [r1, #192]
	str r0, [r1, #196]
	str r0, [r1, #200]
	str r0, [r1, #204]
	str r0, [r1, #208]
	str r0, [r1, #212]
	str r0, [r1, #216]
	str r0, [r1, #220]
	str r0, [r1, #224]
	str r0, [r1, #228]
	str r0, [r1, #232]
	str r0, [r1, #236]
	str r0, [r1, #240]
	str r0, [r1, #244]
	str r0, [r1, #248]
	str r0, [r1, #252]
	str r0, [r1, #256]
	str r0, [r1, #260]
	str r0, [r1, #264]
	str r0, [r1, #268]
	str r0, [r1, #272]
	str r0, [r1, #276]
	str r0, [r1, #280]
	str r0, [r1, #284]
	str r0, [r1, #288]
	str r0, [r1, #292]
	str r0, [r1, #296]
	str r0, [r1, #300]
	str r0, [r1, #304]
	str r0, [r1, #308]
	str r0, [r1, #312]
	str r0, [r1, #316]
	str r0, [r1, #320]
	str r0, [r1, #324]
	str r0, [r1, #328]
	str r0, [r1, #332]
	str r0, [r1, #336]
	str r0, [r1, #340]
	str r0, [r1, #344]
	str r0, [r1, #348]
	str r0, [r1, #352]
	str r0, [r1, #356]
	str r0, [r1, #360]
	str r0, [r1, #364]
	str r0, [r1, #368]
	str r0, [r1, #372]
	str r0, [r1, #376]
	str r0, [r1, #380]
	str r0, [r1, #384]
	str r0, [r1, #388]
	str r0, [r1, #392]
	str r0, [r1, #396]
	str r0, [r1, #400]
	str r0, [r1, #404]
	str r0, [r1, #408]
	str r0, [r1, #412]
	str r0, [r1, #416]
	str r0, [r1, #420]
	str r0, [r1, #424]
	str r0, [r1, #428]
	str r0, [r1, #432]
	str r0, [r1, #436]
	str r0, [r1, #440]
	str r0, [r1, #444]
	str r0, [r1, #448]
	str r0, [r1, #452]
	str r0, [r1, #456]
	str r0, [r1, #460]
	str r0, [r1, #464]
	str r0, [r1, #468]
	str r0, [r1, #472]
	str r0, [r1, #476]
	str r0, [r1, #480]
	str r0, [r1, #484]
	str r0, [r1, #488]
	str r0, [r1, #492]
	str r0, [r1, #496]
	str r0, [r1, #500]
	bge label224
	add r1, r1, #504
	b label221
.p2align 4
label219:
	add r8, r8, #1
	movw r1, #32224
	movt r1, #2
	add r7, r7, r1
	cmp r8, #18
	blt label215
	add r3, r3, #1
	movw r1, #55744
	movt r1, #44
	add r2, r2, r1
	cmp r3, #18
	blt label210
	b label206
label214:
	add r3, r3, #1
	movw r1, #55744
	movt r1, #44
	add r2, r2, r1
	cmp r3, #18
	blt label210
	b label206
