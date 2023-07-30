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
	sub sp, sp, #284
	bl getint
	str r0, [sp, #164]
	cmp r0, #0
	ble label11
label17:
	mov r4, #0
	cmp r4, #5
	bge label10
.p2align 4
label6:
	add r0, r4, r4, lsl #2
	add r1, sp, #176
	mov r6, #0
	add r5, r1, r0, lsl #2
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
	ldr r6, [sp, #176]
	mov r0, #85
	mov r2, #23
	mvn r7, #102
	mvn r8, #122
	mvn r3, #110
	mvn r9, #124
	str r6, [sp, #8]
	mul r1, r6, r0
	ldr r6, [sp, #180]
	mla r1, r6, r2, r1
	str r6, [sp, #44]
	mvn r2, #81
	ldr r6, [sp, #184]
	mla r1, r6, r2, r1
	str r6, [sp, #48]
	ldr r6, [sp, #188]
	mla r1, r6, r7, r1
	str r6, [sp, #12]
	ldr r6, [sp, #192]
	mla r1, r6, r8, r1
	str r6, [sp, #52]
	mov r8, #50
	ldr r6, [sp, #196]
	add r1, r1, r6, lsl #6
	str r6, [sp, #56]
	ldr r6, [sp, #200]
	str r6, [sp, #108]
	lsl r6, r6, #4
	str r6, [sp, #160]
	ldr r6, [sp, #108]
	rsb r6, r6, r6, lsl #4
	lsl r2, r6, #3
	str r6, [sp, #0]
	rsb r2, r2, #0
	ldr r7, [sp, #204]
	add r1, r1, r2
	mvn r2, #58
	mla r1, r7, r8, r1
	str r7, [sp, #16]
	mvn r8, #105
	ldr r6, [sp, #208]
	mla r2, r6, r2, r1
	str r6, [sp, #20]
	mov r1, #47
	ldr r7, [sp, #212]
	mla r2, r7, r1, r2
	str r7, [sp, #132]
	ldr r7, [sp, #216]
	mla r2, r7, r3, r2
	str r7, [sp, #100]
	mvn r3, #66
	ldr r7, [sp, #220]
	mla r2, r7, r3, r2
	mul r5, r7, r3
	str r7, [sp, #124]
	str r5, [sp, #72]
	mvn r5, #38
	ldr r7, [sp, #224]
	mla r2, r7, r8, r2
	str r7, [sp, #4]
	mvn r8, #74
	ldr r7, [sp, #228]
	mla r2, r7, r8, r2
	str r7, [sp, #24]
	mvn r8, #101
	ldr r7, [sp, #232]
	mla r2, r7, r8, r2
	str r7, [sp, #28]
	ldr r7, [sp, #236]
	add r3, r7, r7, lsl #4
	str r7, [sp, #32]
	add r2, r2, r3, lsl #1
	lsl r8, r3, #1
	str r8, [sp, #60]
	mov r8, #110
	ldr r7, [sp, #240]
	mla r2, r7, r5, r2
	str r7, [sp, #36]
	ldr r7, [sp, #244]
	add r3, r7, r7, lsl #6
	str r7, [sp, #40]
	ldr r7, [sp, #248]
	add r2, r2, r3
	mov r3, #113
	mla r2, r7, r1, r2
	str r7, [sp, #92]
	ldr r7, [sp, #252]
	mla r2, r7, r3, r2
	str r7, [sp, #84]
	ldr r7, [sp, #256]
	mla r2, r7, r8, r2
	str r7, [sp, #76]
	mvn r8, #105
	ldr r7, [sp, #260]
	mla r3, r7, r1, r2
	str r7, [sp, #68]
	ldr r2, [sp, #264]
	lsl r4, r2, #2
	rsb r4, r4, #0
	add r4, r3, r4
	ldr r3, [sp, #268]
	ldr r6, [sp, #272]
	add r5, r3, r3, lsl #2
	str r6, [sp, #116]
	add r5, r4, r5, lsl #4
	mov r4, #46
	mla r5, r6, r4, r5
	mov r6, #39
	usat r5, #7, r5
	mul r6, r5, r6
	str r6, [sp, #136]
	ldr r6, [sp, #8]
	mul r5, r6, r8
	mov r8, #67
	ldr r6, [sp, #44]
	rsb r6, r6, r6, lsl #6
	add r5, r5, r6, lsl #1
	str r6, [sp, #80]
	ldr r6, [sp, #48]
	add r6, r6, r6, lsl #3
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #12]
	sub r6, r6, r6, lsl #5
	add r5, r5, r6
	ldr r6, [sp, #52]
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #56]
	mla r5, r6, r1, r5
	ldr r6, [sp, #108]
	ldr r7, [sp, #16]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #20]
	mla r5, r7, r8, r5
	mvn r8, #20
	mvn r7, #93
	mla r5, r6, r7, r5
	mvn r6, #120
	ldr r7, [sp, #132]
	mla r5, r7, r6, r5
	ldr r7, [sp, #100]
	rsb r6, r7, r7, lsl #3
	ldr r7, [sp, #124]
	add r5, r5, r6
	mla r5, r7, r8, r5
	mov r8, #29
	ldr r7, [sp, #4]
	rsb r6, r7, r7, lsl #4
	ldr r7, [sp, #24]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	mvn r6, #42
	mla r5, r7, r6, r5
	ldr r7, [sp, #28]
	mov r6, #105
	mla r5, r7, r6, r5
	ldr r7, [sp, #32]
	mvn r6, #41
	mla r5, r7, r6, r5
	ldr r7, [sp, #36]
	mov r6, #87
	mla r5, r7, r6, r5
	ldr r7, [sp, #40]
	mla r5, r7, r8, r5
	mvn r8, #105
	ldr r7, [sp, #92]
	mla r5, r7, r8, r5
	mvn r8, #74
	ldr r7, [sp, #84]
	sub r6, r7, r7, lsl #5
	ldr r7, [sp, #76]
	add r5, r5, r6
	mvn r6, #109
	mla r5, r7, r6, r5
	ldr r7, [sp, #68]
	mvn r6, #99
	mla r5, r7, r6, r5
	mov r7, #77
	mvn r6, #21
	mla r5, r2, r6, r5
	ldr r6, [sp, #116]
	mla r5, r3, r8, r5
	mvn r8, #69
	mla r5, r6, r9, r5
	ldr r6, [sp, #136]
	usat r5, #7, r5
	mla r5, r5, r7, r6
	mov r7, #76
	str r5, [sp, #112]
	ldr r6, [sp, #8]
	mov r5, #26
	mul r5, r6, r5
	ldr r6, [sp, #44]
	mla r5, r6, r7, r5
	ldr r6, [sp, #48]
	mla r5, r6, r8, r5
	mov r8, #29
	ldr r6, [sp, #12]
	mla r7, r6, r8, r5
	mov r8, #52
	mvn r5, #94
	ldr r6, [sp, #52]
	mla r5, r6, r5, r7
	ldr r6, [sp, #56]
	add r6, r6, r6, lsl #1
	add r5, r5, r6, lsl #5
	ldr r6, [sp, #108]
	ldr r7, [sp, #16]
	mla r5, r6, r8, r5
	mov r8, #110
	add r6, r7, r7, lsl #4
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #20]
	ldr r7, [sp, #132]
	add r6, r6, r6, lsl #2
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #4
	ldr r7, [sp, #100]
	add r5, r5, r6, lsl #1
	add r6, r7, r7, lsl #4
	ldr r7, [sp, #124]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	mov r6, #102
	mla r5, r7, r6, r5
	ldr r7, [sp, #4]
	add r6, r7, r7, lsl #1
	ldr r7, [sp, #24]
	add r5, r5, r6, lsl #1
	mvn r6, #37
	mla r5, r7, r6, r5
	ldr r7, [sp, #28]
	mov r6, #27
	mla r5, r7, r6, r5
	ldr r7, [sp, #32]
	mla r6, r7, r8, r5
	mvn r8, #22
	mov r5, #116
	ldr r7, [sp, #36]
	mla r5, r7, r5, r6
	mov r6, #39
	ldr r7, [sp, #40]
	mla r5, r7, r6, r5
	ldr r7, [sp, #92]
	sub r6, r7, r7, lsl #6
	ldr r7, [sp, #84]
	add r5, r5, r6
	mvn r6, #98
	mla r5, r7, r6, r5
	ldr r7, [sp, #76]
	add r7, r7, r7, lsl #6
	add r5, r5, r7
	str r7, [sp, #168]
	ldr r7, [sp, #68]
	rsb r6, r7, r7, lsl #4
	mov r7, #94
	add r6, r5, r6, lsl #3
	mvn r5, #38
	mla r5, r2, r5, r6
	add r6, r3, r3, lsl #1
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #116]
	mla r5, r6, r7, r5
	usat r5, #7, r5
	rsb r6, r5, r5, lsl #7
	ldr r5, [sp, #112]
	add r7, r5, r6
	str r7, [sp, #172]
	mov r7, #49
	ldr r6, [sp, #8]
	ldr r5, [sp, #72]
	mla r5, r6, r8, r5
	mov r8, #50
	ldr r6, [sp, #80]
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #48]
	mla r5, r6, r7, r5
	ldr r6, [sp, #12]
	mla r5, r6, r8, r5
	mov r8, #125
	ldr r6, [sp, #52]
	add r6, r6, r6, lsl #3
	add r5, r5, r6, lsl #3
	ldr r6, [sp, #56]
	mla r5, r6, r0, r5
	ldr r6, [sp, #0]
	ldr r7, [sp, #16]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	add r6, r7, r7, lsl #1
	add r7, r5, r6, lsl #2
	ldr r6, [sp, #20]
	mla r9, r6, r8, r7
	mul r5, r6, r8
	ldr r7, [sp, #132]
	mvn r6, #116
	mla r9, r7, r6, r9
	ldr r7, [sp, #100]
	add r7, r7, r7, lsl #6
	rsb r7, r7, #0
	add r9, r9, r7
	ldr r7, [sp, #4]
	mla r9, r7, r8, r9
	mov r8, #110
	ldr r7, [sp, #24]
	mla r8, r7, r8, r9
	ldr r7, [sp, #28]
	sub r7, r7, r7, lsl #5
	add r9, r8, r7
	mvn r8, #122
	ldr r7, [sp, #32]
	mla r8, r7, r8, r9
	mov r9, #83
	ldr r7, [sp, #36]
	mla r8, r7, r9, r8
	ldr r7, [sp, #40]
	mov r9, #122
	mla r8, r7, r9, r8
	ldr r7, [sp, #92]
	mov r9, #11
	mla r9, r7, r9, r8
	mvn r8, #22
	ldr r7, [sp, #84]
	mla r8, r7, r8, r9
	ldr r7, [sp, #76]
	mvn r9, #46
	mla r8, r7, r9, r8
	mov r9, #71
	ldr r7, [sp, #68]
	lsl r7, r7, #5
	rsb r7, r7, #0
	add r7, r8, r7
	mov r8, #118
	mla r6, r2, r6, r7
	mov r7, #95
	mla r7, r3, r7, r6
	ldr r6, [sp, #116]
	mla r6, r6, r8, r7
	ldr r7, [sp, #172]
	mvn r8, #105
	usat r6, #7, r6
	mla r6, r6, r8, r7
	mov r8, #82
	str r6, [sp, #140]
	ldr r6, [sp, #8]
	add r5, r5, r6, lsl #3
	ldr r6, [sp, #44]
	mla r5, r6, r8, r5
	mvn r8, #103
	ldr r6, [sp, #48]
	mla r5, r6, r8, r5
	mov r8, #101
	ldr r6, [sp, #12]
	mla r5, r6, r8, r5
	mvn r8, #115
	ldr r6, [sp, #52]
	mla r5, r6, r8, r5
	mvn r8, #69
	ldr r6, [sp, #56]
	sub r6, r6, r6, lsl #6
	add r5, r5, r6
	ldr r6, [sp, #160]
	ldr r7, [sp, #16]
	rsb r6, r6, #0
	add r5, r5, r6
	mla r5, r7, r8, r5
	mov r8, #75
	ldr r7, [sp, #132]
	mla r5, r7, r8, r5
	mvn r8, #113
	ldr r7, [sp, #100]
	add r6, r7, r7, lsl #5
	ldr r7, [sp, #124]
	add r5, r5, r6, lsl #1
	add r6, r7, r7, lsl #1
	ldr r7, [sp, #4]
	lsl r6, r6, #5
	rsb r6, r6, #0
	add r5, r5, r6
	mvn r6, #100
	mla r5, r7, r6, r5
	mov r6, #59
	ldr r7, [sp, #24]
	mla r5, r7, r8, r5
	mov r8, #81
	ldr r7, [sp, #28]
	mla r5, r7, r6, r5
	ldr r7, [sp, #32]
	add r6, r7, r7, lsl #1
	add r5, r5, r6, lsl #2
	str r6, [sp, #156]
	ldr r7, [sp, #36]
	add r6, r7, r7, lsl #2
	ldr r7, [sp, #40]
	add r6, r5, r6
	mvn r5, #94
	mla r6, r7, r5, r6
	mov r5, #116
	ldr r7, [sp, #92]
	mla r5, r7, r5, r6
	ldr r7, [sp, #84]
	mvn r6, #92
	mla r5, r7, r6, r5
	ldr r7, [sp, #76]
	rsb r6, r7, r7, lsl #4
	ldr r7, [sp, #68]
	add r5, r5, r6
	mov r6, #79
	mla r5, r7, r6, r5
	mov r7, #49
	add r6, r2, r2, lsl #1
	add r5, r5, r6
	ldr r6, [sp, #116]
	mla r5, r3, r7, r5
	mov r7, #121
	rsb r6, r6, r6, lsl #5
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #140]
	usat r5, #7, r5
	add r5, r5, r5, lsl #1
	rsb r5, r5, #0
	add r5, r6, r5
	str r5, [sp, #120]
	ldr r6, [sp, #8]
	mul r5, r6, r8
	mvn r8, #101
	ldr r6, [sp, #44]
	add r6, r6, r6, lsl #4
	add r5, r5, r6, lsl #2
	ldr r6, [sp, #48]
	mla r5, r6, r8, r5
	mvn r8, #73
	ldr r6, [sp, #12]
	mla r5, r6, r8, r5
	mov r8, #55
	ldr r6, [sp, #52]
	mla r5, r6, r7, r5
	ldr r6, [sp, #56]
	rsb r6, r6, r6, lsl #4
	rsb r7, r6, #0
	str r6, [sp, #104]
	add r5, r5, r7
	str r7, [sp, #152]
	ldr r6, [sp, #108]
	ldr r7, [sp, #16]
	mla r5, r6, r8, r5
	ldr r6, [sp, #20]
	mov r8, #101
	mla r5, r7, r8, r5
	ldr r7, [sp, #132]
	mvn r8, #12
	mla r5, r6, r8, r5
	mov r8, #38
	rsb r6, r7, r7, lsl #5
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	str r6, [sp, #64]
	ldr r7, [sp, #100]
	add r6, r5, r7, lsl #6
	ldr r7, [sp, #124]
	mov r5, #114
	mla r6, r7, r5, r6
	ldr r7, [sp, #4]
	mla r6, r7, r8, r6
	mvn r8, #20
	ldr r7, [sp, #24]
	mla r6, r7, r8, r6
	mvn r8, #115
	ldr r7, [sp, #28]
	rsb r7, r7, r7, lsl #3
	add r6, r6, r7, lsl #4
	ldr r7, [sp, #32]
	mla r5, r7, r5, r6
	ldr r7, [sp, #36]
	rsb r6, r7, r7, lsl #3
	add r5, r5, r6, lsl #4
	str r6, [sp, #96]
	ldr r7, [sp, #40]
	add r6, r7, r7, lsl #2
	ldr r7, [sp, #92]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	lsl r6, r7, #4
	ldr r7, [sp, #84]
	rsb r6, r6, #0
	add r5, r5, r6
	mvn r6, #49
	mla r5, r7, r6, r5
	ldr r7, [sp, #76]
	rsb r6, r7, r7, lsl #3
	ldr r7, [sp, #68]
	lsl r6, r6, #4
	rsb r6, r6, #0
	add r5, r5, r6
	mvn r6, #53
	mla r5, r7, r8, r5
	mov r8, #82
	mla r5, r2, r6, r5
	ldr r6, [sp, #116]
	mla r5, r3, r8, r5
	mvn r8, #76
	add r6, r6, r6, lsl #3
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	usat r6, #7, r5
	ldr r5, [sp, #120]
	add r7, r5, r6, lsl #5
	str r7, [sp, #144]
	ldr r6, [sp, #8]
	rsb r5, r6, r6, lsl #4
	ldr r6, [sp, #44]
	mla r5, r6, r8, r5
	mvn r8, #89
	ldr r6, [sp, #48]
	add r6, r6, r6, lsl #5
	add r5, r5, r6, lsl #1
	ldr r6, [sp, #12]
	mla r5, r6, r8, r5
	mov r8, #81
	ldr r6, [sp, #52]
	lsl r7, r6, #1
	add r6, r6, r6, lsl #1
	str r7, [sp, #128]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #104]
	lsl r6, r6, #1
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #108]
	ldr r7, [sp, #16]
	lsl r6, r6, #3
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #20]
	mla r5, r7, r8, r5
	mov r8, #52
	ldr r7, [sp, #132]
	add r5, r5, r6, lsl #1
	mvn r6, #109
	mla r6, r7, r6, r5
	mvn r5, #94
	ldr r7, [sp, #100]
	mla r5, r7, r5, r6
	mov r6, #59
	ldr r7, [sp, #124]
	mla r5, r7, r6, r5
	ldr r7, [sp, #4]
	mla r5, r7, r8, r5
	mov r8, #55
	ldr r7, [sp, #24]
	rsb r6, r7, r7, lsl #4
	ldr r7, [sp, #28]
	add r5, r5, r6
	mla r5, r7, r8, r5
	mov r8, #67
	ldr r7, [sp, #32]
	add r6, r7, r7, lsl #5
	rsb r6, r6, #0
	add r5, r5, r6
	ldr r6, [sp, #96]
	ldr r7, [sp, #40]
	add r5, r5, r6, lsl #1
	mov r6, #58
	mla r5, r7, r6, r5
	mov r6, #86
	ldr r7, [sp, #92]
	mla r5, r7, r8, r5
	mvn r8, #12
	ldr r7, [sp, #84]
	mla r5, r7, r6, r5
	ldr r7, [sp, #76]
	mvn r6, #78
	mla r5, r7, r6, r5
	ldr r7, [sp, #68]
	add r6, r7, r7, lsl #1
	add r5, r5, r6, lsl #4
	sub r6, r3, r3, lsl #4
	mla r5, r2, r8, r5
	mov r8, #82
	add r5, r5, r6
	ldr r6, [sp, #116]
	ldr r7, [sp, #144]
	add r6, r6, r6, lsl #5
	add r5, r5, r6, lsl #1
	usat r6, #7, r5
	mvn r5, #94
	mla r5, r6, r5, r7
	ldr r6, [sp, #44]
	ldr r7, [sp, #168]
	mla r7, r6, r8, r7
	mov r8, #67
	ldr r6, [sp, #8]
	add r6, r6, r6, lsl #5
	add r7, r7, r6
	ldr r6, [sp, #48]
	mla r7, r6, r8, r7
	mvn r8, #12
	ldr r6, [sp, #12]
	rsb r6, r6, r6, lsl #4
	add r6, r7, r6, lsl #1
	ldr r7, [sp, #128]
	rsb r7, r7, #0
	add r7, r6, r7
	ldr r6, [sp, #56]
	add r6, r6, r6, lsl #6
	add r7, r7, r6
	ldr r6, [sp, #0]
	add r6, r7, r6, lsl #3
	ldr r7, [sp, #16]
	mla r7, r7, r8, r6
	ldr r6, [sp, #20]
	add r8, r6, r6, lsl #3
	add r6, r7, r8, lsl #1
	str r8, [sp, #148]
	mov r8, #104
	ldr r7, [sp, #132]
	add r7, r7, r7, lsl #2
	add r6, r6, r7
	ldr r7, [sp, #100]
	mla r6, r7, r8, r6
	ldr r7, [sp, #124]
	mvn r8, #118
	mla r6, r7, r8, r6
	mov r8, #107
	ldr r7, [sp, #4]
	sub r7, r7, r7, lsl #3
	add r6, r6, r7
	str r7, [sp, #88]
	ldr r7, [sp, #24]
	mla r6, r7, r9, r6
	mov r9, #83
	ldr r7, [sp, #28]
	mla r7, r7, r8, r6
	mov r8, #82
	ldr r6, [sp, #156]
	add r6, r7, r6, lsl #3
	ldr r7, [sp, #36]
	mla r6, r7, r8, r6
	mvn r8, #103
	ldr r7, [sp, #40]
	add r7, r7, r7, lsl #1
	lsl r7, r7, #5
	rsb r7, r7, #0
	add r6, r6, r7
	ldr r7, [sp, #92]
	mla r8, r7, r8, r6
	mvn r6, #120
	ldr r7, [sp, #84]
	mla r6, r7, r6, r8
	mov r8, #97
	ldr r7, [sp, #68]
	mla r6, r7, r8, r6
	mvn r8, #83
	mla r6, r2, r9, r6
	mvn r9, #124
	mla r7, r3, r4, r6
	ldr r6, [sp, #116]
	mla r6, r6, r8, r7
	mvn r8, #69
	usat r7, #7, r6
	mvn r6, #49
	mla r5, r7, r6, r5
	ldr r6, [sp, #48]
	ldr r7, [sp, #152]
	mla r7, r6, r8, r7
	mvn r8, #28
	ldr r6, [sp, #64]
	add r7, r6, r7
	ldr r6, [sp, #8]
	mla r7, r6, r8, r7
	mov r8, #38
	ldr r6, [sp, #44]
	rsb r6, r6, r6, lsl #3
	add r7, r7, r6
	ldr r6, [sp, #12]
	mla r7, r6, r8, r7
	mvn r8, #89
	ldr r6, [sp, #52]
	mla r7, r6, r8, r7
	ldr r6, [sp, #108]
	lsl r6, r6, #5
	rsb r6, r6, #0
	add r8, r7, r6
	ldr r7, [sp, #16]
	mov r6, #37
	mla r7, r7, r6, r8
	ldr r8, [sp, #148]
	add r8, r7, r8, lsl #2
	ldr r7, [sp, #100]
	mla r8, r7, r9, r8
	ldr r7, [sp, #124]
	mvn r9, #45
	mla r9, r7, r9, r8
	mvn r8, #69
	ldr r7, [sp, #4]
	mla r8, r7, r8, r9
	mvn r9, #72
	ldr r7, [sp, #24]
	mla r8, r7, r6, r8
	ldr r7, [sp, #28]
	mla r7, r7, r9, r8
	mvn r9, #86
	ldr r8, [sp, #60]
	rsb r8, r8, #0
	add r8, r7, r8
	ldr r7, [sp, #36]
	mla r9, r7, r9, r8
	mvn r8, #74
	ldr r7, [sp, #40]
	mla r8, r7, r8, r9
	mov r9, #71
	ldr r7, [sp, #92]
	mla r9, r7, r9, r8
	mvn r8, #76
	ldr r7, [sp, #84]
	mla r8, r7, r8, r9
	ldr r7, [sp, #76]
	mov r9, #53
	mla r8, r7, r9, r8
	ldr r7, [sp, #68]
	mla r6, r7, r6, r8
	mvn r8, #12
	mvn r7, #102
	mla r6, r2, r7, r6
	add r2, r2, r2, lsl #3
	mla r7, r3, r8, r6
	mvn r8, #113
	ldr r6, [sp, #116]
	mla r6, r6, r8, r7
	mvn r8, #22
	usat r6, #7, r6
	mla r5, r6, r8, r5
	mov r8, #67
	ldr r6, [sp, #8]
	ldr r7, [sp, #88]
	mla r7, r6, r8, r7
	ldr r6, [sp, #44]
	mov r8, #42
	mla r7, r6, r8, r7
	ldr r6, [sp, #48]
	mov r8, #41
	mla r7, r6, r8, r7
	mvn r8, #122
	ldr r6, [sp, #12]
	mla r7, r6, r8, r7
	ldr r6, [sp, #52]
	mvn r8, #91
	mla r7, r6, r8, r7
	mvn r8, #76
	ldr r6, [sp, #56]
	add r6, r6, r6, lsl #2
	add r7, r7, r6, lsl #1
	ldr r6, [sp, #108]
	mla r6, r6, r8, r7
	mov r8, #75
	ldr r7, [sp, #16]
	mla r7, r7, r8, r6
	mvn r8, #50
	ldr r6, [sp, #20]
	add r6, r6, r6, lsl #1
	add r6, r7, r6, lsl #5
	ldr r7, [sp, #132]
	mla r6, r7, r8, r6
	ldr r7, [sp, #100]
	mov r8, #109
	mla r6, r7, r8, r6
	mvn r8, #73
	ldr r7, [sp, #124]
	mla r6, r7, r8, r6
	ldr r7, [sp, #24]
	mvn r8, #121
	mla r6, r7, r8, r6
	mov r8, #67
	ldr r7, [sp, #28]
	mla r6, r7, r8, r6
	mov r8, #38
	ldr r7, [sp, #32]
	mla r1, r7, r1, r6
	ldr r7, [sp, #36]
	mov r6, #22
	mla r1, r7, r6, r1
	ldr r7, [sp, #40]
	add r6, r7, r7, lsl #4
	ldr r7, [sp, #92]
	lsl r6, r6, #2
	rsb r6, r6, #0
	add r1, r1, r6
	mov r6, #115
	mla r1, r7, r8, r1
	mov r8, #29
	ldr r7, [sp, #84]
	mla r1, r7, r8, r1
	ldr r7, [sp, #76]
	mla r1, r7, r6, r1
	mvn r6, #120
	ldr r7, [sp, #68]
	mla r1, r7, r6, r1
	ldr r6, [sp, #116]
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
	mov r8, #97
	mov r0, #111
	cmp r4, #0
	movgt r0, r8
	bl putch
	mov r5, #116
	mov r0, #103
	cmp r4, #0
	movgt r0, r5
	bl putch
	mov r0, #10
	bl putch
	ldr r0, [sp, #164]
	subs r0, r0, #1
	str r0, [sp, #164]
	bgt label17
label11:
	mov r0, #0
	add sp, sp, #284
	pop { r4, r5, r6, r7, r8, r9, pc }
