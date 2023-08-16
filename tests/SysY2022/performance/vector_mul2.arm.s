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
	mov r2, #0
	b label108
.p2align 4
label181:
	add r2, r2, #1
	cmp r2, #1000
	bge label182
.p2align 4
label108:
	mov r1, #0
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r0, r1
	vmov s0, r1
	mov r3, r5
.p2align 4
label110:
	add r5, r1, #1
	movw r4, #34464
	movt r4, #1
	cmp r0, r4
	bge label115
	add r4, r0, #3
	movw r6, #34464
	movt r6, #1
	cmp r4, r6
	bge label752
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r6, r1, #2
	add r7, r1, #3
	add r8, r1, #4
	add r4, r4, r0, lsl #2
	b label231
.p2align 4
label235:
	add r4, r4, #16
.p2align 4
label231:
	add r10, r1, r0
	add r9, r5, r0
	vldr s2, [r4, #0]
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r5, r10
	vmov s1, r10
	add r10, r6, r0
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r5, r9
	vldr s2, [r4, #4]
	vadd.f32 s1, s0, s1
	vmov s0, r9
	add r9, r7, r0
	mul r10, r10, r9
	vcvt.f32.s32 s0, s0
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s0, s2, s0
	add r10, r5, r10
	vadd.f32 s2, s1, s0
	vldr s1, [r4, #8]
	vmov s0, r10
	add r10, r8, r0
	add r0, r0, #4
	mul r9, r9, r10
	vcvt.f32.s32 s0, s0
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s0, s1, s0
	add r9, r5, r9
	vadd.f32 s1, s2, s0
	vldr s2, [r4, #12]
	vmov s0, r9
	movw r9, #34461
	movt r9, #1
	cmp r0, r9
	vcvt.f32.s32 s0, s0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	blt label235
	vmov.f32 s1, s0
.p2align 4
label220:
	movw r4, #34464
	movt r4, #1
	cmp r0, r4
	bge label758
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r4, r4, r0, lsl #2
.p2align 4
label225:
	add r6, r1, r0
	add r7, r5, r0
	add r0, r0, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r5, r6
	vmov s0, r6
	movw r6, #34464
	movt r6, #1
	cmp r0, r6
	vcvt.f32.s32 s2, s0
	vldr s0, [r4, #0]
	vdiv.f32 s0, s0, s2
	vadd.f32 s0, s1, s0
	bge label758
	add r4, r4, #4
	vmov.f32 s1, s0
	b label225
.p2align 4
label115:
	vstr s0, [r3, #0]
	movw r1, #34464
	movt r1, #1
	cmp r5, r1
	bge label254
	add r3, r3, #4
	mov r1, r5
	b label110
label182:
	mov r0, #76
	bl _sysy_stoptime
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r0, #0
	mov r1, r4
	vmov s0, r0
	b label183
.p2align 4
label187:
	add r1, r1, #64
	vmov.f32 s0, s1
.p2align 4
label183:
	movw r3, #:lower16:vectorB
	movt r3, #:upper16:vectorB
	vldr s2, [r1, #0]
	add r2, r3, r0, lsl #2
	add r0, r0, #16
	vldr s1, [r2, #0]
	vmul.f32 s1, s2, s1
	vadd.f32 s2, s0, s1
	vldr s1, [r1, #4]
	vldr s0, [r2, #4]
	vmul.f32 s0, s1, s0
	vadd.f32 s0, s2, s0
	vldr s2, [r1, #8]
	vldr s1, [r2, #8]
	vmul.f32 s1, s2, s1
	vadd.f32 s2, s0, s1
	vldr s0, [r1, #12]
	vldr s1, [r2, #12]
	vmul.f32 s0, s0, s1
	vadd.f32 s1, s2, s0
	vldr s2, [r1, #16]
	vldr s0, [r2, #16]
	vmul.f32 s0, s2, s0
	vldr s2, [r1, #20]
	vadd.f32 s1, s1, s0
	vldr s0, [r2, #20]
	vmul.f32 s0, s2, s0
	vldr s2, [r1, #24]
	vadd.f32 s1, s1, s0
	vldr s0, [r2, #24]
	vmul.f32 s0, s2, s0
	vadd.f32 s2, s1, s0
	vldr s1, [r1, #28]
	vldr s0, [r2, #28]
	vmul.f32 s0, s1, s0
	vadd.f32 s1, s2, s0
	vldr s2, [r1, #32]
	vldr s0, [r2, #32]
	vmul.f32 s0, s2, s0
	vadd.f32 s2, s1, s0
	vldr s0, [r1, #36]
	vldr s1, [r2, #36]
	vmul.f32 s0, s0, s1
	vldr s1, [r1, #40]
	vadd.f32 s2, s2, s0
	vldr s0, [r2, #40]
	vmul.f32 s0, s1, s0
	vadd.f32 s2, s2, s0
	vldr s0, [r1, #44]
	vldr s1, [r2, #44]
	vmul.f32 s0, s0, s1
	vldr s1, [r1, #48]
	vadd.f32 s2, s2, s0
	vldr s0, [r2, #48]
	vmul.f32 s0, s1, s0
	vadd.f32 s2, s2, s0
	vldr s0, [r1, #52]
	vldr s1, [r2, #52]
	vmul.f32 s0, s0, s1
	vadd.f32 s1, s2, s0
	vldr s0, [r1, #56]
	vldr s2, [r2, #56]
	vmul.f32 s0, s0, s2
	vadd.f32 s2, s1, s0
	vldr s0, [r1, #60]
	vldr s1, [r2, #60]
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	vmul.f32 s0, s0, s1
	vadd.f32 s1, s2, s0
	blt label187
	mov r1, #0
	vmov s0, r1
	mov r0, r3
.p2align 4
label189:
	vldr s2, [r0, #0]
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s2, s2, s2
	vadd.f32 s2, s0, s2
	vldr s0, [r0, #4]
	vmul.f32 s0, s0, s0
	vadd.f32 s0, s2, s0
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s2, s0, s2
	vldr s0, [r0, #12]
	vmul.f32 s0, s0, s0
	vadd.f32 s2, s2, s0
	vldr s0, [r0, #16]
	vmul.f32 s0, s0, s0
	vadd.f32 s2, s2, s0
	vldr s0, [r0, #20]
	vmul.f32 s0, s0, s0
	vadd.f32 s0, s2, s0
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s2, s0, s2
	vldr s0, [r0, #28]
	vmul.f32 s0, s0, s0
	vadd.f32 s2, s2, s0
	vldr s0, [r0, #32]
	vmul.f32 s0, s0, s0
	vadd.f32 s2, s2, s0
	vldr s0, [r0, #36]
	vmul.f32 s0, s0, s0
	vadd.f32 s0, s2, s0
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s2, s0, s2
	vldr s0, [r0, #48]
	vmul.f32 s0, s0, s0
	vadd.f32 s0, s2, s0
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s2, s0, s2
	vldr s0, [r0, #60]
	vmul.f32 s0, s0, s0
	vadd.f32 s0, s2, s0
	bge label194
	add r0, r0, #64
	b label189
.p2align 4
label254:
	mov r1, #0
	movw r3, #:lower16:vectorB
	movt r3, #:upper16:vectorB
	mov r0, r1
	vmov s0, r1
	mov r4, r3
.p2align 4
label120:
	add r6, r1, #1
	movw r3, #34464
	movt r3, #1
	cmp r0, r3
	bge label142
	add r3, r0, #3
	movw r5, #34464
	movt r5, #1
	cmp r3, r5
	bge label267
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r7, r1, #3
	add r8, r1, #4
	add r3, r5, r0, lsl #2
	add r5, r1, #2
.p2align 4
label127:
	add r9, r1, r0
	add r10, r6, r0
	vldr s2, [r3, #0]
	add r11, r0, #1
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r9, r11
	add r11, r0, #2
	vmov s1, r9
	add r9, r5, r0
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r3, #4]
	add r11, r0, #3
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r0
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r3, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, r0
	add r0, r0, #4
	mul r9, r10, r9
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r0
	vldr s2, [r3, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r0, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label318
	add r3, r3, #16
	b label127
label194:
	vdiv.f32 s2, s1, s0
	mov r0, #1065353216
	movw r1, #14269
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vsub.f32 s1, s0, s2
	vmov s0, r0
	mov r0, #0
	vcmp.f32 s1, s0
	vmov s0, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	beq label636
	mov r0, #1065353216
	vmov.f32 s0, s2
	vmov s1, r0
.p2align 4
label197:
	vadd.f32 s0, s1, s0
	mov r0, #1056964608
	movw r1, #14269
	movt r1, #46470
	vmov s1, r0
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	mov r0, #0
	vmul.f32 s1, s0, s1
	vdiv.f32 s0, s2, s1
	vsub.f32 s3, s1, s0
	vcmp.f32 s3, s4
	vmov s4, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	bne label197
	vmov.f32 s0, s1
label195:
	mov r0, #1065353216
	movw r1, #14269
	movt r1, #46470
	vmov s1, r0
	movw r0, #14269
	movt r0, #13702
	vsub.f32 s1, s0, s1
	vmov s0, r0
	mov r0, #0
	vcmp.f32 s1, s0
	vmov s0, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	movwge r1, #1
	and r0, r0, r1
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label267:
	mov r3, #0
	vmov.f32 s1, s0
	vmov s2, r3
	vmov.f32 s0, s2
.p2align 4
label132:
	movw r3, #34464
	movt r3, #1
	cmp r0, r3
	bge label323
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r3, r5, r0, lsl #2
.p2align 4
label137:
	add r5, r1, r0
	add r7, r6, r0
	vldr s2, [r3, #0]
	add r0, r0, #1
	mul r5, r5, r7
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r5, r0
	vmov s0, r5
	movw r5, #34464
	movt r5, #1
	cmp r0, r5
	vcvt.f32.s32 s0, s0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	bge label323
	add r3, r3, #4
	vmov.f32 s1, s0
	b label137
.p2align 4
label323:
	movw r0, #34464
	movt r0, #1
.p2align 4
label142:
	vstr s0, [r4, #0]
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	bge label344
	add r4, r4, #4
	mov r1, r6
	b label120
.p2align 4
label758:
	movw r0, #34464
	movt r0, #1
	b label115
.p2align 4
label752:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	vmov.f32 s0, s2
	b label220
.p2align 4
label344:
	mov r1, #0
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	mov r0, r1
	vmov s0, r1
	mov r4, r5
	b label147
.p2align 4
label169:
	vstr s0, [r4, #0]
	movw r1, #34464
	movt r1, #1
	cmp r5, r1
	bge label172
	add r4, r4, #4
	mov r1, r5
.p2align 4
label147:
	add r5, r1, #1
	movw r3, #34464
	movt r3, #1
	cmp r0, r3
	bge label169
	add r3, r0, #3
	movw r6, #34464
	movt r6, #1
	cmp r3, r6
	bge label357
	movw r3, #:lower16:vectorB
	movt r3, #:upper16:vectorB
	add r6, r1, #2
	add r7, r1, #3
	add r8, r1, #4
	add r3, r3, r0, lsl #2
.p2align 4
label154:
	add r10, r1, r0
	add r9, r5, r0
	vldr s2, [r3, #0]
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r5, r10
	vmov s1, r10
	add r10, r6, r0
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r5, r9
	vldr s2, [r3, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, r0
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r5, r10
	vldr s2, [r3, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r8, r0
	add r0, r0, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r5, r9
	vldr s2, [r3, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r0, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s1, s0, s1
	bge label405
	add r3, r3, #16
	vmov.f32 s0, s1
	b label154
.p2align 4
label172:
	mov r1, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r0, r1
	vmov s0, r1
	mov r3, r4
.p2align 4
label173:
	add r6, r1, #1
	movw r4, #34464
	movt r4, #1
	cmp r0, r4
	bge label178
	add r4, r0, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label673
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r7, r1, #3
	add r8, r1, #4
	add r4, r5, r0, lsl #2
	add r5, r1, #2
.p2align 4
label213:
	add r10, r1, r0
	add r9, r6, r0
	add r11, r0, #1
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r10, r11
	add r11, r0, #2
	vmov s1, r10
	add r10, r5, r0
	mul r9, r9, r10
	vcvt.f32.s32 s2, s1
	add r9, r9, r9, lsr #31
	vldr s1, [r4, #0]
	asr r9, r9, #1
	add r9, r9, r11
	add r11, r0, #3
	vdiv.f32 s1, s1, s2
	vadd.f32 s2, s0, s1
	vldr s1, [r4, #4]
	vmov s0, r9
	add r9, r7, r0
	mul r10, r10, r9
	vcvt.f32.s32 s0, s0
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s0, s1, s0
	add r10, r10, r11
	vadd.f32 s1, s2, s0
	vldr s2, [r4, #8]
	vmov s0, r10
	add r10, r8, r0
	add r0, r0, #4
	mul r9, r9, r10
	vcvt.f32.s32 s0, s0
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s0, s2, s0
	add r9, r9, r0
	vldr s2, [r4, #12]
	vadd.f32 s1, s1, s0
	vmov s0, r9
	movw r9, #34461
	movt r9, #1
	cmp r0, r9
	vcvt.f32.s32 s0, s0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	bge label745
	add r4, r4, #16
	b label213
.p2align 4
label405:
	vmov.f32 s0, s1
.p2align 4
label159:
	movw r3, #34464
	movt r3, #1
	cmp r0, r3
	bge label410
	movw r3, #:lower16:vectorB
	movt r3, #:upper16:vectorB
	add r3, r3, r0, lsl #2
.p2align 4
label164:
	add r6, r1, r0
	add r7, r5, r0
	vldr s2, [r3, #0]
	add r0, r0, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r5, r6
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r0, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label426
	add r3, r3, #4
	b label164
.p2align 4
label745:
	vmov.f32 s1, s0
.p2align 4
label202:
	movw r4, #34464
	movt r4, #1
	cmp r0, r4
	bge label679
	movw r5, #:lower16:Vectortm
	movt r5, #:upper16:Vectortm
	add r4, r5, r0, lsl #2
	b label207
.p2align 4
label211:
	add r4, r4, #4
	vmov.f32 s1, s0
.p2align 4
label207:
	add r5, r1, r0
	add r7, r6, r0
	add r0, r0, #1
	mul r5, r5, r7
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r5, r0
	vmov s0, r5
	movw r5, #34464
	movt r5, #1
	cmp r0, r5
	vcvt.f32.s32 s2, s0
	vldr s0, [r4, #0]
	vdiv.f32 s0, s0, s2
	vadd.f32 s0, s1, s0
	blt label211
.p2align 4
label679:
	movw r0, #34464
	movt r0, #1
.p2align 4
label178:
	vstr s0, [r3, #0]
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	bge label181
	add r3, r3, #4
	mov r1, r6
	b label173
.p2align 4
label673:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	vmov.f32 s0, s2
	b label202
.p2align 4
label426:
	movw r0, #34464
	movt r0, #1
	b label169
.p2align 4
label410:
	movw r0, #34464
	movt r0, #1
	vmov.f32 s0, s1
	b label169
label636:
	mov r0, #1065353216
	vmov s0, r0
	b label195
.p2align 4
label318:
	vmov.f32 s1, s0
	b label132
.p2align 4
label357:
	mov r3, #0
	vmov s1, r3
	b label159
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
