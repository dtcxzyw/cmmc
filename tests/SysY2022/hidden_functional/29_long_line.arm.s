.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
fib:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r0, #3
	mov r4, r0
	sub sp, sp, #428
	str r0, [sp, #276]
	bge label4
	mov r0, #1
label2:
	add sp, sp, #428
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	ldr r4, [sp, #276]
	add r0, r4, r4, lsr #31
	and r1, r4, #1
	asr r2, r4, #31
	str r1, [sp, #404]
	asr r0, r0, #1
	and r6, r0, #1
	bic r1, r1, r6
	eor r10, r6, #1
	orr r0, r6, r1
	str r1, [sp, #408]
	add r1, r4, r2, lsr #30
	str r2, [sp, #88]
	asr r1, r1, #2
	and r7, r1, #1
	bic r1, r0, r7
	eor r9, r7, #1
	add r0, r4, r2, lsr #29
	str r1, [sp, #200]
	orr r1, r7, r1
	asr r0, r0, #3
	and r0, r0, #1
	bic r2, r1, r0
	eor r8, r0, #1
	str r0, [sp, #280]
	orr r1, r0, r2
	str r2, [sp, #184]
	ldr r2, [sp, #88]
	add r0, r4, r2, lsr #28
	asr r0, r0, #4
	and r0, r0, #1
	str r0, [sp, #272]
	eor r0, r0, #1
	str r0, [sp, #292]
	ldr r0, [sp, #272]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #168]
	ldr r2, [sp, #88]
	add r0, r4, r2, lsr #27
	asr r0, r0, #5
	and r0, r0, #1
	str r0, [sp, #264]
	eor r0, r0, #1
	str r0, [sp, #268]
	ldr r0, [sp, #264]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #148]
	ldr r2, [sp, #88]
	add r0, r4, r2, lsr #26
	asr r0, r0, #6
	and r0, r0, #1
	str r0, [sp, #244]
	eor r0, r0, #1
	str r0, [sp, #256]
	ldr r0, [sp, #244]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #128]
	ldr r2, [sp, #88]
	add r0, r4, r2, lsr #25
	asr r0, r0, #7
	and r0, r0, #1
	str r0, [sp, #232]
	eor r0, r0, #1
	str r0, [sp, #236]
	ldr r0, [sp, #232]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #108]
	ldr r2, [sp, #88]
	add r0, r4, r2, lsr #24
	asr r0, r0, #8
	and r0, r0, #1
	str r0, [sp, #212]
	eor r0, r0, #1
	str r0, [sp, #224]
	ldr r0, [sp, #212]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #84]
	ldr r2, [sp, #88]
	add r0, r4, r2, lsr #23
	asr r0, r0, #9
	and r0, r0, #1
	str r0, [sp, #312]
	eor r0, r0, #1
	str r0, [sp, #308]
	ldr r0, [sp, #312]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #68]
	ldr r2, [sp, #88]
	add r0, r4, r2, lsr #22
	asr r0, r0, #10
	and r0, r0, #1
	str r0, [sp, #328]
	eor r0, r0, #1
	str r0, [sp, #320]
	ldr r0, [sp, #328]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #44]
	ldr r2, [sp, #88]
	add r0, r4, r2, lsr #21
	asr r0, r0, #11
	and r0, r0, #1
	str r0, [sp, #344]
	eor r0, r0, #1
	str r0, [sp, #340]
	ldr r0, [sp, #344]
	bic r3, r1, r0
	add r1, r4, r2, lsr #20
	orr r0, r0, r3
	str r3, [sp, #24]
	asr r1, r1, #12
	and r1, r1, #1
	bic r3, r0, r1
	eor r2, r1, #1
	str r1, [sp, #360]
	orr r0, r1, r3
	str r2, [sp, #352]
	str r3, [sp, #8]
	ldr r2, [sp, #88]
	add r1, r4, r2, lsr #19
	asr r1, r1, #13
	and r2, r1, #1
	bic r0, r0, r2
	eor r1, r2, #1
	str r2, [sp, #380]
	str r1, [sp, #372]
	orr r1, r2, r0
	ldr r2, [sp, #88]
	add r2, r4, r2, lsr #18
	asr r2, r2, #14
	and r2, r2, #1
	str r2, [sp, #396]
	eor r2, r2, #1
	str r2, [sp, #384]
	ldr r2, [sp, #396]
	bic r1, r1, r2
	orr r3, r2, r1
	ldr r2, [sp, #88]
	add r2, r4, r2, lsr #17
	asr r2, r2, #15
	and r2, r2, #1
	str r2, [sp, #208]
	eor r2, r2, #1
	str r2, [sp, #420]
	ldr r2, [sp, #208]
	bic r3, r3, r2
	ldr r2, [sp, #420]
	orr r5, r1, r2
	ldr r2, [sp, #396]
	orr r2, r2, r5
	bic r3, r2, r3
	ldr r2, [sp, #384]
	orr r5, r0, r2
	ldr r2, [sp, #380]
	orr r2, r2, r5
	bic r1, r2, r1
	add r2, r1, r3, lsl #1
	ldr r1, [sp, #372]
	ldr r3, [sp, #8]
	orr r3, r3, r1
	ldr r1, [sp, #360]
	orr r1, r1, r3
	bic r0, r1, r0
	add r1, r0, r2, lsl #1
	ldr r2, [sp, #352]
	ldr r3, [sp, #24]
	ldr r0, [sp, #344]
	orr r2, r3, r2
	ldr r3, [sp, #8]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #340]
	ldr r2, [sp, #44]
	orr r2, r2, r0
	ldr r0, [sp, #328]
	ldr r3, [sp, #24]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #320]
	ldr r2, [sp, #68]
	orr r2, r2, r0
	ldr r0, [sp, #312]
	orr r0, r0, r2
	ldr r2, [sp, #44]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #308]
	ldr r2, [sp, #84]
	orr r2, r2, r0
	ldr r0, [sp, #212]
	orr r0, r0, r2
	ldr r2, [sp, #68]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #224]
	ldr r2, [sp, #108]
	orr r2, r2, r0
	ldr r0, [sp, #232]
	orr r0, r0, r2
	ldr r2, [sp, #84]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #236]
	ldr r2, [sp, #128]
	orr r2, r2, r0
	ldr r0, [sp, #244]
	orr r0, r0, r2
	ldr r2, [sp, #108]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #256]
	ldr r2, [sp, #148]
	orr r2, r2, r0
	ldr r0, [sp, #264]
	orr r0, r0, r2
	ldr r2, [sp, #128]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #268]
	ldr r2, [sp, #168]
	orr r2, r2, r0
	ldr r0, [sp, #272]
	orr r0, r0, r2
	ldr r2, [sp, #148]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #292]
	ldr r2, [sp, #184]
	orr r2, r2, r0
	ldr r0, [sp, #280]
	orr r0, r0, r2
	ldr r2, [sp, #168]
	bic r0, r0, r2
	add r0, r0, r1, lsl #1
	ldr r1, [sp, #200]
	ldr r2, [sp, #184]
	orr r1, r1, r8
	orr r1, r7, r1
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #408]
	orr r1, r1, r9
	orr r2, r6, r1
	ldr r1, [sp, #200]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #404]
	orr r2, r1, r10
	ldr r1, [sp, #408]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #404]
	eor r1, r1, #1
	add r0, r1, r0, lsl #1
	bl fib
	bic r1, r6, r7
	mov r5, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	and r2, r0, #1
	str r2, [sp, #176]
	str r1, [sp, #152]
	ldr r0, [sp, #280]
	orr r1, r7, r1
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #144]
	ldr r0, [sp, #272]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #136]
	ldr r0, [sp, #264]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #116]
	ldr r0, [sp, #244]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #100]
	ldr r0, [sp, #232]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #80]
	ldr r0, [sp, #212]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #64]
	ldr r0, [sp, #312]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #52]
	ldr r0, [sp, #328]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #32]
	ldr r0, [sp, #344]
	bic r3, r1, r0
	orr r0, r0, r3
	str r3, [sp, #20]
	ldr r1, [sp, #360]
	bic r2, r0, r1
	orr r0, r1, r2
	str r2, [sp, #0]
	ldr r2, [sp, #380]
	bic r0, r0, r2
	orr r1, r2, r0
	ldr r2, [sp, #396]
	bic r1, r1, r2
	orr r3, r2, r1
	ldr r2, [sp, #208]
	bic r3, r3, r2
	ldr r2, [sp, #420]
	orr r11, r1, r2
	ldr r2, [sp, #396]
	orr r2, r2, r11
	bic r3, r2, r3
	ldr r2, [sp, #384]
	orr r11, r0, r2
	ldr r2, [sp, #380]
	orr r2, r2, r11
	bic r1, r2, r1
	add r3, r1, r3, lsl #1
	ldr r1, [sp, #372]
	ldr r2, [sp, #0]
	orr r2, r2, r1
	ldr r1, [sp, #360]
	orr r1, r1, r2
	ldr r2, [sp, #352]
	bic r0, r1, r0
	add r1, r0, r3, lsl #1
	ldr r3, [sp, #20]
	ldr r0, [sp, #344]
	orr r2, r3, r2
	orr r0, r0, r2
	ldr r2, [sp, #0]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #340]
	ldr r2, [sp, #32]
	orr r2, r2, r0
	ldr r0, [sp, #328]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #320]
	ldr r2, [sp, #52]
	orr r2, r2, r0
	ldr r0, [sp, #312]
	orr r0, r0, r2
	ldr r2, [sp, #32]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #308]
	ldr r2, [sp, #64]
	orr r2, r2, r0
	ldr r0, [sp, #212]
	orr r0, r0, r2
	ldr r2, [sp, #52]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #224]
	ldr r2, [sp, #80]
	orr r2, r2, r0
	ldr r0, [sp, #232]
	orr r0, r0, r2
	ldr r2, [sp, #64]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #236]
	ldr r2, [sp, #100]
	orr r2, r2, r0
	ldr r0, [sp, #244]
	orr r0, r0, r2
	ldr r2, [sp, #80]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #256]
	ldr r2, [sp, #116]
	orr r2, r2, r0
	ldr r0, [sp, #264]
	orr r0, r0, r2
	ldr r2, [sp, #100]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #268]
	ldr r2, [sp, #136]
	orr r2, r2, r0
	ldr r0, [sp, #272]
	orr r0, r0, r2
	ldr r2, [sp, #116]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #292]
	ldr r2, [sp, #144]
	orr r2, r2, r0
	ldr r0, [sp, #280]
	orr r0, r0, r2
	ldr r2, [sp, #136]
	bic r0, r0, r2
	add r0, r0, r1, lsl #1
	ldr r1, [sp, #152]
	ldr r2, [sp, #144]
	orr r1, r1, r8
	orr r1, r7, r1
	bic r1, r1, r2
	orr r2, r6, r9
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #152]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	and r1, r4, #1
	add r0, r10, r0, lsl #1
	add r0, r1, r0, lsl #1
	bl fib
	str r0, [sp, #356]
	and r3, r5, #1
	ldr r2, [sp, #176]
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	and r0, r0, #1
	and r1, r2, r0
	orr r0, r2, r0
	bic r2, r0, r1
	str r2, [sp, #300]
	str r3, [sp, #288]
	ldr r0, [sp, #356]
	and r3, r2, r3
	and r2, r0, #1
	asr r0, r5, #31
	str r2, [sp, #284]
	and r2, r3, r2
	str r2, [sp, #296]
	orr r2, r1, r2
	str r2, [sp, #260]
	str r0, [sp, #400]
	add r0, r5, r0, lsr #30
	asr r0, r0, #2
	and r1, r0, #1
	ldr r0, [sp, #356]
	asr r3, r0, #31
	add r0, r0, r3, lsr #30
	str r3, [sp, #392]
	asr r0, r0, #2
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #252]
	bic r2, r2, r1
	str r1, [sp, #240]
	orr r3, r1, r2
	str r2, [sp, #248]
	str r3, [sp, #228]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #29
	asr r0, r0, #3
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #29
	asr r0, r0, #3
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #220]
	ldr r3, [sp, #228]
	str r1, [sp, #304]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #216]
	str r3, [sp, #316]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #28
	asr r0, r0, #4
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #324]
	ldr r3, [sp, #316]
	str r1, [sp, #336]
	and r2, r3, r2
	bic r2, r2, r1
	str r2, [sp, #332]
	orr r2, r1, r2
	str r2, [sp, #348]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #27
	asr r0, r0, #5
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #27
	asr r0, r0, #5
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #364]
	bic r2, r2, r1
	str r1, [sp, #376]
	orr r3, r1, r2
	str r2, [sp, #368]
	str r3, [sp, #388]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #26
	asr r0, r0, #6
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #26
	asr r0, r0, #6
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #412]
	ldr r3, [sp, #388]
	str r1, [sp, #204]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #416]
	str r3, [sp, #196]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #25
	asr r0, r0, #7
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #25
	asr r0, r0, #7
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #192]
	ldr r3, [sp, #196]
	str r1, [sp, #180]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #188]
	str r3, [sp, #172]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #24
	asr r0, r0, #8
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #24
	asr r0, r0, #8
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #164]
	ldr r3, [sp, #172]
	str r1, [sp, #156]
	and r2, r3, r2
	bic r2, r2, r1
	str r2, [sp, #160]
	orr r2, r1, r2
	str r2, [sp, #140]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #23
	asr r0, r0, #9
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #23
	asr r0, r0, #9
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #132]
	bic r2, r2, r1
	str r1, [sp, #120]
	str r2, [sp, #124]
	orr r2, r1, r2
	str r2, [sp, #112]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #22
	asr r0, r0, #10
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #22
	asr r0, r0, #10
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #104]
	bic r2, r2, r1
	str r1, [sp, #92]
	orr r3, r1, r2
	str r2, [sp, #96]
	str r3, [sp, #76]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #21
	asr r0, r0, #11
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #21
	asr r0, r0, #11
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #72]
	ldr r3, [sp, #76]
	str r1, [sp, #56]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #60]
	str r3, [sp, #48]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #20
	asr r0, r0, #12
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #20
	asr r0, r0, #12
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #40]
	ldr r3, [sp, #48]
	str r1, [sp, #28]
	and r2, r3, r2
	bic r2, r2, r1
	str r2, [sp, #36]
	orr r2, r1, r2
	str r2, [sp, #16]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #19
	asr r0, r0, #13
	and r1, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #19
	asr r0, r0, #13
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #12]
	bic r2, r2, r1
	str r2, [sp, #4]
	ldr r0, [sp, #400]
	orr r2, r1, r2
	add r0, r5, r0, lsr #18
	asr r0, r0, #14
	and r6, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #18
	asr r0, r0, #14
	and r0, r0, #1
	and r7, r6, r0
	orr r4, r6, r0
	ldr r0, [sp, #400]
	and r3, r2, r4
	bic r6, r3, r7
	orr r8, r7, r6
	add r0, r5, r0, lsr #17
	asr r0, r0, #15
	and r5, r0, #1
	ldr r0, [sp, #356]
	ldr r3, [sp, #392]
	add r0, r0, r3, lsr #17
	asr r0, r0, #15
	and r3, r0, #1
	orr r0, r5, r3
	and r5, r5, r3
	and r9, r8, r0
	bic r0, r0, r5
	bic r3, r9, r5
	orr r0, r8, r0
	bic r0, r0, r3
	bic r3, r4, r7
	orr r2, r2, r3
	ldr r3, [sp, #12]
	bic r2, r2, r6
	add r0, r2, r0, lsl #1
	ldr r2, [sp, #16]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #4]
	bic r1, r1, r2
	ldr r2, [sp, #40]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #28]
	ldr r3, [sp, #48]
	bic r1, r2, r1
	ldr r2, [sp, #36]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #72]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #56]
	ldr r3, [sp, #76]
	bic r1, r2, r1
	ldr r2, [sp, #60]
	orr r1, r3, r1
	ldr r3, [sp, #104]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #92]
	ldr r2, [sp, #112]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #96]
	ldr r3, [sp, #132]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #120]
	ldr r2, [sp, #140]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #124]
	bic r1, r1, r2
	ldr r2, [sp, #164]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #156]
	ldr r3, [sp, #172]
	bic r1, r2, r1
	ldr r2, [sp, #160]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #192]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #180]
	ldr r3, [sp, #196]
	bic r1, r2, r1
	ldr r2, [sp, #188]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #412]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #204]
	ldr r3, [sp, #388]
	bic r1, r2, r1
	ldr r2, [sp, #416]
	orr r1, r3, r1
	ldr r3, [sp, #364]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #376]
	ldr r2, [sp, #348]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #368]
	bic r1, r1, r2
	ldr r2, [sp, #324]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #336]
	ldr r3, [sp, #316]
	bic r1, r2, r1
	ldr r2, [sp, #332]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #220]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #304]
	ldr r3, [sp, #228]
	bic r1, r2, r1
	ldr r2, [sp, #216]
	orr r1, r3, r1
	ldr r3, [sp, #252]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #240]
	ldr r2, [sp, #260]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #248]
	bic r1, r1, r2
	ldr r2, [sp, #284]
	add r1, r1, r0, lsl #1
	ldr r3, [sp, #288]
	and r0, r3, r2
	ldr r2, [sp, #300]
	orr r3, r2, r0
	ldr r2, [sp, #296]
	bic r2, r3, r2
	add r1, r2, r1, lsl #1
	ldr r2, [sp, #284]
	ldr r3, [sp, #288]
	orr r2, r3, r2
	bic r0, r2, r0
	add r0, r0, r1, lsl #1
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, lr }
	mov r4, #1
	sub sp, sp, #4
.p2align 4
label828:
	mov r0, #102
	bl putch
	mov r0, #105
	bl putch
	mov r0, #98
	bl putch
	mov r0, #40
	bl putch
	mov r0, r4
	bl putint
	mov r0, r4
	bl fib
	mov r5, r0
	mov r0, #41
	bl putch
	mov r0, #32
	bl putch
	mov r0, #61
	bl putch
	mov r0, #32
	bl putch
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	add r4, r4, #1
	cmp r4, #21
	blt label828
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
