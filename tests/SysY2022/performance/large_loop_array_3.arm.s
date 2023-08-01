.arch armv7ve
.data
.bss
.align 8
y:
	.zero	32768
.align 8
x:
	.zero	32768
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	vpush { s16 }
	sub sp, sp, #4
	bl getint
	sub r4, r0, #4
	mov r5, r0
	mov r0, #22
	bl _sysy_starttime
	mov r6, #0
	mov r2, #1065353216
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	vmov s1, r6
	vmov s0, r2
	mov r3, r6
	mov r7, r6
	vmov.f32 s16, s1
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label25
.p2align 4
label8:
	movw r8, #26215
	movt r8, #26214
	smmul r8, r3, r8
	asr r9, r8, #2
	add r8, r9, r8, lsr #31
	add r8, r8, r8, lsl #2
	sub r8, r3, r8, lsl #1
	cmp r8, #0
	movw r8, #52429
	movt r8, #15948
	vmov s2, r8
	movw r8, #52429
	movt r8, #15820
	vadd.f32 s0, s0, s2
	vmov s2, r2
	vmovne.f32 s0, s2
	vmov s2, r8
	vadd.f32 s1, s1, s2
	vmov s2, r6
	vmovne.f32 s1, s2
	cmp r5, r7
	ble label14
	add r8, r7, #4
	cmp r5, r8
	bgt label12
.p2align 4
label10:
	vmov s2, r7
	add r8, r0, r7, lsl #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r8, #0]
	add r8, r1, r7, lsl #2
	add r7, r7, #1
	vstr s2, [r8, #0]
	cmp r5, r7
	bgt label10
	movs r7, r5
	bgt label18
	b label200
.p2align 4
label12:
	vmov s2, r7
	add r8, r0, r7, lsl #2
	add r10, r7, #1
	add r9, r1, r7, lsl #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r8, #0]
	vstr s2, [r9, #0]
	vmov s2, r10
	add r10, r7, #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r8, #4]
	vstr s2, [r9, #4]
	vmov s2, r10
	add r10, r7, #3
	add r7, r7, #4
	cmp r4, r7
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r8, #8]
	vstr s2, [r9, #8]
	vmov s2, r10
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r8, #12]
	vstr s2, [r9, #12]
	bgt label12
	b label10
.p2align 4
label18:
	cmp r5, #4
	bgt label119
	vmov s2, r6
	mov r8, r6
	add r9, r0, r6, lsl #2
	vldr s3, [r9, #0]
	add r9, r1, r6, lsl #2
	add r8, r6, #1
	vldr s4, [r9, #0]
	cmp r5, r8
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label19
	b label135
.p2align 4
label119:
	vmov s2, r6
	mov r8, r6
	b label22
.p2align 4
label19:
	add r9, r0, r8, lsl #2
	vldr s3, [r9, #0]
	add r9, r1, r8, lsl #2
	add r8, r8, #1
	vldr s4, [r9, #0]
	cmp r5, r8
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label19
.p2align 4
label135:
	vadd.f32 s16, s16, s2
	add r3, r3, #1
	movw r8, #34464
	movt r8, #1
	cmp r3, r8
	blt label8
	b label25
.p2align 4
label22:
	add r9, r0, r8, lsl #2
	add r10, r1, r8, lsl #2
	vldr s3, [r9, #0]
	add r8, r8, #4
	vldr s4, [r10, #0]
	cmp r4, r8
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r9, #4]
	vldr s4, [r10, #4]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r9, #8]
	vldr s4, [r10, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r9, #12]
	vldr s4, [r10, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label22
	add r9, r0, r8, lsl #2
	vldr s3, [r9, #0]
	add r9, r1, r8, lsl #2
	add r8, r8, #1
	vldr s4, [r9, #0]
	cmp r5, r8
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label19
	vadd.f32 s16, s16, s2
	add r3, r3, #1
	movw r8, #34464
	movt r8, #1
	cmp r3, r8
	blt label8
	b label25
label200:
	vmov s2, r6
	b label16
label14:
	cmp r5, #0
	bgt label18
	b label200
label16:
	vadd.f32 s16, s16, s2
	add r3, r3, #1
	movw r8, #34464
	movt r8, #1
	cmp r3, r8
	blt label8
label25:
	mov r0, #39
	bl _sysy_stoptime
	movw r0, #19627
	movt r0, #23170
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
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwge r1, #1
	orrs r0, r0, r1
	beq label28
	mov r0, r6
	bl putint
	mov r0, r6
label26:
	add sp, sp, #4
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label28:
	mov r0, #1
	bl putint
	mov r0, #1
	b label26
