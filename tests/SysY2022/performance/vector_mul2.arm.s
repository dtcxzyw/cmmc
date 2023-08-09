.arch armv7ve
.data
.bss
.align 8
Vectortm:
	.zero	400000
.align 8
vectorB:
	.zero	400000
.align 8
vectorA:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #62
	sub sp, sp, #4
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	b label2
.p2align 4
label5:
	add r5, r5, #256
.p2align 4
label2:
	mov r1, #1065353216
	add r0, r0, #64
	vmov s0, r1
	movw r1, #34432
	movt r1, #1
	cmp r0, r1
	vstr s0, [r5, #0]
	vstr s0, [r5, #4]
	vstr s0, [r5, #8]
	vstr s0, [r5, #12]
	vstr s0, [r5, #16]
	vstr s0, [r5, #20]
	vstr s0, [r5, #24]
	vstr s0, [r5, #28]
	vstr s0, [r5, #32]
	vstr s0, [r5, #36]
	vstr s0, [r5, #40]
	vstr s0, [r5, #44]
	vstr s0, [r5, #48]
	vstr s0, [r5, #52]
	vstr s0, [r5, #56]
	vstr s0, [r5, #60]
	vstr s0, [r5, #64]
	vstr s0, [r5, #68]
	vstr s0, [r5, #72]
	vstr s0, [r5, #76]
	vstr s0, [r5, #80]
	vstr s0, [r5, #84]
	vstr s0, [r5, #88]
	vstr s0, [r5, #92]
	vstr s0, [r5, #96]
	vstr s0, [r5, #100]
	vstr s0, [r5, #104]
	vstr s0, [r5, #108]
	vstr s0, [r5, #112]
	vstr s0, [r5, #116]
	vstr s0, [r5, #120]
	vstr s0, [r5, #124]
	vstr s0, [r5, #128]
	vstr s0, [r5, #132]
	vstr s0, [r5, #136]
	vstr s0, [r5, #140]
	vstr s0, [r5, #144]
	vstr s0, [r5, #148]
	vstr s0, [r5, #152]
	vstr s0, [r5, #156]
	vstr s0, [r5, #160]
	vstr s0, [r5, #164]
	vstr s0, [r5, #168]
	vstr s0, [r5, #172]
	vstr s0, [r5, #176]
	vstr s0, [r5, #180]
	vstr s0, [r5, #184]
	vstr s0, [r5, #188]
	vstr s0, [r5, #192]
	vstr s0, [r5, #196]
	vstr s0, [r5, #200]
	vstr s0, [r5, #204]
	vstr s0, [r5, #208]
	vstr s0, [r5, #212]
	vstr s0, [r5, #216]
	vstr s0, [r5, #220]
	vstr s0, [r5, #224]
	vstr s0, [r5, #228]
	vstr s0, [r5, #232]
	vstr s0, [r5, #236]
	vstr s0, [r5, #240]
	vstr s0, [r5, #244]
	vstr s0, [r5, #248]
	vstr s0, [r5, #252]
	blt label5
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	mov r1, #1065353216
	add r0, r5, r0, lsl #2
	vmov s0, r1
	vstr s0, [r0, #0]
	vstr s0, [r0, #4]
	vstr s0, [r0, #8]
	vstr s0, [r0, #12]
	vstr s0, [r0, #16]
	vstr s0, [r0, #20]
	vstr s0, [r0, #24]
	vstr s0, [r0, #28]
	vstr s0, [r0, #32]
	vstr s0, [r0, #36]
	vstr s0, [r0, #40]
	vstr s0, [r0, #44]
	vstr s0, [r0, #48]
	vstr s0, [r0, #52]
	vstr s0, [r0, #56]
	vstr s0, [r0, #60]
	vstr s0, [r0, #64]
	vstr s0, [r0, #68]
	vstr s0, [r0, #72]
	vstr s0, [r0, #76]
	vstr s0, [r0, #80]
	vstr s0, [r0, #84]
	vstr s0, [r0, #88]
	vstr s0, [r0, #92]
	vstr s0, [r0, #96]
	vstr s0, [r0, #100]
	vstr s0, [r0, #104]
	vstr s0, [r0, #108]
	vstr s0, [r0, #112]
	vstr s0, [r0, #116]
	vstr s0, [r0, #120]
	vstr s0, [r0, #124]
	mov r0, #0
	b label7
.p2align 4
label939:
	add r0, r0, #1
	cmp r0, #1000
	bge label97
.p2align 4
label7:
	mov r8, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r3, r8
	vmov s0, r8
	mov r2, r7
	movw r1, #34464
	movt r1, #1
	cmp r8, r1
	blt label14
	mov r9, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r3, r9
	vmov s0, r9
	mov r2, r4
	cmp r9, r1
	blt label41
label338:
	mov r1, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r1
	vmov s0, r1
	mov r3, r7
	mov r7, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	b label955
.p2align 4
label34:
	add r4, r4, #4
.p2align 4
label30:
	add r6, r3, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label34
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label910
.p2align 4
label14:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label15
	add r4, r8, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label262
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	add r5, r5, r8, lsl #2
	b label20
.p2align 4
label24:
	add r5, r5, #16
.p2align 4
label20:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r5, #0]
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r1, r10
	vmov s1, r10
	add r10, r4, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r5, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r5, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r8
	add r8, r8, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label24
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label908
.p2align 4
label29:
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	vmov.f32 s0, s1
	add r4, r5, r8, lsl #2
	mov r5, r8
	b label30
.p2align 4
label61:
	add r4, r4, #4
.p2align 4
label57:
	add r6, r3, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r6, r5
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label61
	movw r9, #34464
	movt r9, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label915
.p2align 4
label41:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r9, r4
	bge label42
	add r4, r9, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label349
	add r4, r3, #2
	add r6, r3, #3
	add r8, r3, #4
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	add r5, r7, r9, lsl #2
	mov r7, r9
	b label47
.p2align 4
label51:
	add r5, r5, #16
.p2align 4
label47:
	add r10, r3, r7
	add r9, r1, r7
	vldr s2, [r5, #0]
	add r11, r7, #1
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r10, r11
	add r11, r7, #2
	vmov s1, r10
	add r10, r4, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r5, #4]
	add r11, r7, #3
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r7
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r5, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r8, r7
	add r7, r7, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r7
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r7, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label51
	vmov.f32 s1, s0
	mov r5, r7
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label913
.p2align 4
label56:
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	vmov.f32 s0, s1
	add r4, r7, r5, lsl #2
	b label57
.p2align 4
label825:
	movw r7, #34464
	movt r7, #1
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label924
.p2align 4
label114:
	add r1, r2, #1
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label115
	add r8, r7, #3
	cmp r8, r4
	bge label755
	add r5, r2, #2
	add r6, r2, #3
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	add r4, r4, r7, lsl #2
	b label120
.p2align 4
label125:
	add r4, r4, #16
	mov r7, r9
.p2align 4
label120:
	add r9, r2, r7
	add r10, r1, r7
	vldr s2, [r4, #0]
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	add r9, r5, r7
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r6, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r2, r8
	add r8, r1, r8
	mul r8, r9, r8
	add r9, r7, #4
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r4, #12]
	add r8, r1, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r7, #7
	movw r7, #34461
	movt r7, #1
	cmp r9, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label125
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r9, r4
	bge label922
.p2align 4
label130:
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r5, r9
	vmov.f32 s0, s1
	add r4, r4, r9, lsl #2
.p2align 4
label131:
	add r6, r2, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label825
	add r4, r4, #4
	b label131
label97:
	mov r0, #76
	bl _sysy_stoptime
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	mov r1, #0
	mov r0, r5
	vmov s0, r1
.p2align 4
label98:
	vldr s1, [r0, #0]
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	add r2, r4, r1, lsl #2
	add r1, r1, #16
	vldr s2, [r2, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vldr s2, [r2, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vldr s2, [r2, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vldr s2, [r2, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vldr s2, [r2, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vldr s2, [r2, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vldr s2, [r2, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vldr s2, [r2, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vldr s2, [r2, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vldr s2, [r2, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vldr s2, [r2, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vldr s2, [r2, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #48]
	vldr s2, [r2, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #52]
	vldr s2, [r2, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #56]
	vldr s2, [r2, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #60]
	vldr s2, [r2, #60]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label102
	add r0, r0, #64
	b label98
label102:
	mov r1, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	vmov s1, r1
	mov r0, r4
.p2align 4
label103:
	vldr s2, [r0, #0]
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label107
	add r0, r0, #64
	b label103
.p2align 4
label15:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label14
	mov r9, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r3, r9
	vmov s0, r9
	mov r2, r4
	cmp r9, r1
	blt label41
	b label338
.p2align 4
label42:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label41
	mov r1, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r1
	vmov s0, r1
	mov r3, r7
	mov r7, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
label955:
	mov r9, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	mov r2, r9
	vmov s0, r9
	mov r3, r5
	movw r1, #34464
	movt r1, #1
	cmp r9, r1
	blt label74
	b label434
.p2align 4
label92:
	add r4, r4, #4
.p2align 4
label88:
	add r6, r2, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r6, r5
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label92
	movw r9, #34464
	movt r9, #1
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label939
.p2align 4
label74:
	add r1, r2, #1
	movw r4, #34464
	movt r4, #1
	cmp r9, r4
	bge label439
	add r8, r9, #3
	cmp r8, r4
	bge label444
	add r5, r2, #2
	add r6, r2, #3
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	add r4, r7, r9, lsl #2
	mov r7, r9
.p2align 4
label77:
	add r9, r2, r7
	add r10, r1, r7
	vldr s2, [r4, #0]
	add r11, r7, #1
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r9, r11
	add r11, r7, #2
	vmov s1, r9
	add r9, r5, r7
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r6, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r8, r9
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r2, r8
	add r8, r1, r8
	mul r8, r9, r8
	add r9, r7, #4
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r4, #12]
	add r8, r8, r9
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r7, #7
	movw r7, #34461
	movt r7, #1
	cmp r9, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label495
	add r4, r4, #16
	mov r7, r9
	b label77
.p2align 4
label495:
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r9, r4
	bge label918
.p2align 4
label87:
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r5, r9
	vmov.f32 s0, s1
	add r4, r7, r9, lsl #2
	b label88
.p2align 4
label115:
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	mov r9, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	mov r2, r9
	vmov s0, r9
	mov r3, r5
	cmp r9, r1
	blt label74
label434:
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label97
.p2align 4
label262:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	vmov.f32 s0, s2
	blt label29
	movw r8, #34464
	movt r8, #1
	vstr s2, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label14
	mov r9, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r3, r9
	vmov s0, r9
	mov r2, r4
	cmp r9, r1
	blt label41
	mov r1, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r1
	vmov s0, r1
	mov r3, r7
	mov r7, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	b label955
.p2align 4
label349:
	mov r4, #0
	vmov.f32 s1, s0
	mov r5, r9
	vmov s2, r4
	movw r4, #34464
	movt r4, #1
	cmp r9, r4
	vmov.f32 s0, s2
	blt label56
	movw r9, #34464
	movt r9, #1
	vstr s2, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label41
	mov r1, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r1
	vmov s0, r1
	mov r3, r7
	mov r7, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	b label955
.p2align 4
label444:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	movw r4, #34464
	movt r4, #1
	cmp r9, r4
	vmov.f32 s0, s2
	blt label87
	movw r9, #34464
	movt r9, #1
	vstr s2, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label74
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label97
.p2align 4
label755:
	mov r4, #0
	vmov.f32 s1, s0
	mov r9, r7
	vmov s2, r4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	vmov.f32 s0, s2
	blt label130
	movw r7, #34464
	movt r7, #1
	vstr s2, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	mov r9, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	mov r2, r9
	vmov s0, r9
	mov r3, r5
	cmp r9, r1
	blt label74
	b label434
.p2align 4
label908:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label14
	mov r9, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r3, r9
	vmov s0, r9
	mov r2, r4
	cmp r9, r1
	blt label41
	mov r1, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r1
	vmov s0, r1
	mov r3, r7
	mov r7, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	b label955
.p2align 4
label913:
	movw r9, #34464
	movt r9, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label41
	mov r1, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r1
	vmov s0, r1
	mov r3, r7
	mov r7, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	mov r9, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	mov r2, r9
	vmov s0, r9
	mov r3, r5
	cmp r9, r1
	blt label74
	b label434
.p2align 4
label918:
	movw r9, #34464
	movt r9, #1
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label74
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label97
.p2align 4
label922:
	movw r7, #34464
	movt r7, #1
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	mov r9, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	mov r2, r9
	vmov s0, r9
	mov r3, r5
	cmp r9, r1
	blt label74
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label97
.p2align 4
label439:
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label74
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label97
.p2align 4
label910:
	mov r9, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	movw r1, #34464
	movt r1, #1
	mov r3, r9
	vmov s0, r9
	mov r2, r4
	cmp r9, r1
	blt label41
	mov r1, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r1
	vmov s0, r1
	mov r3, r7
	mov r7, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	b label955
.p2align 4
label915:
	mov r1, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r1
	vmov s0, r1
	mov r3, r7
	mov r7, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label114
	mov r9, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	mov r2, r9
	vmov s0, r9
	mov r3, r5
	cmp r9, r1
	blt label74
	b label434
.p2align 4
label924:
	mov r9, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
	movw r1, #34464
	movt r1, #1
	mov r2, r9
	vmov s0, r9
	mov r3, r5
	cmp r9, r1
	blt label74
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label97
label107:
	vdiv.f32 s0, s0, s1
	mov r0, #1065353216
	movw r1, #14269
	movt r1, #46470
	vmov s1, r0
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	mov r0, #0
	vsub.f32 s1, s1, s0
	vcmp.f32 s1, s2
	vmov s2, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	beq label710
	mov r0, #1065353216
	vmov s1, r0
.p2align 4
label110:
	vdiv.f32 s2, s0, s1
	mov r0, #1056964608
	movw r1, #14269
	movt r1, #46470
	vadd.f32 s1, s1, s2
	vmov s2, r0
	movw r0, #14269
	movt r0, #13702
	vmov s3, r0
	mov r0, #0
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s0, s1
	vsub.f32 s2, s1, s2
	vcmp.f32 s2, s3
	vmov s3, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s2, s3
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	bne label110
label108:
	mov r0, #1065353216
	movw r1, #14269
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vsub.f32 s0, s1, s0
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwge r1, #1
	and r0, r0, r1
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label710:
	mov r0, #1065353216
	vmov s1, r0
	b label108
