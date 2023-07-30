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
dfs:
.p2align 4
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
	b label19
label3:
	cmp r5, #0
	bne label18
	mov r4, #0
	b label4
label19:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	cmp r6, #0
	bne label6
	b label7
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
	b label4
label6:
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
label7:
	cmp r7, #0
	beq label10
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
label10:
	cmp r8, #0
	beq label13
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
label13:
	cmp r10, #0
	beq label109
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
	mla r0, r10, r0, r4
	movt r1, #17592
	smmul r1, r0, r1
	asr r2, r1, #28
	add r1, r2, r1, lsr #31
	movw r2, #51719
	movt r2, #15258
	mls r4, r1, r2, r0
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
	b label19
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r6, #0
	sub sp, sp, #92
	str r6, [sp, #8]
	add r4, sp, #8
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	str r6, [r4, #16]
	str r6, [r4, #20]
	str r6, [r4, #24]
	str r6, [r4, #28]
	str r6, [r4, #32]
	str r6, [r4, #36]
	str r6, [r4, #40]
	str r6, [r4, #44]
	str r6, [r4, #48]
	str r6, [r4, #52]
	str r6, [r4, #56]
	str r6, [r4, #60]
	str r6, [r4, #64]
	str r6, [r4, #68]
	str r6, [r4, #72]
	str r6, [r4, #76]
	bl getint
	mov r2, r6
	movw r3, #:lower16:dp
	mov r5, r0
	movt r3, #:upper16:dp
	movw r0, #55744
	cmp r6, #18
	movt r0, #44
	mla r6, r6, r0, r3
	blt label244
	cmp r5, #0
	ble label215
label395:
	mov r6, #0
.p2align 4
label213:
	bl getint
	add r6, r6, #1
	add r0, r4, r0, lsl #2
	cmp r5, r6
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bgt label213
	b label215
label244:
	mov r7, #0
	movw r0, #32224
	cmp r7, #18
	movt r0, #2
	mla r8, r7, r0, r6
	blt label250
	add r2, r2, #1
	movw r0, #55744
	cmp r2, #18
	movt r0, #44
	mla r6, r2, r0, r3
	blt label244
	cmp r5, #0
	bgt label395
	b label215
.p2align 4
label250:
	mov r9, #0
	movw r0, #9072
	cmp r9, #18
	mla r10, r9, r0, r8
	blt label256
	add r7, r7, #1
	movw r0, #32224
	cmp r7, #18
	movt r0, #2
	mla r8, r7, r0, r6
	blt label250
	add r2, r2, #1
	movw r0, #55744
	cmp r2, #18
	movt r0, #44
	mla r6, r2, r0, r3
	blt label244
	cmp r5, #0
	bgt label395
	b label215
.p2align 4
label256:
	mov r11, #0
.p2align 4
label208:
	rsb r0, r11, r11, lsl #6
	mvn r1, #0
	add r11, r11, #1
	add r0, r10, r0, lsl #3
	cmp r11, #18
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
	blt label208
	add r9, r9, #1
	movw r0, #9072
	cmp r9, #18
	mla r10, r9, r0, r8
	blt label256
	add r7, r7, #1
	movw r0, #32224
	cmp r7, #18
	movt r0, #2
	mla r8, r7, r0, r6
	blt label250
	add r2, r2, #1
	movw r0, #55744
	cmp r2, #18
	movt r0, #44
	mla r6, r2, r0, r3
	blt label244
	cmp r5, #0
	bgt label395
label215:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #12]
	ldr r3, [r4, #16]
	ldr r4, [r4, #20]
	str r4, [sp, #0]
	mov r4, #0
	str r4, [sp, #4]
	bl dfs
	mov r4, r0
	bl putint
	add sp, sp, #92
	mov r0, r4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
