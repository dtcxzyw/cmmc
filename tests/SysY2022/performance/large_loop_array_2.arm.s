.arch armv7ve
.data
.bss
.align 8
y:
	.zero	16384
.align 8
x:
	.zero	16384
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	vpush { s16 }
	sub sp, sp, #4
	bl getint
	sub r5, r0, #4
	mov r4, r0
	mov r0, #22
	bl _sysy_starttime
	mov r3, #0
	mov r2, #1065353216
	movw r1, #:lower16:y
	movw r0, #:lower16:x
	vmov s1, r3
	vmov s0, r2
	movt r1, #:upper16:y
	movt r0, #:upper16:x
	mov r2, r3
	vmov.f32 s16, s1
	movw r6, #41248
	movt r6, #7
	cmp r3, r6
	bge label25
.p2align 4
label8:
	movw r6, #26215
	movt r6, #26214
	smmul r6, r2, r6
	asr r7, r6, #2
	add r6, r7, r6, lsr #31
	add r6, r6, r6, lsl #2
	sub r6, r2, r6, lsl #1
	cmp r6, #0
	movw r6, #52429
	movt r6, #15948
	vmov s2, r6
	mov r6, #1065353216
	vadd.f32 s0, s0, s2
	vmov s2, r6
	movw r6, #52429
	movt r6, #15820
	vmovne.f32 s0, s2
	vmov s2, r6
	mov r6, #0
	vadd.f32 s1, s1, s2
	vmov s2, r6
	vmovne.f32 s1, s2
	cmp r4, r3
	bgt label9
	b label61
.p2align 4
label203:
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r6, #41248
	movt r6, #7
	cmp r2, r6
	blt label8
	b label25
.p2align 4
label9:
	add r6, r3, #4
	cmp r4, r6
	bgt label12
.p2align 4
label10:
	vmov s2, r3
	add r6, r0, r3, lsl #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #0]
	add r6, r1, r3, lsl #2
	add r3, r3, #1
	vstr s2, [r6, #0]
	cmp r4, r3
	bgt label10
	b label78
.p2align 4
label12:
	vmov s2, r3
	add r6, r0, r3, lsl #2
	add r8, r3, #1
	add r7, r1, r3, lsl #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #0]
	vstr s2, [r7, #0]
	vmov s2, r8
	add r8, r3, #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #4]
	vstr s2, [r7, #4]
	vmov s2, r8
	add r8, r3, #3
	add r3, r3, #4
	cmp r5, r3
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #8]
	vstr s2, [r7, #8]
	vmov s2, r8
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r6, #12]
	vstr s2, [r7, #12]
	bgt label12
	b label10
.p2align 4
label78:
	movs r3, r4
	ble label201
.p2align 4
label18:
	cmp r4, #4
	ble label118
	mov r6, #0
	vmov s2, r6
.p2align 4
label22:
	add r7, r0, r6, lsl #2
	add r8, r1, r6, lsl #2
	vldr s3, [r7, #0]
	add r6, r6, #4
	vldr s4, [r8, #0]
	cmp r5, r6
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #4]
	vldr s4, [r8, #4]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #8]
	vldr s4, [r8, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #12]
	vldr s4, [r8, #12]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label22
	add r7, r0, r6, lsl #2
	vldr s3, [r7, #0]
	add r7, r1, r6, lsl #2
	add r6, r6, #1
	vldr s4, [r7, #0]
	cmp r4, r6
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label19
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r6, #41248
	movt r6, #7
	cmp r2, r6
	blt label8
	b label25
.p2align 4
label118:
	mov r6, #0
	vmov s2, r6
	add r7, r0, r6, lsl #2
	vldr s3, [r7, #0]
	add r7, r1, r6, lsl #2
	add r6, r6, #1
	vldr s4, [r7, #0]
	cmp r4, r6
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	ble label203
.p2align 4
label19:
	add r7, r0, r6, lsl #2
	vldr s3, [r7, #0]
	add r7, r1, r6, lsl #2
	add r6, r6, #1
	vldr s4, [r7, #0]
	cmp r4, r6
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label19
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r6, #41248
	movt r6, #7
	cmp r2, r6
	blt label8
	b label25
.p2align 4
label201:
	mov r6, #0
	vmov s2, r6
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r6, #41248
	movt r6, #7
	cmp r2, r6
	blt label8
label25:
	mov r0, #39
	bl _sysy_stoptime
	movw r0, #39768
	movw r1, #14269
	movt r0, #23074
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
	mov r0, #0
	bl putint
	mov r0, #0
	b label26
.p2align 4
label61:
	cmp r4, #0
	bgt label18
	mov r6, #0
	vmov s2, r6
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r6, #41248
	movt r6, #7
	cmp r2, r6
	blt label8
	b label25
label26:
	add sp, sp, #4
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, pc }
label28:
	mov r0, #1
	bl putint
	mov r0, #1
	b label26
