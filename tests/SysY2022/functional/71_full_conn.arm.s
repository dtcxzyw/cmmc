.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #512
	add r5, sp, #404
	str r5, [sp, #144]
	bl getint
	str r0, [sp, #140]
	cmp r0, #0
	ble label11
label17:
	mov r4, #0
	cmp r4, #5
	bge label10
label6:
	mov r0, #20
	ldr r5, [sp, #144]
	mov r6, #0
	mla r5, r4, r0, r5
label7:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #5
	blt label7
	add r4, r4, #1
	cmp r4, #5
	blt label6
label10:
	ldr r8, [sp, #404]
	add r0, r8, r8, lsl #2
	str r8, [sp, #152]
	ldr r5, [sp, #144]
	add r0, r0, r0, lsl #4
	ldr r8, [r5, #4]
	add r7, r8, r8, lsl #1
	str r8, [sp, #216]
	rsb r1, r8, r7, lsl #3
	str r7, [sp, #124]
	ldr r8, [r5, #8]
	add r0, r0, r1
	add r7, r8, r8, lsl #2
	str r8, [sp, #104]
	add r6, r8, r7, lsl #3
	str r7, [sp, #192]
	lsl r1, r6, #1
	str r6, [sp, #128]
	rsb r1, r1, #0
	ldr r8, [r5, #12]
	add r0, r0, r1
	str r8, [sp, #180]
	rsb r1, r8, r8, lsl #3
	ldr r6, [r5, #16]
	rsb r1, r8, r1, lsl #1
	sub r1, r8, r1, lsl #3
	str r6, [sp, #208]
	add r0, r0, r1
	rsb r1, r6, r6, lsl #5
	sub r1, r6, r1, lsl #2
	ldr r6, [r5, #20]
	add r0, r0, r1
	str r6, [sp, #92]
	add r0, r0, r6, lsl #6
	ldr r8, [r5, #24]
	lsl r7, r8, #4
	rsb r6, r8, r8, lsl #4
	str r8, [sp, #328]
	str r7, [sp, #384]
	lsl r1, r6, #3
	str r6, [sp, #100]
	rsb r1, r1, #0
	ldr r8, [r5, #28]
	add r0, r0, r1
	add r6, r8, r8, lsl #2
	str r8, [sp, #116]
	add r1, r6, r6, lsl #2
	str r6, [sp, #172]
	ldr r8, [r5, #32]
	add r0, r0, r1, lsl #1
	str r8, [sp, #96]
	rsb r1, r8, r8, lsl #4
	ldr r7, [r5, #36]
	sub r1, r8, r1, lsl #2
	add r0, r0, r1
	add r6, r7, r7, lsl #1
	str r7, [sp, #56]
	rsb r1, r7, r6, lsl #4
	str r6, [sp, #148]
	ldr r8, [r5, #40]
	add r0, r0, r1
	rsb r9, r8, r8, lsl #3
	str r8, [sp, #168]
	sub r1, r8, r9, lsl #4
	str r9, [sp, #196]
	ldr r8, [r5, #44]
	add r0, r0, r1
	str r8, [sp, #120]
	add r1, r8, r8, lsl #4
	sub r6, r8, r1, lsl #2
	add r0, r0, r6
	str r6, [sp, #176]
	ldr r7, [r5, #48]
	add r6, r7, r7, lsl #1
	str r7, [sp, #60]
	add r1, r6, r6, lsl #3
	str r6, [sp, #380]
	ldr r8, [r5, #52]
	rsb r1, r7, r1, lsl #1
	lsl r1, r1, #1
	str r8, [sp, #188]
	add r7, r8, r8, lsl #2
	rsb r1, r1, #0
	add r0, r0, r1
	str r7, [sp, #220]
	sub r1, r7, r7, lsl #4
	ldr r8, [r5, #56]
	add r0, r0, r1
	add r7, r8, r8, lsl #1
	str r8, [sp, #132]
	add r1, r7, r7, lsl #4
	str r7, [sp, #200]
	ldr r7, [r5, #60]
	lsl r1, r1, #1
	rsb r1, r1, #0
	add r0, r0, r1
	str r7, [sp, #164]
	add r1, r7, r7, lsl #4
	add r0, r0, r1, lsl #1
	lsl r6, r1, #1
	str r6, [sp, #108]
	ldr r8, [r5, #64]
	add r9, r8, r8, lsl #2
	str r8, [sp, #160]
	sub r1, r8, r9, lsl #3
	str r9, [sp, #76]
	ldr r7, [r5, #68]
	add r0, r0, r1
	str r7, [sp, #156]
	add r1, r7, r7, lsl #6
	add r1, r0, r1
	ldr r0, [r5, #72]
	add r7, r0, r0, lsl #1
	rsb r2, r0, r7, lsl #4
	str r7, [sp, #360]
	add r2, r1, r2
	ldr r1, [r5, #76]
	ldr r8, [r5, #80]
	rsb r3, r1, r1, lsl #3
	rsb r6, r8, r8, lsl #3
	str r8, [sp, #136]
	add r3, r1, r3, lsl #4
	str r6, [sp, #20]
	add r2, r2, r3
	rsb r3, r8, r6, lsl #3
	lsl r6, r3, #1
	add r3, r2, r3, lsl #1
	str r6, [sp, #308]
	ldr r2, [r5, #84]
	add r8, r2, r2, lsl #1
	rsb r4, r2, r8, lsl #4
	str r8, [sp, #80]
	add r4, r3, r4
	ldr r3, [r5, #88]
	ldr r8, [r5, #92]
	lsl r6, r3, #2
	str r8, [sp, #112]
	rsb r6, r6, #0
	add r4, r4, r6
	add r6, r8, r8, lsl #2
	str r6, [sp, #28]
	add r6, r4, r6, lsl #4
	ldr r4, [r5, #96]
	add r8, r4, r4, lsl #1
	rsb r5, r4, r8, lsl #3
	str r8, [sp, #84]
	add r5, r6, r5, lsl #1
	usat r5, #7, r5
	add r6, r5, r5, lsl #2
	rsb r5, r5, r6, lsl #3
	str r5, [sp, #312]
	ldr r8, [sp, #152]
	add r5, r8, r8, lsl #1
	str r5, [sp, #212]
	add r5, r5, r5, lsl #3
	rsb r5, r8, r5, lsl #1
	ldr r8, [sp, #216]
	lsl r5, r5, #1
	rsb r5, r5, #0
	rsb r6, r8, r8, lsl #6
	add r5, r5, r6, lsl #1
	str r6, [sp, #204]
	ldr r8, [sp, #104]
	add r6, r8, r8, lsl #3
	ldr r8, [sp, #180]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r8, r8, lsl #5
	str r6, [sp, #240]
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #208]
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #92]
	add r7, r6, r6, lsl #1
	rsb r6, r6, r7, lsl #4
	str r7, [sp, #320]
	ldr r8, [sp, #328]
	add r5, r5, r6
	lsl r6, r8, #2
	ldr r8, [sp, #116]
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r8, r8, lsl #4
	lsl r7, r6, #2
	rsb r6, r8, r6, lsl #2
	str r7, [sp, #316]
	ldr r8, [sp, #96]
	add r5, r5, r6
	add r6, r8, r8, lsl #1
	str r6, [sp, #232]
	ldr r7, [sp, #56]
	rsb r6, r8, r6, lsl #4
	ldr r9, [sp, #196]
	lsl r6, r6, #1
	ldr r8, [sp, #120]
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r7, r7, lsl #4
	add r6, r7, r6, lsl #3
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r8, r8, lsl #1
	add r5, r5, r9
	str r6, [sp, #68]
	ldr r7, [sp, #60]
	sub r6, r6, r6, lsl #3
	ldr r8, [sp, #188]
	add r5, r5, r6
	rsb r6, r7, r7, lsl #4
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r8, r8, lsl #1
	str r6, [sp, #376]
	rsb r6, r8, r6, lsl #2
	sub r6, r8, r6, lsl #2
	ldr r8, [sp, #132]
	add r5, r5, r6
	rsb r7, r8, r8, lsl #3
	rsb r6, r7, r7, lsl #4
	str r7, [sp, #24]
	ldr r7, [sp, #164]
	add r5, r5, r6
	add r8, r7, r7, lsl #1
	rsb r6, r8, r8, lsl #3
	str r8, [sp, #224]
	ldr r8, [sp, #160]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r8, r8, lsl #4
	rsb r6, r8, r6, lsl #1
	add r8, r3, r3, lsl #1
	str r6, [sp, #300]
	rsb r6, r6, r6, lsl #2
	add r5, r5, r6
	str r6, [sp, #72]
	ldr r7, [sp, #156]
	rsb r6, r7, r7, lsl #4
	rsb r7, r7, r6, lsl #1
	add r5, r5, r7
	str r7, [sp, #16]
	ldr r7, [sp, #360]
	add r6, r7, r7, lsl #3
	rsb r6, r0, r6, lsl #1
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	sub r6, r1, r1, lsl #5
	add r5, r5, r6
	ldr r6, [sp, #308]
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r2, r2, lsl #2
	str r6, [sp, #356]
	str r8, [sp, #40]
	add r6, r6, r6, lsl #2
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r3, r8, lsl #2
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #28]
	sub r6, r6, r6, lsl #4
	add r5, r5, r6
	rsb r6, r4, r4, lsl #6
	sub r6, r4, r6, lsl #1
	add r5, r5, r6
	usat r5, #7, r5
	add r6, r5, r5, lsl #1
	rsb r5, r5, r6, lsl #2
	rsb r6, r5, r5, lsl #3
	ldr r5, [sp, #312]
	ldr r8, [sp, #152]
	add r5, r5, r6
	rsb r6, r8, r8, lsl #3
	rsb r6, r8, r6, lsl #1
	ldr r8, [sp, #216]
	lsl r6, r6, #1
	add r7, r8, r8, lsl #2
	str r7, [sp, #248]
	rsb r7, r8, r7, lsl #2
	add r6, r6, r7, lsl #2
	ldr r7, [sp, #192]
	rsb r7, r7, r7, lsl #3
	lsl r7, r7, #1
	rsb r8, r7, #0
	add r6, r6, r8
	str r8, [sp, #32]
	ldr r8, [sp, #180]
	rsb r9, r8, r8, lsl #4
	rsb r7, r8, r9, lsl #1
	str r9, [sp, #0]
	add r7, r6, r7
	ldr r6, [sp, #208]
	lsl r8, r6, #1
	str r8, [sp, #400]
	add r8, r6, r6, lsl #1
	sub r6, r6, r8, lsl #5
	str r8, [sp, #64]
	add r6, r7, r6
	ldr r7, [sp, #320]
	ldr r8, [sp, #328]
	add r6, r6, r7, lsl #5
	lsl r7, r8, #3
	str r7, [sp, #372]
	rsb r7, r8, r8, lsl #3
	str r7, [sp, #348]
	rsb r7, r8, r7, lsl #1
	add r6, r6, r7, lsl #2
	ldr r7, [sp, #316]
	ldr r8, [sp, #96]
	rsb r7, r7, #0
	add r6, r6, r7
	add r7, r8, r8, lsl #2
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #56]
	ldr r8, [sp, #168]
	add r7, r7, r7, lsl #4
	add r6, r6, r7, lsl #1
	add r7, r8, r8, lsl #4
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r7, r6, r7
	ldr r6, [sp, #68]
	add r6, r6, r6, lsl #4
	add r7, r7, r6, lsl #1
	ldr r6, [sp, #380]
	ldr r8, [sp, #188]
	add r6, r7, r6, lsl #1
	ldr r7, [sp, #220]
	rsb r7, r8, r7, lsl #2
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #200]
	add r9, r7, r7, lsl #3
	add r6, r6, r9
	str r9, [sp, #392]
	ldr r7, [sp, #164]
	rsb r8, r7, r7, lsl #3
	rsb r7, r7, r8, lsl #3
	str r8, [sp, #344]
	add r7, r6, r7, lsl #1
	ldr r6, [sp, #300]
	add r6, r7, r6, lsl #2
	ldr r7, [sp, #156]
	add r8, r7, r7, lsl #2
	rsb r7, r7, r8, lsl #3
	str r8, [sp, #36]
	add r6, r6, r7
	sub r7, r0, r0, lsl #6
	add r6, r6, r7
	add r7, r1, r1, lsl #1
	str r7, [sp, #368]
	ldr r8, [sp, #136]
	add r7, r7, r7, lsl #5
	rsb r7, r7, #0
	add r7, r6, r7
	add r6, r8, r8, lsl #6
	add r7, r7, r6
	str r6, [sp, #388]
	rsb r6, r2, r2, lsl #4
	str r6, [sp, #88]
	ldr r8, [sp, #112]
	add r6, r7, r6, lsl #3
	add r7, r3, r3, lsl #2
	sub r7, r3, r7, lsl #3
	add r9, r8, r8, lsl #1
	add r6, r6, r7
	str r9, [sp, #396]
	lsl r7, r9, #1
	ldr r8, [sp, #84]
	rsb r7, r7, #0
	add r6, r6, r7
	rsb r7, r4, r8, lsl #4
	add r6, r6, r7, lsl #1
	usat r6, #7, r6
	rsb r6, r6, r6, lsl #7
	add r5, r5, r6
	str r5, [sp, #284]
	ldr r8, [sp, #152]
	ldr r5, [sp, #212]
	ldr r6, [sp, #176]
	sub r5, r8, r5, lsl #3
	add r5, r6, r5
	ldr r6, [sp, #204]
	ldr r8, [sp, #104]
	rsb r6, r6, #0
	rsb r7, r8, r8, lsl #3
	add r5, r5, r6
	str r7, [sp, #280]
	rsb r6, r7, r7, lsl #3
	ldr r8, [sp, #180]
	add r5, r5, r6
	add r9, r8, r8, lsl #2
	add r6, r9, r9, lsl #2
	str r9, [sp, #4]
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #208]
	add r6, r6, r6, lsl #3
	add r5, r5, r6, lsl #3
	ldr r6, [sp, #92]
	add r6, r6, r6, lsl #2
	str r6, [sp, #44]
	add r6, r6, r6, lsl #4
	add r5, r5, r6
	ldr r6, [sp, #100]
	ldr r8, [sp, #116]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r8, r8, lsl #1
	add r5, r5, r6, lsl #2
	str r6, [sp, #244]
	ldr r8, [sp, #96]
	ldr r7, [sp, #56]
	rsb r6, r8, r8, lsl #6
	rsb r6, r8, r6, lsl #1
	rsb r8, r7, r7, lsl #3
	add r5, r5, r6
	rsb r7, r7, r8, lsl #1
	str r8, [sp, #364]
	ldr r8, [sp, #168]
	add r7, r7, r7, lsl #3
	rsb r7, r7, #0
	add r5, r5, r7
	add r7, r8, r8, lsl #6
	rsb r7, r7, #0
	add r5, r5, r7
	ldr r7, [sp, #60]
	rsb r8, r7, r7, lsl #6
	rsb r7, r7, r8, lsl #1
	ldr r8, [sp, #188]
	add r5, r5, r7
	rsb r7, r8, r8, lsl #3
	str r7, [sp, #304]
	rsb r7, r8, r7, lsl #3
	ldr r8, [sp, #132]
	add r5, r5, r7, lsl #1
	sub r7, r8, r8, lsl #5
	add r5, r5, r7
	ldr r7, [sp, #164]
	rsb r8, r7, r7, lsl #5
	sub r7, r7, r8, lsl #2
	ldr r8, [sp, #160]
	add r5, r5, r7
	add r7, r8, r8, lsl #1
	str r7, [sp, #48]
	rsb r7, r7, r7, lsl #3
	rsb r7, r8, r7, lsl #2
	add r5, r5, r7
	ldr r7, [sp, #156]
	rsb r8, r7, r7, lsl #5
	rsb r7, r7, r8, lsl #1
	add r5, r5, r7, lsl #1
	ldr r7, [sp, #360]
	rsb r7, r0, r7, lsl #2
	add r5, r5, r7
	ldr r7, [sp, #368]
	ldr r8, [sp, #136]
	sub r7, r1, r7, lsl #3
	add r9, r8, r8, lsl #1
	add r5, r5, r7
	str r9, [sp, #52]
	sub r7, r8, r9, lsl #4
	add r5, r5, r7
	lsl r7, r2, #5
	rsb r7, r7, #0
	add r5, r5, r7
	rsb r7, r3, r3, lsl #3
	rsb r8, r3, r7, lsl #1
	add r7, r8, r8, lsl #3
	str r8, [sp, #8]
	ldr r8, [sp, #112]
	rsb r7, r7, #0
	ldr r9, [sp, #396]
	add r5, r5, r7
	rsb r7, r8, r9, lsl #5
	add r5, r5, r7
	rsb r7, r4, r4, lsl #4
	rsb r7, r4, r7, lsl #2
	add r5, r5, r7, lsl #1
	usat r5, #7, r5
	add r7, r5, r5, lsl #1
	add r7, r7, r7, lsl #3
	rsb r5, r5, r7, lsl #1
	lsl r5, r5, #1
	rsb r7, r5, #0
	ldr r5, [sp, #284]
	ldr r8, [sp, #152]
	add r5, r5, r7
	add r6, r6, r8, lsl #3
	ldr r8, [sp, #216]
	ldr r7, [sp, #248]
	add r8, r8, r7, lsl #3
	add r6, r6, r8, lsl #1
	str r8, [sp, #352]
	ldr r8, [sp, #104]
	ldr r7, [sp, #280]
	rsb r7, r8, r7, lsl #1
	ldr r8, [sp, #180]
	lsl r7, r7, #3
	rsb r7, r7, #0
	add r6, r6, r7
	add r7, r8, r8, lsl #1
	str r7, [sp, #236]
	add r7, r7, r7, lsl #4
	rsb r7, r8, r7, lsl #1
	add r7, r6, r7
	ldr r6, [sp, #208]
	rsb r8, r6, r6, lsl #4
	rsb r6, r6, r8, lsl #1
	str r8, [sp, #276]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #92]
	sub r6, r6, r6, lsl #6
	add r6, r7, r6
	ldr r7, [sp, #384]
	rsb r7, r7, #0
	add r7, r6, r7
	ldr r6, [sp, #172]
	rsb r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r6, r7, r6
	ldr r7, [sp, #56]
	add r8, r7, r7, lsl #2
	rsb r7, r8, r8, lsl #4
	str r8, [sp, #340]
	ldr r8, [sp, #168]
	add r6, r6, r7
	add r7, r8, r8, lsl #5
	add r7, r6, r7, lsl #1
	ldr r6, [sp, #68]
	lsl r6, r6, #5
	rsb r6, r6, #0
	add r8, r7, r6
	ldr r6, [sp, #380]
	ldr r7, [sp, #60]
	add r6, r6, r6, lsl #4
	sub r6, r7, r6, lsl #1
	add r6, r8, r6
	ldr r8, [sp, #188]
	ldr r7, [sp, #304]
	add r7, r8, r7, lsl #3
	ldr r8, [sp, #132]
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r6, r6, r7
	rsb r7, r8, r8, lsl #4
	rsb r7, r8, r7, lsl #2
	ldr r8, [sp, #224]
	add r6, r6, r7
	ldr r9, [sp, #76]
	ldr r7, [sp, #156]
	add r6, r6, r8, lsl #2
	add r8, r7, r7, lsl #1
	add r6, r6, r9
	sub r7, r7, r8, lsl #5
	lsl r9, r8, #5
	str r9, [sp, #336]
	add r6, r6, r7
	lsl r7, r0, #4
	str r7, [sp, #272]
	rsb r7, r0, r0, lsl #4
	rsb r7, r0, r7, lsl #1
	add r6, r6, r7, lsl #2
	ldr r7, [sp, #368]
	ldr r8, [sp, #136]
	sub r7, r7, r7, lsl #5
	add r6, r6, r7
	rsb r7, r8, r8, lsl #4
	add r7, r6, r7
	ldr r6, [sp, #356]
	ldr r8, [sp, #40]
	rsb r6, r2, r6, lsl #4
	add r6, r7, r6
	add r6, r6, r8
	ldr r8, [sp, #112]
	rsb r9, r8, r8, lsl #3
	rsb r7, r9, r9, lsl #3
	str r9, [sp, #504]
	add r6, r6, r7
	str r7, [sp, #12]
	rsb r7, r4, r4, lsl #5
	lsl r7, r7, #2
	rsb r7, r7, #0
	add r6, r6, r7
	usat r6, #7, r6
	add r6, r6, r6, lsl #1
	rsb r6, r6, #0
	add r5, r5, r6
	str r5, [sp, #296]
	ldr r8, [sp, #152]
	add r5, r8, r8, lsl #3
	ldr r8, [sp, #216]
	add r5, r5, r5, lsl #3
	add r6, r8, r8, lsl #4
	ldr r8, [sp, #104]
	add r5, r5, r6, lsl #2
	add r6, r8, r8, lsl #1
	ldr r8, [sp, #180]
	add r6, r6, r6, lsl #4
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r8, r8, lsl #3
	add r6, r8, r6, lsl #2
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #208]
	ldr r8, [sp, #276]
	add r6, r6, r8, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #92]
	rsb r7, r6, r6, lsl #4
	rsb r9, r7, #0
	str r7, [sp, #288]
	add r5, r5, r9
	str r9, [sp, #324]
	ldr r8, [sp, #328]
	ldr r7, [sp, #348]
	rsb r6, r8, r7, lsl #3
	add r5, r5, r6
	ldr r6, [sp, #244]
	ldr r8, [sp, #116]
	add r6, r6, r6, lsl #4
	rsb r6, r8, r6, lsl #1
	ldr r8, [sp, #96]
	add r5, r5, r6
	ldr r7, [sp, #56]
	rsb r6, r8, r8, lsl #3
	sub r6, r8, r6, lsl #1
	add r5, r5, r6
	rsb r6, r7, r7, lsl #5
	lsl r6, r6, #1
	rsb r8, r6, #0
	add r5, r5, r8
	str r8, [sp, #184]
	ldr r8, [sp, #168]
	add r5, r5, r8, lsl #6
	ldr r8, [sp, #120]
	rsb r9, r8, r8, lsl #3
	add r6, r8, r9, lsl #3
	str r9, [sp, #260]
	ldr r7, [sp, #60]
	add r5, r5, r6, lsl #1
	add r8, r7, r7, lsl #2
	rsb r6, r7, r8, lsl #2
	str r8, [sp, #332]
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #376]
	ldr r7, [sp, #24]
	sub r6, r6, r6, lsl #3
	add r5, r5, r6
	add r5, r5, r7, lsl #4
	ldr r7, [sp, #164]
	ldr r8, [sp, #344]
	add r6, r7, r8, lsl #3
	ldr r8, [sp, #160]
	add r5, r5, r6, lsl #1
	rsb r7, r8, r8, lsl #3
	add r5, r5, r7, lsl #4
	str r7, [sp, #292]
	ldr r8, [sp, #36]
	ldr r7, [sp, #272]
	lsl r6, r8, #1
	rsb r6, r6, #0
	add r5, r5, r6
	rsb r6, r7, #0
	add r5, r5, r6
	add r6, r1, r1, lsl #2
	add r6, r6, r6, lsl #2
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #20]
	lsl r6, r6, #4
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #88]
	ldr r8, [sp, #40]
	rsb r6, r2, r6, lsl #1
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r8, r8, lsl #3
	ldr r8, [sp, #112]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #28]
	add r6, r8, r6, lsl #3
	add r5, r5, r6, lsl #1
	add r6, r4, r4, lsl #3
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	usat r6, #7, r5
	ldr r5, [sp, #296]
	ldr r8, [sp, #152]
	add r6, r5, r6, lsl #5
	rsb r9, r8, r8, lsl #4
	str r9, [sp, #252]
	ldr r7, [sp, #124]
	ldr r8, [sp, #216]
	rsb r5, r8, r7, lsl #2
	ldr r8, [sp, #104]
	sub r5, r5, r5, lsl #3
	add r5, r9, r5
	add r7, r8, r8, lsl #5
	add r5, r5, r7, lsl #1
	ldr r7, [sp, #236]
	ldr r8, [sp, #64]
	rsb r7, r7, r7, lsl #4
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r5, r5, r7
	lsl r7, r8, #1
	rsb r7, r7, #0
	add r5, r5, r7
	ldr r7, [sp, #288]
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r5, r5, r7
	ldr r7, [sp, #372]
	ldr r8, [sp, #116]
	rsb r7, r7, #0
	add r9, r8, r8, lsl #3
	add r5, r5, r7
	str r9, [sp, #256]
	add r7, r9, r9, lsl #3
	ldr r8, [sp, #96]
	add r5, r5, r7
	ldr r7, [sp, #56]
	add r5, r5, r8, lsl #1
	ldr r8, [sp, #364]
	rsb r7, r7, r8, lsl #3
	ldr r8, [sp, #168]
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r5, r5, r7
	add r7, r8, r8, lsl #1
	sub r7, r8, r7, lsl #5
	ldr r8, [sp, #120]
	add r5, r5, r7
	rsb r7, r8, r8, lsl #4
	rsb r7, r8, r7, lsl #2
	add r8, r5, r7
	ldr r7, [sp, #60]
	rsb r5, r7, r7, lsl #3
	rsb r7, r7, r5, lsl #1
	add r7, r8, r7, lsl #2
	ldr r8, [sp, #188]
	rsb r8, r8, r8, lsl #4
	add r9, r7, r8
	ldr r8, [sp, #132]
	ldr r7, [sp, #24]
	rsb r7, r8, r7, lsl #3
	add r8, r9, r7
	ldr r7, [sp, #164]
	add r7, r7, r7, lsl #5
	rsb r7, r7, #0
	add r8, r8, r7
	ldr r7, [sp, #292]
	add r8, r8, r7, lsl #1
	ldr r7, [sp, #16]
	add r7, r8, r7, lsl #1
	add r8, r0, r0, lsl #4
	rsb r8, r0, r8, lsl #2
	add r8, r7, r8
	ldr r7, [sp, #368]
	rsb r9, r1, r7, lsl #2
	rsb r7, r1, r9, lsl #2
	str r9, [sp, #264]
	add r7, r8, r7, lsl #1
	ldr r8, [sp, #136]
	add r9, r8, r8, lsl #2
	sub r8, r8, r9, lsl #4
	add r7, r7, r8
	ldr r8, [sp, #80]
	add r7, r7, r8, lsl #4
	ldr r8, [sp, #8]
	rsb r8, r8, #0
	add r7, r7, r8
	ldr r8, [sp, #112]
	sub r8, r8, r8, lsl #4
	add r7, r7, r8
	add r8, r4, r4, lsl #5
	add r7, r7, r8, lsl #1
	usat r7, #7, r7
	add r8, r7, r7, lsl #1
	sub r7, r7, r8, lsl #5
	add r7, r6, r7
	ldr r6, [sp, #388]
	ldr r8, [sp, #352]
	add r6, r6, r8, lsl #1
	ldr r8, [sp, #152]
	add r8, r8, r8, lsl #5
	add r6, r6, r8
	ldr r8, [sp, #104]
	add r9, r8, r8, lsl #4
	rsb r8, r8, r9, lsl #2
	ldr r9, [sp, #0]
	add r6, r6, r8
	ldr r8, [sp, #400]
	add r6, r6, r9, lsl #1
	rsb r8, r8, #0
	add r8, r6, r8
	ldr r6, [sp, #92]
	add r6, r6, r6, lsl #6
	add r8, r8, r6
	ldr r6, [sp, #100]
	add r6, r8, r6, lsl #3
	ldr r8, [sp, #116]
	rsb r9, r8, r8, lsl #3
	sub r8, r8, r9, lsl #1
	add r9, r6, r8
	ldr r8, [sp, #96]
	add r6, r8, r8, lsl #3
	ldr r8, [sp, #340]
	add r9, r9, r6, lsl #1
	add r10, r9, r8
	ldr r8, [sp, #168]
	ldr r9, [sp, #196]
	rsb r8, r8, r9, lsl #1
	ldr r9, [sp, #260]
	add r8, r10, r8, lsl #3
	add r9, r9, r9, lsl #4
	rsb r9, r9, #0
	add r9, r8, r9
	rsb r8, r5, #0
	add r9, r9, r8
	str r8, [sp, #268]
	ldr r8, [sp, #188]
	add r5, r8, r8, lsl #3
	rsb r8, r8, r5, lsl #3
	add r10, r9, r8
	ldr r8, [sp, #132]
	ldr r9, [sp, #392]
	rsb r8, r8, r9, lsl #2
	add r9, r10, r8
	ldr r8, [sp, #224]
	add r10, r9, r8, lsl #3
	ldr r8, [sp, #160]
	ldr r9, [sp, #76]
	add r8, r8, r9, lsl #3
	ldr r9, [sp, #336]
	add r8, r10, r8, lsl #1
	rsb r9, r9, #0
	add r8, r8, r9
	rsb r9, r0, r0, lsl #3
	rsb r9, r0, r9, lsl #1
	lsl r9, r9, #3
	rsb r9, r9, #0
	add r8, r8, r9
	rsb r9, r1, r1, lsl #4
	str r9, [sp, #228]
	add r9, r1, r9, lsl #3
	rsb r9, r9, #0
	add r9, r8, r9
	ldr r8, [sp, #80]
	add r8, r2, r8, lsl #5
	add r9, r9, r8
	ldr r8, [sp, #40]
	rsb r8, r8, r8, lsl #3
	rsb r8, r3, r8, lsl #2
	add r10, r9, r8
	ldr r8, [sp, #112]
	ldr r9, [sp, #396]
	rsb r8, r8, r9, lsl #3
	add r9, r10, r8, lsl #1
	ldr r8, [sp, #84]
	rsb r8, r8, r8, lsl #3
	lsl r8, r8, #2
	rsb r8, r8, #0
	add r8, r9, r8
	usat r8, #7, r8
	add r8, r8, r8, lsl #2
	add r8, r8, r8, lsl #2
	lsl r8, r8, #1
	rsb r8, r8, #0
	add r7, r7, r8
	ldr r8, [sp, #32]
	ldr r9, [sp, #324]
	add r9, r8, r9
	ldr r8, [sp, #184]
	add r10, r8, r9
	ldr r8, [sp, #152]
	ldr r9, [sp, #252]
	sub r8, r8, r9, lsl #1
	add r9, r10, r8
	ldr r8, [sp, #216]
	rsb r8, r8, r8, lsl #3
	add r10, r9, r8
	ldr r8, [sp, #180]
	ldr r9, [sp, #4]
	rsb r8, r8, r9, lsl #2
	add r9, r10, r8, lsl #1
	ldr r8, [sp, #64]
	rsb r8, r8, r8, lsl #4
	lsl r8, r8, #1
	rsb r8, r8, #0
	add r9, r9, r8
	ldr r8, [sp, #328]
	lsl r8, r8, #5
	rsb r8, r8, #0
	add r10, r9, r8
	ldr r8, [sp, #116]
	ldr r9, [sp, #256]
	add r8, r8, r9, lsl #2
	add r8, r10, r8
	add r6, r8, r6, lsl #2
	ldr r8, [sp, #168]
	rsb r9, r8, r8, lsl #6
	sub r8, r8, r9, lsl #1
	add r9, r6, r8
	ldr r8, [sp, #120]
	ldr r6, [sp, #68]
	rsb r6, r8, r6, lsl #3
	ldr r8, [sp, #332]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r6, r9, r6
	rsb r8, r8, r8, lsl #3
	lsl r8, r8, #1
	rsb r8, r8, #0
	add r6, r6, r8
	ldr r8, [sp, #188]
	add r5, r8, r5, lsl #2
	ldr r8, [sp, #132]
	add r5, r6, r5
	add r6, r8, r8, lsl #3
	add r6, r8, r6, lsl #3
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #108]
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #72]
	ldr r8, [sp, #36]
	ldr r9, [sp, #264]
	rsb r6, r6, #0
	add r5, r5, r6
	sub r6, r8, r8, lsl #4
	add r5, r5, r6
	add r6, r0, r0, lsl #3
	rsb r6, r0, r6, lsl #3
	add r5, r5, r6
	sub r6, r9, r9, lsl #3
	ldr r9, [sp, #52]
	add r5, r5, r6
	ldr r8, [sp, #136]
	add r6, r9, r9, lsl #3
	rsb r6, r8, r6, lsl #1
	ldr r8, [sp, #8]
	add r5, r5, r6
	add r6, r2, r2, lsl #3
	add r6, r2, r6, lsl #2
	add r5, r5, r6
	sub r6, r3, r8, lsl #3
	ldr r8, [sp, #112]
	add r5, r5, r6
	ldr r9, [sp, #504]
	sub r6, r8, r9, lsl #1
	ldr r8, [sp, #152]
	add r5, r5, r6
	rsb r6, r4, r4, lsl #3
	add r6, r4, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	usat r5, #7, r5
	add r6, r5, r5, lsl #1
	sub r5, r5, r6, lsl #3
	add r6, r8, r8, lsl #4
	add r5, r7, r5
	rsb r6, r8, r6, lsl #2
	ldr r8, [sp, #268]
	ldr r7, [sp, #124]
	add r6, r8, r6
	rsb r7, r7, r7, lsl #3
	add r7, r6, r7, lsl #1
	ldr r6, [sp, #128]
	ldr r8, [sp, #180]
	add r7, r7, r6
	ldr r6, [sp, #240]
	sub r6, r8, r6, lsl #2
	add r7, r7, r6
	ldr r6, [sp, #208]
	ldr r8, [sp, #64]
	rsb r6, r6, r8, lsl #3
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #44]
	ldr r8, [sp, #328]
	add r6, r7, r6, lsl #1
	add r7, r8, r8, lsl #1
	rsb r7, r8, r7, lsl #2
	sub r7, r7, r7, lsl #3
	add r7, r6, r7
	ldr r6, [sp, #172]
	rsb r6, r6, r6, lsl #4
	add r7, r7, r6
	ldr r6, [sp, #232]
	add r7, r7, r6, lsl #5
	ldr r6, [sp, #148]
	ldr r8, [sp, #168]
	ldr r9, [sp, #196]
	add r6, r6, r6, lsl #4
	rsb r6, r6, #0
	add r6, r7, r6
	rsb r7, r8, r9, lsl #3
	rsb r7, r8, r7, lsl #1
	ldr r8, [sp, #120]
	add r6, r6, r7
	add r7, r8, r8, lsl #3
	add r7, r8, r7, lsl #2
	ldr r8, [sp, #188]
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r6, r6, r7
	rsb r7, r8, r8, lsl #5
	rsb r7, r8, r7, lsl #1
	ldr r8, [sp, #132]
	lsl r7, r7, #1
	rsb r7, r7, #0
	add r6, r6, r7
	add r7, r8, r8, lsl #4
	rsb r7, r8, r7, lsl #2
	add r6, r6, r7
	ldr r7, [sp, #164]
	ldr r8, [sp, #224]
	rsb r7, r7, r8, lsl #4
	ldr r8, [sp, #160]
	add r6, r6, r7
	ldr r7, [sp, #48]
	rsb r7, r8, r7, lsl #2
	add r6, r6, r7, lsl #1
	ldr r7, [sp, #156]
	ldr r9, [sp, #228]
	ldr r8, [sp, #136]
	add r7, r7, r7, lsl #4
	rsb r1, r1, r9, lsl #1
	lsl r7, r7, #2
	ldr r9, [sp, #52]
	rsb r7, r7, #0
	add r6, r6, r7
	add r7, r0, r0, lsl #2
	rsb r0, r0, r7, lsl #2
	add r0, r6, r0, lsl #1
	ldr r6, [sp, #88]
	add r0, r0, r1
	ldr r7, [sp, #12]
	rsb r1, r8, r9, lsl #3
	add r1, r1, r1, lsl #2
	add r0, r0, r1
	add r1, r2, r6, lsl #3
	rsb r1, r1, #0
	add r0, r0, r1
	add r1, r3, r3, lsl #3
	add r0, r0, r1, lsl #2
	rsb r1, r7, #0
	add r0, r0, r1
	add r1, r4, r4, lsl #2
	add r1, r1, r1, lsl #4
	add r0, r0, r1
	usat r0, #7, r0
	add r1, r0, r0, lsl #1
	rsb r0, r0, r1, lsl #3
	add r4, r5, r0, lsl #1
	mov r0, #0
	cmp r4, #0
	movwgt r0, #1
	rsb r0, r0, #100
	bl putch
	mov r0, #111
	cmp r4, #0
	mov r1, #97
	movgt r0, r1
	bl putch
	cmp r4, #0
	mov r0, #103
	mov r1, #116
	movgt r0, r1
	bl putch
	mov r0, #10
	bl putch
	ldr r0, [sp, #140]
	subs r0, r0, #1
	str r0, [sp, #140]
	bgt label17
label11:
	mov r0, #0
	add sp, sp, #512
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
