.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[100] RegSpill[172] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, lr }
	sub sp, sp, #280
	bl getint
	cmp r0, #0
	ble label14
	str r0, [sp, #100]
	add r4, sp, #112
	mov r5, #0
	mov r6, r4
	mov r7, #0
	b label7
.p2align 4
label10:
	add r6, r6, #4
	mov r7, r0
.p2align 4
label7:
	bl getint
	str r0, [r6, #0]
	add r0, r7, #1
	cmp r0, #5
	blt label10
	add r5, r5, #1
	cmp r5, #5
	bge label13
	add r4, r4, #20
	mov r7, #0
	mov r6, r4
	b label7
.p2align 4
label13:
	ldr r5, [sp, #112]
	mov r0, #85
	mov r2, #23
	mvn r7, #102
	mvn r3, #110
	str r5, [sp, #264]
	mul r1, r5, r0
	ldr r5, [sp, #116]
	mla r1, r5, r2, r1
	str r5, [sp, #228]
	mvn r2, #81
	ldr r5, [sp, #120]
	mla r1, r5, r2, r1
	str r5, [sp, #224]
	ldr r5, [sp, #124]
	mla r1, r5, r7, r1
	str r5, [sp, #260]
	mvn r7, #122
	ldr r5, [sp, #128]
	mla r1, r5, r7, r1
	str r5, [sp, #220]
	mov r7, #50
	ldr r5, [sp, #132]
	add r1, r1, r5, lsl #6
	str r5, [sp, #216]
	ldr r5, [sp, #136]
	lsl r4, r5, #4
	str r5, [sp, #68]
	rsb r5, r5, r5, lsl #4
	str r4, [sp, #52]
	lsl r2, r5, #3
	str r5, [sp, #272]
	rsb r2, r2, #0
	ldr r6, [sp, #140]
	add r1, r1, r2
	mvn r2, #58
	mla r1, r6, r7, r1
	str r6, [sp, #256]
	mvn r7, #105
	ldr r5, [sp, #144]
	mla r2, r5, r2, r1
	str r5, [sp, #252]
	mov r1, #47
	ldr r6, [sp, #148]
	mla r2, r6, r1, r2
	str r6, [sp, #60]
	ldr r6, [sp, #152]
	mla r2, r6, r3, r2
	str r6, [sp, #72]
	mvn r3, #66
	ldr r6, [sp, #156]
	mla r2, r6, r3, r2
	str r6, [sp, #64]
	mul r4, r6, r3
	mvn r3, #74
	str r4, [sp, #36]
	mvn r4, #101
	ldr r6, [sp, #160]
	mla r2, r6, r7, r2
	str r6, [sp, #268]
	mov r7, #110
	ldr r6, [sp, #164]
	mla r2, r6, r3, r2
	str r6, [sp, #248]
	ldr r6, [sp, #168]
	mla r2, r6, r4, r2
	str r6, [sp, #244]
	mvn r4, #38
	ldr r6, [sp, #172]
	add r3, r6, r6, lsl #4
	str r6, [sp, #240]
	add r2, r2, r3, lsl #1
	lsl r6, r3, #1
	str r6, [sp, #212]
	ldr r6, [sp, #176]
	mla r2, r6, r4, r2
	str r6, [sp, #236]
	mov r4, #39
	ldr r6, [sp, #180]
	add r3, r6, r6, lsl #6
	str r6, [sp, #232]
	ldr r6, [sp, #184]
	add r2, r2, r3
	mov r3, #113
	mla r2, r6, r1, r2
	str r6, [sp, #76]
	ldr r6, [sp, #188]
	mla r2, r6, r3, r2
	str r6, [sp, #80]
	ldr r6, [sp, #192]
	mla r2, r6, r7, r2
	str r6, [sp, #84]
	mvn r7, #105
	ldr r6, [sp, #196]
	mla r2, r6, r1, r2
	str r6, [sp, #88]
	ldr r6, [sp, #200]
	lsl r3, r6, #2
	str r6, [sp, #92]
	rsb r3, r3, #0
	ldr r5, [sp, #204]
	add r2, r2, r3
	str r5, [sp, #96]
	add r3, r5, r5, lsl #2
	ldr r5, [sp, #208]
	add r3, r2, r3, lsl #4
	mov r2, #46
	str r5, [sp, #104]
	mla r3, r5, r2, r3
	usat r3, #7, r3
	mul r4, r3, r4
	str r4, [sp, #4]
	ldr r5, [sp, #264]
	mul r3, r5, r7
	mov r7, #67
	ldr r5, [sp, #228]
	rsb r4, r5, r5, lsl #6
	add r3, r3, r4, lsl #1
	str r4, [sp, #32]
	ldr r5, [sp, #224]
	add r4, r5, r5, lsl #3
	ldr r5, [sp, #260]
	lsl r4, r4, #1
	rsb r4, r4, #0
	add r3, r3, r4
	sub r4, r5, r5, lsl #5
	ldr r5, [sp, #220]
	add r3, r3, r4
	lsl r4, r5, #3
	ldr r5, [sp, #216]
	rsb r4, r4, #0
	add r3, r3, r4
	mla r3, r5, r1, r3
	ldr r5, [sp, #68]
	ldr r6, [sp, #256]
	lsl r4, r5, #2
	ldr r5, [sp, #252]
	rsb r4, r4, #0
	add r3, r3, r4
	mvn r4, #93
	mla r3, r6, r7, r3
	mvn r7, #105
	ldr r6, [sp, #60]
	mla r3, r5, r4, r3
	mvn r5, #120
	mla r3, r6, r5, r3
	mvn r5, #20
	ldr r6, [sp, #72]
	rsb r4, r6, r6, lsl #3
	ldr r6, [sp, #64]
	add r3, r3, r4
	mla r3, r6, r5, r3
	mvn r5, #109
	ldr r6, [sp, #268]
	rsb r4, r6, r6, lsl #4
	ldr r6, [sp, #248]
	lsl r4, r4, #2
	rsb r4, r4, #0
	add r3, r3, r4
	mvn r4, #42
	mla r3, r6, r4, r3
	ldr r6, [sp, #244]
	mov r4, #105
	mla r3, r6, r4, r3
	ldr r6, [sp, #240]
	mvn r4, #41
	mla r3, r6, r4, r3
	ldr r6, [sp, #236]
	mov r4, #87
	mla r3, r6, r4, r3
	mov r4, #29
	ldr r6, [sp, #232]
	mla r3, r6, r4, r3
	ldr r6, [sp, #76]
	mla r3, r6, r7, r3
	mvn r7, #124
	ldr r6, [sp, #80]
	sub r4, r6, r6, lsl #5
	ldr r6, [sp, #84]
	add r3, r3, r4
	mvn r4, #99
	mla r3, r6, r5, r3
	ldr r6, [sp, #88]
	mla r3, r6, r4, r3
	ldr r6, [sp, #92]
	mvn r4, #21
	ldr r5, [sp, #96]
	mla r4, r6, r4, r3
	mvn r3, #74
	mla r3, r5, r3, r4
	ldr r5, [sp, #104]
	ldr r4, [sp, #4]
	mla r3, r5, r7, r3
	mvn r7, #69
	mov r5, #77
	usat r3, #7, r3
	mla r3, r3, r5, r4
	mov r4, #76
	str r3, [sp, #16]
	ldr r5, [sp, #264]
	mov r3, #26
	mul r3, r5, r3
	ldr r5, [sp, #228]
	mla r3, r5, r4, r3
	mov r4, #29
	ldr r5, [sp, #224]
	mla r3, r5, r7, r3
	mov r7, #52
	ldr r5, [sp, #260]
	mla r3, r5, r4, r3
	mvn r4, #94
	ldr r5, [sp, #220]
	mla r3, r5, r4, r3
	ldr r5, [sp, #216]
	add r4, r5, r5, lsl #1
	ldr r5, [sp, #68]
	add r3, r3, r4, lsl #5
	ldr r6, [sp, #256]
	mla r3, r5, r7, r3
	add r4, r6, r6, lsl #4
	mov r7, #110
	ldr r5, [sp, #252]
	ldr r6, [sp, #60]
	lsl r4, r4, #2
	rsb r4, r4, #0
	add r3, r3, r4
	add r4, r5, r5, lsl #2
	rsb r4, r4, #0
	add r3, r3, r4
	add r4, r6, r6, lsl #4
	ldr r6, [sp, #72]
	add r3, r3, r4, lsl #1
	add r4, r6, r6, lsl #4
	ldr r6, [sp, #64]
	lsl r4, r4, #1
	rsb r4, r4, #0
	add r3, r3, r4
	mov r4, #102
	mla r3, r6, r4, r3
	ldr r6, [sp, #268]
	add r4, r6, r6, lsl #1
	ldr r6, [sp, #248]
	add r3, r3, r4, lsl #1
	mvn r4, #37
	mla r3, r6, r4, r3
	ldr r6, [sp, #244]
	mov r4, #27
	mla r3, r6, r4, r3
	mov r4, #116
	ldr r6, [sp, #240]
	mla r3, r6, r7, r3
	mvn r7, #22
	ldr r6, [sp, #236]
	mla r3, r6, r4, r3
	mov r4, #39
	ldr r6, [sp, #232]
	mla r3, r6, r4, r3
	ldr r6, [sp, #76]
	sub r4, r6, r6, lsl #6
	ldr r6, [sp, #80]
	add r3, r3, r4
	mvn r4, #98
	mla r4, r6, r4, r3
	ldr r6, [sp, #84]
	add r3, r6, r6, lsl #6
	str r3, [sp, #56]
	ldr r6, [sp, #88]
	add r3, r4, r3
	rsb r4, r6, r6, lsl #4
	ldr r6, [sp, #92]
	add r3, r3, r4, lsl #3
	ldr r5, [sp, #96]
	mvn r4, #38
	mla r3, r6, r4, r3
	mov r6, #49
	add r4, r5, r5, lsl #1
	ldr r5, [sp, #104]
	lsl r4, r4, #1
	rsb r4, r4, #0
	add r3, r3, r4
	mov r4, #94
	mla r3, r5, r4, r3
	usat r3, #7, r3
	rsb r4, r3, r3, lsl #7
	ldr r3, [sp, #16]
	ldr r5, [sp, #264]
	add r3, r3, r4
	ldr r4, [sp, #36]
	mla r5, r5, r7, r4
	mov r7, #50
	ldr r4, [sp, #32]
	rsb r4, r4, #0
	add r4, r5, r4
	ldr r5, [sp, #224]
	mla r4, r5, r6, r4
	ldr r5, [sp, #260]
	mla r4, r5, r7, r4
	mov r7, #125
	ldr r5, [sp, #220]
	add r5, r5, r5, lsl #3
	add r4, r4, r5, lsl #3
	ldr r5, [sp, #216]
	mla r4, r5, r0, r4
	ldr r5, [sp, #272]
	ldr r6, [sp, #256]
	lsl r5, r5, #1
	rsb r5, r5, #0
	add r4, r4, r5
	add r5, r6, r6, lsl #1
	add r6, r4, r5, lsl #2
	ldr r5, [sp, #252]
	mla r8, r5, r7, r6
	mul r4, r5, r7
	ldr r6, [sp, #60]
	mvn r5, #116
	mla r8, r6, r5, r8
	ldr r6, [sp, #72]
	add r6, r6, r6, lsl #6
	rsb r6, r6, #0
	add r8, r8, r6
	ldr r6, [sp, #268]
	mla r8, r6, r7, r8
	mov r7, #110
	ldr r6, [sp, #248]
	mla r7, r6, r7, r8
	ldr r6, [sp, #244]
	sub r6, r6, r6, lsl #5
	add r8, r7, r6
	mvn r7, #122
	ldr r6, [sp, #240]
	mla r8, r6, r7, r8
	mov r7, #83
	ldr r6, [sp, #236]
	mla r7, r6, r7, r8
	ldr r6, [sp, #232]
	mov r8, #122
	mla r7, r6, r8, r7
	ldr r6, [sp, #76]
	mov r8, #11
	mla r8, r6, r8, r7
	mvn r7, #22
	ldr r6, [sp, #80]
	mla r7, r6, r7, r8
	ldr r6, [sp, #84]
	mvn r8, #46
	mla r7, r6, r8, r7
	ldr r6, [sp, #88]
	lsl r6, r6, #5
	rsb r6, r6, #0
	add r7, r7, r6
	ldr r6, [sp, #92]
	mla r6, r6, r5, r7
	ldr r5, [sp, #96]
	mov r7, #95
	mla r6, r5, r7, r6
	ldr r5, [sp, #104]
	mov r7, #118
	mla r5, r5, r7, r6
	mvn r7, #105
	usat r5, #7, r5
	mla r3, r5, r7, r3
	mov r7, #82
	str r3, [sp, #0]
	ldr r5, [sp, #264]
	add r3, r4, r5, lsl #3
	mov r4, #101
	ldr r5, [sp, #228]
	mla r3, r5, r7, r3
	mvn r7, #103
	ldr r5, [sp, #224]
	mla r3, r5, r7, r3
	mvn r7, #69
	ldr r5, [sp, #260]
	mla r3, r5, r4, r3
	mvn r4, #115
	ldr r5, [sp, #220]
	mla r3, r5, r4, r3
	ldr r5, [sp, #216]
	sub r4, r5, r5, lsl #6
	mov r5, #75
	add r3, r3, r4
	ldr r4, [sp, #52]
	ldr r6, [sp, #256]
	rsb r4, r4, #0
	add r3, r3, r4
	mla r3, r6, r7, r3
	mvn r7, #113
	ldr r6, [sp, #60]
	mla r3, r6, r5, r3
	mov r5, #59
	ldr r6, [sp, #72]
	add r4, r6, r6, lsl #5
	ldr r6, [sp, #64]
	add r3, r3, r4, lsl #1
	add r4, r6, r6, lsl #1
	ldr r6, [sp, #268]
	lsl r4, r4, #5
	rsb r4, r4, #0
	add r3, r3, r4
	mvn r4, #100
	mla r3, r6, r4, r3
	ldr r6, [sp, #248]
	mla r3, r6, r7, r3
	mov r7, #81
	ldr r6, [sp, #244]
	mla r3, r6, r5, r3
	ldr r6, [sp, #240]
	add r5, r6, r6, lsl #1
	add r3, r3, r5, lsl #2
	str r5, [sp, #48]
	ldr r6, [sp, #236]
	add r4, r6, r6, lsl #2
	ldr r6, [sp, #232]
	add r3, r3, r4
	mvn r4, #94
	mla r3, r6, r4, r3
	mov r4, #116
	ldr r6, [sp, #76]
	mla r3, r6, r4, r3
	ldr r6, [sp, #80]
	mvn r4, #92
	mla r3, r6, r4, r3
	ldr r6, [sp, #84]
	rsb r4, r6, r6, lsl #4
	ldr r6, [sp, #88]
	add r3, r3, r4
	mov r4, #79
	mla r3, r6, r4, r3
	ldr r6, [sp, #92]
	ldr r5, [sp, #96]
	add r4, r6, r6, lsl #1
	mov r6, #49
	add r3, r3, r4
	mla r3, r5, r6, r3
	ldr r5, [sp, #104]
	rsb r4, r5, r5, lsl #5
	lsl r4, r4, #2
	rsb r4, r4, #0
	add r3, r3, r4
	usat r3, #7, r3
	add r3, r3, r3, lsl #1
	rsb r4, r3, #0
	ldr r3, [sp, #0]
	add r3, r3, r4
	str r3, [sp, #12]
	ldr r5, [sp, #264]
	mul r3, r5, r7
	mvn r7, #73
	ldr r5, [sp, #228]
	add r4, r5, r5, lsl #4
	ldr r5, [sp, #224]
	add r3, r3, r4, lsl #2
	mvn r4, #101
	mla r3, r5, r4, r3
	mov r4, #121
	ldr r5, [sp, #260]
	mla r3, r5, r7, r3
	mov r7, #55
	ldr r5, [sp, #220]
	mla r3, r5, r4, r3
	mov r4, #101
	ldr r5, [sp, #216]
	rsb r5, r5, r5, lsl #4
	rsb r6, r5, #0
	str r5, [sp, #20]
	add r3, r3, r6
	str r6, [sp, #44]
	ldr r5, [sp, #68]
	ldr r6, [sp, #256]
	mla r3, r5, r7, r3
	mvn r7, #12
	ldr r5, [sp, #252]
	mla r3, r6, r4, r3
	ldr r6, [sp, #60]
	mla r3, r5, r7, r3
	rsb r4, r6, r6, lsl #5
	mov r7, #38
	lsl r4, r4, #1
	rsb r5, r4, #0
	add r3, r3, r5
	str r5, [sp, #40]
	mvn r5, #20
	ldr r6, [sp, #72]
	add r4, r3, r6, lsl #6
	ldr r6, [sp, #64]
	mov r3, #114
	mla r4, r6, r3, r4
	ldr r6, [sp, #268]
	mla r4, r6, r7, r4
	mov r7, #82
	ldr r6, [sp, #248]
	mla r4, r6, r5, r4
	ldr r6, [sp, #244]
	rsb r5, r6, r6, lsl #3
	ldr r6, [sp, #240]
	add r4, r4, r5, lsl #4
	mvn r5, #49
	mla r3, r6, r3, r4
	ldr r6, [sp, #236]
	rsb r4, r6, r6, lsl #3
	add r3, r3, r4, lsl #4
	str r4, [sp, #24]
	ldr r6, [sp, #232]
	add r4, r6, r6, lsl #2
	ldr r6, [sp, #76]
	lsl r4, r4, #1
	rsb r4, r4, #0
	add r3, r3, r4
	lsl r4, r6, #4
	ldr r6, [sp, #80]
	rsb r4, r4, #0
	add r3, r3, r4
	mla r3, r6, r5, r3
	ldr r6, [sp, #84]
	rsb r4, r6, r6, lsl #3
	ldr r6, [sp, #88]
	lsl r4, r4, #4
	rsb r4, r4, #0
	add r3, r3, r4
	mvn r4, #115
	mla r3, r6, r4, r3
	ldr r6, [sp, #92]
	mvn r4, #53
	ldr r5, [sp, #96]
	mla r3, r6, r4, r3
	mla r3, r5, r7, r3
	mvn r7, #76
	ldr r5, [sp, #104]
	add r4, r5, r5, lsl #3
	lsl r4, r4, #3
	rsb r4, r4, #0
	add r3, r3, r4
	usat r4, #7, r3
	ldr r3, [sp, #12]
	ldr r5, [sp, #264]
	add r3, r3, r4, lsl #5
	rsb r4, r5, r5, lsl #4
	ldr r5, [sp, #228]
	mla r4, r5, r7, r4
	mvn r7, #89
	ldr r5, [sp, #224]
	add r5, r5, r5, lsl #5
	add r4, r4, r5, lsl #1
	ldr r5, [sp, #260]
	mla r4, r5, r7, r4
	mov r7, #81
	ldr r5, [sp, #220]
	lsl r5, r5, #1
	str r5, [sp, #8]
	ldr r5, [sp, #220]
	add r5, r5, r5, lsl #1
	lsl r5, r5, #1
	rsb r5, r5, #0
	add r4, r4, r5
	ldr r5, [sp, #20]
	lsl r5, r5, #1
	rsb r5, r5, #0
	add r4, r4, r5
	ldr r5, [sp, #68]
	ldr r6, [sp, #256]
	lsl r5, r5, #3
	rsb r5, r5, #0
	add r4, r4, r5
	ldr r5, [sp, #252]
	mla r4, r6, r7, r4
	ldr r6, [sp, #60]
	mov r7, #52
	add r4, r4, r5, lsl #1
	mvn r5, #109
	mla r5, r6, r5, r4
	mvn r4, #94
	ldr r6, [sp, #72]
	mla r4, r6, r4, r5
	mov r5, #59
	ldr r6, [sp, #64]
	mla r4, r6, r5, r4
	ldr r6, [sp, #268]
	mla r4, r6, r7, r4
	mov r7, #55
	ldr r6, [sp, #248]
	rsb r5, r6, r6, lsl #4
	ldr r6, [sp, #244]
	add r4, r4, r5
	mla r4, r6, r7, r4
	mov r7, #67
	ldr r6, [sp, #240]
	add r5, r6, r6, lsl #5
	rsb r5, r5, #0
	add r5, r4, r5
	ldr r4, [sp, #24]
	ldr r6, [sp, #232]
	add r4, r5, r4, lsl #1
	mov r5, #58
	mla r4, r6, r5, r4
	mov r5, #86
	ldr r6, [sp, #76]
	mla r4, r6, r7, r4
	mvn r7, #12
	ldr r6, [sp, #80]
	mla r4, r6, r5, r4
	ldr r6, [sp, #84]
	mvn r5, #78
	mla r4, r6, r5, r4
	ldr r6, [sp, #88]
	add r5, r6, r6, lsl #1
	ldr r6, [sp, #92]
	add r4, r4, r5, lsl #4
	ldr r5, [sp, #96]
	mla r4, r6, r7, r4
	mov r7, #82
	sub r5, r5, r5, lsl #4
	add r4, r4, r5
	ldr r5, [sp, #104]
	add r5, r5, r5, lsl #5
	add r4, r4, r5, lsl #1
	usat r5, #7, r4
	mvn r4, #94
	mla r4, r5, r4, r3
	ldr r5, [sp, #228]
	ldr r3, [sp, #56]
	mla r3, r5, r7, r3
	mov r7, #67
	ldr r5, [sp, #264]
	add r5, r5, r5, lsl #5
	add r3, r3, r5
	ldr r5, [sp, #224]
	mla r3, r5, r7, r3
	mvn r7, #12
	ldr r5, [sp, #260]
	rsb r5, r5, r5, lsl #4
	add r3, r3, r5, lsl #1
	ldr r5, [sp, #8]
	rsb r5, r5, #0
	add r3, r3, r5
	ldr r5, [sp, #216]
	add r5, r5, r5, lsl #6
	add r3, r3, r5
	ldr r5, [sp, #272]
	ldr r6, [sp, #256]
	add r3, r3, r5, lsl #3
	ldr r5, [sp, #252]
	mla r6, r6, r7, r3
	mov r7, #104
	add r3, r5, r5, lsl #3
	add r5, r6, r3, lsl #1
	ldr r6, [sp, #60]
	add r6, r6, r6, lsl #2
	add r5, r5, r6
	ldr r6, [sp, #72]
	mla r5, r6, r7, r5
	ldr r6, [sp, #64]
	mvn r7, #118
	mla r5, r6, r7, r5
	mov r7, #71
	ldr r6, [sp, #268]
	sub r6, r6, r6, lsl #3
	add r5, r5, r6
	str r6, [sp, #28]
	ldr r6, [sp, #248]
	mla r5, r6, r7, r5
	ldr r6, [sp, #244]
	mov r7, #107
	mla r6, r6, r7, r5
	mov r7, #82
	ldr r5, [sp, #48]
	add r5, r6, r5, lsl #3
	ldr r6, [sp, #236]
	mla r5, r6, r7, r5
	mvn r7, #103
	ldr r6, [sp, #232]
	add r6, r6, r6, lsl #1
	lsl r6, r6, #5
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #76]
	mla r7, r6, r7, r5
	mvn r5, #120
	ldr r6, [sp, #80]
	mla r5, r6, r5, r7
	ldr r6, [sp, #88]
	mov r7, #97
	mla r5, r6, r7, r5
	mov r7, #83
	ldr r6, [sp, #92]
	mla r6, r6, r7, r5
	mvn r7, #83
	ldr r5, [sp, #96]
	mla r6, r5, r2, r6
	ldr r5, [sp, #104]
	mla r5, r5, r7, r6
	mvn r7, #69
	usat r6, #7, r5
	mvn r5, #49
	mla r4, r6, r5, r4
	ldr r5, [sp, #224]
	ldr r6, [sp, #44]
	mla r6, r5, r7, r6
	mvn r7, #28
	ldr r5, [sp, #40]
	add r6, r5, r6
	ldr r5, [sp, #264]
	mla r6, r5, r7, r6
	mov r7, #38
	ldr r5, [sp, #228]
	rsb r5, r5, r5, lsl #3
	add r6, r6, r5
	ldr r5, [sp, #260]
	mla r6, r5, r7, r6
	mvn r7, #89
	ldr r5, [sp, #220]
	mla r6, r5, r7, r6
	ldr r5, [sp, #68]
	lsl r5, r5, #5
	rsb r5, r5, #0
	add r7, r6, r5
	ldr r6, [sp, #256]
	mov r5, #37
	mla r6, r6, r5, r7
	mvn r7, #124
	add r3, r6, r3, lsl #2
	ldr r6, [sp, #72]
	mla r3, r6, r7, r3
	ldr r6, [sp, #64]
	mvn r7, #45
	mla r3, r6, r7, r3
	mvn r7, #69
	ldr r6, [sp, #268]
	mla r3, r6, r7, r3
	mvn r7, #72
	ldr r6, [sp, #248]
	mla r3, r6, r5, r3
	ldr r6, [sp, #244]
	mla r3, r6, r7, r3
	mvn r7, #86
	ldr r6, [sp, #212]
	rsb r6, r6, #0
	add r3, r3, r6
	ldr r6, [sp, #236]
	mla r7, r6, r7, r3
	mvn r3, #74
	ldr r6, [sp, #232]
	mla r3, r6, r3, r7
	mov r7, #71
	ldr r6, [sp, #76]
	mla r3, r6, r7, r3
	mvn r7, #76
	ldr r6, [sp, #80]
	mla r3, r6, r7, r3
	ldr r6, [sp, #84]
	mov r7, #53
	mla r3, r6, r7, r3
	mvn r7, #102
	ldr r6, [sp, #88]
	mla r3, r6, r5, r3
	ldr r6, [sp, #92]
	ldr r5, [sp, #96]
	mla r3, r6, r7, r3
	mvn r7, #12
	mla r3, r5, r7, r3
	mvn r7, #113
	ldr r5, [sp, #104]
	mla r3, r5, r7, r3
	ldr r5, [sp, #264]
	mvn r7, #22
	ldr r6, [sp, #28]
	usat r3, #7, r3
	mla r3, r3, r7, r4
	mov r7, #67
	mla r4, r5, r7, r6
	mvn r7, #122
	ldr r5, [sp, #228]
	mov r6, #42
	mla r4, r5, r6, r4
	ldr r5, [sp, #224]
	mov r6, #41
	mla r4, r5, r6, r4
	mvn r6, #91
	ldr r5, [sp, #260]
	mla r4, r5, r7, r4
	mvn r7, #76
	ldr r5, [sp, #220]
	mla r4, r5, r6, r4
	ldr r5, [sp, #216]
	add r5, r5, r5, lsl #2
	add r4, r4, r5, lsl #1
	ldr r5, [sp, #68]
	ldr r6, [sp, #256]
	mla r4, r5, r7, r4
	mvn r7, #73
	mov r5, #75
	mla r4, r6, r5, r4
	ldr r5, [sp, #252]
	ldr r6, [sp, #60]
	add r5, r5, r5, lsl #1
	add r4, r4, r5, lsl #5
	mvn r5, #50
	mla r4, r6, r5, r4
	ldr r6, [sp, #72]
	mov r5, #109
	mla r4, r6, r5, r4
	mvn r5, #121
	ldr r6, [sp, #64]
	mla r4, r6, r7, r4
	mov r7, #67
	ldr r6, [sp, #248]
	mla r4, r6, r5, r4
	mvn r5, #120
	ldr r6, [sp, #244]
	mla r4, r6, r7, r4
	mov r7, #38
	ldr r6, [sp, #240]
	mla r1, r6, r1, r4
	ldr r6, [sp, #236]
	mov r4, #22
	mla r1, r6, r4, r1
	ldr r6, [sp, #232]
	add r4, r6, r6, lsl #4
	ldr r6, [sp, #76]
	lsl r4, r4, #2
	rsb r4, r4, #0
	add r1, r1, r4
	mov r4, #29
	mla r1, r6, r7, r1
	ldr r6, [sp, #80]
	mla r1, r6, r4, r1
	ldr r6, [sp, #84]
	mov r4, #115
	mla r1, r6, r4, r1
	ldr r6, [sp, #88]
	mla r1, r6, r5, r1
	ldr r6, [sp, #92]
	ldr r5, [sp, #96]
	add r4, r6, r6, lsl #3
	add r1, r1, r4, lsl #2
	mvn r4, #48
	mla r1, r5, r4, r1
	ldr r5, [sp, #104]
	mla r0, r5, r0, r1
	usat r0, #7, r0
	mla r4, r0, r2, r3
	mov r0, #0
	cmp r4, #0
	movwgt r0, #1
	rsb r0, r0, #100
	bl putch
	mov r0, #111
	cmp r4, #0
	movgt r0, #97
	bl putch
	mov r0, #103
	cmp r4, #0
	movgt r0, #116
	bl putch
	mov r0, #10
	bl putch
	ldr r0, [sp, #100]
	subs r0, r0, #1
	ble label14
	str r0, [sp, #100]
	add r4, sp, #112
	mov r5, #0
	mov r7, #0
	mov r6, r4
	b label7
label14:
	mov r0, #0
	add sp, sp, #280
	pop { r4, r5, r6, r7, r8, pc }
