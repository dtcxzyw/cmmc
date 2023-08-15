.arch armv7ve
.data
.bss
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
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
	movw r1, #34464
	movt r1, #1
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	str r4, [r0, #0]
	mov r0, #0
	bl cmmcParallelFor
	mov r0, #0
	b label108
.p2align 4
label918:
	add r0, r0, #1
	cmp r0, #1000
	bge label199
.p2align 4
label108:
	mov r3, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label115
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label135
	mov r3, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label142
	b label337
.p2align 4
label158:
	add r4, r4, #4
.p2align 4
label154:
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
	blt label158
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	bge label910
.p2align 4
label235:
	add r2, r2, #4
	mov r3, r1
	movw r4, #34464
	movt r4, #1
	add r1, r1, #1
	cmp r8, r4
	bge label920
.p2align 4
label142:
	add r4, r8, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label342
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r5, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	add r4, r4, r8, lsl #2
	b label144
.p2align 4
label148:
	add r4, r4, #16
.p2align 4
label144:
	add r9, r3, r8
	add r10, r1, r8
	vldr s2, [r4, #0]
	add r11, r8, #1
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r9, r11
	add r11, r8, #2
	vmov s1, r9
	add r9, r5, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r4, #4]
	add r11, r8, #3
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r6, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, r8
	add r8, r8, #4
	mul r9, r10, r9
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r8
	vldr s2, [r4, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label148
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label908
.p2align 4
label153:
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r5, r8
	vmov.f32 s0, s1
	add r4, r4, r8, lsl #2
	b label154
.p2align 4
label131:
	add r4, r4, #4
.p2align 4
label127:
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
	blt label131
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	bge label904
.p2align 4
label135:
	add r2, r2, #4
	mov r3, r1
	movw r4, #34464
	movt r4, #1
	add r1, r1, #1
	cmp r8, r4
	bge label905
.p2align 4
label115:
	add r4, r8, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label255
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r5, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	add r4, r4, r8, lsl #2
	b label117
.p2align 4
label121:
	add r4, r4, #16
.p2align 4
label117:
	add r9, r3, r8
	add r10, r1, r8
	vldr s2, [r4, #0]
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	add r9, r5, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r6, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r4, #8]
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
	vldr s2, [r4, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label121
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label902
.p2align 4
label126:
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r5, r8
	vmov.f32 s0, s1
	add r4, r4, r8, lsl #2
	b label127
.p2align 4
label342:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	vmov.f32 s0, s2
	blt label153
	movw r8, #34464
	movt r8, #1
	vstr s2, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label235
	mov r3, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label168
	b label426
.p2align 4
label178:
	add r4, r4, #4
.p2align 4
label174:
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
	blt label178
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	bge label913
.p2align 4
label188:
	add r2, r2, #4
	mov r3, r1
	movw r4, #34464
	movt r4, #1
	add r1, r1, #1
	cmp r8, r4
	bge label915
.p2align 4
label168:
	add r4, r8, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label431
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	add r5, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	add r4, r4, r8, lsl #2
	b label180
.p2align 4
label184:
	add r4, r4, #16
.p2align 4
label180:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r4, #0]
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r1, r10
	vmov s1, r10
	add r10, r5, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r4, #8]
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
	vldr s2, [r4, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label184
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label914
.p2align 4
label173:
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r5, r8
	vmov.f32 s0, s1
	add r4, r4, r8, lsl #2
	b label174
.p2align 4
label431:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	vmov.f32 s0, s2
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	blt label173
	movw r8, #34464
	movt r8, #1
	vstr s2, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label188
	mov r3, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label218
	b label195
.p2align 4
label228:
	add r4, r4, #4
.p2align 4
label224:
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
	blt label228
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	bge label918
.p2align 4
label217:
	add r2, r2, #4
	mov r3, r1
	movw r4, #34464
	movt r4, #1
	add r1, r1, #1
	cmp r8, r4
	bge label916
.p2align 4
label218:
	add r4, r8, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label748
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r5, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	add r4, r4, r8, lsl #2
.p2align 4
label230:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r4, #0]
	add r11, r8, #1
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r10, r11
	add r11, r8, #2
	vmov s1, r10
	add r10, r5, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r4, #4]
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
	vldr s2, [r4, #8]
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
	vldr s2, [r4, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label820
	add r4, r4, #16
	b label230
.p2align 4
label820:
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label919
.p2align 4
label223:
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r5, r8
	vmov.f32 s0, s1
	add r4, r4, r8, lsl #2
	b label224
.p2align 4
label748:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	vmov.f32 s0, s2
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	blt label223
	movw r8, #34464
	movt r8, #1
	vstr s2, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label217
	add r0, r0, #1
	cmp r0, #1000
	blt label108
	b label199
.p2align 4
label255:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	vmov.f32 s0, s2
	blt label126
	movw r8, #34464
	movt r8, #1
	vstr s2, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label135
	mov r3, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label142
	b label337
.p2align 4
label919:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label217
	add r0, r0, #1
	cmp r0, #1000
	blt label108
	b label199
.p2align 4
label908:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label235
	mov r3, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label168
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label188
	b label911
.p2align 4
label914:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label188
	mov r3, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label218
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label217
	b label198
.p2align 4
label902:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label135
	mov r3, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r8, r3
	add r1, r3, #1
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label142
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label235
	b label906
.p2align 4
label916:
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label217
	add r0, r0, #1
	cmp r0, #1000
	blt label108
	b label199
.p2align 4
label920:
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label235
	mov r3, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label168
label426:
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label188
	b label911
.p2align 4
label915:
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label188
	mov r3, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label218
label195:
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label217
	b label198
.p2align 4
label905:
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label135
	mov r3, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label142
label337:
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label235
	b label906
.p2align 4
label910:
	mov r3, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label168
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label188
label911:
	mov r3, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label218
	b label195
.p2align 4
label913:
	mov r3, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label218
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label217
label198:
	add r0, r0, #1
	cmp r0, #1000
	blt label108
	b label199
.p2align 4
label904:
	mov r3, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label142
	vstr s0, [r2, #0]
	movw r3, #34464
	movt r3, #1
	cmp r1, r3
	blt label235
label906:
	mov r3, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r1, r3, #1
	mov r8, r3
	vmov s0, r3
	mov r2, r4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label168
	b label426
label199:
	mov r0, #76
	bl _sysy_stoptime
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r1, #0
	mov r0, r4
	vmov s0, r1
	b label200
.p2align 4
label204:
	add r0, r0, #64
.p2align 4
label200:
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r2, r4, r1, lsl #2
	add r1, r1, #16
	vldr s1, [r2, #0]
	vldr s2, [r0, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	vldr s2, [r0, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	movw r2, #34464
	movt r2, #1
	vldr s2, [r0, #60]
	cmp r1, r2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	blt label204
	mov r0, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	vmov s1, r0
	b label206
.p2align 4
label210:
	add r4, r4, #64
.p2align 4
label206:
	vldr s2, [r4, #0]
	add r0, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r4, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	blt label210
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
	beq label711
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
.p2align 4
label212:
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
	bne label212
label215:
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
label711:
	mov r0, #1065353216
	vmov s1, r0
	b label215
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6 }
	movw r2, #:lower16:cmmc_parallel_body_payload_0
	movt r2, #:upper16:cmmc_parallel_body_payload_0
	mov r3, r0
	ldr r4, [r2, #0]
	add r0, r0, #3
	mov r2, #1065353216
	cmp r1, r0
	ble label16
	add r0, r3, #15
	sub r5, r1, #3
	sub r6, r1, #18
	cmp r0, r5
	bge label39
	add r0, r4, r3, lsl #2
	b label4
.p2align 4
label7:
	add r0, r0, #64
.p2align 4
label4:
	add r3, r3, #16
	vmov s0, r2
	cmp r6, r3
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
	bgt label7
	mov r6, r3
label8:
	cmp r5, r6
	ble label16
	add r0, r4, r6, lsl #2
	mov r3, r6
label12:
	add r3, r3, #4
	vmov s0, r2
	cmp r5, r3
	vstr s0, [r0, #0]
	vstr s0, [r0, #4]
	vstr s0, [r0, #8]
	vstr s0, [r0, #12]
	ble label16
	add r0, r0, #16
	b label12
label16:
	cmp r1, r3
	ble label23
	add r0, r4, r3, lsl #2
	b label19
label22:
	add r0, r0, #4
label19:
	add r3, r3, #1
	vmov s0, r2
	cmp r1, r3
	vstr s0, [r0, #0]
	bgt label22
label23:
	pop { r4, r5, r6 }
	bx lr
label39:
	mov r6, r3
	mov r3, #0
	b label8
