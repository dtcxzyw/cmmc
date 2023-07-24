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
	blt label4
	mov r2, #0
	mov r1, r2
	b label5
label4:
	mov r2, #0
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	b label2
label5:
	cmp r0, r1
	ble label13
	mov r3, #1
	add r1, r1, #1
	mov r5, r2
	str r3, [r4, #4]
	mov r3, #2
	str r3, [r4, #8]
	mov r3, #3
	str r3, [r4, #12]
	mov r3, #4
	str r3, [r4, #16]
	mov r3, #5
	str r3, [r4, #20]
	mov r3, #6
	str r3, [r4, #24]
	mov r3, #7
	str r3, [r4, #28]
	mov r3, #8
	str r3, [r4, #32]
	mov r3, #9
	str r3, [r4, #36]
	mov r3, #10
	str r3, [r4, #40]
	mov r3, #11
	str r3, [r4, #44]
	mov r3, #12
	str r3, [r4, #48]
	mov r3, #13
	str r3, [r4, #52]
	mov r3, #14
	str r3, [r4, #56]
	mov r3, #15
	str r3, [r4, #60]
	mov r3, #16
	str r3, [r4, #64]
	mov r3, #17
	str r3, [r4, #68]
	mov r3, #18
	str r3, [r4, #72]
	mov r3, #19
	str r3, [r4, #76]
	mov r3, #20
	str r3, [r4, #80]
	mov r3, #21
	str r3, [r4, #84]
	mov r3, #22
	str r3, [r4, #88]
	mov r3, #23
	str r3, [r4, #92]
	mov r3, #24
	str r3, [r4, #96]
	mov r3, #25
	str r3, [r4, #100]
	mov r3, #26
	str r3, [r4, #104]
	mov r3, #27
	str r3, [r4, #108]
	mov r3, #28
	str r3, [r4, #112]
	mov r3, #29
	str r3, [r4, #116]
	mov r3, #30
	str r3, [r4, #120]
	mov r3, #31
	str r3, [r4, #124]
	mov r3, #32
	str r3, [r4, #128]
	mov r3, #33
	str r3, [r4, #132]
	mov r3, #34
	str r3, [r4, #136]
	mov r3, #35
	str r3, [r4, #140]
	mov r3, #36
	str r3, [r4, #144]
	mov r3, #37
	str r3, [r4, #148]
	mov r3, #38
	str r3, [r4, #152]
	mov r3, #39
	str r3, [r4, #156]
	mov r3, #40
	str r3, [r4, #160]
	mov r3, #41
	str r3, [r4, #164]
	mov r3, #42
	str r3, [r4, #168]
	mov r3, #43
	str r3, [r4, #172]
	mov r3, #44
	str r3, [r4, #176]
	mov r3, #45
	str r3, [r4, #180]
	mov r3, #46
	str r3, [r4, #184]
	mov r3, #47
	str r3, [r4, #188]
	mov r3, #48
	str r3, [r4, #192]
	mov r3, #49
	str r3, [r4, #196]
	mov r3, #50
	str r3, [r4, #200]
	mov r3, #51
	str r3, [r4, #204]
	mov r3, #52
	str r3, [r4, #208]
	mov r3, #53
	str r3, [r4, #212]
	mov r3, #54
	str r3, [r4, #216]
	mov r3, #55
	str r3, [r4, #220]
	mov r3, #56
	str r3, [r4, #224]
	mov r3, #57
	str r3, [r4, #228]
	mov r3, #58
	str r3, [r4, #232]
	mov r3, #59
	str r3, [r4, #236]
	mov r3, #60
	str r3, [r4, #240]
	mov r3, #61
	str r3, [r4, #244]
	mov r3, #62
	str r3, [r4, #248]
	mov r3, #63
	str r3, [r4, #252]
	mov r3, #64
	str r3, [r4, #256]
	mov r3, #65
	str r3, [r4, #260]
	mov r3, #66
	str r3, [r4, #264]
	mov r3, #67
	str r3, [r4, #268]
	mov r3, #68
	str r3, [r4, #272]
	mov r3, #69
	str r3, [r4, #276]
	mov r3, #70
	str r3, [r4, #280]
	mov r3, #71
	str r3, [r4, #284]
	mov r3, #72
	str r3, [r4, #288]
	mov r3, #73
	str r3, [r4, #292]
	mov r3, #74
	str r3, [r4, #296]
	mov r3, #75
	str r3, [r4, #300]
	mov r3, #76
	str r3, [r4, #304]
	mov r3, #77
	str r3, [r4, #308]
	mov r3, #78
	str r3, [r4, #312]
	mov r3, #79
	str r3, [r4, #316]
	mov r3, #80
	str r3, [r4, #320]
	mov r3, #81
	str r3, [r4, #324]
	mov r3, #82
	str r3, [r4, #328]
	mov r3, #83
	str r3, [r4, #332]
	mov r3, #84
	str r3, [r4, #336]
	mov r3, #85
	str r3, [r4, #340]
	mov r3, #86
	str r3, [r4, #344]
	mov r3, #87
	str r3, [r4, #348]
	mov r3, #88
	str r3, [r4, #352]
	mov r3, #89
	str r3, [r4, #356]
	mov r3, #90
	str r3, [r4, #360]
	mov r3, #91
	str r3, [r4, #364]
	mov r3, #92
	str r3, [r4, #368]
	mov r3, #93
	str r3, [r4, #372]
	mov r3, #94
	str r3, [r4, #376]
	mov r3, #95
	str r3, [r4, #380]
	mov r3, #96
	str r3, [r4, #384]
	mov r3, #97
	str r3, [r4, #388]
	mov r3, #98
	str r3, [r4, #392]
	mov r3, #99
	str r3, [r4, #396]
	mov r3, #0
label9:
	add r2, r4, r3, lsl #2
	ldr r6, [r4, r3, lsl #2]
	add r3, r3, #16
	cmp r3, #96
	add r5, r5, r6
	ldr r6, [r2, #4]
	add r5, r5, r6
	ldr r6, [r2, #8]
	add r5, r5, r6
	ldr r6, [r2, #12]
	add r5, r5, r6
	ldr r6, [r2, #16]
	add r5, r5, r6
	ldr r6, [r2, #20]
	add r5, r5, r6
	ldr r6, [r2, #24]
	add r5, r5, r6
	ldr r6, [r2, #28]
	add r5, r5, r6
	ldr r6, [r2, #32]
	add r5, r5, r6
	ldr r6, [r2, #36]
	add r5, r5, r6
	ldr r6, [r2, #40]
	add r5, r5, r6
	ldr r6, [r2, #44]
	add r5, r5, r6
	ldr r6, [r2, #48]
	add r5, r5, r6
	ldr r6, [r2, #52]
	add r5, r5, r6
	ldr r6, [r2, #56]
	ldr r2, [r2, #60]
	add r5, r5, r6
	add r2, r5, r2
	bge label12
	mov r5, r2
	b label9
label12:
	add r5, r4, r3, lsl #2
	ldr r3, [r4, r3, lsl #2]
	add r2, r2, r3
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
	mls r2, r5, r3, r2
	b label5
label13:
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	mov r0, #328
	bl _sysy_stoptime
	add sp, sp, #400
	mov r0, #0
	pop { r4, r5, r6, pc }
