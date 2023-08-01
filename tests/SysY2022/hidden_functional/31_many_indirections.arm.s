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
	push { lr }
	mov r2, #0
	movw r1, #:lower16:array
	sub sp, sp, #4
	movt r1, #:upper16:array
.p2align 4
label2:
	mov r0, #400
	mov r3, #0
	mla r0, r2, r0, r1
	add r2, r2, #1
	cmp r2, #20
	str r3, [r0, #0]
	mov r3, #1
	str r3, [r0, #4]
	mov r3, #2
	str r3, [r0, #8]
	mov r3, #3
	str r3, [r0, #12]
	mov r3, #4
	str r3, [r0, #16]
	mov r3, #5
	str r3, [r0, #20]
	mov r3, #6
	str r3, [r0, #24]
	mov r3, #7
	str r3, [r0, #28]
	mov r3, #8
	str r3, [r0, #32]
	mov r3, #9
	str r3, [r0, #36]
	mov r3, #10
	str r3, [r0, #40]
	mov r3, #11
	str r3, [r0, #44]
	mov r3, #12
	str r3, [r0, #48]
	mov r3, #13
	str r3, [r0, #52]
	mov r3, #14
	str r3, [r0, #56]
	mov r3, #15
	str r3, [r0, #60]
	mov r3, #16
	str r3, [r0, #64]
	mov r3, #17
	str r3, [r0, #68]
	mov r3, #18
	str r3, [r0, #72]
	mov r3, #19
	str r3, [r0, #76]
	mov r3, #20
	str r3, [r0, #80]
	mov r3, #21
	str r3, [r0, #84]
	mov r3, #22
	str r3, [r0, #88]
	mov r3, #23
	str r3, [r0, #92]
	mov r3, #24
	str r3, [r0, #96]
	mov r3, #25
	str r3, [r0, #100]
	mov r3, #26
	str r3, [r0, #104]
	mov r3, #27
	str r3, [r0, #108]
	mov r3, #28
	str r3, [r0, #112]
	mov r3, #29
	str r3, [r0, #116]
	mov r3, #30
	str r3, [r0, #120]
	mov r3, #31
	str r3, [r0, #124]
	mov r3, #32
	str r3, [r0, #128]
	mov r3, #33
	str r3, [r0, #132]
	mov r3, #34
	str r3, [r0, #136]
	mov r3, #35
	str r3, [r0, #140]
	mov r3, #36
	str r3, [r0, #144]
	mov r3, #37
	str r3, [r0, #148]
	mov r3, #38
	str r3, [r0, #152]
	mov r3, #39
	str r3, [r0, #156]
	mov r3, #40
	str r3, [r0, #160]
	mov r3, #41
	str r3, [r0, #164]
	mov r3, #42
	str r3, [r0, #168]
	mov r3, #43
	str r3, [r0, #172]
	mov r3, #44
	str r3, [r0, #176]
	mov r3, #45
	str r3, [r0, #180]
	mov r3, #46
	str r3, [r0, #184]
	mov r3, #47
	str r3, [r0, #188]
	mov r3, #48
	str r3, [r0, #192]
	mov r3, #49
	str r3, [r0, #196]
	mov r3, #50
	str r3, [r0, #200]
	mov r3, #51
	str r3, [r0, #204]
	mov r3, #52
	str r3, [r0, #208]
	mov r3, #53
	str r3, [r0, #212]
	mov r3, #54
	str r3, [r0, #216]
	mov r3, #55
	str r3, [r0, #220]
	mov r3, #56
	str r3, [r0, #224]
	mov r3, #57
	str r3, [r0, #228]
	mov r3, #58
	str r3, [r0, #232]
	mov r3, #59
	str r3, [r0, #236]
	mov r3, #60
	str r3, [r0, #240]
	mov r3, #61
	str r3, [r0, #244]
	mov r3, #62
	str r3, [r0, #248]
	mov r3, #63
	str r3, [r0, #252]
	mov r3, #64
	str r3, [r0, #256]
	mov r3, #65
	str r3, [r0, #260]
	mov r3, #66
	str r3, [r0, #264]
	mov r3, #67
	str r3, [r0, #268]
	mov r3, #68
	str r3, [r0, #272]
	mov r3, #69
	str r3, [r0, #276]
	mov r3, #70
	str r3, [r0, #280]
	mov r3, #71
	str r3, [r0, #284]
	mov r3, #72
	str r3, [r0, #288]
	mov r3, #73
	str r3, [r0, #292]
	mov r3, #74
	str r3, [r0, #296]
	mov r3, #75
	str r3, [r0, #300]
	mov r3, #76
	str r3, [r0, #304]
	mov r3, #77
	str r3, [r0, #308]
	mov r3, #78
	str r3, [r0, #312]
	mov r3, #79
	str r3, [r0, #316]
	mov r3, #80
	str r3, [r0, #320]
	mov r3, #81
	str r3, [r0, #324]
	mov r3, #82
	str r3, [r0, #328]
	mov r3, #83
	str r3, [r0, #332]
	mov r3, #84
	str r3, [r0, #336]
	mov r3, #85
	str r3, [r0, #340]
	mov r3, #86
	str r3, [r0, #344]
	mov r3, #87
	str r3, [r0, #348]
	mov r3, #88
	str r3, [r0, #352]
	mov r3, #89
	str r3, [r0, #356]
	mov r3, #90
	str r3, [r0, #360]
	mov r3, #91
	str r3, [r0, #364]
	mov r3, #92
	str r3, [r0, #368]
	mov r3, #93
	str r3, [r0, #372]
	mov r3, #94
	str r3, [r0, #376]
	mov r3, #95
	str r3, [r0, #380]
	mov r3, #96
	str r3, [r0, #384]
	mov r3, #97
	str r3, [r0, #388]
	mov r3, #98
	str r3, [r0, #392]
	mov r3, #99
	str r3, [r0, #396]
	blt label2
	movw r0, #7692
	movw r2, #7200
	add r0, r1, r0
	add r2, r1, r2
	ldr r0, [r0, #0]
	ldr r0, [r2, r0, lsl #2]
	movw r2, #6800
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #6400
	ldr r0, [r2, r0, lsl #2]
	movw r2, #6000
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	movw r2, #5600
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	movw r2, #5200
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #4800
	ldr r0, [r2, r0, lsl #2]
	movw r2, #4400
	add r2, r1, r2
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #4000
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #3600
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #3200
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #2800
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #2400
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #2000
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #1600
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #1200
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #800
	ldr r0, [r2, r0, lsl #2]
	add r2, r1, #400
	ldr r0, [r2, r0, lsl #2]
	movw r2, #7672
	add r2, r1, r2
	ldr r0, [r1, r0, lsl #2]
	ldr r3, [r2, #0]
	mov r2, #400
	mla r3, r3, r2, r1
	ldr r3, [r3, #68]
	mla r3, r3, r2, r1
	ldr r3, [r3, #64]
	mla r3, r3, r2, r1
	ldr r3, [r3, #60]
	mla r3, r3, r2, r1
	ldr r3, [r3, #56]
	mla r3, r3, r2, r1
	ldr r3, [r3, #52]
	mla r3, r3, r2, r1
	ldr r3, [r3, #48]
	mla r3, r3, r2, r1
	ldr r3, [r3, #44]
	mla r3, r3, r2, r1
	ldr r3, [r3, #40]
	mla r3, r3, r2, r1
	ldr r3, [r3, #36]
	mla r3, r3, r2, r1
	ldr r3, [r3, #32]
	mla r3, r3, r2, r1
	ldr r3, [r3, #28]
	mla r3, r3, r2, r1
	ldr r3, [r3, #24]
	mla r3, r3, r2, r1
	ldr r3, [r3, #20]
	mla r3, r3, r2, r1
	ldr r3, [r3, #16]
	mla r3, r3, r2, r1
	ldr r3, [r3, #12]
	mla r3, r3, r2, r1
	ldr r3, [r3, #8]
	mla r3, r3, r2, r1
	ldr r3, [r3, #4]
	mul r3, r3, r2
	ldr r3, [r1, r3]
	mla r1, r3, r2, r1
	ldr r1, [r1, #224]
	add r0, r0, r1
	bl putint
	add sp, sp, #4
	mov r0, #0
	pop { pc }
