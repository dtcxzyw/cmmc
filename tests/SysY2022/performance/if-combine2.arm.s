.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #780
	add r10, sp, #372
	str r10, [sp, #364]
	mov r0, #324
	bl _sysy_starttime
	bl getint
	mov r2, r0
	str r0, [sp, #336]
	ldr r10, [sp, #364]
	add r10, r10, #4
	str r10, [sp, #332]
	ldr r10, [sp, #364]
	add r10, r10, #8
	str r10, [sp, #144]
	ldr r10, [sp, #364]
	add r10, r10, #12
	str r10, [sp, #148]
	ldr r10, [sp, #364]
	add r10, r10, #16
	str r10, [sp, #152]
	ldr r10, [sp, #364]
	add r10, r10, #20
	str r10, [sp, #160]
	ldr r10, [sp, #364]
	add r10, r10, #24
	str r10, [sp, #164]
	ldr r10, [sp, #364]
	add r10, r10, #28
	str r10, [sp, #168]
	ldr r10, [sp, #364]
	add r10, r10, #32
	str r10, [sp, #172]
	ldr r10, [sp, #364]
	add r10, r10, #36
	str r10, [sp, #344]
	ldr r10, [sp, #364]
	add r10, r10, #40
	str r10, [sp, #352]
	ldr r10, [sp, #364]
	add r10, r10, #44
	str r10, [sp, #360]
	ldr r10, [sp, #364]
	add r10, r10, #48
	str r10, [sp, #368]
	ldr r10, [sp, #364]
	add r10, r10, #52
	str r10, [sp, #0]
	ldr r10, [sp, #364]
	add r10, r10, #56
	str r10, [sp, #4]
	ldr r10, [sp, #364]
	add r10, r10, #60
	str r10, [sp, #8]
	ldr r10, [sp, #364]
	add r10, r10, #64
	str r10, [sp, #12]
	ldr r10, [sp, #364]
	add r10, r10, #68
	str r10, [sp, #16]
	ldr r10, [sp, #364]
	add r10, r10, #72
	str r10, [sp, #20]
	ldr r10, [sp, #364]
	add r10, r10, #76
	str r10, [sp, #24]
	ldr r10, [sp, #364]
	add r10, r10, #80
	str r10, [sp, #32]
	ldr r10, [sp, #364]
	add r10, r10, #84
	str r10, [sp, #40]
	ldr r10, [sp, #364]
	add r10, r10, #88
	str r10, [sp, #48]
	ldr r10, [sp, #364]
	add r10, r10, #92
	str r10, [sp, #28]
	ldr r10, [sp, #364]
	add r10, r10, #96
	str r10, [sp, #36]
	ldr r10, [sp, #364]
	add r10, r10, #100
	str r10, [sp, #44]
	ldr r10, [sp, #364]
	add r10, r10, #104
	str r10, [sp, #52]
	ldr r10, [sp, #364]
	add r10, r10, #108
	str r10, [sp, #56]
	ldr r10, [sp, #364]
	add r10, r10, #112
	str r10, [sp, #180]
	ldr r10, [sp, #364]
	add r10, r10, #116
	str r10, [sp, #188]
	ldr r10, [sp, #364]
	add r10, r10, #120
	str r10, [sp, #196]
	ldr r10, [sp, #364]
	add r10, r10, #124
	str r10, [sp, #204]
	ldr r10, [sp, #364]
	add r10, r10, #128
	str r10, [sp, #212]
	ldr r10, [sp, #364]
	add r10, r10, #132
	str r10, [sp, #220]
	ldr r10, [sp, #364]
	add r10, r10, #136
	str r10, [sp, #228]
	ldr r10, [sp, #364]
	add r10, r10, #140
	str r10, [sp, #236]
	ldr r10, [sp, #364]
	add r10, r10, #144
	str r10, [sp, #244]
	ldr r10, [sp, #364]
	add r10, r10, #148
	str r10, [sp, #324]
	ldr r10, [sp, #364]
	add r10, r10, #152
	str r10, [sp, #316]
	ldr r10, [sp, #364]
	add r10, r10, #156
	str r10, [sp, #308]
	ldr r10, [sp, #364]
	add r10, r10, #160
	str r10, [sp, #300]
	ldr r10, [sp, #364]
	add r10, r10, #164
	str r10, [sp, #292]
	ldr r10, [sp, #364]
	add r10, r10, #168
	str r10, [sp, #284]
	ldr r10, [sp, #364]
	add r10, r10, #172
	str r10, [sp, #276]
	ldr r10, [sp, #364]
	add r10, r10, #176
	str r10, [sp, #272]
	ldr r10, [sp, #364]
	add r10, r10, #180
	str r10, [sp, #268]
	ldr r10, [sp, #364]
	add r10, r10, #184
	str r10, [sp, #264]
	ldr r10, [sp, #364]
	add r10, r10, #188
	str r10, [sp, #260]
	ldr r10, [sp, #364]
	add r10, r10, #192
	str r10, [sp, #256]
	ldr r10, [sp, #364]
	add r10, r10, #196
	str r10, [sp, #252]
	ldr r10, [sp, #364]
	add r10, r10, #200
	str r10, [sp, #772]
	ldr r10, [sp, #364]
	add r3, r10, #204
	ldr r10, [sp, #364]
	add r4, r10, #208
	ldr r10, [sp, #364]
	add r5, r10, #212
	ldr r10, [sp, #364]
	add r6, r10, #216
	ldr r10, [sp, #364]
	add r7, r10, #220
	ldr r10, [sp, #364]
	add r8, r10, #224
	ldr r10, [sp, #364]
	add r9, r10, #228
	ldr r10, [sp, #364]
	add r10, r10, #232
	str r10, [sp, #60]
	ldr r10, [sp, #364]
	add r10, r10, #236
	str r10, [sp, #64]
	ldr r10, [sp, #364]
	add r10, r10, #240
	str r10, [sp, #68]
	ldr r10, [sp, #364]
	add r10, r10, #244
	str r10, [sp, #72]
	ldr r10, [sp, #364]
	add r10, r10, #248
	str r10, [sp, #76]
	ldr r10, [sp, #364]
	add r10, r10, #252
	str r10, [sp, #80]
	ldr r10, [sp, #364]
	add r10, r10, #256
	str r10, [sp, #84]
	ldr r10, [sp, #364]
	add r10, r10, #260
	str r10, [sp, #88]
	ldr r10, [sp, #364]
	add r10, r10, #264
	str r10, [sp, #92]
	ldr r10, [sp, #364]
	add r10, r10, #268
	str r10, [sp, #96]
	ldr r10, [sp, #364]
	add r10, r10, #272
	str r10, [sp, #100]
	ldr r10, [sp, #364]
	add r10, r10, #276
	str r10, [sp, #104]
	ldr r10, [sp, #364]
	add r10, r10, #280
	str r10, [sp, #108]
	ldr r10, [sp, #364]
	add r10, r10, #284
	str r10, [sp, #112]
	ldr r10, [sp, #364]
	add r10, r10, #288
	str r10, [sp, #116]
	ldr r10, [sp, #364]
	add r10, r10, #292
	str r10, [sp, #280]
	ldr r10, [sp, #364]
	add r10, r10, #296
	str r10, [sp, #288]
	ldr r10, [sp, #364]
	add r10, r10, #300
	str r10, [sp, #296]
	ldr r10, [sp, #364]
	add r10, r10, #304
	str r10, [sp, #304]
	ldr r10, [sp, #364]
	add r10, r10, #308
	str r10, [sp, #312]
	ldr r10, [sp, #364]
	add r10, r10, #312
	str r10, [sp, #320]
	ldr r10, [sp, #364]
	add r10, r10, #316
	str r10, [sp, #328]
	ldr r10, [sp, #364]
	add r10, r10, #320
	str r10, [sp, #248]
	ldr r10, [sp, #364]
	add r10, r10, #324
	str r10, [sp, #240]
	ldr r10, [sp, #364]
	add r10, r10, #328
	str r10, [sp, #232]
	ldr r10, [sp, #364]
	add r10, r10, #332
	str r10, [sp, #224]
	ldr r10, [sp, #364]
	add r10, r10, #336
	str r10, [sp, #216]
	ldr r10, [sp, #364]
	add r10, r10, #340
	str r10, [sp, #208]
	ldr r10, [sp, #364]
	add r10, r10, #344
	str r10, [sp, #200]
	ldr r10, [sp, #364]
	add r10, r10, #348
	str r10, [sp, #192]
	ldr r10, [sp, #364]
	add r10, r10, #352
	str r10, [sp, #184]
	ldr r10, [sp, #364]
	add r10, r10, #356
	str r10, [sp, #176]
	ldr r10, [sp, #364]
	add r10, r10, #360
	str r10, [sp, #120]
	ldr r10, [sp, #364]
	add r10, r10, #364
	str r10, [sp, #124]
	ldr r10, [sp, #364]
	add r10, r10, #368
	str r10, [sp, #128]
	ldr r10, [sp, #364]
	add r10, r10, #372
	str r10, [sp, #156]
	ldr r10, [sp, #364]
	add r10, r10, #376
	str r10, [sp, #132]
	ldr r10, [sp, #364]
	add r10, r10, #380
	str r10, [sp, #136]
	ldr r10, [sp, #364]
	add r10, r10, #384
	str r10, [sp, #140]
	ldr r10, [sp, #364]
	add r10, r10, #388
	str r10, [sp, #340]
	ldr r10, [sp, #364]
	add r10, r10, #392
	str r10, [sp, #348]
	ldr r10, [sp, #364]
	add r10, r10, #396
	str r10, [sp, #356]
	mov r0, #0
	cmp r0, #100
	bge label118
	mov r1, #0
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	b label413
label118:
	mov r0, #0
	mov r1, r0
	ldr r2, [sp, #336]
	cmp r0, r2
	bge label13
label8:
	mov r2, #1
	ldr r10, [sp, #332]
	str r2, [r10, #0]
	mov r2, #2
	ldr r10, [sp, #144]
	str r2, [r10, #0]
	mov r2, #3
	ldr r10, [sp, #148]
	str r2, [r10, #0]
	mov r2, #4
	ldr r10, [sp, #152]
	str r2, [r10, #0]
	mov r2, #5
	ldr r10, [sp, #160]
	str r2, [r10, #0]
	mov r2, #6
	ldr r10, [sp, #164]
	str r2, [r10, #0]
	mov r2, #7
	ldr r10, [sp, #168]
	str r2, [r10, #0]
	mov r2, #8
	ldr r10, [sp, #172]
	str r2, [r10, #0]
	mov r2, #9
	ldr r10, [sp, #344]
	str r2, [r10, #0]
	mov r2, #10
	ldr r10, [sp, #352]
	str r2, [r10, #0]
	mov r2, #11
	ldr r10, [sp, #360]
	str r2, [r10, #0]
	mov r2, #12
	ldr r10, [sp, #368]
	str r2, [r10, #0]
	mov r2, #13
	ldr r10, [sp, #0]
	str r2, [r10, #0]
	mov r2, #14
	ldr r10, [sp, #4]
	str r2, [r10, #0]
	mov r2, #15
	ldr r10, [sp, #8]
	str r2, [r10, #0]
	mov r2, #16
	ldr r10, [sp, #12]
	str r2, [r10, #0]
	mov r2, #17
	ldr r10, [sp, #16]
	str r2, [r10, #0]
	mov r2, #18
	ldr r10, [sp, #20]
	str r2, [r10, #0]
	mov r2, #19
	ldr r10, [sp, #24]
	str r2, [r10, #0]
	mov r2, #20
	ldr r10, [sp, #32]
	str r2, [r10, #0]
	mov r2, #21
	ldr r10, [sp, #40]
	str r2, [r10, #0]
	mov r2, #22
	ldr r10, [sp, #48]
	str r2, [r10, #0]
	mov r2, #23
	ldr r10, [sp, #28]
	str r2, [r10, #0]
	mov r2, #24
	ldr r10, [sp, #36]
	str r2, [r10, #0]
	mov r2, #25
	ldr r10, [sp, #44]
	str r2, [r10, #0]
	mov r2, #26
	ldr r10, [sp, #52]
	str r2, [r10, #0]
	mov r2, #27
	ldr r10, [sp, #56]
	str r2, [r10, #0]
	mov r2, #28
	ldr r10, [sp, #180]
	str r2, [r10, #0]
	mov r2, #29
	ldr r10, [sp, #188]
	str r2, [r10, #0]
	mov r2, #30
	ldr r10, [sp, #196]
	str r2, [r10, #0]
	mov r2, #31
	ldr r10, [sp, #204]
	str r2, [r10, #0]
	mov r2, #32
	ldr r10, [sp, #212]
	str r2, [r10, #0]
	mov r2, #33
	ldr r10, [sp, #220]
	str r2, [r10, #0]
	mov r2, #34
	ldr r10, [sp, #228]
	str r2, [r10, #0]
	mov r2, #35
	ldr r10, [sp, #236]
	str r2, [r10, #0]
	mov r2, #36
	ldr r10, [sp, #244]
	str r2, [r10, #0]
	mov r2, #37
	ldr r10, [sp, #324]
	str r2, [r10, #0]
	mov r2, #38
	ldr r10, [sp, #316]
	str r2, [r10, #0]
	mov r2, #39
	ldr r10, [sp, #308]
	str r2, [r10, #0]
	mov r2, #40
	ldr r10, [sp, #300]
	str r2, [r10, #0]
	mov r2, #41
	ldr r10, [sp, #292]
	str r2, [r10, #0]
	mov r2, #42
	ldr r10, [sp, #284]
	str r2, [r10, #0]
	mov r2, #43
	ldr r10, [sp, #276]
	str r2, [r10, #0]
	mov r2, #44
	ldr r10, [sp, #272]
	str r2, [r10, #0]
	mov r2, #45
	ldr r10, [sp, #268]
	str r2, [r10, #0]
	mov r2, #46
	ldr r10, [sp, #264]
	str r2, [r10, #0]
	mov r2, #47
	ldr r10, [sp, #260]
	str r2, [r10, #0]
	mov r2, #48
	ldr r10, [sp, #256]
	str r2, [r10, #0]
	mov r2, #49
	ldr r10, [sp, #252]
	str r2, [r10, #0]
	mov r2, #50
	ldr r10, [sp, #772]
	str r2, [r10, #0]
	mov r2, #51
	str r2, [r3, #0]
	mov r2, #52
	str r2, [r4, #0]
	mov r2, #53
	str r2, [r5, #0]
	mov r2, #54
	str r2, [r6, #0]
	mov r2, #55
	str r2, [r7, #0]
	mov r2, #56
	str r2, [r8, #0]
	mov r2, #57
	str r2, [r9, #0]
	mov r2, #58
	ldr r10, [sp, #60]
	str r2, [r10, #0]
	mov r2, #59
	ldr r10, [sp, #64]
	str r2, [r10, #0]
	mov r2, #60
	ldr r10, [sp, #68]
	str r2, [r10, #0]
	mov r2, #61
	ldr r10, [sp, #72]
	str r2, [r10, #0]
	mov r2, #62
	ldr r10, [sp, #76]
	str r2, [r10, #0]
	mov r2, #63
	ldr r10, [sp, #80]
	str r2, [r10, #0]
	mov r2, #64
	ldr r10, [sp, #84]
	str r2, [r10, #0]
	mov r2, #65
	ldr r10, [sp, #88]
	str r2, [r10, #0]
	mov r2, #66
	ldr r10, [sp, #92]
	str r2, [r10, #0]
	mov r2, #67
	ldr r10, [sp, #96]
	str r2, [r10, #0]
	mov r2, #68
	ldr r10, [sp, #100]
	str r2, [r10, #0]
	mov r2, #69
	ldr r10, [sp, #104]
	str r2, [r10, #0]
	mov r2, #70
	ldr r10, [sp, #108]
	str r2, [r10, #0]
	mov r2, #71
	ldr r10, [sp, #112]
	str r2, [r10, #0]
	mov r2, #72
	ldr r10, [sp, #116]
	str r2, [r10, #0]
	mov r2, #73
	ldr r10, [sp, #280]
	str r2, [r10, #0]
	mov r2, #74
	ldr r10, [sp, #288]
	str r2, [r10, #0]
	mov r2, #75
	ldr r10, [sp, #296]
	str r2, [r10, #0]
	mov r2, #76
	ldr r10, [sp, #304]
	str r2, [r10, #0]
	mov r2, #77
	ldr r10, [sp, #312]
	str r2, [r10, #0]
	mov r2, #78
	ldr r10, [sp, #320]
	str r2, [r10, #0]
	mov r2, #79
	ldr r10, [sp, #328]
	str r2, [r10, #0]
	mov r2, #80
	ldr r10, [sp, #248]
	str r2, [r10, #0]
	mov r2, #81
	ldr r10, [sp, #240]
	str r2, [r10, #0]
	mov r2, #82
	ldr r10, [sp, #232]
	str r2, [r10, #0]
	mov r2, #83
	ldr r10, [sp, #224]
	str r2, [r10, #0]
	mov r2, #84
	ldr r10, [sp, #216]
	str r2, [r10, #0]
	mov r2, #85
	ldr r10, [sp, #208]
	str r2, [r10, #0]
	mov r2, #86
	ldr r10, [sp, #200]
	str r2, [r10, #0]
	mov r2, #87
	ldr r10, [sp, #192]
	str r2, [r10, #0]
	mov r2, #88
	ldr r10, [sp, #184]
	str r2, [r10, #0]
	mov r2, #89
	ldr r10, [sp, #176]
	str r2, [r10, #0]
	mov r2, #90
	ldr r10, [sp, #120]
	str r2, [r10, #0]
	mov r2, #91
	ldr r10, [sp, #124]
	str r2, [r10, #0]
	mov r2, #92
	ldr r10, [sp, #128]
	str r2, [r10, #0]
	mov r2, #93
	ldr r10, [sp, #156]
	str r2, [r10, #0]
	mov r2, #94
	ldr r10, [sp, #132]
	str r2, [r10, #0]
	mov r2, #95
	ldr r10, [sp, #136]
	str r2, [r10, #0]
	mov r2, #96
	ldr r10, [sp, #140]
	str r2, [r10, #0]
	mov r2, #97
	ldr r10, [sp, #340]
	str r2, [r10, #0]
	mov r2, #98
	ldr r10, [sp, #348]
	str r2, [r10, #0]
	mov r2, #99
	ldr r10, [sp, #356]
	str r2, [r10, #0]
	add r1, r1, #1
	mov r2, #0
label9:
	ldr r10, [sp, #364]
	add r11, r10, r2, lsl #2
	ldr r10, [sp, #364]
	ldr r10, [r10, r2, lsl #2]
	add r0, r0, r10
	ldr r10, [r11, #4]
	add r0, r0, r10
	ldr r10, [r11, #8]
	add r0, r0, r10
	ldr r10, [r11, #12]
	add r0, r0, r10
	ldr r10, [r11, #16]
	add r0, r0, r10
	ldr r10, [r11, #20]
	add r0, r0, r10
	ldr r10, [r11, #24]
	add r0, r0, r10
	ldr r10, [r11, #28]
	add r0, r0, r10
	ldr r10, [r11, #32]
	add r0, r0, r10
	ldr r10, [r11, #36]
	add r0, r0, r10
	ldr r10, [r11, #40]
	add r0, r0, r10
	ldr r10, [r11, #44]
	add r0, r0, r10
	ldr r10, [r11, #48]
	add r0, r0, r10
	ldr r10, [r11, #52]
	add r0, r0, r10
	ldr r10, [r11, #56]
	add r0, r0, r10
	ldr r10, [r11, #60]
	add r0, r0, r10
	add r2, r2, #16
	cmp r2, #96
	bge label12
	b label9
label12:
	ldr r10, [sp, #364]
	add r11, r10, r2, lsl #2
	ldr r10, [sp, #364]
	ldr r2, [r10, r2, lsl #2]
	ldr r10, [r11, #4]
	add r0, r0, r2
	add r0, r0, r10
	ldr r2, [r11, #8]
	add r0, r0, r2
	ldr r2, [r11, #12]
	add r0, r0, r2
	movw r2, #32769
	movt r2, #32768
	smmla r2, r0, r2, r0
	asr r10, r2, #15
	add r2, r10, r2, lsr #31
	movw r10, #65535
	mul r2, r2, r10
	sub r0, r0, r2
	ldr r2, [sp, #336]
	cmp r1, r2
	bge label13
	b label8
label413:
	mov r1, #0
	ldr r10, [sp, #364]
	str r1, [r10, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	b label413
label13:
	bl putint
	mov r0, #10
	bl putch
	mov r0, #328
	bl _sysy_stoptime
	mov r0, #0
	add sp, sp, #780
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
