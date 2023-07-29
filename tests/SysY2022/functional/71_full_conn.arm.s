.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #452
	add r5, sp, #344
	str r5, [sp, #324]
	bl getint
	str r0, [sp, #316]
	cmp r0, #0
	ble label11
label17:
	mov r4, #0
	cmp r4, #5
	bge label10
.p2align 4
label6:
	add r0, r4, r4, lsl #2
	ldr r5, [sp, #324]
	mov r6, #0
	add r5, r5, r0, lsl #2
.p2align 4
label7:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #5
	blt label7
	add r4, r4, #1
	cmp r4, #5
	blt label6
.p2align 4
label10:
	ldr r6, [sp, #344]
	mov r0, #85
	mov r2, #23
	mvn r7, #102
	mvn r8, #122
	mvn r3, #110
	str r6, [sp, #220]
	mul r1, r6, r0
	ldr r5, [sp, #324]
	ldr r6, [r5, #4]
	mla r1, r6, r2, r1
	str r6, [sp, #308]
	mvn r2, #81
	ldr r6, [r5, #8]
	mla r1, r6, r2, r1
	str r6, [sp, #208]
	ldr r6, [r5, #12]
	mla r1, r6, r7, r1
	str r6, [sp, #236]
	str r7, [sp, #104]
	ldr r6, [r5, #16]
	mla r1, r6, r8, r1
	str r6, [sp, #200]
	str r8, [sp, #228]
	mov r8, #50
	ldr r6, [r5, #20]
	add r1, r1, r6, lsl #6
	str r6, [sp, #192]
	ldr r6, [r5, #24]
	str r6, [sp, #168]
	lsl r6, r6, #4
	str r6, [sp, #16]
	ldr r6, [sp, #168]
	rsb r6, r6, r6, lsl #4
	lsl r2, r6, #3
	str r6, [sp, #72]
	rsb r2, r2, #0
	ldr r7, [r5, #28]
	add r1, r1, r2
	mvn r2, #58
	mla r1, r7, r8, r1
	str r7, [sp, #244]
	str r8, [sp, #312]
	mvn r8, #105
	ldr r6, [r5, #32]
	mla r2, r6, r2, r1
	str r6, [sp, #252]
	mov r1, #47
	mvn r6, #38
	ldr r7, [r5, #36]
	mla r2, r7, r1, r2
	str r7, [sp, #184]
	ldr r7, [r5, #40]
	mla r2, r7, r3, r2
	str r7, [sp, #160]
	mvn r3, #66
	ldr r7, [r5, #44]
	str r7, [sp, #176]
	mul r7, r7, r3
	str r7, [sp, #120]
	ldr r7, [sp, #176]
	mla r2, r7, r3, r2
	ldr r7, [r5, #48]
	mla r2, r7, r8, r2
	str r7, [sp, #84]
	str r8, [sp, #4]
	mvn r8, #74
	ldr r7, [r5, #52]
	mla r2, r7, r8, r2
	str r7, [sp, #260]
	str r8, [sp, #96]
	mvn r8, #101
	ldr r7, [r5, #56]
	mla r2, r7, r8, r2
	str r7, [sp, #268]
	str r8, [sp, #332]
	ldr r7, [r5, #60]
	add r3, r7, r7, lsl #4
	str r7, [sp, #276]
	add r2, r2, r3, lsl #1
	lsl r8, r3, #1
	str r8, [sp, #88]
	mov r8, #110
	ldr r7, [r5, #64]
	mla r2, r7, r6, r2
	str r7, [sp, #284]
	str r6, [sp, #128]
	ldr r7, [r5, #68]
	add r3, r7, r7, lsl #6
	str r7, [sp, #292]
	ldr r7, [r5, #72]
	add r2, r2, r3
	mov r3, #113
	mla r2, r7, r1, r2
	str r7, [sp, #152]
	ldr r7, [r5, #76]
	mla r2, r7, r3, r2
	str r7, [sp, #144]
	ldr r7, [r5, #80]
	mla r2, r7, r8, r2
	str r7, [sp, #336]
	str r8, [sp, #108]
	ldr r7, [r5, #84]
	mla r3, r7, r1, r2
	str r7, [sp, #132]
	ldr r2, [r5, #88]
	lsl r4, r2, #2
	rsb r4, r4, #0
	add r4, r3, r4
	ldr r3, [r5, #92]
	add r6, r3, r3, lsl #2
	add r7, r4, r6, lsl #4
	mov r4, #46
	ldr r6, [r5, #96]
	mla r5, r6, r4, r7
	str r6, [sp, #300]
	usat r6, #7, r5
	mov r5, #39
	mul r6, r6, r5
	str r5, [sp, #172]
	str r6, [sp, #248]
	ldr r6, [sp, #220]
	ldr r8, [sp, #4]
	mul r5, r6, r8
	mov r8, #67
	ldr r6, [sp, #308]
	rsb r6, r6, r6, lsl #6
	add r5, r5, r6, lsl #1
	str r6, [sp, #136]
	ldr r6, [sp, #208]
	add r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #236]
	sub r6, r6, r6, lsl #5
	add r5, r5, r6
	ldr r6, [sp, #200]
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #192]
	mla r5, r6, r1, r5
	ldr r6, [sp, #168]
	str r8, [sp, #92]
	ldr r7, [sp, #244]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #252]
	mla r5, r7, r8, r5
	mvn r7, #93
	mla r5, r6, r7, r5
	mvn r6, #120
	str r6, [sp, #100]
	ldr r7, [sp, #184]
	mla r5, r7, r6, r5
	ldr r7, [sp, #160]
	rsb r6, r7, r7, lsl #3
	add r5, r5, r6
	mvn r6, #20
	str r6, [sp, #28]
	ldr r7, [sp, #176]
	mla r5, r7, r6, r5
	ldr r7, [sp, #84]
	rsb r6, r7, r7, lsl #4
	ldr r7, [sp, #260]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	mvn r6, #42
	mla r5, r7, r6, r5
	ldr r7, [sp, #268]
	mov r6, #105
	mla r5, r7, r6, r5
	ldr r7, [sp, #276]
	mvn r6, #41
	mla r5, r7, r6, r5
	ldr r7, [sp, #284]
	mov r6, #87
	mla r6, r7, r6, r5
	mov r5, #29
	str r5, [sp, #80]
	ldr r7, [sp, #292]
	mla r5, r7, r5, r6
	ldr r7, [sp, #152]
	ldr r8, [sp, #4]
	mla r5, r7, r8, r5
	ldr r7, [sp, #144]
	sub r6, r7, r7, lsl #5
	add r5, r5, r6
	mvn r6, #109
	str r6, [sp, #52]
	ldr r7, [sp, #336]
	mla r5, r7, r6, r5
	ldr r7, [sp, #132]
	mvn r6, #99
	ldr r8, [sp, #96]
	mla r5, r7, r6, r5
	mov r7, #77
	mvn r6, #21
	mla r5, r2, r6, r5
	mla r5, r3, r8, r5
	mvn r8, #124
	str r8, [sp, #68]
	ldr r6, [sp, #300]
	mla r5, r6, r8, r5
	mvn r8, #69
	ldr r6, [sp, #248]
	usat r5, #7, r5
	mla r5, r5, r7, r6
	mov r7, #76
	str r5, [sp, #280]
	ldr r6, [sp, #220]
	mov r5, #26
	mul r5, r6, r5
	ldr r6, [sp, #308]
	str r8, [sp, #64]
	mla r5, r6, r7, r5
	ldr r6, [sp, #208]
	mla r7, r6, r8, r5
	mov r8, #52
	ldr r6, [sp, #236]
	ldr r5, [sp, #80]
	mla r7, r6, r5, r7
	mvn r5, #94
	str r5, [sp, #56]
	ldr r6, [sp, #200]
	mla r5, r6, r5, r7
	ldr r6, [sp, #192]
	str r8, [sp, #44]
	add r6, r6, r6, lsl #1
	add r5, r5, r6, lsl #5
	ldr r6, [sp, #168]
	ldr r7, [sp, #244]
	mla r5, r6, r8, r5
	add r6, r7, r7, lsl #4
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #252]
	ldr r7, [sp, #184]
	add r6, r6, r6, lsl #2
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #4
	ldr r7, [sp, #160]
	add r5, r5, r6, lsl #1
	add r6, r7, r7, lsl #4
	ldr r7, [sp, #176]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	mov r6, #102
	mla r5, r7, r6, r5
	ldr r7, [sp, #84]
	add r6, r7, r7, lsl #1
	ldr r7, [sp, #260]
	add r5, r5, r6, lsl #1
	mvn r6, #37
	mla r5, r7, r6, r5
	ldr r7, [sp, #268]
	mov r6, #27
	mla r5, r7, r6, r5
	ldr r7, [sp, #276]
	ldr r8, [sp, #108]
	mla r6, r7, r8, r5
	mvn r8, #22
	mov r5, #116
	str r5, [sp, #76]
	ldr r7, [sp, #284]
	mla r6, r7, r5, r6
	ldr r7, [sp, #292]
	ldr r5, [sp, #172]
	mla r5, r7, r5, r6
	ldr r7, [sp, #152]
	sub r6, r7, r7, lsl #6
	ldr r7, [sp, #144]
	add r5, r5, r6
	mvn r6, #98
	mla r5, r7, r6, r5
	ldr r7, [sp, #336]
	add r7, r7, r7, lsl #6
	add r5, r5, r7
	str r7, [sp, #40]
	ldr r7, [sp, #132]
	rsb r6, r7, r7, lsl #4
	mov r7, #94
	add r5, r5, r6, lsl #3
	ldr r6, [sp, #128]
	mla r5, r2, r6, r5
	add r6, r3, r3, lsl #1
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #300]
	mla r5, r6, r7, r5
	usat r5, #7, r5
	rsb r6, r5, r5, lsl #7
	ldr r5, [sp, #280]
	add r7, r5, r6
	str r7, [sp, #216]
	str r8, [sp, #60]
	ldr r6, [sp, #220]
	ldr r7, [sp, #120]
	mla r5, r6, r8, r7
	mov r7, #49
	ldr r6, [sp, #136]
	str r7, [sp, #180]
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #208]
	mla r5, r6, r7, r5
	ldr r6, [sp, #236]
	ldr r8, [sp, #312]
	mla r5, r6, r8, r5
	mov r8, #125
	ldr r6, [sp, #200]
	add r6, r6, r6, lsl #3
	add r5, r5, r6, lsl #3
	ldr r6, [sp, #192]
	mla r5, r6, r0, r5
	ldr r6, [sp, #72]
	ldr r7, [sp, #244]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #1
	add r7, r5, r6, lsl #2
	ldr r6, [sp, #252]
	mla r9, r6, r8, r7
	mul r5, r6, r8
	ldr r7, [sp, #184]
	mvn r6, #116
	mla r9, r7, r6, r9
	ldr r7, [sp, #160]
	add r7, r7, r7, lsl #6
	rsb r7, r7, #0
	add r9, r9, r7
	ldr r7, [sp, #84]
	mla r9, r7, r8, r9
	ldr r7, [sp, #260]
	ldr r8, [sp, #108]
	mla r8, r7, r8, r9
	ldr r7, [sp, #268]
	sub r7, r7, r7, lsl #5
	add r9, r8, r7
	ldr r7, [sp, #276]
	ldr r8, [sp, #228]
	mla r8, r7, r8, r9
	mov r9, #83
	str r9, [sp, #32]
	ldr r7, [sp, #284]
	mla r8, r7, r9, r8
	ldr r7, [sp, #292]
	mov r9, #122
	mla r8, r7, r9, r8
	ldr r7, [sp, #152]
	mov r9, #11
	mla r9, r7, r9, r8
	ldr r7, [sp, #144]
	ldr r8, [sp, #60]
	mla r8, r7, r8, r9
	ldr r7, [sp, #336]
	mvn r9, #46
	mla r8, r7, r9, r8
	ldr r7, [sp, #132]
	lsl r7, r7, #5
	rsb r7, r7, #0
	add r7, r8, r7
	mov r8, #118
	mla r6, r2, r6, r7
	mov r7, #95
	mla r7, r3, r7, r6
	ldr r6, [sp, #300]
	mla r6, r6, r8, r7
	ldr r8, [sp, #4]
	ldr r7, [sp, #216]
	usat r6, #7, r6
	mla r6, r6, r8, r7
	mov r8, #82
	str r6, [sp, #232]
	ldr r6, [sp, #220]
	str r8, [sp, #8]
	add r5, r5, r6, lsl #3
	ldr r6, [sp, #308]
	mla r5, r6, r8, r5
	mvn r8, #103
	str r8, [sp, #12]
	ldr r6, [sp, #208]
	mla r5, r6, r8, r5
	mov r8, #101
	str r8, [sp, #304]
	ldr r6, [sp, #236]
	mla r5, r6, r8, r5
	mvn r8, #115
	str r8, [sp, #164]
	ldr r6, [sp, #200]
	mla r5, r6, r8, r5
	ldr r6, [sp, #192]
	sub r6, r6, r6, lsl #6
	add r5, r5, r6
	ldr r6, [sp, #16]
	ldr r7, [sp, #244]
	ldr r8, [sp, #64]
	rsb r6, r6, #0
	add r5, r5, r6
	mov r6, #75
	mla r5, r7, r8, r5
	str r6, [sp, #48]
	mvn r8, #113
	ldr r7, [sp, #184]
	mla r5, r7, r6, r5
	ldr r7, [sp, #160]
	add r6, r7, r7, lsl #5
	ldr r7, [sp, #176]
	add r5, r5, r6, lsl #1
	add r6, r7, r7, lsl #1
	ldr r7, [sp, #84]
	lsl r6, r6, #5
	str r8, [sp, #36]
	rsb r6, r6, #0
	add r5, r5, r6
	mvn r6, #100
	mla r5, r7, r6, r5
	mov r6, #59
	ldr r7, [sp, #260]
	str r6, [sp, #156]
	mla r5, r7, r8, r5
	ldr r7, [sp, #268]
	mla r5, r7, r6, r5
	ldr r7, [sp, #276]
	add r6, r7, r7, lsl #1
	add r5, r5, r6, lsl #2
	str r6, [sp, #328]
	ldr r7, [sp, #284]
	add r6, r7, r7, lsl #2
	ldr r7, [sp, #292]
	add r6, r5, r6
	ldr r5, [sp, #56]
	mla r6, r7, r5, r6
	ldr r7, [sp, #152]
	ldr r5, [sp, #76]
	mla r5, r7, r5, r6
	ldr r7, [sp, #144]
	mvn r6, #92
	mla r5, r7, r6, r5
	ldr r7, [sp, #336]
	rsb r6, r7, r7, lsl #4
	ldr r7, [sp, #132]
	add r5, r5, r6
	mov r6, #79
	mla r5, r7, r6, r5
	ldr r7, [sp, #180]
	add r6, r2, r2, lsl #1
	add r5, r5, r6
	ldr r6, [sp, #300]
	mla r5, r3, r7, r5
	mov r7, #121
	rsb r6, r6, r6, lsl #5
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #232]
	usat r5, #7, r5
	add r5, r5, r5, lsl #1
	rsb r5, r5, #0
	add r5, r6, r5
	str r5, [sp, #272]
	mov r5, #81
	str r5, [sp, #196]
	ldr r6, [sp, #220]
	mul r5, r6, r5
	ldr r6, [sp, #308]
	add r6, r6, r6, lsl #4
	add r5, r5, r6, lsl #2
	ldr r6, [sp, #208]
	ldr r8, [sp, #332]
	mla r5, r6, r8, r5
	mvn r8, #73
	str r8, [sp, #24]
	ldr r6, [sp, #236]
	mla r5, r6, r8, r5
	mov r8, #55
	ldr r6, [sp, #200]
	mla r5, r6, r7, r5
	ldr r6, [sp, #192]
	rsb r6, r6, r6, lsl #4
	rsb r7, r6, #0
	str r6, [sp, #288]
	add r5, r5, r7
	str r7, [sp, #112]
	str r8, [sp, #188]
	ldr r6, [sp, #168]
	ldr r7, [sp, #244]
	mla r5, r6, r8, r5
	ldr r8, [sp, #304]
	mla r5, r7, r8, r5
	mvn r8, #12
	str r8, [sp, #0]
	ldr r6, [sp, #252]
	ldr r7, [sp, #184]
	mla r5, r6, r8, r5
	mov r8, #38
	rsb r6, r7, r7, lsl #5
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	str r6, [sp, #116]
	ldr r7, [sp, #160]
	add r6, r5, r7, lsl #6
	ldr r7, [sp, #176]
	mov r5, #114
	str r8, [sp, #20]
	mla r6, r7, r5, r6
	ldr r7, [sp, #84]
	mla r8, r7, r8, r6
	ldr r7, [sp, #260]
	ldr r6, [sp, #28]
	mla r6, r7, r6, r8
	ldr r7, [sp, #268]
	rsb r7, r7, r7, lsl #3
	add r6, r6, r7, lsl #4
	ldr r7, [sp, #276]
	mla r5, r7, r5, r6
	ldr r7, [sp, #284]
	rsb r6, r7, r7, lsl #3
	add r5, r5, r6, lsl #4
	str r6, [sp, #296]
	ldr r7, [sp, #292]
	add r6, r7, r7, lsl #2
	ldr r7, [sp, #152]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	lsl r6, r7, #4
	rsb r6, r6, #0
	add r5, r5, r6
	mvn r6, #49
	str r6, [sp, #124]
	ldr r7, [sp, #144]
	mla r5, r7, r6, r5
	ldr r7, [sp, #336]
	rsb r6, r7, r7, lsl #3
	ldr r7, [sp, #132]
	lsl r6, r6, #4
	ldr r8, [sp, #164]
	rsb r6, r6, #0
	add r5, r5, r6
	mvn r6, #53
	mla r5, r7, r8, r5
	ldr r8, [sp, #8]
	mla r5, r2, r6, r5
	ldr r6, [sp, #300]
	mla r5, r3, r8, r5
	add r6, r6, r6, lsl #3
	mvn r8, #76
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	usat r6, #7, r5
	ldr r5, [sp, #272]
	add r7, r5, r6, lsl #5
	str r7, [sp, #240]
	mvn r7, #89
	ldr r6, [sp, #220]
	str r8, [sp, #320]
	rsb r5, r6, r6, lsl #4
	ldr r6, [sp, #308]
	mla r5, r6, r8, r5
	ldr r6, [sp, #208]
	str r7, [sp, #148]
	add r6, r6, r6, lsl #5
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #236]
	mla r5, r6, r7, r5
	ldr r6, [sp, #200]
	lsl r7, r6, #1
	add r6, r6, r6, lsl #1
	str r7, [sp, #264]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #288]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #168]
	ldr r7, [sp, #244]
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r6, r5, r6
	ldr r5, [sp, #196]
	mla r5, r7, r5, r6
	ldr r6, [sp, #252]
	ldr r7, [sp, #184]
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #52]
	mla r6, r7, r6, r5
	ldr r7, [sp, #160]
	ldr r5, [sp, #56]
	mla r5, r7, r5, r6
	ldr r7, [sp, #176]
	ldr r6, [sp, #156]
	mla r5, r7, r6, r5
	ldr r7, [sp, #84]
	ldr r8, [sp, #44]
	mla r5, r7, r8, r5
	ldr r7, [sp, #260]
	rsb r6, r7, r7, lsl #4
	ldr r7, [sp, #268]
	add r5, r5, r6
	ldr r8, [sp, #188]
	mla r5, r7, r8, r5
	ldr r7, [sp, #276]
	add r6, r7, r7, lsl #5
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #296]
	ldr r7, [sp, #292]
	add r5, r5, r6, lsl #1
	mov r6, #58
	mla r5, r7, r6, r5
	mov r6, #86
	ldr r7, [sp, #152]
	ldr r8, [sp, #92]
	mla r5, r7, r8, r5
	ldr r7, [sp, #144]
	mla r5, r7, r6, r5
	ldr r7, [sp, #336]
	mvn r6, #78
	mla r5, r7, r6, r5
	ldr r7, [sp, #132]
	ldr r8, [sp, #0]
	add r6, r7, r7, lsl #1
	add r5, r5, r6, lsl #4
	sub r6, r3, r3, lsl #4
	mla r5, r2, r8, r5
	add r5, r5, r6
	ldr r6, [sp, #300]
	add r6, r6, r6, lsl #5
	add r5, r5, r6, lsl #1
	usat r6, #7, r5
	ldr r5, [sp, #56]
	ldr r7, [sp, #240]
	mla r5, r6, r5, r7
	ldr r6, [sp, #308]
	ldr r7, [sp, #40]
	ldr r8, [sp, #8]
	mla r7, r6, r8, r7
	ldr r6, [sp, #220]
	add r6, r6, r6, lsl #5
	add r7, r7, r6
	ldr r6, [sp, #208]
	ldr r8, [sp, #92]
	mla r7, r6, r8, r7
	ldr r6, [sp, #236]
	rsb r6, r6, r6, lsl #4
	add r6, r7, r6, lsl #1
	ldr r7, [sp, #264]
	rsb r7, r7, #0
	add r7, r6, r7
	ldr r6, [sp, #192]
	add r6, r6, r6, lsl #6
	add r7, r7, r6
	ldr r6, [sp, #72]
	add r6, r7, r6, lsl #3
	ldr r7, [sp, #244]
	ldr r8, [sp, #0]
	mla r7, r7, r8, r6
	ldr r6, [sp, #252]
	add r8, r6, r6, lsl #3
	add r6, r7, r8, lsl #1
	str r8, [sp, #224]
	mov r8, #104
	ldr r7, [sp, #184]
	add r7, r7, r7, lsl #2
	add r6, r6, r7
	ldr r7, [sp, #160]
	mla r6, r7, r8, r6
	ldr r7, [sp, #176]
	mvn r8, #118
	mla r6, r7, r8, r6
	mov r8, #71
	ldr r7, [sp, #84]
	sub r7, r7, r7, lsl #3
	add r6, r6, r7
	str r7, [sp, #204]
	str r8, [sp, #256]
	ldr r7, [sp, #260]
	mla r6, r7, r8, r6
	ldr r7, [sp, #268]
	mov r8, #107
	mla r7, r7, r8, r6
	ldr r6, [sp, #328]
	add r6, r7, r6, lsl #3
	ldr r7, [sp, #284]
	ldr r8, [sp, #8]
	mla r6, r7, r8, r6
	ldr r7, [sp, #292]
	add r7, r7, r7, lsl #1
	lsl r7, r7, #5
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #152]
	ldr r8, [sp, #12]
	mla r8, r7, r8, r6
	ldr r7, [sp, #144]
	ldr r6, [sp, #100]
	mla r6, r7, r6, r8
	mov r8, #97
	str r8, [sp, #140]
	ldr r7, [sp, #132]
	ldr r9, [sp, #32]
	mla r6, r7, r8, r6
	mvn r8, #83
	mla r6, r2, r9, r6
	mla r7, r3, r4, r6
	ldr r6, [sp, #300]
	mla r6, r6, r8, r7
	usat r7, #7, r6
	ldr r6, [sp, #124]
	mla r5, r7, r6, r5
	ldr r6, [sp, #208]
	ldr r8, [sp, #64]
	ldr r7, [sp, #112]
	mla r7, r6, r8, r7
	mvn r8, #28
	ldr r6, [sp, #116]
	add r7, r6, r7
	ldr r6, [sp, #220]
	mla r7, r6, r8, r7
	ldr r6, [sp, #308]
	rsb r6, r6, r6, lsl #3
	add r7, r7, r6
	ldr r6, [sp, #236]
	ldr r8, [sp, #20]
	mla r8, r6, r8, r7
	ldr r6, [sp, #200]
	ldr r7, [sp, #148]
	mla r7, r6, r7, r8
	ldr r6, [sp, #168]
	lsl r6, r6, #5
	rsb r6, r6, #0
	add r8, r7, r6
	ldr r7, [sp, #244]
	mov r6, #37
	mla r7, r7, r6, r8
	ldr r8, [sp, #224]
	add r9, r7, r8, lsl #2
	ldr r7, [sp, #160]
	ldr r8, [sp, #68]
	mla r8, r7, r8, r9
	ldr r7, [sp, #176]
	mvn r9, #45
	mla r9, r7, r9, r8
	ldr r7, [sp, #84]
	ldr r8, [sp, #64]
	mla r8, r7, r8, r9
	mvn r9, #72
	ldr r7, [sp, #260]
	mla r8, r7, r6, r8
	ldr r7, [sp, #268]
	mla r7, r7, r9, r8
	mvn r9, #86
	ldr r8, [sp, #88]
	rsb r8, r8, #0
	add r8, r7, r8
	ldr r7, [sp, #284]
	mla r9, r7, r9, r8
	ldr r7, [sp, #292]
	ldr r8, [sp, #96]
	mla r9, r7, r8, r9
	ldr r7, [sp, #152]
	ldr r8, [sp, #256]
	mla r9, r7, r8, r9
	ldr r7, [sp, #144]
	ldr r8, [sp, #320]
	mla r8, r7, r8, r9
	ldr r7, [sp, #336]
	mov r9, #53
	mla r8, r7, r9, r8
	ldr r7, [sp, #132]
	mla r6, r7, r6, r8
	ldr r7, [sp, #104]
	ldr r8, [sp, #0]
	mla r6, r2, r7, r6
	add r2, r2, r2, lsl #3
	mla r7, r3, r8, r6
	ldr r6, [sp, #300]
	ldr r8, [sp, #36]
	mla r6, r6, r8, r7
	ldr r8, [sp, #60]
	usat r6, #7, r6
	mla r5, r6, r8, r5
	str r5, [sp, #212]
	ldr r6, [sp, #220]
	ldr r8, [sp, #92]
	ldr r7, [sp, #204]
	mla r5, r6, r8, r7
	ldr r6, [sp, #308]
	mov r7, #42
	mla r5, r6, r7, r5
	ldr r6, [sp, #208]
	mov r7, #41
	mla r5, r6, r7, r5
	mvn r7, #91
	ldr r6, [sp, #236]
	ldr r8, [sp, #228]
	mla r5, r6, r8, r5
	ldr r6, [sp, #200]
	mla r5, r6, r7, r5
	ldr r6, [sp, #192]
	add r6, r6, r6, lsl #2
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #168]
	ldr r8, [sp, #320]
	ldr r7, [sp, #244]
	mla r5, r6, r8, r5
	ldr r6, [sp, #48]
	mla r5, r7, r6, r5
	ldr r6, [sp, #252]
	ldr r7, [sp, #184]
	add r6, r6, r6, lsl #1
	add r5, r5, r6, lsl #5
	mvn r6, #50
	mla r5, r7, r6, r5
	ldr r7, [sp, #160]
	mov r6, #109
	mla r5, r7, r6, r5
	mvn r6, #121
	ldr r7, [sp, #176]
	ldr r8, [sp, #24]
	mla r5, r7, r8, r5
	ldr r7, [sp, #260]
	mla r5, r7, r6, r5
	ldr r7, [sp, #268]
	ldr r8, [sp, #92]
	mla r5, r7, r8, r5
	ldr r7, [sp, #276]
	mla r1, r7, r1, r5
	ldr r7, [sp, #284]
	mov r5, #22
	mla r1, r7, r5, r1
	ldr r7, [sp, #292]
	add r5, r7, r7, lsl #4
	ldr r7, [sp, #152]
	lsl r5, r5, #2
	ldr r8, [sp, #20]
	rsb r5, r5, #0
	add r1, r1, r5
	mla r1, r7, r8, r1
	ldr r7, [sp, #144]
	ldr r5, [sp, #80]
	mla r1, r7, r5, r1
	ldr r7, [sp, #336]
	mov r5, #115
	mla r1, r7, r5, r1
	ldr r7, [sp, #132]
	ldr r6, [sp, #100]
	mla r1, r7, r6, r1
	ldr r6, [sp, #300]
	ldr r5, [sp, #212]
	add r1, r1, r2, lsl #2
	mvn r2, #48
	mla r1, r3, r2, r1
	mla r0, r6, r0, r1
	usat r0, #7, r0
	mla r4, r0, r4, r5
	mov r0, #0
	cmp r4, #0
	movwgt r0, #1
	rsb r0, r0, #100
	bl putch
	ldr r8, [sp, #140]
	mov r0, #111
	cmp r4, #0
	movgt r0, r8
	bl putch
	ldr r5, [sp, #76]
	mov r0, #103
	cmp r4, #0
	movgt r0, r5
	bl putch
	mov r0, #10
	bl putch
	ldr r0, [sp, #316]
	subs r0, r0, #1
	str r0, [sp, #316]
	bgt label17
label11:
	mov r0, #0
	add sp, sp, #452
	pop { r4, r5, r6, r7, r8, r9, pc }
