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
	sub sp, sp, #12
	bl _sysy_starttime
	mov r0, #0
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	str r0, [sp, #0]
	mov r3, r0
.p2align 4
label2:
	mov r1, #1065353216
	add r0, r0, #64
	vmov s0, r1
	movw r1, #34432
	movt r1, #1
	cmp r0, r1
	vstr s0, [r9, #0]
	vstr s0, [r9, #4]
	vstr s0, [r9, #8]
	vstr s0, [r9, #12]
	vstr s0, [r9, #16]
	vstr s0, [r9, #20]
	vstr s0, [r9, #24]
	vstr s0, [r9, #28]
	vstr s0, [r9, #32]
	vstr s0, [r9, #36]
	vstr s0, [r9, #40]
	vstr s0, [r9, #44]
	vstr s0, [r9, #48]
	vstr s0, [r9, #52]
	vstr s0, [r9, #56]
	vstr s0, [r9, #60]
	vstr s0, [r9, #64]
	vstr s0, [r9, #68]
	vstr s0, [r9, #72]
	vstr s0, [r9, #76]
	vstr s0, [r9, #80]
	vstr s0, [r9, #84]
	vstr s0, [r9, #88]
	vstr s0, [r9, #92]
	vstr s0, [r9, #96]
	vstr s0, [r9, #100]
	vstr s0, [r9, #104]
	vstr s0, [r9, #108]
	vstr s0, [r9, #112]
	vstr s0, [r9, #116]
	vstr s0, [r9, #120]
	vstr s0, [r9, #124]
	vstr s0, [r9, #128]
	vstr s0, [r9, #132]
	vstr s0, [r9, #136]
	vstr s0, [r9, #140]
	vstr s0, [r9, #144]
	vstr s0, [r9, #148]
	vstr s0, [r9, #152]
	vstr s0, [r9, #156]
	vstr s0, [r9, #160]
	vstr s0, [r9, #164]
	vstr s0, [r9, #168]
	vstr s0, [r9, #172]
	vstr s0, [r9, #176]
	vstr s0, [r9, #180]
	vstr s0, [r9, #184]
	vstr s0, [r9, #188]
	vstr s0, [r9, #192]
	vstr s0, [r9, #196]
	vstr s0, [r9, #200]
	vstr s0, [r9, #204]
	vstr s0, [r9, #208]
	vstr s0, [r9, #212]
	vstr s0, [r9, #216]
	vstr s0, [r9, #220]
	vstr s0, [r9, #224]
	vstr s0, [r9, #228]
	vstr s0, [r9, #232]
	vstr s0, [r9, #236]
	vstr s0, [r9, #240]
	vstr s0, [r9, #244]
	vstr s0, [r9, #248]
	vstr s0, [r9, #252]
	bge label6
	add r9, r9, #256
	b label2
label6:
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r1, #1065353216
	add r0, r9, r0, lsl #2
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
	ldr r3, [sp, #0]
	mov r0, r3
.p2align 4
label7:
	ldr r3, [sp, #0]
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r2, r5
	mov r8, r3
	vmov s0, r3
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label14
	b label250
label51:
	mov r0, #76
	bl _sysy_stoptime
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	ldr r3, [sp, #0]
	mov r0, r9
	vmov s0, r3
.p2align 4
label52:
	vldr s1, [r0, #0]
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	movw r2, #34448
	movt r2, #1
	add r1, r5, r3, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vldr s2, [r1, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vldr s2, [r1, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vldr s2, [r1, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vldr s2, [r1, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vldr s2, [r1, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vldr s2, [r1, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vldr s2, [r1, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vldr s2, [r1, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vldr s2, [r1, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #48]
	vldr s2, [r1, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #52]
	vldr s2, [r1, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #56]
	vldr s2, [r1, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #60]
	vldr s2, [r1, #60]
	add r1, r3, #16
	cmp r1, r2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label56
	add r0, r0, #64
	mov r3, r1
	b label52
.p2align 4
label81:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label82
	add r4, r8, #4
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	blt label91
	b label731
.p2align 4
label745:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label81
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label51
.p2align 4
label91:
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r5, r5, r8, lsl #2
.p2align 4
label92:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r5, #0]
	add r11, r8, #1
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r10, r11
	add r11, r8, #2
	vmov s1, r10
	add r10, r4, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r5, #4]
	add r11, r8, #3
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
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
	add r9, r9, r8
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34460
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label731
	add r5, r5, #16
	b label92
.p2align 4
label14:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label255
	add r4, r8, #4
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	blt label16
	b label260
.p2align 4
label323:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label14
	ldr r3, [sp, #0]
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	mov r2, r5
	cmp r3, r1
	mov r8, r3
	vmov s0, r3
	blt label117
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r2, r5
	b label1066
.p2align 4
label260:
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	add r4, r9, r8, lsl #2
.p2align 4
label23:
	add r5, r3, r8
	add r6, r1, r8
	vldr s2, [r4, #0]
	add r8, r8, #1
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r1, r5
	vmov s1, r5
	movw r5, #34464
	movt r5, #1
	cmp r8, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label323
	add r4, r4, #4
	b label23
.p2align 4
label117:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label118
	add r4, r8, #4
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	blt label122
	b label888
.p2align 4
label954:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label117
	ldr r3, [sp, #0]
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r2, r5
	cmp r3, r1
	mov r8, r3
	vmov s0, r3
	blt label99
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r2, r9
	b label50
.p2align 4
label99:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label100
	add r4, r8, #4
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	blt label105
	b label104
.p2align 4
label876:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label99
	ldr r3, [sp, #0]
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r2, r9
	cmp r3, r1
	mov r8, r3
	vmov s0, r3
	blt label81
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label51
.p2align 4
label105:
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r5, r5, r8, lsl #2
.p2align 4
label106:
	add r9, r3, r8
	add r10, r1, r8
	vldr s2, [r5, #0]
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	add r9, r4, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r5, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r6, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r5, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, r8
	add r8, r8, #4
	mul r9, r10, r9
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34460
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label104
	add r5, r5, #16
	b label106
.p2align 4
label888:
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r4, r5, r8, lsl #2
	mov r5, r8
.p2align 4
label129:
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
	bge label954
	add r4, r4, #4
	b label129
.p2align 4
label104:
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r4, r5, r8, lsl #2
.p2align 4
label112:
	add r5, r3, r8
	add r6, r1, r8
	vldr s2, [r4, #0]
	add r8, r8, #1
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r1, r5
	vmov s1, r5
	movw r5, #34464
	movt r5, #1
	cmp r8, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label876
	add r4, r4, #4
	b label112
.p2align 4
label731:
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r4, r5, r8, lsl #2
	mov r5, r8
.p2align 4
label86:
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
	bge label745
	add r4, r4, #4
	b label86
label1066:
	ldr r3, [sp, #0]
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r2, r9
	mov r8, r3
	vmov s0, r3
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label81
	b label50
.p2align 4
label118:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label117
	ldr r3, [sp, #0]
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r2, r5
	cmp r3, r1
	mov r8, r3
	vmov s0, r3
	blt label99
	b label1066
label50:
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label51
.p2align 4
label100:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label99
	ldr r3, [sp, #0]
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	mov r2, r9
	cmp r3, r1
	mov r8, r3
	vmov s0, r3
	blt label81
	b label50
.p2align 4
label82:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label81
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label51
.p2align 4
label255:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label14
	ldr r3, [sp, #0]
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	mov r2, r5
	cmp r3, r1
	mov r8, r3
	vmov s0, r3
	blt label117
	b label1055
label56:
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r0, r9, r1, lsl #2
	add r1, r5, r1, lsl #2
	vldr s1, [r0, #0]
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vldr s2, [r1, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vldr s2, [r1, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vldr s2, [r1, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vldr s2, [r1, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vldr s2, [r1, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vldr s2, [r1, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vldr s2, [r1, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vldr s2, [r1, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vldr s2, [r1, #44]
	add r1, r3, #28
	add r0, r9, r1, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
.p2align 4
label57:
	vldr s1, [r0, #0]
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r2, r5, r1, lsl #2
	add r1, r1, #1
	vldr s2, [r2, #0]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label541
	add r0, r0, #4
	b label57
label541:
	ldr r3, [sp, #0]
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	vmov s1, r3
.p2align 4
label63:
	vldr s2, [r5, #0]
	add r0, r3, #16
	movw r1, #34448
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r5, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label67
	add r5, r5, #64
	mov r3, r0
	b label63
label67:
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	add r1, r3, #28
	add r0, r5, r0, lsl #2
	vldr s2, [r0, #0]
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
	add r0, r5, r1, lsl #2
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
.p2align 4
label68:
	vldr s2, [r0, #0]
	add r1, r1, #1
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label73
	add r0, r0, #4
	b label68
label73:
	vdiv.f32 s0, s0, s1
	mov r1, #1065353216
	movw r0, #14269
	movt r0, #13702
	vmov s1, r1
	vmov s2, r0
	movw r1, #14269
	movt r1, #46470
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
	beq label687
	mov r1, #1065353216
	vmov.f32 s2, s0
	vmov s1, r1
	b label76
label74:
	mov r1, #1065353216
	movw r0, #14269
	movt r0, #13702
	vmov s0, r1
	movw r1, #14269
	movt r1, #46470
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
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label76:
	vadd.f32 s1, s1, s2
	mov r0, #1056964608
	movw r1, #14269
	movt r1, #46470
	vmov s2, r0
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	mov r0, #0
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s0, s1
	vsub.f32 s3, s1, s2
	vcmp.f32 s3, s4
	vmov s4, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	bne label76
	b label74
.p2align 4
label250:
	ldr r3, [sp, #0]
	movw r5, #:lower16:vectorB
	movt r5, #:upper16:vectorB
	movw r1, #34464
	movt r1, #1
	mov r2, r5
	cmp r3, r1
	mov r8, r3
	vmov s0, r3
	blt label117
label1055:
	ldr r3, [sp, #0]
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	movw r1, #34464
	movt r1, #1
	mov r2, r5
	cmp r3, r1
	mov r8, r3
	vmov s0, r3
	blt label99
	b label1066
.p2align 4
label16:
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	add r5, r9, r8, lsl #2
.p2align 4
label17:
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
	movw r9, #34460
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label260
	add r5, r5, #16
	b label17
label687:
	mov r1, #1065353216
	vmov s1, r1
	b label74
.p2align 4
label122:
	add r4, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r5, r5, r8, lsl #2
.p2align 4
label123:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r5, #0]
	add r11, r8, #1
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r10, r11
	add r11, r8, #2
	vmov s1, r10
	add r10, r4, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r5, #4]
	add r11, r8, #3
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
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
	add r9, r9, r8
	vldr s2, [r5, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34460
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label888
	add r5, r5, #16
	b label123
