.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #852
	add r3, sp, #156
	str r3, [sp, #564]
	mov r0, #324
	bl _sysy_starttime
	bl getint
	mov r1, r0
	str r0, [sp, #824]
	ldr r3, [sp, #564]
	add r1, r3, #4
	str r1, [sp, #820]
	ldr r3, [sp, #564]
	add r1, r3, #8
	str r1, [sp, #816]
	ldr r3, [sp, #564]
	add r1, r3, #12
	str r1, [sp, #812]
	ldr r3, [sp, #564]
	add r1, r3, #16
	str r1, [sp, #808]
	ldr r3, [sp, #564]
	add r1, r3, #20
	str r1, [sp, #804]
	ldr r3, [sp, #564]
	add r1, r3, #24
	str r1, [sp, #800]
	ldr r3, [sp, #564]
	add r1, r3, #28
	str r1, [sp, #796]
	ldr r3, [sp, #564]
	add r1, r3, #32
	str r1, [sp, #792]
	ldr r3, [sp, #564]
	add r1, r3, #36
	str r1, [sp, #828]
	ldr r3, [sp, #564]
	add r1, r3, #40
	str r1, [sp, #832]
	ldr r3, [sp, #564]
	add r1, r3, #44
	str r1, [sp, #836]
	ldr r3, [sp, #564]
	add r1, r3, #48
	str r1, [sp, #840]
	ldr r3, [sp, #564]
	add r1, r3, #52
	str r1, [sp, #0]
	ldr r3, [sp, #564]
	add r1, r3, #56
	str r1, [sp, #4]
	ldr r3, [sp, #564]
	add r1, r3, #60
	str r1, [sp, #8]
	ldr r3, [sp, #564]
	add r1, r3, #64
	str r1, [sp, #12]
	ldr r3, [sp, #564]
	add r1, r3, #68
	str r1, [sp, #16]
	ldr r3, [sp, #564]
	add r1, r3, #72
	str r1, [sp, #20]
	ldr r3, [sp, #564]
	add r1, r3, #76
	str r1, [sp, #24]
	ldr r3, [sp, #564]
	add r1, r3, #80
	str r1, [sp, #32]
	ldr r3, [sp, #564]
	add r1, r3, #84
	str r1, [sp, #40]
	ldr r3, [sp, #564]
	add r1, r3, #88
	str r1, [sp, #48]
	ldr r3, [sp, #564]
	add r1, r3, #92
	str r1, [sp, #28]
	ldr r3, [sp, #564]
	add r1, r3, #96
	str r1, [sp, #36]
	ldr r3, [sp, #564]
	add r1, r3, #100
	str r1, [sp, #44]
	ldr r3, [sp, #564]
	add r1, r3, #104
	str r1, [sp, #52]
	ldr r3, [sp, #564]
	add r1, r3, #108
	str r1, [sp, #56]
	ldr r3, [sp, #564]
	add r1, r3, #112
	str r1, [sp, #788]
	ldr r3, [sp, #564]
	add r1, r3, #116
	str r1, [sp, #784]
	ldr r3, [sp, #564]
	add r1, r3, #120
	str r1, [sp, #780]
	ldr r3, [sp, #564]
	add r1, r3, #124
	str r1, [sp, #776]
	ldr r3, [sp, #564]
	add r1, r3, #128
	str r1, [sp, #772]
	ldr r3, [sp, #564]
	add r1, r3, #132
	str r1, [sp, #768]
	ldr r3, [sp, #564]
	add r1, r3, #136
	str r1, [sp, #764]
	ldr r3, [sp, #564]
	add r1, r3, #140
	str r1, [sp, #760]
	ldr r3, [sp, #564]
	add r1, r3, #144
	str r1, [sp, #756]
	ldr r3, [sp, #564]
	add r1, r3, #148
	str r1, [sp, #748]
	ldr r3, [sp, #564]
	add r1, r3, #152
	str r1, [sp, #696]
	ldr r3, [sp, #564]
	add r1, r3, #156
	str r1, [sp, #680]
	ldr r3, [sp, #564]
	add r1, r3, #160
	str r1, [sp, #608]
	ldr r3, [sp, #564]
	add r1, r3, #164
	str r1, [sp, #616]
	ldr r3, [sp, #564]
	add r1, r3, #168
	str r1, [sp, #624]
	ldr r3, [sp, #564]
	add r1, r3, #172
	str r1, [sp, #632]
	ldr r3, [sp, #564]
	add r1, r3, #176
	str r1, [sp, #640]
	ldr r3, [sp, #564]
	add r1, r3, #180
	str r1, [sp, #644]
	ldr r3, [sp, #564]
	add r1, r3, #184
	str r1, [sp, #648]
	ldr r3, [sp, #564]
	add r1, r3, #188
	str r1, [sp, #652]
	ldr r3, [sp, #564]
	add r1, r3, #192
	str r1, [sp, #656]
	ldr r3, [sp, #564]
	add r1, r3, #196
	str r1, [sp, #660]
	ldr r3, [sp, #564]
	add r1, r3, #200
	str r1, [sp, #556]
	ldr r3, [sp, #564]
	add r1, r3, #204
	str r1, [sp, #664]
	ldr r3, [sp, #564]
	add r1, r3, #208
	str r1, [sp, #668]
	ldr r3, [sp, #564]
	add r1, r3, #212
	str r1, [sp, #672]
	ldr r3, [sp, #564]
	add r1, r3, #216
	str r1, [sp, #676]
	ldr r3, [sp, #564]
	add r1, r3, #220
	str r1, [sp, #692]
	ldr r3, [sp, #564]
	add r1, r3, #224
	str r1, [sp, #744]
	ldr r3, [sp, #564]
	add r1, r3, #228
	str r1, [sp, #740]
	ldr r3, [sp, #564]
	add r1, r3, #232
	str r1, [sp, #60]
	ldr r3, [sp, #564]
	add r1, r3, #236
	str r1, [sp, #64]
	ldr r3, [sp, #564]
	add r1, r3, #240
	str r1, [sp, #68]
	ldr r3, [sp, #564]
	add r1, r3, #244
	str r1, [sp, #72]
	ldr r3, [sp, #564]
	add r1, r3, #248
	str r1, [sp, #76]
	ldr r3, [sp, #564]
	add r1, r3, #252
	str r1, [sp, #80]
	ldr r3, [sp, #564]
	add r1, r3, #256
	str r1, [sp, #84]
	ldr r3, [sp, #564]
	add r1, r3, #260
	str r1, [sp, #88]
	ldr r3, [sp, #564]
	add r1, r3, #264
	str r1, [sp, #92]
	ldr r3, [sp, #564]
	add r1, r3, #268
	str r1, [sp, #96]
	ldr r3, [sp, #564]
	add r1, r3, #272
	str r1, [sp, #100]
	ldr r3, [sp, #564]
	add r1, r3, #276
	str r1, [sp, #104]
	ldr r3, [sp, #564]
	add r1, r3, #280
	str r1, [sp, #108]
	ldr r3, [sp, #564]
	add r1, r3, #284
	str r1, [sp, #112]
	ldr r3, [sp, #564]
	add r1, r3, #288
	str r1, [sp, #116]
	ldr r3, [sp, #564]
	add r1, r3, #292
	str r1, [sp, #636]
	ldr r3, [sp, #564]
	add r1, r3, #296
	str r1, [sp, #628]
	ldr r3, [sp, #564]
	add r1, r3, #300
	str r1, [sp, #620]
	ldr r3, [sp, #564]
	add r1, r3, #304
	str r1, [sp, #612]
	ldr r3, [sp, #564]
	add r1, r3, #308
	str r1, [sp, #684]
	ldr r3, [sp, #564]
	add r1, r3, #312
	str r1, [sp, #700]
	ldr r3, [sp, #564]
	add r1, r3, #316
	str r1, [sp, #752]
	ldr r3, [sp, #564]
	add r1, r3, #320
	str r1, [sp, #604]
	ldr r3, [sp, #564]
	add r1, r3, #324
	str r1, [sp, #600]
	ldr r3, [sp, #564]
	add r1, r3, #328
	str r1, [sp, #596]
	ldr r3, [sp, #564]
	add r1, r3, #332
	str r1, [sp, #592]
	ldr r3, [sp, #564]
	add r1, r3, #336
	str r1, [sp, #588]
	ldr r3, [sp, #564]
	add r1, r3, #340
	str r1, [sp, #584]
	ldr r3, [sp, #564]
	add r1, r3, #344
	str r1, [sp, #580]
	ldr r3, [sp, #564]
	add r1, r3, #348
	str r1, [sp, #576]
	ldr r3, [sp, #564]
	add r1, r3, #352
	str r1, [sp, #572]
	ldr r3, [sp, #564]
	add r1, r3, #356
	str r1, [sp, #568]
	ldr r3, [sp, #564]
	add r1, r3, #360
	str r1, [sp, #120]
	ldr r3, [sp, #564]
	add r1, r3, #364
	str r1, [sp, #124]
	ldr r3, [sp, #564]
	add r1, r3, #368
	str r1, [sp, #128]
	ldr r3, [sp, #564]
	add r1, r3, #372
	str r1, [sp, #152]
	ldr r3, [sp, #564]
	add r1, r3, #376
	str r1, [sp, #132]
	ldr r3, [sp, #564]
	add r1, r3, #380
	str r1, [sp, #136]
	ldr r3, [sp, #564]
	add r1, r3, #384
	str r1, [sp, #140]
	ldr r3, [sp, #564]
	add r1, r3, #388
	str r1, [sp, #144]
	ldr r3, [sp, #564]
	add r1, r3, #392
	str r1, [sp, #148]
	ldr r3, [sp, #564]
	add r1, r3, #396
	str r1, [sp, #560]
	mov r0, #0
	cmp r0, #100
	bge label118
	mov r1, #0
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	b label431
label118:
	mov r0, #0
	str r0, [sp, #736]
	str r0, [sp, #732]
	ldr r1, [sp, #824]
	cmp r0, r1
	bge label13
label8:
	mov r0, #1
	ldr r1, [sp, #820]
	str r0, [r1, #0]
	mov r0, #2
	ldr r1, [sp, #816]
	str r0, [r1, #0]
	mov r0, #3
	ldr r1, [sp, #812]
	str r0, [r1, #0]
	mov r0, #4
	ldr r1, [sp, #808]
	str r0, [r1, #0]
	mov r0, #5
	ldr r1, [sp, #804]
	str r0, [r1, #0]
	mov r0, #6
	ldr r1, [sp, #800]
	str r0, [r1, #0]
	mov r0, #7
	ldr r1, [sp, #796]
	str r0, [r1, #0]
	mov r0, #8
	ldr r1, [sp, #792]
	str r0, [r1, #0]
	mov r0, #9
	ldr r1, [sp, #828]
	str r0, [r1, #0]
	mov r0, #10
	ldr r1, [sp, #832]
	str r0, [r1, #0]
	mov r0, #11
	ldr r1, [sp, #836]
	str r0, [r1, #0]
	mov r0, #12
	ldr r1, [sp, #840]
	str r0, [r1, #0]
	mov r0, #13
	ldr r1, [sp, #0]
	str r0, [r1, #0]
	mov r0, #14
	ldr r1, [sp, #4]
	str r0, [r1, #0]
	mov r0, #15
	ldr r1, [sp, #8]
	str r0, [r1, #0]
	mov r0, #16
	ldr r1, [sp, #12]
	str r0, [r1, #0]
	mov r0, #17
	ldr r1, [sp, #16]
	str r0, [r1, #0]
	mov r0, #18
	ldr r1, [sp, #20]
	str r0, [r1, #0]
	mov r0, #19
	ldr r1, [sp, #24]
	str r0, [r1, #0]
	mov r0, #20
	ldr r1, [sp, #32]
	str r0, [r1, #0]
	mov r0, #21
	ldr r1, [sp, #40]
	str r0, [r1, #0]
	mov r0, #22
	ldr r1, [sp, #48]
	str r0, [r1, #0]
	mov r0, #23
	ldr r1, [sp, #28]
	str r0, [r1, #0]
	mov r0, #24
	ldr r1, [sp, #36]
	str r0, [r1, #0]
	mov r0, #25
	ldr r1, [sp, #44]
	str r0, [r1, #0]
	mov r0, #26
	ldr r1, [sp, #52]
	str r0, [r1, #0]
	mov r0, #27
	ldr r1, [sp, #56]
	str r0, [r1, #0]
	mov r0, #28
	ldr r1, [sp, #788]
	str r0, [r1, #0]
	mov r0, #29
	ldr r1, [sp, #784]
	str r0, [r1, #0]
	mov r0, #30
	ldr r1, [sp, #780]
	str r0, [r1, #0]
	mov r0, #31
	ldr r1, [sp, #776]
	str r0, [r1, #0]
	mov r0, #32
	ldr r1, [sp, #772]
	str r0, [r1, #0]
	mov r0, #33
	ldr r1, [sp, #768]
	str r0, [r1, #0]
	mov r0, #34
	ldr r1, [sp, #764]
	str r0, [r1, #0]
	mov r0, #35
	ldr r1, [sp, #760]
	str r0, [r1, #0]
	mov r0, #36
	ldr r1, [sp, #756]
	str r0, [r1, #0]
	mov r0, #37
	ldr r1, [sp, #748]
	str r0, [r1, #0]
	mov r0, #38
	ldr r1, [sp, #696]
	str r0, [r1, #0]
	mov r0, #39
	ldr r1, [sp, #680]
	str r0, [r1, #0]
	mov r0, #40
	ldr r1, [sp, #608]
	str r0, [r1, #0]
	mov r0, #41
	ldr r1, [sp, #616]
	str r0, [r1, #0]
	mov r0, #42
	ldr r1, [sp, #624]
	str r0, [r1, #0]
	mov r0, #43
	ldr r1, [sp, #632]
	str r0, [r1, #0]
	mov r0, #44
	ldr r1, [sp, #640]
	str r0, [r1, #0]
	mov r0, #45
	ldr r1, [sp, #644]
	str r0, [r1, #0]
	mov r0, #46
	ldr r1, [sp, #648]
	str r0, [r1, #0]
	mov r0, #47
	ldr r1, [sp, #652]
	str r0, [r1, #0]
	mov r0, #48
	ldr r1, [sp, #656]
	str r0, [r1, #0]
	mov r0, #49
	ldr r1, [sp, #660]
	str r0, [r1, #0]
	mov r0, #50
	ldr r1, [sp, #556]
	str r0, [r1, #0]
	mov r0, #51
	ldr r1, [sp, #664]
	str r0, [r1, #0]
	mov r0, #52
	ldr r1, [sp, #668]
	str r0, [r1, #0]
	mov r0, #53
	ldr r1, [sp, #672]
	str r0, [r1, #0]
	mov r0, #54
	ldr r1, [sp, #676]
	str r0, [r1, #0]
	mov r0, #55
	ldr r1, [sp, #692]
	str r0, [r1, #0]
	mov r0, #56
	ldr r1, [sp, #744]
	str r0, [r1, #0]
	mov r0, #57
	ldr r1, [sp, #740]
	str r0, [r1, #0]
	mov r0, #58
	ldr r1, [sp, #60]
	str r0, [r1, #0]
	mov r0, #59
	ldr r1, [sp, #64]
	str r0, [r1, #0]
	mov r0, #60
	ldr r1, [sp, #68]
	str r0, [r1, #0]
	mov r0, #61
	ldr r1, [sp, #72]
	str r0, [r1, #0]
	mov r0, #62
	ldr r1, [sp, #76]
	str r0, [r1, #0]
	mov r0, #63
	ldr r1, [sp, #80]
	str r0, [r1, #0]
	mov r0, #64
	ldr r1, [sp, #84]
	str r0, [r1, #0]
	mov r0, #65
	ldr r1, [sp, #88]
	str r0, [r1, #0]
	mov r0, #66
	ldr r1, [sp, #92]
	str r0, [r1, #0]
	mov r0, #67
	ldr r1, [sp, #96]
	str r0, [r1, #0]
	mov r0, #68
	ldr r1, [sp, #100]
	str r0, [r1, #0]
	mov r0, #69
	ldr r1, [sp, #104]
	str r0, [r1, #0]
	mov r0, #70
	ldr r1, [sp, #108]
	str r0, [r1, #0]
	mov r0, #71
	ldr r1, [sp, #112]
	str r0, [r1, #0]
	mov r0, #72
	ldr r1, [sp, #116]
	str r0, [r1, #0]
	mov r0, #73
	ldr r1, [sp, #636]
	str r0, [r1, #0]
	mov r0, #74
	ldr r1, [sp, #628]
	str r0, [r1, #0]
	mov r0, #75
	ldr r1, [sp, #620]
	str r0, [r1, #0]
	mov r0, #76
	ldr r1, [sp, #612]
	str r0, [r1, #0]
	mov r0, #77
	ldr r1, [sp, #684]
	str r0, [r1, #0]
	mov r0, #78
	ldr r1, [sp, #700]
	str r0, [r1, #0]
	mov r0, #79
	ldr r1, [sp, #752]
	str r0, [r1, #0]
	mov r0, #80
	ldr r1, [sp, #604]
	str r0, [r1, #0]
	mov r0, #81
	ldr r1, [sp, #600]
	str r0, [r1, #0]
	mov r0, #82
	ldr r1, [sp, #596]
	str r0, [r1, #0]
	mov r0, #83
	ldr r1, [sp, #592]
	str r0, [r1, #0]
	mov r0, #84
	ldr r1, [sp, #588]
	str r0, [r1, #0]
	mov r0, #85
	ldr r1, [sp, #584]
	str r0, [r1, #0]
	mov r0, #86
	ldr r1, [sp, #580]
	str r0, [r1, #0]
	mov r0, #87
	ldr r1, [sp, #576]
	str r0, [r1, #0]
	mov r0, #88
	ldr r1, [sp, #572]
	str r0, [r1, #0]
	mov r0, #89
	ldr r1, [sp, #568]
	str r0, [r1, #0]
	mov r0, #90
	ldr r1, [sp, #120]
	str r0, [r1, #0]
	mov r0, #91
	ldr r1, [sp, #124]
	str r0, [r1, #0]
	mov r0, #92
	ldr r1, [sp, #128]
	str r0, [r1, #0]
	mov r0, #93
	ldr r1, [sp, #152]
	str r0, [r1, #0]
	mov r0, #94
	ldr r1, [sp, #132]
	str r0, [r1, #0]
	mov r0, #95
	ldr r1, [sp, #136]
	str r0, [r1, #0]
	mov r0, #96
	ldr r1, [sp, #140]
	str r0, [r1, #0]
	mov r0, #97
	ldr r1, [sp, #144]
	str r0, [r1, #0]
	mov r0, #98
	ldr r1, [sp, #148]
	str r0, [r1, #0]
	mov r0, #99
	ldr r1, [sp, #560]
	str r0, [r1, #0]
	ldr r0, [sp, #732]
	add r0, r0, #1
	str r0, [sp, #728]
	ldr r0, [sp, #736]
	mov r1, #0
	str r1, [sp, #724]
label9:
	ldr r3, [sp, #564]
	ldr r1, [sp, #724]
	add r2, r3, r1, lsl #2
	ldr r3, [sp, #564]
	ldr r1, [sp, #724]
	ldr r5, [r3, r1, lsl #2]
	ldr r3, [r2, #4]
	ldr r1, [r2, #8]
	ldr r4, [r2, #12]
	ldr r8, [r2, #16]
	ldr r6, [r2, #20]
	ldr r7, [r2, #24]
	ldr r9, [r2, #28]
	ldr r10, [r2, #32]
	ldr r11, [r2, #36]
	str r11, [sp, #688]
	ldr r11, [r2, #40]
	str r11, [sp, #704]
	ldr r11, [r2, #44]
	str r11, [sp, #708]
	ldr r11, [r2, #48]
	str r11, [sp, #712]
	ldr r11, [r2, #52]
	str r11, [sp, #716]
	ldr r11, [r2, #56]
	str r11, [sp, #720]
	ldr r2, [r2, #60]
	add r0, r0, r5
	add r0, r0, r3
	add r0, r0, r1
	add r0, r0, r4
	add r0, r0, r8
	add r0, r0, r6
	add r0, r0, r7
	add r0, r0, r9
	add r0, r0, r10
	ldr r11, [sp, #688]
	add r0, r0, r11
	ldr r11, [sp, #704]
	add r0, r0, r11
	ldr r11, [sp, #708]
	add r0, r0, r11
	ldr r11, [sp, #712]
	add r0, r0, r11
	ldr r11, [sp, #716]
	add r0, r0, r11
	ldr r11, [sp, #720]
	add r0, r0, r11
	add r0, r0, r2
	ldr r1, [sp, #724]
	add r1, r1, #16
	cmp r1, #96
	bge label12
	str r1, [sp, #724]
	b label9
label12:
	ldr r3, [sp, #564]
	add r2, r3, r1, lsl #2
	ldr r3, [sp, #564]
	ldr r1, [r3, r1, lsl #2]
	ldr r3, [r2, #4]
	ldr r4, [r2, #8]
	ldr r2, [r2, #12]
	add r1, r1, r3
	add r1, r1, r4
	add r1, r1, r2
	add r0, r1, r0
	movw r1, #32769
	movt r1, #32768
	smmla r1, r0, r1, r0
	asr r2, r1, #15
	add r1, r2, r1, lsr #31
	movw r2, #65535
	mul r1, r1, r2
	sub r0, r0, r1
	str r0, [sp, #736]
	ldr r0, [sp, #728]
	str r0, [sp, #732]
	ldr r1, [sp, #824]
	cmp r0, r1
	bge label13
	b label8
label431:
	mov r1, #0
	ldr r3, [sp, #564]
	str r1, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #100
	bge label118
	b label431
label13:
	ldr r0, [sp, #736]
	bl putint
	mov r0, #10
	bl putch
	mov r0, #328
	bl _sysy_stoptime
	mov r0, #0
	add sp, sp, #852
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
