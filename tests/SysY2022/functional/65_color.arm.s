.arch armv7ve
.data
.bss
.p2align 3
dp:
	.zero	52907904
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
dfs:
	@ stack usage: CalleeArg[40] Local[0] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, r0
	mov r6, r1
	mov r7, r2
	mov r8, r3
	sub sp, sp, #12
	movw r0, #:lower16:dp
	movt r0, #:upper16:dp
	movw r1, #55744
	movt r1, #44
	ldr r10, [sp, #48]
	mla r0, r5, r1, r0
	ldr r9, [sp, #52]
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
	bne label19
	add r0, r5, r6
	add r0, r2, r0
	add r0, r3, r0
	adds r0, r10, r0
	bne label3
	mov r0, #1
label19:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	cmp r5, #0
	bne label18
	mov r4, #0
	b label4
label18:
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
label4:
	cmp r6, #0
	beq label6
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
label6:
	cmp r7, #0
	beq label8
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
label8:
	cmp r8, #0
	bne label10
label11:
	cmp r10, #0
	beq label85
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
label85:
	movw r0, #12185
	movt r0, #17592
	smmul r0, r4, r0
	asr r1, r0, #28
	add r0, r1, r0, lsr #31
	movw r1, #51719
	movt r1, #15258
	mls r0, r0, r1, r4
	str r0, [r11, r9, lsl #2]
	b label19
label10:
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
	b label11
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[8] Local[80] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	mov r5, #0
	sub sp, sp, #88
	str r5, [sp, #8]
	add r7, sp, #8
	str r5, [sp, #12]
	str r5, [sp, #16]
	str r5, [sp, #20]
	str r5, [sp, #24]
	str r5, [sp, #28]
	str r5, [sp, #32]
	str r5, [sp, #36]
	str r5, [sp, #40]
	str r5, [sp, #44]
	str r5, [sp, #48]
	str r5, [sp, #52]
	str r5, [sp, #56]
	str r5, [sp, #60]
	str r5, [sp, #64]
	str r5, [sp, #68]
	str r5, [sp, #72]
	str r5, [sp, #76]
	str r5, [sp, #80]
	str r5, [sp, #84]
	bl getint
	movw r3, #32224
	movt r3, #2
	mov r9, r5
	mov r10, r5
	movw r2, #:lower16:dp
	movt r2, #:upper16:dp
	mov r6, r0
	mov r4, r5
	mov r8, r5
	b label202
.p2align 4
label380:
	add r4, r4, #1
	cmp r4, #18
	bge label578
	mov r10, r5
	mov r8, r5
.p2align 4
label202:
	mla r0, r4, r3, r2
	movw r1, #9072
	mla r0, r8, r1, r0
	rsb r1, r10, r10, lsl #6
	add r10, r10, #1
	cmp r10, #18
	add r0, r0, r1, lsl #3
	mvn r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	str r1, [r0, #180]
	str r1, [r0, #184]
	str r1, [r0, #188]
	str r1, [r0, #192]
	str r1, [r0, #196]
	str r1, [r0, #200]
	str r1, [r0, #204]
	str r1, [r0, #208]
	str r1, [r0, #212]
	str r1, [r0, #216]
	str r1, [r0, #220]
	str r1, [r0, #224]
	str r1, [r0, #228]
	str r1, [r0, #232]
	str r1, [r0, #236]
	str r1, [r0, #240]
	str r1, [r0, #244]
	str r1, [r0, #248]
	str r1, [r0, #252]
	str r1, [r0, #256]
	str r1, [r0, #260]
	str r1, [r0, #264]
	str r1, [r0, #268]
	str r1, [r0, #272]
	str r1, [r0, #276]
	str r1, [r0, #280]
	str r1, [r0, #284]
	str r1, [r0, #288]
	str r1, [r0, #292]
	str r1, [r0, #296]
	str r1, [r0, #300]
	str r1, [r0, #304]
	str r1, [r0, #308]
	str r1, [r0, #312]
	str r1, [r0, #316]
	str r1, [r0, #320]
	str r1, [r0, #324]
	str r1, [r0, #328]
	str r1, [r0, #332]
	str r1, [r0, #336]
	str r1, [r0, #340]
	str r1, [r0, #344]
	str r1, [r0, #348]
	str r1, [r0, #352]
	str r1, [r0, #356]
	str r1, [r0, #360]
	str r1, [r0, #364]
	str r1, [r0, #368]
	str r1, [r0, #372]
	str r1, [r0, #376]
	str r1, [r0, #380]
	str r1, [r0, #384]
	str r1, [r0, #388]
	str r1, [r0, #392]
	str r1, [r0, #396]
	str r1, [r0, #400]
	str r1, [r0, #404]
	str r1, [r0, #408]
	str r1, [r0, #412]
	str r1, [r0, #416]
	str r1, [r0, #420]
	str r1, [r0, #424]
	str r1, [r0, #428]
	str r1, [r0, #432]
	str r1, [r0, #436]
	str r1, [r0, #440]
	str r1, [r0, #444]
	str r1, [r0, #448]
	str r1, [r0, #452]
	str r1, [r0, #456]
	str r1, [r0, #460]
	str r1, [r0, #464]
	str r1, [r0, #468]
	str r1, [r0, #472]
	str r1, [r0, #476]
	str r1, [r0, #480]
	str r1, [r0, #484]
	str r1, [r0, #488]
	str r1, [r0, #492]
	str r1, [r0, #496]
	str r1, [r0, #500]
	blt label202
	add r8, r8, #1
	cmp r8, #18
	bge label380
	mov r10, r5
	b label202
.p2align 4
label578:
	add r9, r9, #1
	cmp r9, #18
	bge label212
	movw r0, #55744
	movt r0, #44
	mov r10, r5
	mov r4, r5
	mov r8, r5
	add r2, r2, r0
	b label202
label212:
	cmp r6, #0
	ble label215
	mov r4, r5
.p2align 4
label213:
	bl getint
	add r4, r4, #1
	add r0, r7, r0, lsl #2
	cmp r6, r4
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bgt label213
label215:
	ldr r0, [sp, #12]
	ldr r1, [sp, #16]
	ldr r2, [sp, #20]
	ldr r3, [sp, #24]
	ldr r4, [sp, #28]
	str r4, [sp, #0]
	str r5, [sp, #4]
	bl dfs
	mov r4, r0
	bl putint
	add sp, sp, #88
	mov r0, r4
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
