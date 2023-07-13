.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r0, #324
	sub sp, sp, #400
	mov r4, sp
	bl _sysy_starttime
	bl getint
	mov r1, #0
label2:
	cmp r1, #100
	bge label19
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	b label2
label19:
	mov r3, #0
	mov r1, r3
	cmp r0, r3
	ble label13
label8:
	mov r2, #1
	add r1, r1, #1
	mov r5, r3
	str r2, [r4, #4]
	mov r2, #2
	str r2, [r4, #8]
	mov r2, #3
	str r2, [r4, #12]
	mov r2, #4
	str r2, [r4, #16]
	mov r2, #5
	str r2, [r4, #20]
	mov r2, #6
	str r2, [r4, #24]
	mov r2, #7
	str r2, [r4, #28]
	mov r2, #8
	str r2, [r4, #32]
	mov r2, #9
	str r2, [r4, #36]
	mov r2, #10
	str r2, [r4, #40]
	mov r2, #11
	str r2, [r4, #44]
	mov r2, #12
	str r2, [r4, #48]
	mov r2, #13
	str r2, [r4, #52]
	mov r2, #14
	str r2, [r4, #56]
	mov r2, #15
	str r2, [r4, #60]
	mov r2, #16
	str r2, [r4, #64]
	mov r2, #17
	str r2, [r4, #68]
	mov r2, #18
	str r2, [r4, #72]
	mov r2, #19
	str r2, [r4, #76]
	mov r2, #20
	str r2, [r4, #80]
	mov r2, #21
	str r2, [r4, #84]
	mov r2, #22
	str r2, [r4, #88]
	mov r2, #23
	str r2, [r4, #92]
	mov r2, #24
	str r2, [r4, #96]
	mov r2, #25
	str r2, [r4, #100]
	mov r2, #26
	str r2, [r4, #104]
	mov r2, #27
	str r2, [r4, #108]
	mov r2, #28
	str r2, [r4, #112]
	mov r2, #29
	str r2, [r4, #116]
	mov r2, #30
	str r2, [r4, #120]
	mov r2, #31
	str r2, [r4, #124]
	mov r2, #32
	str r2, [r4, #128]
	mov r2, #33
	str r2, [r4, #132]
	mov r2, #34
	str r2, [r4, #136]
	mov r2, #35
	str r2, [r4, #140]
	mov r2, #36
	str r2, [r4, #144]
	mov r2, #37
	str r2, [r4, #148]
	mov r2, #38
	str r2, [r4, #152]
	mov r2, #39
	str r2, [r4, #156]
	mov r2, #40
	str r2, [r4, #160]
	mov r2, #41
	str r2, [r4, #164]
	mov r2, #42
	str r2, [r4, #168]
	mov r2, #43
	str r2, [r4, #172]
	mov r2, #44
	str r2, [r4, #176]
	mov r2, #45
	str r2, [r4, #180]
	mov r2, #46
	str r2, [r4, #184]
	mov r2, #47
	str r2, [r4, #188]
	mov r2, #48
	str r2, [r4, #192]
	mov r2, #49
	str r2, [r4, #196]
	mov r2, #50
	str r2, [r4, #200]
	mov r2, #51
	str r2, [r4, #204]
	mov r2, #52
	str r2, [r4, #208]
	mov r2, #53
	str r2, [r4, #212]
	mov r2, #54
	str r2, [r4, #216]
	mov r2, #55
	str r2, [r4, #220]
	mov r2, #56
	str r2, [r4, #224]
	mov r2, #57
	str r2, [r4, #228]
	mov r2, #58
	str r2, [r4, #232]
	mov r2, #59
	str r2, [r4, #236]
	mov r2, #60
	str r2, [r4, #240]
	mov r2, #61
	str r2, [r4, #244]
	mov r2, #62
	str r2, [r4, #248]
	mov r2, #63
	str r2, [r4, #252]
	mov r2, #64
	str r2, [r4, #256]
	mov r2, #65
	str r2, [r4, #260]
	mov r2, #66
	str r2, [r4, #264]
	mov r2, #67
	str r2, [r4, #268]
	mov r2, #68
	str r2, [r4, #272]
	mov r2, #69
	str r2, [r4, #276]
	mov r2, #70
	str r2, [r4, #280]
	mov r2, #71
	str r2, [r4, #284]
	mov r2, #72
	str r2, [r4, #288]
	mov r2, #73
	str r2, [r4, #292]
	mov r2, #74
	str r2, [r4, #296]
	mov r2, #75
	str r2, [r4, #300]
	mov r2, #76
	str r2, [r4, #304]
	mov r2, #77
	str r2, [r4, #308]
	mov r2, #78
	str r2, [r4, #312]
	mov r2, #79
	str r2, [r4, #316]
	mov r2, #80
	str r2, [r4, #320]
	mov r2, #81
	str r2, [r4, #324]
	mov r2, #82
	str r2, [r4, #328]
	mov r2, #83
	str r2, [r4, #332]
	mov r2, #84
	str r2, [r4, #336]
	mov r2, #85
	str r2, [r4, #340]
	mov r2, #86
	str r2, [r4, #344]
	mov r2, #87
	str r2, [r4, #348]
	mov r2, #88
	str r2, [r4, #352]
	mov r2, #89
	str r2, [r4, #356]
	mov r2, #90
	str r2, [r4, #360]
	mov r2, #91
	str r2, [r4, #364]
	mov r2, #92
	str r2, [r4, #368]
	mov r2, #93
	str r2, [r4, #372]
	mov r2, #94
	str r2, [r4, #376]
	mov r2, #95
	str r2, [r4, #380]
	mov r2, #96
	str r2, [r4, #384]
	mov r2, #97
	str r2, [r4, #388]
	mov r2, #98
	str r2, [r4, #392]
	mov r2, #99
	str r2, [r4, #396]
	mov r2, #0
label9:
	add r3, r4, r2, lsl #2
	ldr r6, [r4, r2, lsl #2]
	add r2, r2, #16
	cmp r2, #96
	add r5, r5, r6
	ldr r6, [r3, #4]
	add r5, r5, r6
	ldr r6, [r3, #8]
	add r5, r5, r6
	ldr r6, [r3, #12]
	add r5, r5, r6
	ldr r6, [r3, #16]
	add r5, r5, r6
	ldr r6, [r3, #20]
	add r5, r5, r6
	ldr r6, [r3, #24]
	add r5, r5, r6
	ldr r6, [r3, #28]
	add r5, r5, r6
	ldr r6, [r3, #32]
	add r5, r5, r6
	ldr r6, [r3, #36]
	add r5, r5, r6
	ldr r6, [r3, #40]
	add r5, r5, r6
	ldr r6, [r3, #44]
	add r5, r5, r6
	ldr r6, [r3, #48]
	add r5, r5, r6
	ldr r6, [r3, #52]
	add r5, r5, r6
	ldr r6, [r3, #56]
	ldr r3, [r3, #60]
	add r5, r5, r6
	add r3, r5, r3
	bge label12
	mov r5, r3
	b label9
label12:
	add r5, r4, r2, lsl #2
	ldr r2, [r4, r2, lsl #2]
	add r2, r3, r2
	ldr r3, [r5, #4]
	add r2, r2, r3
	ldr r3, [r5, #8]
	add r2, r2, r3
	ldr r3, [r5, #12]
	movw r5, #32769
	movt r5, #32768
	add r2, r2, r3
	smmla r5, r2, r5, r2
	movw r3, #65535
	asr r6, r5, #15
	add r5, r6, r5, lsr #31
	mls r3, r5, r3, r2
	cmp r0, r1
	ble label13
	b label8
label13:
	mov r0, r3
	bl putint
	mov r0, #10
	bl putch
	mov r0, #328
	bl _sysy_stoptime
	add sp, sp, #400
	mov r0, #0
	pop { r4, r5, r6, pc }
