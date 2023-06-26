.arch armv7ve
.data
.align 4
a:
	.zero	4000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	vpush { s16 }
	movw r12, #8004
	sub sp, sp, r12
	add r5, sp, #0
	add r6, sp, #4000
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r7, #0
	cmp r7, #1000
	bge label6
	mov r0, #4000
	mul r0, r7, r0
	add r0, r4, r0
	bl getfarray
	cmp r0, #1000
	beq label5
	b label53
label6:
	mov r0, #42
	bl _sysy_starttime
	mov r0, #0
	vmov s0, r0
	cmp r0, #100
	bge label77
	mov r2, #0
	cmp r2, #1000
	bge label167
	b label608
label77:
	mov r0, #0
	vmov.f32 s16, s0
	cmp r0, #1000
	bge label81
	b label80
label608:
	add r3, r6, r2, lsl #2
	mov r1, #4000
	mul r1, r2, r1
	add r7, r4, r1
	mov r1, #0
	vmov s1, r1
label49:
	add r8, r7, r1, lsl #2
	vldr s2, [r8, #0]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #4]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #8]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #12]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #16]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #20]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #24]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #28]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #32]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #36]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #40]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #44]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #48]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #52]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #56]
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #60]
	vadd.f32 s1, s1, s2
	vstr s1, [r3, #0]
	add r1, r1, #16
	cmp r1, #992
	bge label52
	b label49
label52:
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #16]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #20]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #24]
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #28]
	vadd.f32 s1, s1, s2
	movw r1, #0
	movt r1, #17530
	vmov s2, r1
	vdiv.f32 s1, s1, s2
	vstr s1, [r3, #0]
	add r2, r2, #1
	cmp r2, #1000
	bge label167
	b label608
label167:
	mov r1, #0
	cmp r1, #1000
	bge label171
label170:
	add r2, r5, r1, lsl #2
	mov r3, #4000
	mul r3, r1, r3
	add r7, r4, r3
	add r3, r6, r1, lsl #2
	vldr s1, [r3, #0]
	mov r3, #0
	vmov s2, r3
	b label33
label171:
	vmov.f32 s2, s0
	mov r1, #0
	cmp r1, #1000
	bge label26
	b label174
label41:
	vneg.f32 s5, s5
	movw r3, #4719
	movt r3, #14979
	vmov s7, r3
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	bgt label45
	vstr s1, [r2, #0]
	add r1, r1, #1
	cmp r1, #1000
	bge label171
	b label170
label45:
	vcmp.f32 s6, s4
	vmrs APSR_nzcv, FPSCR
	bgt label46
	vadd.f32 s2, s1, s3
	mov r3, #1056964608
	vmov s5, r3
	vmul.f32 s5, s2, s5
	vmov.f32 s2, s1
	vmov.f32 s1, s5
	vmul.f32 s6, s5, s5
	vsub.f32 s5, s6, s4
	vcmp.f32 s5, #0
	vmrs APSR_nzcv, FPSCR
	bmi label41
	movw r3, #4719
	movt r3, #14979
	vmov s7, r3
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	bgt label45
	vstr s1, [r2, #0]
	add r1, r1, #1
	cmp r1, #1000
	bge label171
	b label170
label46:
	vadd.f32 s3, s1, s2
	mov r3, #1056964608
	vmov s5, r3
	vmul.f32 s5, s3, s5
	vmov.f32 s3, s1
	vmov.f32 s1, s5
	vmul.f32 s6, s5, s5
	vsub.f32 s5, s6, s4
	vcmp.f32 s5, #0
	vmrs APSR_nzcv, FPSCR
	bmi label41
	movw r3, #4719
	movt r3, #14979
	vmov s7, r3
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	bgt label45
	vstr s1, [r2, #0]
	add r1, r1, #1
	cmp r1, #1000
	bge label171
	b label170
label33:
	add r8, r7, r3, lsl #2
	vldr s3, [r8, #0]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #4]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #8]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #12]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #16]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #20]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #24]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #28]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #32]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #36]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #40]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #44]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #48]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #52]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #56]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r8, #60]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vstr s2, [r2, #0]
	add r3, r3, #16
	cmp r3, #992
	bge label36
	b label33
label36:
	add r3, r7, r3, lsl #2
	vldr s3, [r3, #0]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #4]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #8]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #12]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #16]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #20]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #24]
	vsub.f32 s3, s3, s1
	vmul.f32 s3, s3, s3
	vadd.f32 s2, s2, s3
	vldr s3, [r3, #28]
	vsub.f32 s1, s3, s1
	vmul.f32 s1, s1, s1
	vadd.f32 s1, s2, s1
	movw r3, #0
	movt r3, #17530
	vmov s2, r3
	vdiv.f32 s1, s1, s2
	movw r3, #55050
	movt r3, #15395
	vmov s2, r3
	vadd.f32 s4, s1, s2
	mov r3, #1056964608
	vmov s1, r3
	vmul.f32 s1, s4, s1
	mov r3, #0
	vmov s2, r3
	vmov.f32 s3, s4
	vmul.f32 s6, s1, s1
	vsub.f32 s5, s6, s4
	vcmp.f32 s5, #0
	vmrs APSR_nzcv, FPSCR
	bmi label41
	movw r3, #4719
	movt r3, #14979
	vmov s7, r3
	vcmp.f32 s5, s7
	vmrs APSR_nzcv, FPSCR
	bgt label45
	vstr s1, [r2, #0]
	add r1, r1, #1
	cmp r1, #1000
	bge label171
	b label170
label174:
	mov r2, #4000
	mul r2, r1, r2
	add r3, r4, r2
	add r2, r6, r1, lsl #2
	add r7, r5, r1, lsl #2
	vldr s1, [r2, #0]
	vldr s0, [r7, #0]
	mov r2, #0
	b label28
label31:
	add r2, r3, r2, lsl #2
	vldr s3, [r2, #0]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r2, #0]
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #4]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r2, #4]
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #8]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r2, #8]
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #12]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r2, #12]
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #16]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r2, #16]
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #20]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r2, #20]
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #24]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r2, #24]
	vadd.f32 s2, s2, s3
	vldr s3, [r2, #28]
	vsub.f32 s1, s3, s1
	vdiv.f32 s0, s1, s0
	vstr s0, [r2, #28]
	vadd.f32 s2, s2, s0
	add r1, r1, #1
	cmp r1, #1000
	bge label26
	b label174
label28:
	add r7, r3, r2, lsl #2
	vldr s3, [r7, #0]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #0]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #4]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #4]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #8]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #8]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #12]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #12]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #16]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #16]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #20]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #20]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #24]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #24]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #28]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #28]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #32]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #32]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #36]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #36]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #40]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #40]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #44]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #44]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #48]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #48]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #52]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #52]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #56]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #56]
	vadd.f32 s2, s2, s3
	vldr s3, [r7, #60]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r7, #60]
	vadd.f32 s2, s2, s3
	add r2, r2, #16
	cmp r2, #992
	bge label31
	b label28
label26:
	add r0, r0, #1
	vmov.f32 s0, s2
	cmp r0, #100
	bge label77
	mov r2, #0
	cmp r2, #1000
	bge label167
	b label608
label80:
	mov r1, #4000
	mul r1, r0, r1
	add r2, r4, r1
	mov r1, #0
label14:
	add r3, r2, r1, lsl #2
	vldr s0, [r3, #0]
	vadd.f32 s0, s16, s0
	vldr s1, [r3, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #32]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #36]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #40]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #44]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #48]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #52]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #56]
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #60]
	vadd.f32 s16, s0, s1
	add r1, r1, #16
	cmp r1, #992
	bge label17
	b label14
label17:
	add r1, r2, r1, lsl #2
	vldr s0, [r1, #0]
	vadd.f32 s0, s16, s0
	vldr s1, [r1, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vadd.f32 s16, s0, s1
	add r0, r0, #1
	cmp r0, #1000
	bge label81
	b label80
label5:
	add r7, r7, #1
	cmp r7, #1000
	bge label6
	mov r0, #4000
	mul r0, r7, r0
	add r0, r4, r0
	bl getfarray
	cmp r0, #1000
	beq label5
label53:
	movw r12, #8004
	add sp, sp, r12
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, pc }
label81:
	mov r0, #95
	bl _sysy_stoptime
	vmov.f32 s0, s16
	bl putfloat
	mov r0, #0
	b label53
