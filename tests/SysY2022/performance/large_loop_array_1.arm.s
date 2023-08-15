.arch armv7ve
.data
.bss
.align 8
cmmc_parallel_body_payload_0:
	.zero	24
.align 8
y:
	.zero	8192
.align 8
x:
	.zero	8192
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18 }
	bl getint
	mov r6, r0
	mov r0, #22
	bl _sysy_starttime
	mov r9, #1065353216
	mov r11, #0
	movw r7, #:lower16:cmmc_parallel_body_payload_0
	movt r7, #:upper16:cmmc_parallel_body_payload_0
	movw r4, #:lower16:y
	movt r4, #:upper16:y
	vmov s17, r9
	mov r0, r11
	mov r10, r11
	vmov s16, r11
	movw r8, #:lower16:x
	movt r8, #:upper16:x
	sub r5, r6, #3
	vmov.f32 s18, s16
	b label95
.p2align 4
label127:
	add r1, r1, #4
.p2align 4
label123:
	add r3, r4, r2, lsl #2
	vldr s1, [r1, #0]
	add r2, r2, #1
	vldr s2, [r3, #0]
	cmp r6, r2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label127
	vadd.f32 s16, s16, s0
	add r10, r10, #1
	movw r1, #41248
	movt r1, #7
	cmp r10, r1
	bge label106
.p2align 4
label95:
	movw r1, #26215
	movt r1, #26214
	mov r11, #0
	smmul r1, r10, r1
	asr r2, r1, #2
	add r1, r2, r1, lsr #31
	add r1, r1, r1, lsl #2
	sub r1, r10, r1, lsl #1
	cmp r1, #0
	movw r1, #52429
	movt r1, #15948
	vmov s0, r1
	movw r1, #52429
	movt r1, #15820
	vadd.f32 s1, s17, s0
	vmov s0, r9
	vmov.f32 s17, s1
	vmov s1, r11
	vmovne.f32 s17, s0
	vmov s0, r1
	vadd.f32 s0, s18, s0
	vmov.f32 s18, s0
	vmovne.f32 s18, s1
	cmp r6, r0
	ble label156
	str r0, [r7, #0]
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	str r8, [r7, #4]
	vstr s18, [r7, #8]
	str r4, [r7, #12]
	vstr s17, [r7, #16]
	str r6, [r7, #20]
	mov r1, r6
	bl cmmcParallelFor
	movs r0, r6
	ble label166
.p2align 4
label111:
	cmp r6, #3
	ble label191
	mov r11, #0
	mov r1, r8
	vmov s0, r11
	b label113
.p2align 4
label117:
	add r1, r1, #16
.p2align 4
label113:
	add r2, r4, r11, lsl #2
	vldr s1, [r1, #0]
	add r11, r11, #4
	vldr s2, [r2, #0]
	cmp r5, r11
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	vldr s2, [r2, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	vldr s2, [r2, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vldr s2, [r2, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label117
	vmov.f32 s1, s0
	cmp r6, r11
	ble label262
.p2align 4
label122:
	add r1, r8, r11, lsl #2
	mov r2, r11
	vmov.f32 s0, s1
	b label123
.p2align 4
label166:
	mov r11, #0
	vmov s0, r11
	vadd.f32 s16, s16, s0
	add r10, r10, #1
	movw r1, #41248
	movt r1, #7
	cmp r10, r1
	blt label95
	b label106
.p2align 4
label191:
	mov r11, #0
	cmp r6, r11
	vmov s1, r11
	vmov.f32 s0, s1
	bgt label122
	vadd.f32 s16, s16, s1
	add r10, r10, #1
	movw r1, #41248
	movt r1, #7
	cmp r10, r1
	blt label95
	b label106
.p2align 4
label156:
	cmp r6, #0
	bgt label111
	mov r11, #0
	add r10, r10, #1
	movw r1, #41248
	movt r1, #7
	vmov s0, r11
	cmp r10, r1
	vadd.f32 s16, s16, s0
	blt label95
label106:
	movw r0, #39872
	movt r0, #22690
	movw r1, #14269
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	mov r0, #0
	vsub.f32 s0, s16, s0
	vcmp.f32 s0, s1
	vmov s1, r1
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	mov r4, r0
	vmrs APSR_nzcv, FPSCR
	orrge r4, r0, #1
	mov r0, #39
	bl _sysy_stoptime
	cmp r4, #0
	bne label108
	mov r0, #1
	bl putint
	mov r0, #1
	b label109
label108:
	mov r11, #0
	mov r0, r11
	bl putint
	mov r0, r11
label109:
	vpop { s16, s17, s18 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label262:
	vadd.f32 s16, s16, s0
	add r10, r10, #1
	movw r1, #41248
	movt r1, #7
	cmp r10, r1
	blt label95
	b label106
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7 }
	movw r4, #:lower16:cmmc_parallel_body_payload_0
	movt r4, #:upper16:cmmc_parallel_body_payload_0
	mov r5, r0
	ldr r3, [r4, #4]
	add r0, r0, #3
	vldr s0, [r4, #8]
	cmp r1, r0
	ldr r2, [r4, #12]
	vldr s1, [r4, #16]
	sub r4, r1, #3
	ble label7
	add r0, r3, r5, lsl #2
.p2align 4
label3:
	vmov s2, r5
	add r6, r2, r5, lsl #2
	add r7, r5, #1
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s0, s2
	vadd.f32 s2, s1, s2
	vstr s3, [r0, #0]
	vstr s2, [r6, #0]
	vmov s2, r7
	add r7, r5, #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s0, s2
	vadd.f32 s2, s1, s2
	vstr s3, [r0, #4]
	vstr s2, [r6, #4]
	vmov s2, r7
	add r7, r5, #3
	add r5, r5, #4
	cmp r4, r5
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s0, s2
	vadd.f32 s2, s1, s2
	vstr s3, [r0, #8]
	vstr s2, [r6, #8]
	vmov s2, r7
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s0, s2
	vadd.f32 s2, s1, s2
	vstr s3, [r0, #12]
	vstr s2, [r6, #12]
	ble label7
	add r0, r0, #16
	b label3
label7:
	cmp r1, r5
	ble label14
	add r0, r3, r5, lsl #2
label10:
	vmov s2, r5
	add r3, r2, r5, lsl #2
	add r5, r5, #1
	cmp r1, r5
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s0, s2
	vadd.f32 s2, s1, s2
	vstr s3, [r0, #0]
	vstr s2, [r3, #0]
	ble label14
	add r0, r0, #4
	b label10
label14:
	pop { r4, r5, r6, r7 }
	bx lr
