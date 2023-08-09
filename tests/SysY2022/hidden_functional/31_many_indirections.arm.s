.arch armv7ve
.data
.bss
.align 8
array:
	.zero	8000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r3, #2
	mov r2, #1
	mov r5, #0
	movw r1, #:lower16:array
	movt r1, #:upper16:array
	mov r4, r5
	mov r0, r1
.p2align 4
label2:
	str r4, [r0, #0]
	mov r6, #3
	add r5, r5, #1
	str r2, [r0, #4]
	cmp r5, #20
	str r3, [r0, #8]
	str r6, [r0, #12]
	mov r6, #4
	str r6, [r0, #16]
	mov r6, #5
	str r6, [r0, #20]
	mov r6, #6
	str r6, [r0, #24]
	mov r6, #7
	str r6, [r0, #28]
	mov r6, #8
	str r6, [r0, #32]
	mov r6, #9
	str r6, [r0, #36]
	mov r6, #10
	str r6, [r0, #40]
	mov r6, #11
	str r6, [r0, #44]
	mov r6, #12
	str r6, [r0, #48]
	mov r6, #13
	str r6, [r0, #52]
	mov r6, #14
	str r6, [r0, #56]
	mov r6, #15
	str r6, [r0, #60]
	mov r6, #16
	str r6, [r0, #64]
	mov r6, #17
	str r6, [r0, #68]
	mov r6, #18
	str r6, [r0, #72]
	mov r6, #19
	str r6, [r0, #76]
	mov r6, #20
	str r6, [r0, #80]
	mov r6, #21
	str r6, [r0, #84]
	mov r6, #22
	str r6, [r0, #88]
	mov r6, #23
	str r6, [r0, #92]
	mov r6, #24
	str r6, [r0, #96]
	mov r6, #25
	str r6, [r0, #100]
	mov r6, #26
	str r6, [r0, #104]
	mov r6, #27
	str r6, [r0, #108]
	mov r6, #28
	str r6, [r0, #112]
	mov r6, #29
	str r6, [r0, #116]
	mov r6, #30
	str r6, [r0, #120]
	mov r6, #31
	str r6, [r0, #124]
	mov r6, #32
	str r6, [r0, #128]
	mov r6, #33
	str r6, [r0, #132]
	mov r6, #34
	str r6, [r0, #136]
	mov r6, #35
	str r6, [r0, #140]
	mov r6, #36
	str r6, [r0, #144]
	mov r6, #37
	str r6, [r0, #148]
	mov r6, #38
	str r6, [r0, #152]
	mov r6, #39
	str r6, [r0, #156]
	mov r6, #40
	str r6, [r0, #160]
	mov r6, #41
	str r6, [r0, #164]
	mov r6, #42
	str r6, [r0, #168]
	mov r6, #43
	str r6, [r0, #172]
	mov r6, #44
	str r6, [r0, #176]
	mov r6, #45
	str r6, [r0, #180]
	mov r6, #46
	str r6, [r0, #184]
	mov r6, #47
	str r6, [r0, #188]
	mov r6, #48
	str r6, [r0, #192]
	mov r6, #49
	str r6, [r0, #196]
	mov r6, #50
	str r6, [r0, #200]
	mov r6, #51
	str r6, [r0, #204]
	mov r6, #52
	str r6, [r0, #208]
	mov r6, #53
	str r6, [r0, #212]
	mov r6, #54
	str r6, [r0, #216]
	mov r6, #55
	str r6, [r0, #220]
	mov r6, #56
	str r6, [r0, #224]
	mov r6, #57
	str r6, [r0, #228]
	mov r6, #58
	str r6, [r0, #232]
	mov r6, #59
	str r6, [r0, #236]
	mov r6, #60
	str r6, [r0, #240]
	mov r6, #61
	str r6, [r0, #244]
	mov r6, #62
	str r6, [r0, #248]
	mov r6, #63
	str r6, [r0, #252]
	mov r6, #64
	str r6, [r0, #256]
	mov r6, #65
	str r6, [r0, #260]
	mov r6, #66
	str r6, [r0, #264]
	mov r6, #67
	str r6, [r0, #268]
	mov r6, #68
	str r6, [r0, #272]
	mov r6, #69
	str r6, [r0, #276]
	mov r6, #70
	str r6, [r0, #280]
	mov r6, #71
	str r6, [r0, #284]
	mov r6, #72
	str r6, [r0, #288]
	mov r6, #73
	str r6, [r0, #292]
	mov r6, #74
	str r6, [r0, #296]
	mov r6, #75
	str r6, [r0, #300]
	mov r6, #76
	str r6, [r0, #304]
	mov r6, #77
	str r6, [r0, #308]
	mov r6, #78
	str r6, [r0, #312]
	mov r6, #79
	str r6, [r0, #316]
	mov r6, #80
	str r6, [r0, #320]
	mov r6, #81
	str r6, [r0, #324]
	mov r6, #82
	str r6, [r0, #328]
	mov r6, #83
	str r6, [r0, #332]
	mov r6, #84
	str r6, [r0, #336]
	mov r6, #85
	str r6, [r0, #340]
	mov r6, #86
	str r6, [r0, #344]
	mov r6, #87
	str r6, [r0, #348]
	mov r6, #88
	str r6, [r0, #352]
	mov r6, #89
	str r6, [r0, #356]
	mov r6, #90
	str r6, [r0, #360]
	mov r6, #91
	str r6, [r0, #364]
	mov r6, #92
	str r6, [r0, #368]
	mov r6, #93
	str r6, [r0, #372]
	mov r6, #94
	str r6, [r0, #376]
	mov r6, #95
	str r6, [r0, #380]
	mov r6, #96
	str r6, [r0, #384]
	mov r6, #97
	str r6, [r0, #388]
	mov r6, #98
	str r6, [r0, #392]
	mov r6, #99
	str r6, [r0, #396]
	bge label6
	add r0, r0, #400
	b label2
label6:
	add r0, r1, #3600
	add r3, r0, #3600
	ldr r2, [r0, #4092]
	ldr r2, [r3, r2, lsl #2]
	add r3, r0, #3200
	ldr r2, [r3, r2, lsl #2]
	add r3, r0, #2800
	ldr r2, [r3, r2, lsl #2]
	add r3, r0, #2400
	ldr r2, [r3, r2, lsl #2]
	add r3, r0, #2000
	ldr r2, [r3, r2, lsl #2]
	add r3, r0, #1600
	ldr r2, [r3, r2, lsl #2]
	add r3, r0, #1200
	ldr r2, [r3, r2, lsl #2]
	add r3, r0, #800
	ldr r2, [r3, r2, lsl #2]
	add r3, r0, #400
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #400
	ldr r2, [r0, r2, lsl #2]
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #800
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #1200
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #1600
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #2000
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #2400
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #2800
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #3200
	ldr r2, [r3, r2, lsl #2]
	sub r3, r0, #3600
	ldr r2, [r3, r2, lsl #2]
	ldr r3, [r0, #4072]
	mov r0, #400
	mla r3, r3, r0, r1
	ldr r3, [r3, #68]
	mla r3, r3, r0, r1
	ldr r3, [r3, #64]
	mla r3, r3, r0, r1
	ldr r3, [r3, #60]
	mla r3, r3, r0, r1
	ldr r3, [r3, #56]
	mla r3, r3, r0, r1
	ldr r3, [r3, #52]
	mla r3, r3, r0, r1
	ldr r3, [r3, #48]
	mla r3, r3, r0, r1
	ldr r3, [r3, #44]
	mla r3, r3, r0, r1
	ldr r3, [r3, #40]
	mla r3, r3, r0, r1
	ldr r3, [r3, #36]
	mla r3, r3, r0, r1
	ldr r3, [r3, #32]
	mla r3, r3, r0, r1
	ldr r3, [r3, #28]
	mla r3, r3, r0, r1
	ldr r3, [r3, #24]
	mla r3, r3, r0, r1
	ldr r3, [r3, #20]
	mla r3, r3, r0, r1
	ldr r3, [r3, #16]
	mla r3, r3, r0, r1
	ldr r3, [r3, #12]
	mla r3, r3, r0, r1
	ldr r3, [r3, #8]
	mla r3, r3, r0, r1
	ldr r3, [r3, #4]
	mul r3, r3, r0
	ldr r3, [r1, r3]
	mla r0, r3, r0, r1
	ldr r0, [r0, #224]
	add r0, r2, r0
	bl putint
	mov r0, r4
	pop { r4, r5, r6, pc }
