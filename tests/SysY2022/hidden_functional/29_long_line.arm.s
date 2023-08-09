.arch armv7ve
.data
.bss
.align 8
lut_fib:
	.zero	16336
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
fib:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[420] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r2, #0
	mov r4, r0
	sub sp, sp, #428
	str r0, [sp, #268]
	mov r1, r0
	movw r0, #:lower16:lut_fib
	movt r0, #:upper16:lut_fib
	bl cmmcCacheLookup
	str r0, [sp, #264]
	ldr r0, [r0, #12]
	cmp r0, #0
	beq label5
	ldr r0, [sp, #264]
	ldr r0, [r0, #8]
label3:
	add sp, sp, #428
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	ldr r4, [sp, #268]
	cmp r4, #3
	bge label7
	mov r1, #1
	ldr r0, [sp, #264]
	str r1, [r0, #12]
	str r1, [r0, #8]
	mov r0, r1
	b label3
label7:
	ldr r4, [sp, #268]
	add r0, r4, r4, lsr #31
	and r1, r4, #1
	asr r3, r4, #31
	str r1, [sp, #404]
	asr r0, r0, #1
	and r6, r0, #1
	bic r1, r1, r6
	eor r9, r6, #1
	orr r0, r6, r1
	str r1, [sp, #408]
	add r1, r4, r3, lsr #30
	str r3, [sp, #72]
	asr r1, r1, #2
	and r7, r1, #1
	bic r1, r0, r7
	eor r8, r7, #1
	add r0, r4, r3, lsr #29
	str r8, [sp, #272]
	str r1, [sp, #184]
	asr r0, r0, #3
	orr r1, r7, r1
	and r0, r0, #1
	eor r2, r0, #1
	str r0, [sp, #280]
	str r2, [sp, #276]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #168]
	add r0, r4, r3, lsr #28
	asr r0, r0, #4
	and r0, r0, #1
	str r0, [sp, #256]
	eor r0, r0, #1
	str r0, [sp, #292]
	ldr r0, [sp, #256]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #152]
	add r0, r4, r3, lsr #27
	asr r0, r0, #5
	and r0, r0, #1
	str r0, [sp, #248]
	eor r0, r0, #1
	str r0, [sp, #252]
	ldr r0, [sp, #248]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #132]
	add r0, r4, r3, lsr #26
	asr r0, r0, #6
	and r0, r0, #1
	str r0, [sp, #228]
	eor r0, r0, #1
	str r0, [sp, #240]
	ldr r0, [sp, #228]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #112]
	add r0, r4, r3, lsr #25
	asr r0, r0, #7
	and r0, r0, #1
	str r0, [sp, #216]
	eor r0, r0, #1
	str r0, [sp, #220]
	ldr r0, [sp, #216]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #92]
	add r0, r4, r3, lsr #24
	asr r0, r0, #8
	and r0, r0, #1
	str r0, [sp, #300]
	eor r0, r0, #1
	str r0, [sp, #208]
	ldr r0, [sp, #300]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #68]
	add r0, r4, r3, lsr #23
	asr r0, r0, #9
	and r0, r0, #1
	str r0, [sp, #312]
	eor r0, r0, #1
	str r0, [sp, #308]
	ldr r0, [sp, #312]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #52]
	add r0, r4, r3, lsr #22
	asr r0, r0, #10
	and r0, r0, #1
	str r0, [sp, #328]
	eor r0, r0, #1
	str r0, [sp, #320]
	ldr r0, [sp, #328]
	bic r3, r1, r0
	orr r0, r0, r3
	str r3, [sp, #28]
	ldr r3, [sp, #72]
	add r1, r4, r3, lsr #21
	asr r1, r1, #11
	and r1, r1, #1
	bic r3, r0, r1
	eor r2, r1, #1
	str r1, [sp, #344]
	orr r0, r1, r3
	str r2, [sp, #340]
	str r3, [sp, #8]
	ldr r3, [sp, #72]
	add r1, r4, r3, lsr #20
	asr r1, r1, #12
	and r2, r1, #1
	bic r0, r0, r2
	eor r1, r2, #1
	str r2, [sp, #360]
	str r1, [sp, #352]
	orr r1, r2, r0
	add r2, r4, r3, lsr #19
	asr r2, r2, #13
	and r3, r2, #1
	bic r1, r1, r3
	eor r2, r3, #1
	str r3, [sp, #380]
	str r2, [sp, #372]
	orr r2, r3, r1
	ldr r3, [sp, #72]
	add r3, r4, r3, lsr #18
	asr r3, r3, #14
	and r3, r3, #1
	str r3, [sp, #396]
	eor r3, r3, #1
	str r3, [sp, #384]
	ldr r3, [sp, #396]
	bic r2, r2, r3
	orr r5, r3, r2
	ldr r3, [sp, #72]
	add r3, r4, r3, lsr #17
	asr r3, r3, #15
	and r3, r3, #1
	str r3, [sp, #192]
	eor r3, r3, #1
	str r3, [sp, #196]
	ldr r3, [sp, #192]
	bic r5, r5, r3
	ldr r3, [sp, #196]
	orr r8, r2, r3
	ldr r3, [sp, #396]
	orr r3, r3, r8
	bic r5, r3, r5
	ldr r3, [sp, #384]
	orr r8, r1, r3
	ldr r3, [sp, #380]
	orr r3, r3, r8
	bic r2, r3, r2
	add r3, r2, r5, lsl #1
	ldr r2, [sp, #372]
	orr r5, r0, r2
	ldr r2, [sp, #360]
	orr r2, r2, r5
	bic r1, r2, r1
	add r2, r1, r3, lsl #1
	ldr r1, [sp, #352]
	ldr r3, [sp, #8]
	orr r3, r3, r1
	ldr r1, [sp, #344]
	orr r1, r1, r3
	bic r0, r1, r0
	add r1, r0, r2, lsl #1
	ldr r2, [sp, #340]
	ldr r3, [sp, #28]
	ldr r0, [sp, #328]
	orr r2, r3, r2
	ldr r3, [sp, #8]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #320]
	ldr r2, [sp, #52]
	orr r2, r2, r0
	ldr r0, [sp, #312]
	ldr r3, [sp, #28]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #308]
	ldr r2, [sp, #68]
	orr r2, r2, r0
	ldr r0, [sp, #300]
	orr r0, r0, r2
	ldr r2, [sp, #52]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #208]
	ldr r2, [sp, #92]
	orr r2, r2, r0
	ldr r0, [sp, #216]
	orr r0, r0, r2
	ldr r2, [sp, #68]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #220]
	ldr r2, [sp, #112]
	orr r2, r2, r0
	ldr r0, [sp, #228]
	orr r0, r0, r2
	ldr r2, [sp, #92]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #240]
	ldr r2, [sp, #132]
	orr r2, r2, r0
	ldr r0, [sp, #248]
	orr r0, r0, r2
	ldr r2, [sp, #112]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #252]
	ldr r2, [sp, #152]
	orr r2, r2, r0
	ldr r0, [sp, #256]
	orr r0, r0, r2
	ldr r2, [sp, #132]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #292]
	ldr r2, [sp, #168]
	orr r2, r2, r0
	ldr r0, [sp, #280]
	orr r0, r0, r2
	ldr r2, [sp, #152]
	bic r0, r0, r2
	ldr r2, [sp, #276]
	add r0, r0, r1, lsl #1
	ldr r1, [sp, #184]
	orr r1, r1, r2
	ldr r2, [sp, #168]
	orr r1, r7, r1
	ldr r8, [sp, #272]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #408]
	orr r1, r1, r8
	orr r2, r6, r1
	ldr r1, [sp, #184]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #404]
	orr r2, r1, r9
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
	str r2, [sp, #160]
	str r1, [sp, #136]
	ldr r0, [sp, #280]
	orr r1, r7, r1
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #128]
	ldr r0, [sp, #256]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #116]
	ldr r0, [sp, #248]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #100]
	ldr r0, [sp, #228]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #80]
	ldr r0, [sp, #216]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #64]
	ldr r0, [sp, #300]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #44]
	ldr r0, [sp, #312]
	bic r2, r1, r0
	orr r1, r0, r2
	str r2, [sp, #36]
	ldr r0, [sp, #328]
	bic r3, r1, r0
	orr r0, r0, r3
	str r3, [sp, #16]
	ldr r1, [sp, #344]
	bic r3, r0, r1
	orr r0, r1, r3
	str r3, [sp, #0]
	ldr r2, [sp, #360]
	ldr r3, [sp, #380]
	bic r0, r0, r2
	orr r1, r2, r0
	bic r1, r1, r3
	orr r2, r3, r1
	ldr r3, [sp, #396]
	bic r2, r2, r3
	orr r10, r3, r2
	ldr r3, [sp, #192]
	bic r10, r10, r3
	ldr r3, [sp, #196]
	orr r11, r2, r3
	ldr r3, [sp, #396]
	orr r3, r3, r11
	bic r10, r3, r10
	ldr r3, [sp, #384]
	orr r11, r1, r3
	ldr r3, [sp, #380]
	orr r3, r3, r11
	bic r2, r3, r2
	add r3, r2, r10, lsl #1
	ldr r2, [sp, #372]
	orr r10, r0, r2
	ldr r2, [sp, #360]
	orr r2, r2, r10
	bic r1, r2, r1
	add r2, r1, r3, lsl #1
	ldr r1, [sp, #352]
	ldr r3, [sp, #0]
	orr r3, r3, r1
	ldr r1, [sp, #344]
	orr r1, r1, r3
	bic r0, r1, r0
	add r1, r0, r2, lsl #1
	ldr r2, [sp, #340]
	ldr r3, [sp, #16]
	ldr r0, [sp, #328]
	orr r2, r3, r2
	ldr r3, [sp, #0]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #320]
	ldr r2, [sp, #36]
	orr r2, r2, r0
	ldr r0, [sp, #312]
	ldr r3, [sp, #16]
	orr r0, r0, r2
	bic r0, r0, r3
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #308]
	ldr r2, [sp, #44]
	orr r2, r2, r0
	ldr r0, [sp, #300]
	orr r0, r0, r2
	ldr r2, [sp, #36]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #208]
	ldr r2, [sp, #64]
	orr r2, r2, r0
	ldr r0, [sp, #216]
	orr r0, r0, r2
	ldr r2, [sp, #44]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #220]
	ldr r2, [sp, #80]
	orr r2, r2, r0
	ldr r0, [sp, #228]
	orr r0, r0, r2
	ldr r2, [sp, #64]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #240]
	ldr r2, [sp, #100]
	orr r2, r2, r0
	ldr r0, [sp, #248]
	orr r0, r0, r2
	ldr r2, [sp, #80]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #252]
	ldr r2, [sp, #116]
	orr r2, r2, r0
	ldr r0, [sp, #256]
	orr r0, r0, r2
	ldr r2, [sp, #100]
	bic r0, r0, r2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #292]
	ldr r2, [sp, #128]
	orr r2, r2, r0
	ldr r0, [sp, #280]
	orr r0, r0, r2
	ldr r2, [sp, #116]
	bic r0, r0, r2
	ldr r2, [sp, #276]
	add r0, r0, r1, lsl #1
	ldr r1, [sp, #136]
	orr r1, r1, r2
	ldr r2, [sp, #128]
	orr r1, r7, r1
	bic r1, r1, r2
	orr r2, r6, r8
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #136]
	bic r1, r2, r1
	add r0, r1, r0, lsl #1
	and r1, r4, #1
	add r0, r9, r0, lsl #1
	add r0, r1, r0, lsl #1
	bl fib
	and r3, r5, #1
	str r0, [sp, #356]
	ldr r2, [sp, #160]
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	and r0, r0, #1
	and r1, r2, r0
	orr r0, r2, r0
	bic r2, r0, r1
	str r2, [sp, #260]
	str r3, [sp, #288]
	ldr r0, [sp, #356]
	and r3, r2, r3
	and r2, r0, #1
	asr r0, r5, #31
	str r2, [sp, #284]
	and r2, r3, r2
	orr r3, r1, r2
	str r2, [sp, #296]
	str r3, [sp, #244]
	str r0, [sp, #400]
	add r0, r5, r0, lsr #30
	asr r0, r0, #2
	and r1, r0, #1
	ldr r0, [sp, #356]
	asr r6, r0, #31
	str r6, [sp, #392]
	add r0, r0, r6, lsr #30
	asr r0, r0, #2
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #236]
	str r1, [sp, #224]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #232]
	str r3, [sp, #212]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #29
	asr r0, r0, #3
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #29
	asr r0, r0, #3
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #204]
	str r1, [sp, #304]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #200]
	str r3, [sp, #316]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #28
	asr r0, r0, #4
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #28
	asr r0, r0, #4
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #324]
	str r1, [sp, #336]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #332]
	str r3, [sp, #348]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #27
	asr r0, r0, #5
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #27
	asr r0, r0, #5
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #364]
	str r1, [sp, #376]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #368]
	str r3, [sp, #388]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #26
	asr r0, r0, #6
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #26
	asr r0, r0, #6
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #412]
	str r1, [sp, #188]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #416]
	str r3, [sp, #180]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #25
	asr r0, r0, #7
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #25
	asr r0, r0, #7
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #176]
	str r1, [sp, #164]
	and r2, r3, r2
	bic r2, r2, r1
	str r2, [sp, #172]
	orr r2, r1, r2
	str r2, [sp, #156]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #24
	asr r0, r0, #8
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #24
	asr r0, r0, #8
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #148]
	bic r2, r2, r1
	str r1, [sp, #140]
	str r2, [sp, #144]
	orr r2, r1, r2
	str r2, [sp, #124]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #23
	asr r0, r0, #9
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #23
	asr r0, r0, #9
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #120]
	bic r2, r2, r1
	str r1, [sp, #104]
	orr r3, r1, r2
	str r2, [sp, #108]
	str r3, [sp, #96]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #22
	asr r0, r0, #10
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #22
	asr r0, r0, #10
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #88]
	str r1, [sp, #76]
	and r2, r3, r2
	bic r2, r2, r1
	orr r3, r1, r2
	str r2, [sp, #84]
	str r3, [sp, #60]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #21
	asr r0, r0, #11
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #21
	asr r0, r0, #11
	and r0, r0, #1
	orr r2, r1, r0
	and r1, r1, r0
	str r2, [sp, #56]
	str r1, [sp, #40]
	and r2, r3, r2
	bic r2, r2, r1
	str r2, [sp, #48]
	orr r2, r1, r2
	str r2, [sp, #32]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #20
	asr r0, r0, #12
	and r1, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #20
	asr r0, r0, #12
	and r0, r0, #1
	orr r3, r1, r0
	and r1, r1, r0
	and r2, r2, r3
	str r3, [sp, #24]
	bic r2, r2, r1
	str r1, [sp, #12]
	orr r3, r1, r2
	str r2, [sp, #20]
	str r3, [sp, #4]
	ldr r0, [sp, #400]
	add r0, r5, r0, lsr #19
	asr r0, r0, #13
	and r2, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #19
	asr r0, r0, #13
	and r0, r0, #1
	orr r1, r2, r0
	and r4, r3, r1
	and r3, r2, r0
	bic r1, r1, r3
	ldr r0, [sp, #400]
	bic r2, r4, r3
	orr r4, r3, r2
	add r0, r5, r0, lsr #18
	asr r0, r0, #14
	and r8, r0, #1
	ldr r0, [sp, #356]
	add r0, r0, r6, lsr #18
	asr r0, r0, #14
	and r0, r0, #1
	and r9, r8, r0
	orr r7, r8, r0
	ldr r0, [sp, #400]
	and r6, r4, r7
	bic r8, r6, r9
	orr r10, r9, r8
	add r0, r5, r0, lsr #17
	asr r0, r0, #15
	and r5, r0, #1
	ldr r0, [sp, #356]
	ldr r6, [sp, #392]
	ldr r3, [sp, #4]
	add r0, r0, r6, lsr #17
	orr r1, r3, r1
	asr r0, r0, #15
	ldr r3, [sp, #24]
	bic r1, r1, r2
	and r6, r0, #1
	orr r0, r5, r6
	and r6, r5, r6
	and r11, r10, r0
	bic r0, r0, r6
	bic r5, r11, r6
	orr r0, r10, r0
	bic r0, r0, r5
	bic r5, r7, r9
	orr r4, r4, r5
	bic r4, r4, r8
	add r0, r4, r0, lsl #1
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #12]
	ldr r2, [sp, #32]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #20]
	bic r1, r1, r2
	ldr r2, [sp, #56]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #40]
	ldr r3, [sp, #60]
	bic r1, r2, r1
	ldr r2, [sp, #48]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #88]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #76]
	ldr r3, [sp, #96]
	bic r1, r2, r1
	ldr r2, [sp, #84]
	orr r1, r3, r1
	ldr r3, [sp, #120]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #104]
	ldr r2, [sp, #124]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #108]
	ldr r3, [sp, #148]
	bic r1, r1, r2
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #140]
	ldr r2, [sp, #156]
	bic r1, r3, r1
	orr r1, r2, r1
	ldr r2, [sp, #144]
	bic r1, r1, r2
	ldr r2, [sp, #176]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #164]
	ldr r3, [sp, #180]
	bic r1, r2, r1
	ldr r2, [sp, #172]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #412]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #188]
	ldr r3, [sp, #388]
	bic r1, r2, r1
	ldr r2, [sp, #416]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #364]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #376]
	ldr r3, [sp, #348]
	bic r1, r2, r1
	ldr r2, [sp, #368]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #324]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #336]
	ldr r3, [sp, #316]
	bic r1, r2, r1
	ldr r2, [sp, #332]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #204]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #304]
	ldr r3, [sp, #212]
	bic r1, r2, r1
	ldr r2, [sp, #200]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #236]
	add r0, r1, r0, lsl #1
	ldr r1, [sp, #224]
	ldr r3, [sp, #244]
	bic r1, r2, r1
	ldr r2, [sp, #232]
	orr r1, r3, r1
	bic r1, r1, r2
	ldr r2, [sp, #284]
	add r1, r1, r0, lsl #1
	ldr r3, [sp, #288]
	and r0, r3, r2
	ldr r2, [sp, #260]
	orr r3, r2, r0
	ldr r2, [sp, #296]
	bic r2, r3, r2
	add r1, r2, r1, lsl #1
	ldr r2, [sp, #284]
	ldr r3, [sp, #288]
	orr r2, r3, r2
	bic r0, r2, r0
	mov r2, #1
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #264]
	str r2, [r0, #12]
	str r1, [r0, #8]
	mov r0, r1
	b label3
.p2align 4
.globl main
main:
	push { r4, r5, lr }
	mov r4, #1
	sub sp, sp, #4
.p2align 4
label847:
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
	blt label847
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
