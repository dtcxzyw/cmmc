.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
params_f40:
.p2align 4
	push { r4, r5, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31 }
	sub sp, sp, #172
	mov r4, r0
	add r5, sp, #96
	vstr s8, [sp, #164]
	vstr s9, [sp, #160]
	vstr s10, [sp, #156]
	vstr s11, [sp, #152]
	vstr s12, [sp, #148]
	vstr s13, [sp, #144]
	vstr s14, [sp, #140]
	vstr s15, [sp, #136]
	vldr s29, [sp, #252]
	vldr s30, [sp, #256]
	vldr s27, [sp, #260]
	vldr s18, [sp, #264]
	vldr s31, [sp, #268]
	vldr s22, [sp, #272]
	vldr s23, [sp, #276]
	vldr s19, [sp, #280]
	vldr s24, [sp, #284]
	vldr s26, [sp, #288]
	vldr s25, [sp, #292]
	vldr s17, [sp, #296]
	vldr s20, [sp, #300]
	vldr s28, [sp, #304]
	vldr s21, [sp, #308]
	vldr s8, [sp, #340]
	vcmp.f32 s8, #0
	vmrs APSR_nzcv, FPSCR
	beq label1033
	vadd.f32 s0, s0, s1
	mov r0, #10
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s3
	vstr s0, [sp, #96]
	vadd.f32 s0, s4, s5
	vadd.f32 s0, s0, s6
	vadd.f32 s0, s0, s7
	vstr s0, [r5, #4]
	vldr s8, [sp, #164]
	vadd.f32 s0, s8, s9
	vadd.f32 s0, s0, s10
	vadd.f32 s0, s0, s11
	vstr s0, [r5, #8]
	vadd.f32 s0, s12, s13
	vadd.f32 s0, s0, s14
	vadd.f32 s0, s0, s15
	vstr s0, [r5, #12]
	vldr s16, [sp, #248]
	vadd.f32 s0, s16, s29
	vadd.f32 s0, s0, s30
	vadd.f32 s0, s0, s27
	vstr s0, [r5, #16]
	vadd.f32 s0, s18, s31
	vadd.f32 s0, s0, s22
	vadd.f32 s0, s0, s23
	vstr s0, [r5, #20]
	vadd.f32 s0, s19, s24
	vadd.f32 s0, s0, s26
	vadd.f32 s0, s0, s25
	vstr s0, [r5, #24]
	vadd.f32 s0, s17, s20
	vadd.f32 s0, s0, s28
	vadd.f32 s0, s0, s21
	vstr s0, [r5, #28]
	vldr s8, [sp, #316]
	vldr s9, [sp, #312]
	vadd.f32 s0, s9, s8
	vldr s8, [sp, #320]
	vadd.f32 s0, s0, s8
	vldr s8, [sp, #324]
	vadd.f32 s0, s0, s8
	vstr s0, [r5, #32]
	vldr s8, [sp, #332]
	vldr s9, [sp, #328]
	vadd.f32 s0, s9, s8
	vldr s8, [sp, #336]
	vadd.f32 s0, s0, s8
	vldr s8, [sp, #340]
	vadd.f32 s0, s0, s8
	vstr s0, [r5, #36]
	mov r1, r5
	bl putfarray
	ldr r0, [r4, #0]
	add r0, r5, r0, lsl #2
	vldr s0, [r0, #0]
label1031:
	add sp, sp, #172
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31 }
	pop { r4, r5, pc }
label1033:
	vadd.f32 s0, s0, s1
	vstr s29, [sp, #0]
	vstr s30, [sp, #4]
	vstr s27, [sp, #8]
	vstr s18, [sp, #12]
	vadd.f32 s0, s0, s2
	vstr s31, [sp, #16]
	vstr s22, [sp, #20]
	vstr s23, [sp, #24]
	vstr s19, [sp, #28]
	vstr s24, [sp, #32]
	vstr s26, [sp, #36]
	vstr s25, [sp, #40]
	vstr s17, [sp, #44]
	vstr s20, [sp, #48]
	vstr s28, [sp, #52]
	vstr s21, [sp, #56]
	vldr s9, [sp, #312]
	vstr s9, [sp, #60]
	vldr s8, [sp, #316]
	vstr s8, [sp, #64]
	vldr s8, [sp, #320]
	vstr s8, [sp, #68]
	vldr s8, [sp, #324]
	vstr s8, [sp, #72]
	vldr s9, [sp, #328]
	vstr s9, [sp, #76]
	vldr s8, [sp, #332]
	vstr s8, [sp, #80]
	vldr s8, [sp, #336]
	vstr s8, [sp, #84]
	vldr s8, [sp, #340]
	vstr s8, [sp, #88]
	vstr s0, [sp, #92]
	vldr s16, [sp, #248]
	vldr s15, [sp, #136]
	vldr s14, [sp, #140]
	vldr s13, [sp, #144]
	vldr s12, [sp, #148]
	vldr s11, [sp, #152]
	vldr s10, [sp, #156]
	vldr s9, [sp, #160]
	vldr s8, [sp, #164]
	vmov.f32 s0, s1
	vmov.f32 s1, s2
	vmov.f32 s2, s3
	vmov.f32 s3, s4
	vmov.f32 s4, s5
	vmov.f32 s5, s6
	vmov.f32 s6, s7
	vmov.f32 s7, s8
	vmov.f32 s8, s9
	vmov.f32 s9, s10
	vmov.f32 s10, s11
	vmov.f32 s11, s12
	vmov.f32 s12, s13
	vmov.f32 s13, s14
	vmov.f32 s14, s15
	vmov.f32 s15, s16
	mov r0, r4
	bl params_f40
	b label1031
params_f40_i24:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30 }
	vmov.f32 s17, s5
	movs r5, r0
	mov r4, r1
	mov r6, r2
	sub sp, sp, #356
	add r4, sp, #280
	vstr s14, [sp, #264]
	vstr s5, [sp, #324]
	vstr s7, [sp, #332]
	vstr s13, [sp, #336]
	vstr s15, [sp, #340]
	vstr s6, [sp, #344]
	vstr s11, [sp, #268]
	str r3, [sp, #256]
	str r1, [sp, #252]
	add r1, sp, #184
	str r2, [sp, #240]
	str r0, [sp, #232]
	ldr r6, [sp, #448]
	ldr r8, [sp, #452]
	ldr r7, [sp, #460]
	ldr r2, [sp, #468]
	ldr r0, [sp, #472]
	vldr s21, [sp, #480]
	vldr s29, [sp, #484]
	vldr s20, [sp, #488]
	ldr r9, [sp, #492]
	vldr s23, [sp, #504]
	vldr s26, [sp, #508]
	vldr s19, [sp, #512]
	vldr s6, [sp, #516]
	vldr s27, [sp, #528]
	vldr s18, [sp, #532]
	vldr s30, [sp, #536]
	vldr s11, [sp, #544]
	vldr s13, [sp, #556]
	vldr s15, [sp, #560]
	vldr s28, [sp, #564]
	vldr s7, [sp, #568]
	ldr r10, [sp, #572]
	vldr s24, [sp, #584]
	vldr s14, [sp, #588]
	vldr s22, [sp, #592]
	vldr s17, [sp, #596]
	vldr s25, [sp, #604]
	vldr s16, [sp, #612]
	vldr s5, [sp, #620]
	str r4, [sp, #224]
	str r1, [sp, #228]
	beq label728
	vadd.f32 s9, s30, s9
	vadd.f32 s0, s0, s19
	vadd.f32 s9, s9, s16
	vadd.f32 s0, s0, s12
	vadd.f32 s16, s9, s4
	vadd.f32 s19, s0, s3
	vadd.f32 s0, s1, s29
	vstr s16, [sp, #184]
	vadd.f32 s0, s0, s18
	vadd.f32 s18, s0, s10
	vstr s19, [r1, #4]
	vadd.f32 s0, s8, s28
	vstr s18, [r1, #8]
	vadd.f32 s0, s0, s27
	vadd.f32 s0, s0, s2
	vstr s0, [sp, #328]
	vstr s0, [r1, #12]
	vadd.f32 s0, s26, s25
	vadd.f32 s0, s0, s24
	vadd.f32 s0, s0, s14
	vstr s0, [sp, #320]
	vstr s0, [r1, #16]
	vldr s14, [sp, #264]
	vadd.f32 s0, s14, s23
	vadd.f32 s0, s0, s22
	vadd.f32 s0, s0, s21
	vstr s0, [sp, #316]
	vstr s0, [r1, #20]
	vadd.f32 s0, s15, s20
	vadd.f32 s0, s0, s17
	vadd.f32 s0, s0, s13
	vstr s0, [sp, #272]
	vstr s0, [r1, #24]
	vldr s17, [sp, #324]
	vadd.f32 s0, s17, s7
	vldr s7, [sp, #332]
	vadd.f32 s0, s0, s7
	vadd.f32 s0, s0, s11
	vstr s0, [sp, #260]
	vstr s0, [r1, #28]
	vldr s15, [sp, #340]
	vldr s13, [sp, #336]
	vadd.f32 s0, s13, s15
	vadd.f32 s0, s0, s6
	vadd.f32 s0, s0, s5
	vstr s0, [r1, #32]
	vldr s6, [sp, #344]
	vldr s7, [sp, #600]
	vldr s11, [sp, #268]
	vldr s20, [sp, #496]
	vadd.f32 s0, s7, s6
	vadd.f32 s0, s0, s11
	vadd.f32 s0, s0, s20
	vstr s0, [r1, #36]
	ldr r4, [sp, #252]
	add r3, r4, r3
	add r7, r7, r3
	add r3, r6, r8
	str r7, [sp, #280]
	add r8, r10, r3
	ldr r4, [sp, #224]
	str r8, [r4, #4]
	ldr r6, [sp, #240]
	add r2, r6, r2
	add r2, r9, r2
	str r2, [sp, #236]
	str r2, [r4, #8]
	ldr r2, [sp, #524]
	add r2, r0, r2
	ldr r0, [sp, #548]
	add r0, r0, r2
	str r0, [sp, #244]
	str r0, [r4, #12]
	ldr r0, [sp, #540]
	ldr r2, [sp, #476]
	add r2, r2, r0
	ldr r0, [sp, #616]
	add r0, r0, r2
	str r0, [sp, #248]
	str r0, [r4, #16]
	ldr r0, [sp, #552]
	ldr r2, [sp, #500]
	add r2, r2, r0
	ldr r0, [sp, #608]
	add r0, r0, r2
	str r0, [sp, #312]
	str r0, [r4, #20]
	ldr r0, [sp, #520]
	ldr r3, [sp, #464]
	add r2, r3, r0
	ldr r0, [sp, #580]
	add r6, r0, r2
	str r6, [r4, #24]
	ldr r5, [sp, #232]
	ldr r3, [sp, #456]
	ldr r0, [sp, #576]
	add r2, r5, r3
	add r5, r0, r2
	mov r0, #10
	str r5, [r4, #28]
	bl putfarray
	mov r1, r4
	mov r0, #8
	bl putarray
	vmov s0, r7
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s16
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r8
	str r0, [sp, #280]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s19
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r4, #4]
	ldr r2, [sp, #236]
	vmov s0, r2
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s18
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r4, #8]
	ldr r0, [sp, #244]
	vmov s0, r0
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #328]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r4, #12]
	ldr r0, [sp, #248]
	vmov s0, r0
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #320]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r4, #16]
	ldr r0, [sp, #312]
	vmov s0, r0
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #316]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r6
	str r0, [r4, #20]
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #272]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r5
	str r0, [r4, #24]
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #260]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r4, #28]
	ldr r0, [sp, #624]
	ldr r0, [r0, #0]
	ldr r0, [r4, r0, lsl #2]
	vmov s0, r0
	vcvt.f32.s32 s0, s0
label726:
	add sp, sp, #356
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label728:
	str r6, [sp, #0]
	str r8, [sp, #4]
	ldr r3, [sp, #456]
	str r3, [sp, #8]
	str r7, [sp, #12]
	ldr r3, [sp, #464]
	str r3, [sp, #16]
	str r2, [sp, #20]
	str r0, [sp, #24]
	ldr r2, [sp, #476]
	str r2, [sp, #28]
	vstr s21, [sp, #32]
	vstr s29, [sp, #36]
	vstr s20, [sp, #40]
	str r9, [sp, #44]
	vldr s20, [sp, #496]
	vstr s20, [sp, #48]
	ldr r2, [sp, #500]
	str r2, [sp, #52]
	vstr s23, [sp, #56]
	vstr s26, [sp, #60]
	vstr s19, [sp, #64]
	vstr s6, [sp, #68]
	ldr r0, [sp, #520]
	str r0, [sp, #72]
	ldr r2, [sp, #524]
	str r2, [sp, #76]
	vstr s27, [sp, #80]
	vstr s18, [sp, #84]
	vstr s30, [sp, #88]
	ldr r0, [sp, #540]
	str r0, [sp, #92]
	vstr s11, [sp, #96]
	ldr r0, [sp, #548]
	str r0, [sp, #100]
	ldr r0, [sp, #552]
	str r0, [sp, #104]
	vstr s13, [sp, #108]
	vstr s15, [sp, #112]
	vstr s28, [sp, #116]
	vstr s7, [sp, #120]
	str r10, [sp, #124]
	ldr r0, [sp, #576]
	str r0, [sp, #128]
	ldr r0, [sp, #580]
	str r0, [sp, #132]
	vstr s24, [sp, #136]
	vstr s14, [sp, #140]
	vstr s22, [sp, #144]
	vstr s17, [sp, #148]
	vldr s7, [sp, #600]
	vstr s7, [sp, #152]
	vstr s25, [sp, #156]
	ldr r0, [sp, #608]
	str r0, [sp, #160]
	vstr s16, [sp, #164]
	ldr r0, [sp, #616]
	str r0, [sp, #168]
	vstr s5, [sp, #172]
	ldr r0, [sp, #624]
	str r0, [sp, #176]
	ldr r6, [sp, #240]
	ldr r4, [sp, #252]
	ldr r3, [sp, #256]
	vldr s11, [sp, #268]
	vldr s6, [sp, #344]
	vldr s15, [sp, #340]
	vldr s13, [sp, #336]
	vldr s7, [sp, #332]
	vldr s17, [sp, #324]
	vldr s14, [sp, #264]
	mov r0, r3
	mov r1, r4
	mov r2, r6
	vmov.f32 s5, s17
	bl params_f40_i24
	b label726
params_fa40:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r6, r2
	mov r8, r0
	sub sp, sp, #220
	mov r5, r3
	mov r7, r1
	str r1, [sp, #152]
	add r5, sp, #168
	str r2, [sp, #156]
	str r3, [sp, #160]
	ldr r1, [sp, #252]
	ldr r2, [sp, #256]
	ldr r3, [sp, #260]
	ldr r4, [sp, #264]
	ldr r0, [sp, #392]
	str r5, [sp, #208]
	ldr r9, [r0, #0]
	add r5, r8, r9, lsl #2
	str r9, [sp, #212]
	vldr s0, [r5, #0]
	add r5, r7, r9, lsl #2
	vldr s1, [r5, #0]
	add r5, r6, r9, lsl #2
	add r6, r4, r9, lsl #2
	vadd.f32 s0, s0, s1
	vldr s1, [r5, #0]
	ldr r5, [sp, #160]
	vadd.f32 s0, s0, s1
	add r5, r5, r9, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #168]
	ldr r8, [sp, #248]
	add r5, r8, r9, lsl #2
	vldr s0, [r5, #0]
	add r5, r1, r9, lsl #2
	vldr s1, [r5, #0]
	add r5, r2, r9, lsl #2
	vadd.f32 s0, s0, s1
	vldr s1, [r5, #0]
	add r5, r3, r9, lsl #2
	vadd.f32 s0, s0, s1
	vldr s1, [r5, #0]
	ldr r5, [sp, #208]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #4]
	vldr s0, [r6, #0]
	ldr r6, [sp, #268]
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #272]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #276]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #8]
	ldr r6, [sp, #280]
	add r6, r6, r9, lsl #2
	vldr s0, [r6, #0]
	ldr r6, [sp, #284]
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #288]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #292]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #12]
	ldr r6, [sp, #296]
	add r6, r6, r9, lsl #2
	vldr s0, [r6, #0]
	ldr r6, [sp, #300]
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #304]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #308]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #16]
	ldr r6, [sp, #312]
	add r6, r6, r9, lsl #2
	vldr s0, [r6, #0]
	ldr r6, [sp, #316]
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #320]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #324]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #20]
	ldr r6, [sp, #328]
	add r6, r6, r9, lsl #2
	vldr s0, [r6, #0]
	ldr r6, [sp, #332]
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #336]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #340]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #24]
	ldr r6, [sp, #344]
	add r6, r6, r9, lsl #2
	vldr s0, [r6, #0]
	ldr r6, [sp, #348]
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #352]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #356]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #28]
	ldr r6, [sp, #360]
	add r6, r6, r9, lsl #2
	vldr s0, [r6, #0]
	ldr r6, [sp, #364]
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #368]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #372]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #32]
	ldr r6, [sp, #376]
	add r6, r6, r9, lsl #2
	vldr s0, [r6, #0]
	ldr r6, [sp, #380]
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #384]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	ldr r6, [sp, #388]
	vadd.f32 s0, s0, s1
	add r6, r6, r9, lsl #2
	vldr s1, [r6, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [r5, #36]
	mov r5, #0
	vldr s0, [r6, #0]
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	movwne r5, #1
	vmov s0, r5
	mov r5, #0
	vcvt.f32.s32 s0, s0
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	movwne r5, #1
	vmov s0, r5
	vcvt.f32.s32 s0, s0
	vcmp.f32 s0, #0
	vmrs APSR_nzcv, FPSCR
	beq label420
	ldr r5, [sp, #208]
	mov r0, #10
	mov r1, r5
	bl putfarray
	ldr r9, [sp, #212]
	add r0, r5, r9, lsl #2
	vldr s0, [r0, #0]
label418:
	add sp, sp, #220
	pop { r4, r5, r6, r7, r8, r9, pc }
label420:
	str r1, [sp, #0]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #12]
	ldr r6, [sp, #268]
	str r6, [sp, #16]
	ldr r6, [sp, #272]
	str r6, [sp, #20]
	ldr r6, [sp, #276]
	str r6, [sp, #24]
	ldr r6, [sp, #280]
	str r6, [sp, #28]
	ldr r6, [sp, #284]
	str r6, [sp, #32]
	ldr r6, [sp, #288]
	str r6, [sp, #36]
	ldr r6, [sp, #292]
	str r6, [sp, #40]
	ldr r6, [sp, #296]
	str r6, [sp, #44]
	ldr r6, [sp, #300]
	str r6, [sp, #48]
	ldr r6, [sp, #304]
	str r6, [sp, #52]
	ldr r6, [sp, #308]
	str r6, [sp, #56]
	ldr r6, [sp, #312]
	str r6, [sp, #60]
	ldr r6, [sp, #316]
	str r6, [sp, #64]
	ldr r6, [sp, #320]
	str r6, [sp, #68]
	ldr r6, [sp, #324]
	str r6, [sp, #72]
	ldr r6, [sp, #328]
	str r6, [sp, #76]
	ldr r6, [sp, #332]
	str r6, [sp, #80]
	ldr r6, [sp, #336]
	str r6, [sp, #84]
	ldr r6, [sp, #340]
	str r6, [sp, #88]
	ldr r6, [sp, #344]
	str r6, [sp, #92]
	ldr r6, [sp, #348]
	str r6, [sp, #96]
	ldr r6, [sp, #352]
	str r6, [sp, #100]
	ldr r6, [sp, #356]
	str r6, [sp, #104]
	ldr r6, [sp, #360]
	str r6, [sp, #108]
	ldr r6, [sp, #364]
	str r6, [sp, #112]
	ldr r6, [sp, #368]
	str r6, [sp, #116]
	ldr r6, [sp, #372]
	str r6, [sp, #120]
	ldr r6, [sp, #376]
	str r6, [sp, #124]
	ldr r6, [sp, #380]
	str r6, [sp, #128]
	ldr r6, [sp, #384]
	str r6, [sp, #132]
	ldr r6, [sp, #388]
	str r6, [sp, #136]
	ldr r5, [sp, #208]
	str r5, [sp, #140]
	str r0, [sp, #144]
	ldr r8, [sp, #248]
	ldr r5, [sp, #160]
	ldr r6, [sp, #156]
	ldr r7, [sp, #152]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r8
	bl params_fa40
	b label418
params_mix:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	mov r6, r1
	mov r5, r0
	sub sp, sp, #352
	mov r1, r2
	add r4, sp, #296
	vstr s3, [sp, #220]
	add r2, sp, #248
	vstr s4, [sp, #224]
	vstr s5, [sp, #228]
	vstr s6, [sp, #232]
	vstr s7, [sp, #236]
	vstr s8, [sp, #240]
	vstr s9, [sp, #244]
	vstr s10, [sp, #288]
	vstr s11, [sp, #292]
	vstr s12, [sp, #336]
	vstr s13, [sp, #340]
	vstr s14, [sp, #344]
	vstr s15, [sp, #348]
	str r6, [sp, #196]
	str r3, [sp, #192]
	vldr s21, [sp, #564]
	vldr s23, [sp, #568]
	vldr s20, [sp, #588]
	vldr s18, [sp, #596]
	vldr s25, [sp, #608]
	str r4, [sp, #184]
	str r2, [sp, #200]
	ldr r0, [sp, #616]
	ldr r0, [r0, #0]
	add r1, r1, r0, lsl #2
	str r0, [sp, #188]
	vldr s3, [r1, #0]
	vadd.f32 s3, s0, s3
	vadd.f32 s3, s3, s1
	vadd.f32 s16, s3, s2
	vstr s16, [sp, #248]
	ldr r1, [sp, #440]
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vldr s3, [sp, #220]
	ldr r1, [sp, #456]
	vadd.f32 s3, s3, s4
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	ldr r1, [sp, #472]
	vadd.f32 s3, s3, s4
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s17, s3, s4
	vstr s17, [r2, #4]
	ldr r1, [sp, #476]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	vldr s4, [sp, #224]
	vadd.f32 s3, s3, s4
	vadd.f32 s3, s3, s5
	vadd.f32 s19, s3, s6
	vstr s19, [r2, #8]
	ldr r1, [sp, #480]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s8
	vadd.f32 s22, s3, s9
	vstr s22, [r2, #12]
	ldr r1, [sp, #492]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	ldr r1, [sp, #504]
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s3, s3, s4
	vadd.f32 s3, s3, s10
	vadd.f32 s24, s3, s11
	vstr s24, [r2, #16]
	ldr r1, [sp, #516]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	ldr r1, [sp, #520]
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s3, s3, s4
	vadd.f32 s4, s14, s15
	vadd.f32 s3, s3, s12
	vadd.f32 s26, s3, s13
	vstr s26, [r2, #20]
	ldr r1, [sp, #548]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	vadd.f32 s3, s4, s3
	vadd.f32 s27, s3, s21
	vstr s27, [r2, #24]
	ldr r1, [sp, #572]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	ldr r1, [sp, #584]
	vadd.f32 s3, s23, s3
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s3, s3, s4
	vadd.f32 s28, s3, s20
	vstr s28, [r2, #28]
	ldr r1, [sp, #600]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	ldr r1, [sp, #604]
	vadd.f32 s3, s18, s3
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	mov r1, #0
	vadd.f32 s3, s3, s4
	vadd.f32 s3, s3, s25
	vstr s3, [sp, #216]
	vstr s3, [r2, #32]
	vmov s3, r1
	str r1, [sp, #204]
	vstr s3, [r2, #36]
	add r2, r6, r3
	ldr r1, [r5, r0, lsl #2]
	add r1, r1, r2
	str r1, [sp, #208]
	str r1, [sp, #296]
	ldr r1, [sp, #444]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #452]
	ldr r3, [sp, #448]
	add r2, r3, r2
	add r1, r1, r2
	str r1, [sp, #212]
	str r1, [r4, #4]
	ldr r1, [sp, #460]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #468]
	add r1, r2, r1
	ldr r2, [sp, #464]
	ldr r2, [r2, r0, lsl #2]
	add r5, r1, r2
	str r5, [r4, #8]
	ldr r1, [sp, #488]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #484]
	add r1, r2, r1
	ldr r2, [sp, #496]
	ldr r2, [r2, r0, lsl #2]
	add r6, r1, r2
	str r6, [r4, #12]
	ldr r1, [sp, #500]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #512]
	add r1, r2, r1
	ldr r2, [sp, #508]
	ldr r2, [r2, r0, lsl #2]
	add r7, r1, r2
	str r7, [r4, #16]
	ldr r1, [sp, #524]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #532]
	add r1, r2, r1
	ldr r2, [sp, #528]
	ldr r2, [r2, r0, lsl #2]
	add r8, r1, r2
	str r8, [r4, #20]
	ldr r1, [sp, #540]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #544]
	ldr r3, [sp, #536]
	add r2, r3, r2
	add r9, r1, r2
	str r9, [r4, #24]
	ldr r1, [sp, #556]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #552]
	add r1, r2, r1
	ldr r2, [sp, #560]
	ldr r2, [r2, r0, lsl #2]
	add r10, r1, r2
	str r10, [r4, #28]
	ldr r1, [sp, #580]
	ldr r0, [r1, r0, lsl #2]
	ldr r1, [sp, #592]
	ldr r2, [sp, #576]
	add r1, r2, r1
	ldr r2, [sp, #612]
	cmp r2, #0
	add r1, r2, r1
	add r11, r0, r1
	str r11, [r4, #32]
	ldr r1, [sp, #204]
	str r1, [r4, #36]
	bne label4
	b label5
label2:
	add sp, sp, #352
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label4:
	ldr r2, [sp, #200]
	mov r0, #10
	mov r1, r2
	bl putfarray
	mov r0, #10
	ldr r4, [sp, #184]
	mov r1, r4
	bl putarray
	ldr r1, [sp, #208]
	vmov s0, r1
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s16
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [sp, #296]
	ldr r1, [sp, #212]
	vmov s0, r1
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s17
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r5
	str r0, [r4, #4]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s19
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r6
	str r0, [r4, #8]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s22
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r7
	str r0, [r4, #12]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s24
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r8
	str r0, [r4, #16]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s26
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r9
	str r0, [r4, #20]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s27
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r10
	str r0, [r4, #24]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s28
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r11
	str r0, [r4, #28]
	vcvt.f32.s32 s0, s0
	vldr s3, [sp, #216]
	vsub.f32 s0, s0, s3
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [r4, #32]
	mov r0, #0
	str r0, [r4, #36]
	ldr r0, [sp, #188]
	ldr r0, [r4, r0, lsl #2]
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s0, s3
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	b label2
label5:
	vcvt.s32.f32 s3, s25
	ldr r2, [sp, #612]
	ldr r1, [sp, #440]
	vmov r0, s3
	vmov s3, r2
	str r1, [sp, #0]
	ldr r1, [sp, #444]
	vcvt.f32.s32 s3, s3
	str r1, [sp, #4]
	ldr r3, [sp, #448]
	str r3, [sp, #8]
	ldr r2, [sp, #452]
	str r2, [sp, #12]
	ldr r1, [sp, #456]
	str r1, [sp, #16]
	ldr r1, [sp, #460]
	str r1, [sp, #20]
	ldr r2, [sp, #464]
	str r2, [sp, #24]
	ldr r2, [sp, #468]
	str r2, [sp, #28]
	ldr r1, [sp, #472]
	str r1, [sp, #32]
	ldr r1, [sp, #476]
	str r1, [sp, #36]
	ldr r1, [sp, #480]
	str r1, [sp, #40]
	ldr r2, [sp, #484]
	str r2, [sp, #44]
	ldr r1, [sp, #488]
	str r1, [sp, #48]
	ldr r1, [sp, #492]
	str r1, [sp, #52]
	ldr r2, [sp, #496]
	str r2, [sp, #56]
	ldr r1, [sp, #500]
	str r1, [sp, #60]
	ldr r1, [sp, #504]
	str r1, [sp, #64]
	ldr r2, [sp, #508]
	str r2, [sp, #68]
	ldr r2, [sp, #512]
	str r2, [sp, #72]
	ldr r1, [sp, #516]
	str r1, [sp, #76]
	ldr r1, [sp, #520]
	str r1, [sp, #80]
	ldr r1, [sp, #524]
	str r1, [sp, #84]
	ldr r2, [sp, #528]
	str r2, [sp, #88]
	ldr r2, [sp, #532]
	str r2, [sp, #92]
	ldr r3, [sp, #536]
	str r3, [sp, #96]
	ldr r1, [sp, #540]
	str r1, [sp, #100]
	ldr r2, [sp, #544]
	str r2, [sp, #104]
	ldr r1, [sp, #548]
	str r1, [sp, #108]
	ldr r2, [sp, #552]
	str r2, [sp, #112]
	ldr r1, [sp, #556]
	str r1, [sp, #116]
	ldr r2, [sp, #560]
	str r2, [sp, #120]
	vstr s21, [sp, #124]
	vstr s23, [sp, #128]
	ldr r1, [sp, #572]
	str r1, [sp, #132]
	ldr r2, [sp, #576]
	str r2, [sp, #136]
	ldr r1, [sp, #580]
	str r1, [sp, #140]
	ldr r1, [sp, #584]
	str r1, [sp, #144]
	vstr s20, [sp, #148]
	ldr r1, [sp, #592]
	str r1, [sp, #152]
	vstr s18, [sp, #156]
	ldr r1, [sp, #600]
	str r1, [sp, #160]
	ldr r1, [sp, #604]
	str r1, [sp, #164]
	vstr s3, [sp, #168]
	str r0, [sp, #172]
	ldr r0, [sp, #616]
	str r0, [sp, #176]
	ldr r4, [sp, #184]
	ldr r3, [sp, #192]
	ldr r6, [sp, #196]
	ldr r2, [sp, #200]
	vldr s15, [sp, #348]
	vldr s14, [sp, #344]
	vldr s13, [sp, #340]
	vldr s12, [sp, #336]
	vldr s11, [sp, #292]
	vldr s10, [sp, #288]
	vldr s9, [sp, #244]
	vldr s8, [sp, #240]
	vldr s7, [sp, #236]
	vldr s6, [sp, #232]
	vldr s5, [sp, #228]
	vldr s4, [sp, #224]
	vldr s3, [sp, #220]
	mov r0, r4
	mov r1, r6
	bl params_mix
	b label2
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29 }
	movw r12, #1356
	sub sp, sp, r12
	add r4, sp, #864
	add r5, sp, #568
	add r6, sp, #552
	str r6, [sp, #536]
	str r5, [sp, #540]
	str r4, [sp, #544]
	bl getint
	mov r5, #0
	str r0, [sp, #552]
.p2align 4
label1187:
	add r0, r5, r5, lsl #1
	ldr r4, [sp, #544]
	add r0, r4, r0, lsl #2
	bl getfarray
	add r5, r5, #1
	cmp r5, #40
	blt label1187
	mov r4, #0
.p2align 4
label1189:
	add r0, r4, r4, lsl #1
	ldr r5, [sp, #540]
	add r0, r5, r0, lsl #2
	bl getarray
	add r4, r4, #1
	cmp r4, #24
	blt label1189
	ldr r10, [sp, #552]
	ldr r4, [sp, #544]
	add r0, r4, r10, lsl #2
	vldr s0, [r0, #0]
	add r0, r4, #12
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #388]
	vldr s22, [r0, #0]
	add r0, r4, #24
	add r0, r0, r10, lsl #2
	vldr s2, [r0, #0]
	add r0, r4, #36
	add r0, r0, r10, lsl #2
	vstr s2, [sp, #504]
	vldr s5, [r0, #0]
	add r0, r4, #48
	add r0, r0, r10, lsl #2
	vstr s5, [sp, #516]
	vldr s4, [r0, #0]
	add r0, r4, #60
	add r0, r0, r10, lsl #2
	vstr s4, [sp, #512]
	vldr s6, [r0, #0]
	add r0, r4, #72
	add r0, r0, r10, lsl #2
	vstr s6, [sp, #412]
	vldr s23, [r0, #0]
	add r0, r4, #84
	add r0, r0, r10, lsl #2
	vldr s24, [r0, #0]
	add r0, r4, #96
	add r0, r0, r10, lsl #2
	vldr s25, [r0, #0]
	add r0, r4, #108
	add r0, r0, r10, lsl #2
	vldr s9, [r0, #0]
	add r0, r4, #120
	add r0, r0, r10, lsl #2
	vstr s9, [sp, #496]
	vldr s10, [r0, #0]
	add r0, r4, #132
	add r0, r0, r10, lsl #2
	vstr s10, [sp, #456]
	vldr s11, [r0, #0]
	add r0, r4, #144
	add r0, r0, r10, lsl #2
	vstr s11, [sp, #508]
	vldr s12, [r0, #0]
	add r0, r4, #156
	add r0, r0, r10, lsl #2
	vstr s12, [sp, #404]
	vldr s13, [r0, #0]
	add r0, r4, #168
	add r0, r0, r10, lsl #2
	vstr s13, [sp, #484]
	vldr s14, [r0, #0]
	add r0, r4, #180
	add r0, r0, r10, lsl #2
	vstr s14, [sp, #392]
	vldr s15, [r0, #0]
	add r0, r4, #192
	add r0, r0, r10, lsl #2
	vstr s15, [sp, #500]
	vldr s0, [r0, #0]
	add r0, r4, #204
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #468]
	vldr s0, [r0, #0]
	add r0, r4, #216
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #424]
	vldr s29, [r0, #0]
	add r0, r4, #228
	add r0, r0, r10, lsl #2
	vstr s29, [sp, #376]
	vldr s28, [r0, #0]
	add r0, r4, #240
	add r0, r0, r10, lsl #2
	vstr s28, [sp, #488]
	vldr s14, [r0, #0]
	add r0, r4, #252
	add r0, r0, r10, lsl #2
	vstr s14, [sp, #408]
	vldr s0, [r0, #0]
	add r0, r4, #264
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #480]
	vldr s12, [r0, #0]
	add r0, r4, #276
	add r0, r0, r10, lsl #2
	vstr s12, [sp, #340]
	vldr s27, [r0, #0]
	add r0, r4, #288
	add r0, r0, r10, lsl #2
	vstr s27, [sp, #380]
	vldr s26, [r0, #0]
	add r0, r4, #300
	add r0, r0, r10, lsl #2
	vstr s26, [sp, #396]
	vldr s16, [r0, #0]
	add r0, r4, #312
	add r0, r0, r10, lsl #2
	vldr s0, [r0, #0]
	add r0, r4, #324
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #452]
	vldr s21, [r0, #0]
	add r0, r4, #336
	add r0, r0, r10, lsl #2
	vldr s18, [r0, #0]
	add r0, r4, #348
	add r0, r0, r10, lsl #2
	vldr s0, [r0, #0]
	add r0, r4, #360
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #532]
	vldr s7, [r0, #0]
	add r0, r4, #372
	add r0, r0, r10, lsl #2
	vstr s7, [sp, #416]
	vldr s19, [r0, #0]
	add r0, r4, #384
	add r0, r0, r10, lsl #2
	vldr s17, [r0, #0]
	add r0, r4, #396
	add r0, r0, r10, lsl #2
	vldr s26, [r0, #0]
	add r0, r4, #408
	add r0, r0, r10, lsl #2
	vstr s26, [sp, #420]
	vldr s0, [r0, #0]
	add r0, r4, #420
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #524]
	vldr s20, [r0, #0]
	add r0, r4, #432
	add r0, r0, r10, lsl #2
	vldr s0, [r0, #0]
	add r0, r4, #444
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #528]
	vldr s6, [r0, #0]
	add r0, r4, #456
	add r0, r0, r10, lsl #2
	vstr s6, [sp, #440]
	vldr s13, [r0, #0]
	add r0, r4, #468
	add r0, r0, r10, lsl #2
	vstr s13, [sp, #428]
	vldr s0, [r0, #0]
	vstr s0, [sp, #520]
	vldr s0, [sp, #468]
	vstr s0, [sp, #0]
	vldr s0, [sp, #424]
	vstr s0, [sp, #4]
	vstr s29, [sp, #8]
	vstr s28, [sp, #12]
	vstr s14, [sp, #16]
	vldr s0, [sp, #480]
	vstr s0, [sp, #20]
	vstr s12, [sp, #24]
	vstr s27, [sp, #28]
	vldr s26, [sp, #396]
	vstr s26, [sp, #32]
	vstr s16, [sp, #36]
	vldr s0, [sp, #452]
	vstr s0, [sp, #40]
	vstr s21, [sp, #44]
	vstr s18, [sp, #48]
	vldr s0, [sp, #532]
	vstr s0, [sp, #52]
	vstr s7, [sp, #56]
	vstr s19, [sp, #60]
	vstr s17, [sp, #64]
	vldr s26, [sp, #420]
	vstr s26, [sp, #68]
	vldr s0, [sp, #524]
	vstr s0, [sp, #72]
	vstr s20, [sp, #76]
	vldr s0, [sp, #528]
	vstr s0, [sp, #80]
	vstr s6, [sp, #84]
	vstr s13, [sp, #88]
	vldr s0, [sp, #520]
	vstr s0, [sp, #92]
	ldr r6, [sp, #536]
	vldr s14, [sp, #392]
	vldr s13, [sp, #484]
	vldr s0, [sp, #388]
	vldr s6, [sp, #412]
	vldr s12, [sp, #404]
	vmov.f32 s1, s22
	vmov.f32 s3, s5
	vmov.f32 s5, s6
	vmov.f32 s6, s23
	vmov.f32 s7, s24
	vmov.f32 s8, s25
	mov r0, r6
	bl params_f40
	vstr s0, [sp, #432]
	ldr r5, [sp, #540]
	add r0, r5, #276
	ldr r0, [r0, r10, lsl #2]
	str r0, [sp, #312]
	add r0, r5, #24
	ldr r7, [r0, r10, lsl #2]
	add r0, r5, #72
	ldr r2, [r0, r10, lsl #2]
	add r0, r5, #12
	ldr r8, [r0, r10, lsl #2]
	add r0, r5, #48
	ldr r9, [r0, r10, lsl #2]
	add r0, r5, #60
	ldr r3, [r0, r10, lsl #2]
	add r0, r5, #264
	str r3, [sp, #548]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #228
	str r1, [sp, #216]
	ldr r1, [r5, r10, lsl #2]
	str r1, [sp, #360]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #84
	str r1, [sp, #212]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #120
	str r1, [sp, #208]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #156
	str r1, [sp, #200]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #96
	str r1, [sp, #196]
	ldr r3, [r0, r10, lsl #2]
	add r0, r5, #204
	str r3, [sp, #368]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #216
	str r1, [sp, #352]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #108
	str r1, [sp, #476]
	ldr r3, [r0, r10, lsl #2]
	add r0, r5, #144
	str r3, [sp, #464]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #132
	str r1, [sp, #348]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #192
	str r1, [sp, #472]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #36
	str r1, [sp, #460]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #252
	str r1, [sp, #448]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #240
	str r1, [sp, #436]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #180
	str r1, [sp, #556]
	add r1, r5, #168
	ldr r0, [r0, r10, lsl #2]
	ldr r1, [r1, r10, lsl #2]
	str r1, [sp, #560]
	str r9, [sp, #0]
	ldr r3, [sp, #548]
	str r3, [sp, #4]
	ldr r1, [sp, #216]
	str r1, [sp, #8]
	ldr r1, [sp, #360]
	str r1, [sp, #12]
	ldr r1, [sp, #212]
	str r1, [sp, #16]
	ldr r1, [sp, #208]
	str r1, [sp, #20]
	ldr r1, [sp, #200]
	str r1, [sp, #24]
	ldr r1, [sp, #196]
	str r1, [sp, #28]
	vldr s27, [sp, #380]
	vstr s27, [sp, #32]
	vldr s9, [sp, #496]
	vstr s9, [sp, #36]
	vstr s16, [sp, #40]
	ldr r3, [sp, #368]
	str r3, [sp, #44]
	vldr s0, [sp, #520]
	vstr s0, [sp, #48]
	ldr r1, [sp, #352]
	str r1, [sp, #52]
	vldr s0, [sp, #480]
	vstr s0, [sp, #56]
	vldr s0, [sp, #468]
	vstr s0, [sp, #60]
	vldr s6, [sp, #412]
	vstr s6, [sp, #64]
	vldr s0, [sp, #524]
	vstr s0, [sp, #68]
	ldr r1, [sp, #476]
	str r1, [sp, #72]
	ldr r3, [sp, #464]
	str r3, [sp, #76]
	vldr s14, [sp, #392]
	vstr s14, [sp, #80]
	vldr s10, [sp, #456]
	vstr s10, [sp, #84]
	vldr s0, [sp, #388]
	vstr s0, [sp, #88]
	ldr r1, [sp, #348]
	str r1, [sp, #92]
	vstr s19, [sp, #96]
	ldr r1, [sp, #472]
	str r1, [sp, #100]
	ldr r1, [sp, #460]
	str r1, [sp, #104]
	vstr s21, [sp, #108]
	vldr s26, [sp, #396]
	vstr s26, [sp, #112]
	vldr s13, [sp, #484]
	vstr s13, [sp, #116]
	vldr s0, [sp, #532]
	vstr s0, [sp, #120]
	ldr r1, [sp, #448]
	str r1, [sp, #124]
	ldr r1, [sp, #436]
	str r1, [sp, #128]
	ldr r1, [sp, #556]
	str r1, [sp, #132]
	vldr s29, [sp, #376]
	vstr s29, [sp, #136]
	vldr s28, [sp, #488]
	vstr s28, [sp, #140]
	vldr s12, [sp, #340]
	vstr s12, [sp, #144]
	vldr s0, [sp, #452]
	vstr s0, [sp, #148]
	vldr s0, [sp, #528]
	vstr s0, [sp, #152]
	vldr s0, [sp, #424]
	vstr s0, [sp, #156]
	str r0, [sp, #160]
	vldr s2, [sp, #504]
	vstr s2, [sp, #164]
	ldr r1, [sp, #560]
	str r1, [sp, #168]
	vstr s20, [sp, #172]
	str r6, [sp, #176]
	ldr r0, [sp, #312]
	vldr s15, [sp, #500]
	vldr s11, [sp, #508]
	vldr s4, [sp, #512]
	vldr s5, [sp, #516]
	vldr s6, [sp, #440]
	vldr s13, [sp, #428]
	vldr s26, [sp, #420]
	vldr s7, [sp, #416]
	vldr s14, [sp, #408]
	vldr s12, [sp, #404]
	mov r1, r7
	vmov.f32 s0, s4
	mov r3, r8
	vmov.f32 s1, s25
	vmov.f32 s2, s15
	vmov.f32 s3, s24
	vmov.f32 s4, s5
	vmov.f32 s5, s18
	vmov.f32 s8, s12
	vmov.f32 s9, s22
	vmov.f32 s10, s11
	vmov.f32 s11, s13
	vmov.f32 s12, s23
	vmov.f32 s13, s17
	vmov.f32 s15, s26
	bl params_f40_i24
	add r0, r4, #48
	add r3, r4, #36
	vmov.f32 s22, s0
	add r2, r4, #12
	add r10, r4, #24
	str r2, [sp, #856]
	add r2, r4, #192
	str r3, [sp, #308]
	str r0, [sp, #236]
	add r3, r4, #60
	add r0, r4, #108
	str r3, [sp, #316]
	add r3, r4, #72
	str r3, [sp, #320]
	add r3, r4, #84
	str r3, [sp, #328]
	add r3, r4, #96
	str r3, [sp, #324]
	str r0, [sp, #260]
	add r3, r4, #144
	add r0, r4, #120
	str r0, [sp, #240]
	add r0, r4, #132
	str r0, [sp, #264]
	str r3, [sp, #332]
	add r0, r4, #156
	str r0, [sp, #268]
	add r0, r4, #168
	str r0, [sp, #244]
	add r0, r4, #180
	str r0, [sp, #272]
	add r0, r4, #204
	str r2, [sp, #372]
	str r0, [sp, #336]
	add r0, r4, #216
	str r0, [sp, #248]
	add r0, r4, #228
	str r0, [sp, #276]
	add r0, r4, #240
	str r0, [sp, #492]
	add r0, r4, #252
	str r0, [sp, #344]
	add r0, r4, #264
	str r0, [sp, #252]
	add r0, r4, #276
	str r0, [sp, #280]
	add r0, r4, #288
	str r0, [sp, #256]
	add r0, r4, #300
	str r0, [sp, #284]
	add r0, r4, #312
	str r0, [sp, #384]
	add r0, r4, #324
	str r0, [sp, #288]
	add r0, r4, #336
	str r0, [sp, #228]
	add r0, r4, #348
	str r0, [sp, #400]
	add r0, r4, #360
	str r0, [sp, #860]
	add r0, r4, #372
	str r0, [sp, #292]
	add r0, r4, #384
	str r0, [sp, #232]
	add r0, r4, #396
	str r0, [sp, #1344]
	add r0, r4, #408
	str r0, [sp, #1348]
	add r0, r4, #420
	str r0, [sp, #296]
	add r0, r4, #432
	str r0, [sp, #224]
	add r0, r4, #444
	str r0, [sp, #300]
	add r0, r4, #456
	str r0, [sp, #220]
	add r0, r4, #468
	str r0, [sp, #304]
	ldr r0, [sp, #236]
	str r0, [sp, #0]
	ldr r3, [sp, #316]
	str r3, [sp, #4]
	ldr r3, [sp, #320]
	str r3, [sp, #8]
	ldr r3, [sp, #328]
	str r3, [sp, #12]
	ldr r3, [sp, #324]
	str r3, [sp, #16]
	ldr r0, [sp, #260]
	str r0, [sp, #20]
	ldr r0, [sp, #240]
	str r0, [sp, #24]
	ldr r0, [sp, #264]
	str r0, [sp, #28]
	ldr r3, [sp, #332]
	str r3, [sp, #32]
	ldr r0, [sp, #268]
	str r0, [sp, #36]
	ldr r0, [sp, #244]
	str r0, [sp, #40]
	ldr r0, [sp, #272]
	str r0, [sp, #44]
	str r2, [sp, #48]
	ldr r0, [sp, #336]
	str r0, [sp, #52]
	ldr r0, [sp, #248]
	str r0, [sp, #56]
	ldr r0, [sp, #276]
	str r0, [sp, #60]
	ldr r0, [sp, #492]
	str r0, [sp, #64]
	ldr r0, [sp, #344]
	str r0, [sp, #68]
	ldr r0, [sp, #252]
	str r0, [sp, #72]
	ldr r0, [sp, #280]
	str r0, [sp, #76]
	ldr r0, [sp, #256]
	str r0, [sp, #80]
	ldr r0, [sp, #284]
	str r0, [sp, #84]
	ldr r0, [sp, #384]
	str r0, [sp, #88]
	ldr r0, [sp, #288]
	str r0, [sp, #92]
	ldr r0, [sp, #228]
	str r0, [sp, #96]
	ldr r0, [sp, #400]
	str r0, [sp, #100]
	ldr r0, [sp, #860]
	str r0, [sp, #104]
	ldr r0, [sp, #292]
	str r0, [sp, #108]
	ldr r0, [sp, #232]
	str r0, [sp, #112]
	ldr r0, [sp, #1344]
	str r0, [sp, #116]
	ldr r0, [sp, #1348]
	str r0, [sp, #120]
	ldr r0, [sp, #296]
	str r0, [sp, #124]
	ldr r0, [sp, #224]
	str r0, [sp, #128]
	ldr r0, [sp, #300]
	str r0, [sp, #132]
	ldr r0, [sp, #220]
	str r0, [sp, #136]
	ldr r0, [sp, #304]
	str r0, [sp, #140]
	str r6, [sp, #144]
	ldr r2, [sp, #856]
	ldr r3, [sp, #308]
	mov r0, r4
	mov r1, r2
	mov r2, r10
	bl params_fa40
	add r1, r5, #132
	add r3, r5, #156
	vmov.f32 s23, s0
	add r2, r5, #120
	add r10, r5, #72
	str r3, [sp, #444]
	add r11, r5, #36
	add r0, r5, #144
	add r4, r5, #84
	add r3, r5, #180
	str r3, [sp, #356]
	add r3, r5, #192
	str r3, [sp, #364]
	add r3, r5, #228
	str r3, [sp, #184]
	add r3, r5, #264
	str r3, [sp, #188]
	add r3, r5, #276
	str r3, [sp, #192]
	add r3, r5, #12
	str r3, [sp, #204]
	ldr r3, [sp, #316]
	str r3, [sp, #0]
	str r11, [sp, #4]
	str r9, [sp, #8]
	ldr r3, [sp, #548]
	str r3, [sp, #12]
	ldr r3, [sp, #320]
	str r3, [sp, #16]
	str r10, [sp, #20]
	str r4, [sp, #24]
	ldr r3, [sp, #368]
	str r3, [sp, #28]
	ldr r3, [sp, #328]
	str r3, [sp, #32]
	ldr r3, [sp, #324]
	str r3, [sp, #36]
	ldr r3, [sp, #332]
	str r3, [sp, #40]
	ldr r3, [sp, #464]
	str r3, [sp, #44]
	str r2, [sp, #48]
	ldr r2, [sp, #372]
	str r2, [sp, #52]
	str r1, [sp, #56]
	str r0, [sp, #60]
	ldr r0, [sp, #336]
	str r0, [sp, #64]
	ldr r3, [sp, #444]
	str r3, [sp, #68]
	ldr r1, [sp, #560]
	str r1, [sp, #72]
	ldr r0, [sp, #492]
	str r0, [sp, #76]
	ldr r0, [sp, #344]
	str r0, [sp, #80]
	ldr r3, [sp, #356]
	str r3, [sp, #84]
	ldr r3, [sp, #364]
	str r3, [sp, #88]
	ldr r1, [sp, #352]
	str r1, [sp, #92]
	ldr r1, [sp, #476]
	str r1, [sp, #96]
	ldr r3, [sp, #184]
	str r3, [sp, #100]
	ldr r1, [sp, #556]
	str r1, [sp, #104]
	ldr r0, [sp, #384]
	str r0, [sp, #108]
	ldr r1, [sp, #436]
	str r1, [sp, #112]
	ldr r3, [sp, #188]
	str r3, [sp, #116]
	ldr r3, [sp, #192]
	str r3, [sp, #120]
	vstr s21, [sp, #124]
	vstr s18, [sp, #128]
	ldr r0, [sp, #400]
	str r0, [sp, #132]
	ldr r1, [sp, #360]
	str r1, [sp, #136]
	ldr r3, [sp, #204]
	str r3, [sp, #140]
	ldr r0, [sp, #860]
	str r0, [sp, #144]
	vstr s19, [sp, #148]
	str r7, [sp, #152]
	vstr s17, [sp, #156]
	ldr r0, [sp, #1344]
	str r0, [sp, #160]
	ldr r0, [sp, #1348]
	str r0, [sp, #164]
	vstr s20, [sp, #168]
	ldr r1, [sp, #448]
	str r1, [sp, #172]
	str r6, [sp, #176]
	ldr r2, [sp, #856]
	vldr s26, [sp, #396]
	vldr s27, [sp, #380]
	vldr s12, [sp, #340]
	vldr s28, [sp, #488]
	vldr s29, [sp, #376]
	vldr s14, [sp, #392]
	vldr s13, [sp, #484]
	vldr s0, [sp, #388]
	vldr s10, [sp, #456]
	vldr s9, [sp, #496]
	vldr s15, [sp, #500]
	vldr s2, [sp, #504]
	vldr s11, [sp, #508]
	vldr s4, [sp, #512]
	vldr s5, [sp, #516]
	mov r0, r5
	mov r1, r8
	vmov.f32 s1, s2
	mov r3, r7
	vmov.f32 s2, s5
	vmov.f32 s3, s4
	vmov.f32 s4, s9
	vmov.f32 s5, s10
	vmov.f32 s6, s11
	vmov.f32 s7, s13
	vmov.f32 s8, s14
	vmov.f32 s9, s15
	vmov.f32 s10, s29
	vmov.f32 s11, s28
	vmov.f32 s13, s27
	vmov.f32 s14, s26
	vmov.f32 s15, s16
	bl params_mix
	vldr s0, [sp, #432]
	mov r4, r0
	bl putfloat
	mov r0, #10
	bl putch
	vmov.f32 s0, s22
	bl putfloat
	mov r0, #10
	bl putch
	vmov.f32 s0, s23
	bl putfloat
	mov r0, #10
	bl putch
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	movw r12, #1356
	mov r0, #0
	add sp, sp, r12
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
