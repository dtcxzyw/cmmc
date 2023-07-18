.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
fib:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	cmp r0, #3
	mov r5, r0
	sub sp, sp, #412
	str r0, [sp, #144]
	bge label4
	mov r0, #1
label2:
	add sp, sp, #412
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	ldr r5, [sp, #144]
	asr r4, r5, #31
	add r0, r5, r5, lsr #31
	and r1, r5, #1
	add r4, r5, r4, lsr #17
	str r1, [sp, #28]
	asr r0, r0, #1
	asr r4, r4, #15
	and r6, r0, #1
	asr r0, r5, #31
	bic r1, r1, r6
	eor r7, r6, #1
	add r0, r5, r0, lsr #30
	str r1, [sp, #24]
	orr r1, r6, r1
	asr r0, r0, #2
	and r0, r0, #1
	eor r2, r0, #1
	str r0, [sp, #132]
	str r2, [sp, #140]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #4]
	asr r0, r5, #31
	add r0, r5, r0, lsr #29
	asr r0, r0, #3
	and r0, r0, #1
	str r0, [sp, #120]
	eor r0, r0, #1
	str r0, [sp, #124]
	ldr r0, [sp, #120]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #380]
	asr r0, r5, #31
	add r0, r5, r0, lsr #28
	asr r0, r0, #4
	and r0, r0, #1
	str r0, [sp, #164]
	eor r0, r0, #1
	str r0, [sp, #156]
	ldr r0, [sp, #164]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #364]
	asr r0, r5, #31
	add r0, r5, r0, lsr #27
	asr r0, r0, #5
	and r0, r0, #1
	str r0, [sp, #180]
	eor r0, r0, #1
	str r0, [sp, #172]
	ldr r0, [sp, #180]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #348]
	asr r0, r5, #31
	add r0, r5, r0, lsr #26
	asr r0, r0, #6
	and r0, r0, #1
	str r0, [sp, #220]
	eor r0, r0, #1
	str r0, [sp, #204]
	ldr r0, [sp, #220]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #324]
	asr r0, r5, #31
	add r0, r5, r0, lsr #25
	asr r0, r0, #7
	and r0, r0, #1
	str r0, [sp, #244]
	eor r0, r0, #1
	str r0, [sp, #228]
	ldr r0, [sp, #244]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #200]
	asr r0, r5, #31
	add r0, r5, r0, lsr #24
	asr r0, r0, #8
	and r0, r0, #1
	str r0, [sp, #100]
	eor r0, r0, #1
	str r0, [sp, #112]
	ldr r0, [sp, #100]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #240]
	asr r0, r5, #31
	add r0, r5, r0, lsr #23
	asr r0, r0, #9
	and r0, r0, #1
	str r0, [sp, #84]
	eor r0, r0, #1
	str r0, [sp, #96]
	ldr r0, [sp, #84]
	bic r3, r1, r0
	asr r1, r5, #31
	orr r0, r0, r3
	str r3, [sp, #268]
	add r1, r5, r1, lsr #22
	asr r1, r1, #10
	and r1, r1, #1
	eor r2, r1, #1
	str r1, [sp, #68]
	str r2, [sp, #80]
	bic r2, r0, r1
	orr r0, r1, r2
	str r2, [sp, #312]
	asr r1, r5, #31
	add r1, r5, r1, lsr #21
	asr r1, r1, #11
	and r2, r1, #1
	bic r3, r0, r2
	eor r1, r2, #1
	str r2, [sp, #56]
	orr r0, r2, r3
	str r1, [sp, #60]
	asr r1, r5, #31
	str r3, [sp, #288]
	add r1, r5, r1, lsr #20
	asr r1, r1, #12
	and r3, r1, #1
	bic r0, r0, r3
	eor r2, r3, #1
	str r3, [sp, #40]
	orr r1, r3, r0
	str r2, [sp, #48]
	asr r2, r5, #31
	add r2, r5, r2, lsr #19
	asr r2, r2, #13
	and r8, r2, #1
	bic r1, r1, r8
	eor r3, r8, #1
	str r8, [sp, #16]
	orr r2, r8, r1
	str r3, [sp, #20]
	asr r3, r5, #31
	add r3, r5, r3, lsr #18
	asr r3, r3, #14
	and r8, r3, #1
	str r8, [sp, #0]
	eor r8, r8, #1
	str r8, [sp, #8]
	ldr r8, [sp, #0]
	bic r2, r2, r8
	orr r3, r8, r2
	and r8, r4, #1
	str r8, [sp, #384]
	eor r8, r8, #1
	str r8, [sp, #388]
	ldr r8, [sp, #384]
	bic r3, r3, r8
	ldr r8, [sp, #388]
	orr r4, r2, r8
	ldr r8, [sp, #0]
	orr r4, r8, r4
	ldr r8, [sp, #8]
	bic r3, r4, r3
	orr r4, r1, r8
	ldr r8, [sp, #16]
	orr r4, r8, r4
	bic r2, r4, r2
	add r2, r2, r3, lsl #1
	ldr r3, [sp, #20]
	orr r4, r0, r3
	ldr r3, [sp, #40]
	orr r3, r3, r4
	bic r1, r3, r1
	add r1, r1, r2, lsl #1
	ldr r2, [sp, #48]
	ldr r3, [sp, #288]
	orr r3, r3, r2
	ldr r2, [sp, #56]
	orr r2, r2, r3
	bic r0, r2, r0
	add r0, r0, r1, lsl #1
	ldr r1, [sp, #60]
	ldr r2, [sp, #312]
	orr r2, r2, r1
	ldr r1, [sp, #68]
	ldr r3, [sp, #288]
	orr r1, r1, r2
	ldr r2, [sp, #80]
	bic r1, r1, r3
	ldr r3, [sp, #268]
	add r1, r1, r0, lsl #1
	ldr r0, [sp, #84]
	orr r2, r3, r2
	orr r0, r0, r2
	ldr r2, [sp, #312]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #96]
	ldr r2, [sp, #240]
	orr r2, r2, r0
	ldr r0, [sp, #100]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #112]
	ldr r2, [sp, #200]
	orr r2, r2, r0
	ldr r0, [sp, #244]
	orr r0, r0, r2
	ldr r2, [sp, #240]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #228]
	ldr r2, [sp, #324]
	orr r2, r2, r0
	ldr r0, [sp, #220]
	orr r0, r0, r2
	ldr r2, [sp, #200]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #204]
	ldr r2, [sp, #348]
	orr r2, r2, r0
	ldr r0, [sp, #180]
	orr r0, r0, r2
	ldr r2, [sp, #324]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #172]
	ldr r2, [sp, #364]
	orr r2, r2, r0
	ldr r0, [sp, #164]
	orr r0, r0, r2
	ldr r2, [sp, #348]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #156]
	ldr r2, [sp, #380]
	orr r2, r2, r0
	ldr r0, [sp, #120]
	orr r0, r0, r2
	ldr r2, [sp, #364]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #124]
	ldr r2, [sp, #4]
	orr r2, r2, r0
	ldr r0, [sp, #132]
	orr r0, r0, r2
	ldr r2, [sp, #380]
	bic r0, r0, r2
	ldr r2, [sp, #140]
	add r0, r0, r1, lsl #1
	ldr r1, [sp, #24]
	orr r1, r1, r2
	ldr r2, [sp, #4]
	orr r1, r6, r1
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #28]
	orr r2, r1, r7
	ldr r1, [sp, #24]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #28]
	eor r1, r1, #1
	add r0, r1, r0, lsl #1
	bl fib
	mov r4, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	and r1, r0, #1
	str r1, [sp, #356]
	ldr r0, [sp, #132]
	bic r2, r6, r0
	orr r1, r0, r2
	str r2, [sp, #336]
	ldr r0, [sp, #120]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #168]
	ldr r0, [sp, #164]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #184]
	ldr r0, [sp, #180]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #224]
	ldr r0, [sp, #220]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #248]
	ldr r0, [sp, #244]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #264]
	ldr r0, [sp, #100]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #316]
	ldr r0, [sp, #84]
	bic r3, r1, r0
	orr r0, r0, r3
	str r3, [sp, #296]
	ldr r1, [sp, #68]
	bic r3, r0, r1
	orr r0, r1, r3
	str r3, [sp, #284]
	ldr r2, [sp, #56]
	ldr r3, [sp, #40]
	ldr r8, [sp, #16]
	bic r0, r0, r2
	orr r1, r2, r0
	bic r1, r1, r3
	orr r2, r3, r1
	bic r2, r2, r8
	orr r3, r8, r2
	ldr r8, [sp, #0]
	bic r3, r3, r8
	orr r9, r8, r3
	ldr r8, [sp, #384]
	bic r9, r9, r8
	ldr r8, [sp, #388]
	orr r10, r3, r8
	ldr r8, [sp, #0]
	orr r8, r8, r10
	bic r9, r8, r9
	ldr r8, [sp, #8]
	orr r10, r2, r8
	ldr r8, [sp, #16]
	orr r8, r8, r10
	bic r3, r8, r3
	add r8, r3, r9, lsl #1
	ldr r3, [sp, #20]
	orr r9, r1, r3
	ldr r3, [sp, #40]
	orr r3, r3, r9
	bic r2, r3, r2
	add r3, r2, r8, lsl #1
	ldr r2, [sp, #48]
	orr r8, r0, r2
	ldr r2, [sp, #56]
	orr r2, r2, r8
	bic r1, r2, r1
	add r2, r1, r3, lsl #1
	ldr r1, [sp, #60]
	ldr r3, [sp, #284]
	orr r3, r3, r1
	ldr r1, [sp, #68]
	orr r1, r1, r3
	bic r0, r1, r0
	add r1, r0, r2, lsl #1
	ldr r2, [sp, #80]
	ldr r3, [sp, #296]
	ldr r0, [sp, #84]
	orr r2, r3, r2
	ldr r3, [sp, #284]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #96]
	ldr r2, [sp, #316]
	orr r2, r2, r0
	ldr r0, [sp, #100]
	ldr r3, [sp, #296]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #112]
	ldr r2, [sp, #264]
	orr r2, r2, r0
	ldr r0, [sp, #244]
	orr r0, r0, r2
	ldr r2, [sp, #316]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #228]
	ldr r2, [sp, #248]
	orr r2, r2, r0
	ldr r0, [sp, #220]
	orr r0, r0, r2
	ldr r2, [sp, #264]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #204]
	ldr r2, [sp, #224]
	orr r2, r2, r0
	ldr r0, [sp, #180]
	orr r0, r0, r2
	ldr r2, [sp, #248]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #172]
	ldr r2, [sp, #184]
	orr r2, r2, r0
	ldr r0, [sp, #164]
	orr r0, r0, r2
	ldr r2, [sp, #224]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #156]
	ldr r2, [sp, #168]
	orr r2, r2, r0
	ldr r0, [sp, #120]
	orr r0, r0, r2
	ldr r2, [sp, #184]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #124]
	ldr r2, [sp, #336]
	orr r2, r2, r0
	ldr r0, [sp, #132]
	orr r0, r0, r2
	ldr r2, [sp, #168]
	bic r0, r0, r2
	ldr r2, [sp, #140]
	add r0, r0, r1, lsl #1
	orr r1, r6, r2
	ldr r2, [sp, #336]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	and r1, r5, #1
	add r0, r7, r0, lsl #1
	add r0, r1, r0, lsl #1
	bl fib
	str r0, [sp, #88]
	mov r3, r0
	ldr r1, [sp, #356]
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	and r0, r0, #1
	and r5, r1, r0
	orr r0, r1, r0
	bic r6, r0, r5
	and r0, r4, #1
	str r6, [sp, #136]
	and r2, r6, r0
	ldr r3, [sp, #88]
	and r1, r3, #1
	asr r3, r4, #31
	and r2, r2, r1
	add r3, r4, r3, lsr #30
	orr r7, r5, r2
	str r7, [sp, #128]
	asr r3, r3, #2
	and r5, r3, #1
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #30
	asr r3, r3, #2
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #148]
	asr r3, r4, #31
	str r5, [sp, #160]
	and r6, r7, r6
	add r3, r4, r3, lsr #29
	bic r6, r6, r5
	orr r7, r5, r6
	str r6, [sp, #152]
	asr r3, r3, #3
	str r7, [sp, #328]
	and r5, r3, #1
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #29
	asr r3, r3, #3
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #188]
	asr r3, r4, #31
	str r5, [sp, #212]
	and r6, r7, r6
	add r3, r4, r3, lsr #28
	bic r6, r6, r5
	str r6, [sp, #196]
	asr r3, r3, #4
	orr r6, r5, r6
	and r5, r3, #1
	str r6, [sp, #236]
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #28
	asr r3, r3, #4
	and r3, r3, #1
	orr r7, r5, r3
	and r5, r5, r3
	str r7, [sp, #116]
	asr r3, r4, #31
	ldr r6, [sp, #236]
	add r3, r4, r3, lsr #27
	str r5, [sp, #104]
	asr r3, r3, #5
	and r6, r6, r7
	bic r6, r6, r5
	orr r7, r5, r6
	str r6, [sp, #108]
	and r5, r3, #1
	str r7, [sp, #92]
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #27
	asr r3, r3, #5
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #76]
	asr r3, r4, #31
	str r5, [sp, #64]
	and r6, r7, r6
	add r3, r4, r3, lsr #26
	bic r6, r6, r5
	str r6, [sp, #72]
	asr r3, r3, #6
	orr r6, r5, r6
	and r5, r3, #1
	str r6, [sp, #52]
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #26
	asr r3, r3, #6
	and r3, r3, #1
	orr r7, r5, r3
	and r5, r5, r3
	str r7, [sp, #44]
	asr r3, r4, #31
	ldr r6, [sp, #52]
	add r3, r4, r3, lsr #25
	str r5, [sp, #32]
	asr r3, r3, #7
	and r6, r6, r7
	bic r6, r6, r5
	orr r7, r5, r6
	str r6, [sp, #36]
	and r5, r3, #1
	str r7, [sp, #12]
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #25
	asr r3, r3, #7
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #400]
	asr r3, r4, #31
	str r5, [sp, #392]
	and r6, r7, r6
	add r3, r4, r3, lsr #24
	bic r6, r6, r5
	orr r7, r5, r6
	str r6, [sp, #396]
	asr r3, r3, #8
	str r7, [sp, #376]
	and r5, r3, #1
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #24
	asr r3, r3, #8
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #372]
	asr r3, r4, #31
	str r5, [sp, #360]
	and r6, r7, r6
	add r3, r4, r3, lsr #23
	bic r6, r6, r5
	orr r7, r5, r6
	str r6, [sp, #368]
	asr r3, r3, #9
	str r7, [sp, #352]
	and r5, r3, #1
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #23
	asr r3, r3, #9
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #344]
	asr r3, r4, #31
	str r5, [sp, #332]
	and r6, r7, r6
	add r3, r4, r3, lsr #22
	bic r6, r6, r5
	orr r7, r5, r6
	str r6, [sp, #340]
	asr r3, r3, #10
	str r7, [sp, #176]
	and r5, r3, #1
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #22
	asr r3, r3, #10
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #192]
	asr r3, r4, #31
	str r5, [sp, #216]
	and r6, r7, r6
	add r3, r4, r3, lsr #21
	bic r6, r6, r5
	orr r7, r5, r6
	str r6, [sp, #208]
	asr r3, r3, #11
	str r7, [sp, #232]
	and r5, r3, #1
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #21
	asr r3, r3, #11
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #252]
	asr r3, r4, #31
	str r5, [sp, #260]
	and r6, r7, r6
	add r3, r4, r3, lsr #20
	bic r6, r6, r5
	str r6, [sp, #256]
	asr r3, r3, #12
	orr r6, r5, r6
	and r5, r3, #1
	str r6, [sp, #320]
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #20
	asr r3, r3, #12
	and r3, r3, #1
	orr r7, r5, r3
	and r5, r5, r3
	str r7, [sp, #308]
	asr r3, r4, #31
	ldr r6, [sp, #320]
	add r3, r4, r3, lsr #19
	str r5, [sp, #300]
	asr r3, r3, #13
	and r6, r6, r7
	bic r6, r6, r5
	orr r7, r5, r6
	str r6, [sp, #304]
	and r5, r3, #1
	str r7, [sp, #292]
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #19
	asr r3, r3, #13
	and r3, r3, #1
	orr r6, r5, r3
	and r5, r5, r3
	str r6, [sp, #280]
	asr r3, r4, #31
	str r5, [sp, #272]
	and r6, r7, r6
	add r3, r4, r3, lsr #18
	bic r6, r6, r5
	orr r5, r5, r6
	str r6, [sp, #276]
	asr r3, r3, #14
	and r7, r3, #1
	ldr r3, [sp, #88]
	asr r6, r3, #31
	add r3, r3, r6, lsr #18
	asr r3, r3, #14
	and r3, r3, #1
	and r8, r7, r3
	orr r6, r7, r3
	asr r3, r4, #31
	and r9, r5, r6
	add r3, r4, r3, lsr #17
	bic r7, r9, r8
	orr r9, r8, r7
	asr r3, r3, #15
	and r4, r3, #1
	ldr r3, [sp, #88]
	asr r10, r3, #31
	add r3, r3, r10, lsr #17
	asr r3, r3, #15
	and r10, r3, #1
	orr r3, r4, r10
	and r10, r4, r10
	and r11, r9, r3
	bic r3, r3, r10
	bic r4, r11, r10
	orr r3, r9, r3
	bic r3, r3, r4
	bic r4, r6, r8
	ldr r6, [sp, #280]
	orr r4, r5, r4
	ldr r5, [sp, #272]
	bic r4, r4, r7
	ldr r7, [sp, #292]
	add r3, r4, r3, lsl #1
	bic r4, r6, r5
	ldr r6, [sp, #276]
	orr r4, r7, r4
	ldr r7, [sp, #308]
	ldr r5, [sp, #300]
	bic r4, r4, r6
	ldr r6, [sp, #320]
	add r3, r4, r3, lsl #1
	bic r4, r7, r5
	orr r4, r6, r4
	ldr r6, [sp, #304]
	bic r4, r4, r6
	ldr r6, [sp, #252]
	add r3, r4, r3, lsl #1
	ldr r5, [sp, #260]
	ldr r7, [sp, #232]
	bic r4, r6, r5
	ldr r6, [sp, #256]
	orr r4, r7, r4
	bic r4, r4, r6
	ldr r6, [sp, #192]
	add r3, r4, r3, lsl #1
	ldr r5, [sp, #216]
	ldr r7, [sp, #176]
	bic r4, r6, r5
	ldr r6, [sp, #208]
	orr r4, r7, r4
	bic r4, r4, r6
	ldr r6, [sp, #344]
	add r3, r4, r3, lsl #1
	ldr r5, [sp, #332]
	ldr r7, [sp, #352]
	bic r4, r6, r5
	ldr r6, [sp, #340]
	orr r4, r7, r4
	bic r4, r4, r6
	ldr r6, [sp, #372]
	add r3, r4, r3, lsl #1
	ldr r5, [sp, #360]
	ldr r7, [sp, #376]
	bic r4, r6, r5
	ldr r6, [sp, #368]
	orr r4, r7, r4
	bic r4, r4, r6
	ldr r6, [sp, #400]
	add r3, r4, r3, lsl #1
	ldr r5, [sp, #392]
	ldr r7, [sp, #12]
	bic r4, r6, r5
	ldr r6, [sp, #396]
	orr r4, r7, r4
	ldr r7, [sp, #44]
	ldr r5, [sp, #32]
	bic r4, r4, r6
	ldr r6, [sp, #52]
	add r3, r4, r3, lsl #1
	bic r4, r7, r5
	orr r4, r6, r4
	ldr r6, [sp, #36]
	bic r4, r4, r6
	ldr r6, [sp, #76]
	add r3, r4, r3, lsl #1
	ldr r5, [sp, #64]
	ldr r7, [sp, #92]
	bic r4, r6, r5
	ldr r6, [sp, #72]
	orr r4, r7, r4
	ldr r7, [sp, #116]
	ldr r5, [sp, #104]
	bic r4, r4, r6
	ldr r6, [sp, #236]
	add r3, r4, r3, lsl #1
	bic r4, r7, r5
	orr r4, r6, r4
	ldr r6, [sp, #108]
	bic r4, r4, r6
	ldr r6, [sp, #188]
	add r3, r4, r3, lsl #1
	ldr r5, [sp, #212]
	ldr r7, [sp, #328]
	bic r4, r6, r5
	ldr r6, [sp, #196]
	orr r4, r7, r4
	bic r4, r4, r6
	ldr r6, [sp, #148]
	add r3, r4, r3, lsl #1
	ldr r5, [sp, #160]
	ldr r7, [sp, #128]
	bic r4, r6, r5
	ldr r6, [sp, #152]
	orr r4, r7, r4
	bic r4, r4, r6
	ldr r6, [sp, #136]
	add r4, r4, r3, lsl #1
	and r3, r0, r1
	orr r0, r0, r1
	bic r0, r0, r3
	orr r5, r6, r3
	bic r2, r5, r2
	add r2, r2, r4, lsl #1
	add r0, r0, r2, lsl #1
	b label2
.globl main
main:
	push { r4, r5, lr }
	mov r4, #1
	sub sp, sp, #4
label777:
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
	bge label779
	b label777
label779:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
