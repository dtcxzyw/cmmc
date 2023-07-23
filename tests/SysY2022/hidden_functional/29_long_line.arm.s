.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
fib:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r0, #3
	mov r4, r0
	sub sp, sp, #428
	str r0, [sp, #144]
	bge label4
	mov r0, #1
label2:
	add sp, sp, #428
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	ldr r4, [sp, #144]
	add r0, r4, r4, lsr #31
	and r1, r4, #1
	asr r2, r4, #31
	str r1, [sp, #16]
	asr r0, r0, #1
	and r6, r0, #1
	bic r1, r1, r6
	eor r10, r6, #1
	orr r0, r6, r1
	str r1, [sp, #12]
	add r1, r4, r2, lsr #30
	str r2, [sp, #232]
	asr r1, r1, #2
	and r7, r1, #1
	bic r1, r0, r7
	eor r9, r7, #1
	add r0, r4, r2, lsr #29
	str r1, [sp, #412]
	orr r1, r7, r1
	asr r0, r0, #3
	and r0, r0, #1
	bic r2, r1, r0
	eor r8, r0, #1
	str r0, [sp, #140]
	orr r1, r0, r2
	str r2, [sp, #396]
	ldr r2, [sp, #232]
	add r0, r4, r2, lsr #28
	asr r0, r0, #4
	and r0, r0, #1
	str r0, [sp, #148]
	eor r0, r0, #1
	str r0, [sp, #128]
	ldr r0, [sp, #148]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #380]
	ldr r2, [sp, #232]
	add r0, r4, r2, lsr #27
	asr r0, r0, #5
	and r0, r0, #1
	str r0, [sp, #156]
	eor r0, r0, #1
	str r0, [sp, #152]
	ldr r0, [sp, #156]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #360]
	ldr r2, [sp, #232]
	add r0, r4, r2, lsr #26
	asr r0, r0, #6
	and r0, r0, #1
	str r0, [sp, #176]
	eor r0, r0, #1
	str r0, [sp, #164]
	ldr r0, [sp, #176]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #340]
	ldr r2, [sp, #232]
	add r0, r4, r2, lsr #25
	asr r0, r0, #7
	and r0, r0, #1
	str r0, [sp, #328]
	eor r0, r0, #1
	str r0, [sp, #184]
	ldr r0, [sp, #328]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #196]
	ldr r2, [sp, #232]
	add r0, r4, r2, lsr #24
	asr r0, r0, #8
	and r0, r0, #1
	str r0, [sp, #224]
	eor r0, r0, #1
	str r0, [sp, #200]
	ldr r0, [sp, #224]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #236]
	ldr r2, [sp, #232]
	add r0, r4, r2, lsr #23
	asr r0, r0, #9
	and r0, r0, #1
	str r0, [sp, #108]
	eor r0, r0, #1
	str r0, [sp, #112]
	ldr r0, [sp, #108]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #252]
	ldr r2, [sp, #232]
	add r0, r4, r2, lsr #22
	asr r0, r0, #10
	and r0, r0, #1
	str r0, [sp, #92]
	eor r0, r0, #1
	str r0, [sp, #100]
	ldr r0, [sp, #92]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #316]
	ldr r2, [sp, #232]
	add r0, r4, r2, lsr #21
	asr r0, r0, #11
	and r0, r0, #1
	str r0, [sp, #76]
	eor r0, r0, #1
	str r0, [sp, #80]
	ldr r0, [sp, #76]
	bic r3, r1, r0
	add r1, r4, r2, lsr #20
	orr r0, r0, r3
	str r3, [sp, #296]
	asr r1, r1, #12
	and r1, r1, #1
	bic r3, r0, r1
	eor r2, r1, #1
	str r1, [sp, #60]
	orr r0, r1, r3
	str r2, [sp, #68]
	str r3, [sp, #280]
	ldr r2, [sp, #232]
	add r1, r4, r2, lsr #19
	asr r1, r1, #13
	and r2, r1, #1
	bic r0, r0, r2
	eor r1, r2, #1
	str r2, [sp, #40]
	str r1, [sp, #48]
	orr r1, r2, r0
	ldr r2, [sp, #232]
	add r2, r4, r2, lsr #18
	asr r2, r2, #14
	and r2, r2, #1
	str r2, [sp, #24]
	eor r2, r2, #1
	str r2, [sp, #36]
	ldr r2, [sp, #24]
	bic r1, r1, r2
	orr r3, r2, r1
	ldr r2, [sp, #232]
	add r2, r4, r2, lsr #17
	asr r2, r2, #15
	and r2, r2, #1
	str r2, [sp, #420]
	eor r2, r2, #1
	str r2, [sp, #0]
	ldr r2, [sp, #420]
	bic r3, r3, r2
	ldr r2, [sp, #0]
	orr r5, r1, r2
	ldr r2, [sp, #24]
	orr r2, r2, r5
	bic r3, r2, r3
	ldr r2, [sp, #36]
	orr r5, r0, r2
	ldr r2, [sp, #40]
	orr r2, r2, r5
	bic r1, r2, r1
	add r2, r1, r3, lsl #1
	ldr r1, [sp, #48]
	ldr r3, [sp, #280]
	orr r3, r3, r1
	ldr r1, [sp, #60]
	orr r1, r1, r3
	bic r0, r1, r0
	add r1, r0, r2, lsl #1
	ldr r2, [sp, #68]
	ldr r3, [sp, #296]
	ldr r0, [sp, #76]
	orr r2, r3, r2
	ldr r3, [sp, #280]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #80]
	ldr r2, [sp, #316]
	orr r2, r2, r0
	ldr r0, [sp, #92]
	ldr r3, [sp, #296]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #100]
	ldr r2, [sp, #252]
	orr r2, r2, r0
	ldr r0, [sp, #108]
	orr r0, r0, r2
	ldr r2, [sp, #316]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #112]
	ldr r2, [sp, #236]
	orr r2, r2, r0
	ldr r0, [sp, #224]
	orr r0, r0, r2
	ldr r2, [sp, #252]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #200]
	ldr r2, [sp, #196]
	orr r2, r2, r0
	ldr r0, [sp, #328]
	orr r0, r0, r2
	ldr r2, [sp, #236]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #184]
	ldr r2, [sp, #340]
	orr r2, r2, r0
	ldr r0, [sp, #176]
	orr r0, r0, r2
	ldr r2, [sp, #196]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #164]
	ldr r2, [sp, #360]
	orr r2, r2, r0
	ldr r0, [sp, #156]
	orr r0, r0, r2
	ldr r2, [sp, #340]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #152]
	ldr r2, [sp, #380]
	orr r2, r2, r0
	ldr r0, [sp, #148]
	orr r0, r0, r2
	ldr r2, [sp, #360]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #128]
	ldr r2, [sp, #396]
	orr r2, r2, r0
	ldr r0, [sp, #140]
	orr r0, r0, r2
	ldr r2, [sp, #380]
	bic r0, r0, r2
	add r0, r0, r1, lsl #1
	ldr r1, [sp, #412]
	ldr r2, [sp, #396]
	orr r1, r1, r8
	orr r1, r7, r1
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #12]
	orr r1, r1, r9
	orr r2, r6, r1
	ldr r1, [sp, #412]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #16]
	orr r2, r1, r10
	ldr r1, [sp, #12]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #16]
	eor r1, r1, #1
	add r0, r1, r0, lsl #1
	bl fib
	bic r1, r6, r7
	mov r5, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	and r2, r0, #1
	str r2, [sp, #388]
	str r1, [sp, #364]
	ldr r0, [sp, #140]
	orr r1, r7, r1
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #356]
	ldr r0, [sp, #148]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #348]
	ldr r0, [sp, #156]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #324]
	ldr r0, [sp, #176]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #212]
	ldr r0, [sp, #328]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #240]
	ldr r0, [sp, #224]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #256]
	ldr r0, [sp, #108]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #268]
	ldr r0, [sp, #92]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #304]
	ldr r0, [sp, #76]
	bic r3, r1, r0
	orr r0, r0, r3
	str r3, [sp, #292]
	ldr r1, [sp, #60]
	bic r2, r0, r1
	orr r0, r1, r2
	str r2, [sp, #272]
	ldr r2, [sp, #40]
	bic r0, r0, r2
	orr r1, r2, r0
	ldr r2, [sp, #24]
	bic r1, r1, r2
	orr r3, r2, r1
	ldr r2, [sp, #420]
	bic r3, r3, r2
	ldr r2, [sp, #0]
	orr r11, r1, r2
	ldr r2, [sp, #24]
	orr r2, r2, r11
	bic r3, r2, r3
	ldr r2, [sp, #36]
	orr r11, r0, r2
	ldr r2, [sp, #40]
	orr r2, r2, r11
	bic r1, r2, r1
	add r3, r1, r3, lsl #1
	ldr r1, [sp, #48]
	ldr r2, [sp, #272]
	orr r2, r2, r1
	ldr r1, [sp, #60]
	orr r1, r1, r2
	ldr r2, [sp, #68]
	bic r0, r1, r0
	add r1, r0, r3, lsl #1
	ldr r3, [sp, #292]
	ldr r0, [sp, #76]
	orr r2, r3, r2
	orr r0, r0, r2
	ldr r2, [sp, #272]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #80]
	ldr r2, [sp, #304]
	orr r2, r2, r0
	ldr r0, [sp, #92]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #100]
	ldr r2, [sp, #268]
	orr r2, r2, r0
	ldr r0, [sp, #108]
	orr r0, r0, r2
	ldr r2, [sp, #304]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #112]
	ldr r2, [sp, #256]
	orr r2, r2, r0
	ldr r0, [sp, #224]
	orr r0, r0, r2
	ldr r2, [sp, #268]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #200]
	ldr r2, [sp, #240]
	orr r2, r2, r0
	ldr r0, [sp, #328]
	orr r0, r0, r2
	ldr r2, [sp, #256]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #184]
	ldr r2, [sp, #212]
	orr r2, r2, r0
	ldr r0, [sp, #176]
	orr r0, r0, r2
	ldr r2, [sp, #240]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #164]
	ldr r2, [sp, #324]
	orr r2, r2, r0
	ldr r0, [sp, #156]
	orr r0, r0, r2
	ldr r2, [sp, #212]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #152]
	ldr r2, [sp, #348]
	orr r2, r2, r0
	ldr r0, [sp, #148]
	orr r0, r0, r2
	ldr r2, [sp, #324]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #128]
	ldr r2, [sp, #356]
	orr r2, r2, r0
	ldr r0, [sp, #140]
	orr r0, r0, r2
	ldr r2, [sp, #348]
	bic r0, r0, r2
	add r0, r0, r1, lsl #1
	ldr r1, [sp, #364]
	ldr r2, [sp, #356]
	orr r1, r1, r8
	orr r1, r7, r1
	bic r1, r1, r2
	orr r2, r6, r9
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #364]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	and r1, r4, #1
	add r0, r10, r0, lsl #1
	add r0, r1, r0, lsl #1
	bl fib
	str r0, [sp, #64]
	and r3, r5, #1
	ldr r2, [sp, #388]
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	and r0, r0, #1
	and r1, r2, r0
	orr r0, r2, r0
	bic r2, r0, r1
	str r2, [sp, #120]
	str r3, [sp, #132]
	ldr r0, [sp, #64]
	and r3, r2, r3
	and r2, r0, #1
	asr r0, r5, #31
	str r2, [sp, #136]
	and r2, r3, r2
	orr r3, r1, r2
	str r2, [sp, #124]
	str r3, [sp, #160]
	str r0, [sp, #20]
	add r0, r5, r0, lsr #30
	asr r0, r0, #2
	and r1, r0, #1
	ldr r0, [sp, #64]
	asr r3, r0, #31
	add r0, r0, r3, lsr #30
	str r3, [sp, #28]
	asr r0, r0, #2
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #168]
	ldr r3, [sp, #160]
	str r1, [sp, #180]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #172]
	str r3, [sp, #192]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #29
	asr r0, r0, #3
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #29
	asr r0, r0, #3
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #208]
	ldr r3, [sp, #192]
	str r1, [sp, #116]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #216]
	str r3, [sp, #104]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #28
	asr r0, r0, #4
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #96]
	ldr r3, [sp, #104]
	str r1, [sp, #84]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #88]
	str r3, [sp, #72]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #27
	asr r0, r0, #5
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #27
	asr r0, r0, #5
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #56]
	ldr r3, [sp, #72]
	str r1, [sp, #44]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #52]
	str r3, [sp, #32]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #26
	asr r0, r0, #6
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #26
	asr r0, r0, #6
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #8]
	ldr r3, [sp, #32]
	str r1, [sp, #416]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #4]
	str r3, [sp, #408]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #25
	asr r0, r0, #7
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #25
	asr r0, r0, #7
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #404]
	ldr r3, [sp, #408]
	str r1, [sp, #392]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #400]
	str r3, [sp, #384]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #24
	asr r0, r0, #8
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #24
	asr r0, r0, #8
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #376]
	ldr r3, [sp, #384]
	str r1, [sp, #368]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #372]
	str r3, [sp, #352]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #23
	asr r0, r0, #9
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #23
	asr r0, r0, #9
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #344]
	ldr r3, [sp, #352]
	str r1, [sp, #332]
	and r2, r3, r2
	bic r2, r2, r1
	str r2, [sp, #336]
	orr r2, r1, r2
	str r2, [sp, #188]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #22
	asr r0, r0, #10
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #22
	asr r0, r0, #10
	and r0, r0, #1
	orr r3, r1, r0
	and r2, r2, r3
	and r1, r1, r0
	str r3, [sp, #204]
	bic r2, r2, r1
	str r1, [sp, #228]
	orr r3, r1, r2
	str r2, [sp, #220]
	str r3, [sp, #244]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #21
	asr r0, r0, #11
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #21
	asr r0, r0, #11
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #248]
	ldr r3, [sp, #244]
	str r1, [sp, #264]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #260]
	str r3, [sp, #320]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #20
	asr r0, r0, #12
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #20
	asr r0, r0, #12
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #312]
	ldr r3, [sp, #320]
	str r1, [sp, #300]
	and r2, r3, r2
	bic r2, r2, r1
	str r2, [sp, #308]
	orr r2, r1, r2
	str r2, [sp, #288]
	ldr r0, [sp, #20]
	add r0, r5, r0, lsr #19
	asr r0, r0, #13
	and r1, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #19
	asr r0, r0, #13
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #284]
	bic r2, r2, r1
	str r2, [sp, #276]
	ldr r0, [sp, #20]
	orr r2, r1, r2
	add r0, r5, r0, lsr #18
	asr r0, r0, #14
	and r6, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
	add r0, r0, r3, lsr #18
	asr r0, r0, #14
	and r0, r0, #1
	and r7, r6, r0
	orr r4, r6, r0
	ldr r0, [sp, #20]
	and r3, r2, r4
	bic r6, r3, r7
	orr r8, r7, r6
	add r0, r5, r0, lsr #17
	asr r0, r0, #15
	and r5, r0, #1
	ldr r0, [sp, #64]
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #284]
	bic r2, r2, r6
	add r0, r2, r0, lsl #1
	ldr r2, [sp, #288]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #276]
	bic r1, r1, r2
	ldr r2, [sp, #312]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #300]
	ldr r3, [sp, #320]
	bic r1, r2, r1
	ldr r2, [sp, #308]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #248]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #264]
	ldr r3, [sp, #244]
	bic r1, r2, r1
	ldr r2, [sp, #260]
	orr r1, r3, r1
	ldr r3, [sp, #204]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #228]
	ldr r2, [sp, #188]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #220]
	bic r1, r1, r2
	ldr r2, [sp, #344]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #332]
	ldr r3, [sp, #352]
	bic r1, r2, r1
	ldr r2, [sp, #336]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #376]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #368]
	ldr r3, [sp, #384]
	bic r1, r2, r1
	ldr r2, [sp, #372]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #404]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #392]
	ldr r3, [sp, #408]
	bic r1, r2, r1
	ldr r2, [sp, #400]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #8]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #416]
	ldr r3, [sp, #32]
	bic r1, r2, r1
	ldr r2, [sp, #4]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #56]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #44]
	ldr r3, [sp, #72]
	bic r1, r2, r1
	ldr r2, [sp, #52]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #96]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #84]
	ldr r3, [sp, #104]
	bic r1, r2, r1
	ldr r2, [sp, #88]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #208]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #116]
	ldr r3, [sp, #192]
	bic r1, r2, r1
	ldr r2, [sp, #216]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #168]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #180]
	ldr r3, [sp, #160]
	bic r1, r2, r1
	ldr r2, [sp, #172]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #136]
	add r1, r1, r0, lsl #1
	ldr r3, [sp, #132]
	and r0, r3, r2
	ldr r2, [sp, #120]
	orr r3, r2, r0
	ldr r2, [sp, #124]
	bic r2, r3, r2
	add r1, r2, r1, lsl #1
	ldr r2, [sp, #136]
	ldr r3, [sp, #132]
	orr r2, r3, r2
	bic r0, r2, r0
	add r0, r0, r1, lsl #1
	b label2
.globl main
main:
	push { r4, r5, lr }
	mov r4, #1
	sub sp, sp, #4
label782:
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
	blt label782
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
