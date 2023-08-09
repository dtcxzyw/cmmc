.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
params_f40:
	push { r4, r5, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31 }
	mov r4, r0
	sub sp, sp, #172
	vadd.f32 s0, s0, s1
	add r5, sp, #128
	vstr s8, [sp, #96]
	vstr s9, [sp, #100]
	vstr s10, [sp, #104]
	vadd.f32 s0, s0, s2
	vstr s11, [sp, #108]
	vstr s12, [sp, #112]
	vstr s13, [sp, #116]
	vstr s14, [sp, #120]
	vstr s15, [sp, #124]
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
	beq label1030
	vadd.f32 s1, s4, s5
	vadd.f32 s0, s0, s3
	mov r0, #10
	vadd.f32 s1, s1, s6
	vstr s0, [sp, #128]
	vadd.f32 s1, s1, s7
	vstr s1, [sp, #132]
	vldr s8, [sp, #96]
	vadd.f32 s0, s8, s9
	vadd.f32 s0, s0, s10
	vadd.f32 s0, s0, s11
	vstr s0, [sp, #136]
	vadd.f32 s0, s12, s13
	vadd.f32 s0, s0, s14
	vadd.f32 s0, s0, s15
	vstr s0, [sp, #140]
	vldr s16, [sp, #248]
	vadd.f32 s0, s16, s29
	vadd.f32 s0, s0, s30
	vadd.f32 s0, s0, s27
	vstr s0, [sp, #144]
	vadd.f32 s0, s18, s31
	vadd.f32 s0, s0, s22
	vadd.f32 s0, s0, s23
	vstr s0, [sp, #148]
	vadd.f32 s0, s19, s24
	vadd.f32 s0, s0, s26
	vadd.f32 s0, s0, s25
	vstr s0, [sp, #152]
	vadd.f32 s0, s17, s20
	vadd.f32 s0, s0, s28
	vadd.f32 s0, s0, s21
	vstr s0, [sp, #156]
	vldr s8, [sp, #316]
	vldr s9, [sp, #312]
	vadd.f32 s0, s9, s8
	vldr s8, [sp, #320]
	vadd.f32 s0, s0, s8
	vldr s8, [sp, #324]
	vadd.f32 s0, s0, s8
	vstr s0, [sp, #160]
	vldr s8, [sp, #332]
	vldr s9, [sp, #328]
	vadd.f32 s0, s9, s8
	vldr s8, [sp, #336]
	vadd.f32 s0, s0, s8
	vldr s8, [sp, #340]
	vadd.f32 s0, s0, s8
	vstr s0, [sp, #164]
	mov r1, r5
	bl putfarray
	ldr r0, [r4, #0]
	add r0, r5, r0, lsl #2
	vldr s0, [r0, #0]
label1028:
	add sp, sp, #172
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31 }
	pop { r4, r5, pc }
label1030:
	vstr s29, [sp, #0]
	vstr s30, [sp, #4]
	vstr s27, [sp, #8]
	vstr s18, [sp, #12]
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
	vldr s15, [sp, #124]
	vldr s14, [sp, #120]
	vldr s13, [sp, #116]
	vldr s12, [sp, #112]
	vldr s11, [sp, #108]
	vldr s10, [sp, #104]
	vldr s9, [sp, #100]
	vldr s8, [sp, #96]
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
	b label1028
.p2align 4
params_f40_i24:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30 }
	mov r7, r1
	movs r5, r0
	sub sp, sp, #336
	vstr s14, [sp, #188]
	vstr s5, [sp, #204]
	vstr s7, [sp, #212]
	vstr s13, [sp, #216]
	vstr s15, [sp, #220]
	vstr s6, [sp, #224]
	vstr s11, [sp, #228]
	str r3, [sp, #236]
	str r1, [sp, #240]
	str r2, [sp, #248]
	str r0, [sp, #260]
	ldr r6, [sp, #432]
	ldr r10, [sp, #436]
	ldr r8, [sp, #444]
	ldr r2, [sp, #452]
	ldr r1, [sp, #456]
	ldr r0, [sp, #460]
	vldr s20, [sp, #464]
	vldr s16, [sp, #468]
	vldr s19, [sp, #472]
	ldr r9, [sp, #476]
	vldr s22, [sp, #488]
	vldr s25, [sp, #492]
	vldr s18, [sp, #496]
	vldr s11, [sp, #500]
	ldr r4, [sp, #508]
	vldr s27, [sp, #512]
	vldr s29, [sp, #516]
	vldr s30, [sp, #520]
	vldr s13, [sp, #528]
	vldr s5, [sp, #540]
	vldr s15, [sp, #544]
	vldr s28, [sp, #548]
	vldr s7, [sp, #552]
	ldr r11, [sp, #556]
	vldr s14, [sp, #568]
	vldr s24, [sp, #572]
	vldr s23, [sp, #576]
	vldr s21, [sp, #580]
	vldr s26, [sp, #588]
	vldr s17, [sp, #596]
	vldr s6, [sp, #604]
	beq label726
	vadd.f32 s9, s30, s9
	vadd.f32 s0, s0, s18
	vadd.f32 s9, s9, s17
	vadd.f32 s0, s0, s12
	vadd.f32 s17, s9, s4
	vadd.f32 s18, s0, s3
	vadd.f32 s0, s1, s16
	vstr s17, [sp, #296]
	vadd.f32 s0, s0, s29
	vstr s18, [sp, #300]
	vadd.f32 s16, s0, s10
	vadd.f32 s0, s8, s28
	vstr s16, [sp, #304]
	vadd.f32 s0, s0, s27
	vadd.f32 s0, s0, s2
	vstr s0, [sp, #208]
	vstr s0, [sp, #308]
	vadd.f32 s0, s25, s26
	vadd.f32 s0, s0, s14
	vadd.f32 s0, s0, s24
	vstr s0, [sp, #200]
	vstr s0, [sp, #312]
	vldr s14, [sp, #188]
	vadd.f32 s0, s14, s22
	vadd.f32 s0, s0, s23
	vadd.f32 s0, s0, s20
	vstr s0, [sp, #196]
	vstr s0, [sp, #316]
	vadd.f32 s0, s15, s19
	vadd.f32 s0, s0, s21
	vadd.f32 s0, s0, s5
	vstr s0, [sp, #192]
	vstr s0, [sp, #320]
	vldr s5, [sp, #204]
	vadd.f32 s0, s5, s7
	vldr s7, [sp, #212]
	vadd.f32 s0, s0, s7
	vadd.f32 s0, s0, s13
	vstr s0, [sp, #184]
	vstr s0, [sp, #324]
	vldr s15, [sp, #220]
	vldr s13, [sp, #216]
	vadd.f32 s0, s13, s15
	vadd.f32 s0, s0, s11
	vadd.f32 s0, s0, s6
	vstr s0, [sp, #328]
	vldr s6, [sp, #224]
	vldr s5, [sp, #584]
	vldr s11, [sp, #228]
	vldr s19, [sp, #480]
	vadd.f32 s0, s5, s6
	vadd.f32 s0, s0, s11
	vadd.f32 s0, s0, s19
	vstr s0, [sp, #332]
	ldr r7, [sp, #240]
	add r3, r7, r3
	add r8, r8, r3
	add r3, r6, r10
	str r8, [sp, #264]
	add r7, r11, r3
	str r7, [sp, #268]
	ldr r6, [sp, #248]
	add r2, r6, r2
	add r2, r9, r2
	str r2, [sp, #256]
	str r2, [sp, #272]
	add r2, r1, r4
	ldr r1, [sp, #532]
	add r1, r1, r2
	str r1, [sp, #252]
	str r1, [sp, #276]
	ldr r1, [sp, #524]
	add r1, r0, r1
	ldr r0, [sp, #600]
	add r0, r0, r1
	str r0, [sp, #244]
	str r0, [sp, #280]
	ldr r0, [sp, #536]
	ldr r1, [sp, #484]
	add r1, r1, r0
	ldr r0, [sp, #592]
	add r0, r0, r1
	str r0, [sp, #232]
	str r0, [sp, #284]
	ldr r0, [sp, #504]
	ldr r3, [sp, #448]
	add r1, r3, r0
	ldr r0, [sp, #564]
	add r6, r0, r1
	str r6, [sp, #288]
	ldr r5, [sp, #260]
	ldr r3, [sp, #440]
	ldr r0, [sp, #560]
	add r1, r5, r3
	add r5, r0, r1
	mov r0, #10
	add r1, sp, #296
	str r5, [sp, #292]
	bl putfarray
	mov r0, #8
	add r4, sp, #264
	mov r1, r4
	bl putarray
	vmov s0, r8
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s17
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r7
	str r0, [sp, #264]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s18
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [sp, #268]
	ldr r2, [sp, #256]
	vmov s0, r2
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s16
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [sp, #272]
	ldr r1, [sp, #252]
	vmov s0, r1
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #208]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [sp, #276]
	ldr r0, [sp, #244]
	vmov s0, r0
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #200]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [sp, #280]
	ldr r0, [sp, #232]
	vmov s0, r0
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #196]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r6
	str r0, [sp, #284]
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #192]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r5
	str r0, [sp, #288]
	vcvt.f32.s32 s1, s0
	vldr s0, [sp, #184]
	vsub.f32 s0, s1, s0
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [sp, #292]
	ldr r0, [sp, #608]
	ldr r0, [r0, #0]
	ldr r0, [r4, r0, lsl #2]
	vmov s0, r0
	vcvt.f32.s32 s0, s0
label724:
	add sp, sp, #336
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label726:
	str r6, [sp, #0]
	str r10, [sp, #4]
	ldr r3, [sp, #440]
	str r3, [sp, #8]
	str r8, [sp, #12]
	ldr r3, [sp, #448]
	str r3, [sp, #16]
	str r2, [sp, #20]
	str r1, [sp, #24]
	str r0, [sp, #28]
	vstr s20, [sp, #32]
	vstr s16, [sp, #36]
	vstr s19, [sp, #40]
	str r9, [sp, #44]
	vldr s19, [sp, #480]
	vstr s19, [sp, #48]
	ldr r1, [sp, #484]
	str r1, [sp, #52]
	vstr s22, [sp, #56]
	vstr s25, [sp, #60]
	vstr s18, [sp, #64]
	vstr s11, [sp, #68]
	ldr r0, [sp, #504]
	str r0, [sp, #72]
	str r4, [sp, #76]
	vstr s27, [sp, #80]
	vstr s29, [sp, #84]
	vstr s30, [sp, #88]
	ldr r1, [sp, #524]
	str r1, [sp, #92]
	vstr s13, [sp, #96]
	ldr r1, [sp, #532]
	str r1, [sp, #100]
	ldr r0, [sp, #536]
	str r0, [sp, #104]
	vstr s5, [sp, #108]
	vstr s15, [sp, #112]
	vstr s28, [sp, #116]
	vstr s7, [sp, #120]
	str r11, [sp, #124]
	ldr r0, [sp, #560]
	str r0, [sp, #128]
	ldr r0, [sp, #564]
	str r0, [sp, #132]
	vstr s14, [sp, #136]
	vstr s24, [sp, #140]
	vstr s23, [sp, #144]
	vstr s21, [sp, #148]
	vldr s5, [sp, #584]
	vstr s5, [sp, #152]
	vstr s26, [sp, #156]
	ldr r0, [sp, #592]
	str r0, [sp, #160]
	vstr s17, [sp, #164]
	ldr r0, [sp, #600]
	str r0, [sp, #168]
	vstr s6, [sp, #172]
	ldr r0, [sp, #608]
	str r0, [sp, #176]
	ldr r6, [sp, #248]
	ldr r7, [sp, #240]
	ldr r3, [sp, #236]
	vldr s11, [sp, #228]
	vldr s6, [sp, #224]
	vldr s15, [sp, #220]
	vldr s13, [sp, #216]
	vldr s7, [sp, #212]
	vldr s5, [sp, #204]
	vldr s14, [sp, #188]
	mov r0, r3
	mov r1, r7
	mov r2, r6
	bl params_f40_i24
	b label724
.p2align 4
params_fa40:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #208
	mov r8, r0
	mov r6, r2
	mov r7, r1
	str r1, [sp, #164]
	str r2, [sp, #160]
	str r3, [sp, #156]
	ldr r0, [sp, #244]
	ldr r1, [sp, #248]
	ldr r2, [sp, #252]
	ldr r3, [sp, #256]
	ldr r4, [sp, #260]
	ldr r9, [sp, #264]
	ldr r5, [sp, #384]
	ldr r10, [r5, #0]
	add r5, r8, r10, lsl #2
	str r10, [sp, #152]
	vldr s0, [r5, #0]
	add r5, r7, r10, lsl #2
	vldr s1, [r5, #0]
	add r5, r6, r10, lsl #2
	vadd.f32 s0, s0, s1
	vldr s1, [r5, #0]
	ldr r5, [sp, #156]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #168]
	ldr r8, [sp, #240]
	add r5, r8, r10, lsl #2
	vldr s0, [r5, #0]
	add r5, r0, r10, lsl #2
	vldr s1, [r5, #0]
	add r5, r1, r10, lsl #2
	vadd.f32 s0, s0, s1
	vldr s1, [r5, #0]
	add r5, r2, r10, lsl #2
	vadd.f32 s0, s0, s1
	vldr s1, [r5, #0]
	add r5, r3, r10, lsl #2
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #172]
	vldr s0, [r5, #0]
	add r5, r4, r10, lsl #2
	vldr s1, [r5, #0]
	add r5, r9, r10, lsl #2
	vadd.f32 s0, s0, s1
	vldr s1, [r5, #0]
	ldr r5, [sp, #268]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #176]
	ldr r5, [sp, #272]
	add r5, r5, r10, lsl #2
	vldr s0, [r5, #0]
	ldr r5, [sp, #276]
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #280]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #284]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #180]
	ldr r5, [sp, #288]
	add r5, r5, r10, lsl #2
	vldr s0, [r5, #0]
	ldr r5, [sp, #292]
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #296]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #300]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #184]
	ldr r5, [sp, #304]
	add r5, r5, r10, lsl #2
	vldr s0, [r5, #0]
	ldr r5, [sp, #308]
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #312]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #316]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #188]
	ldr r5, [sp, #320]
	add r5, r5, r10, lsl #2
	vldr s0, [r5, #0]
	ldr r5, [sp, #324]
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #328]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #332]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #192]
	ldr r5, [sp, #336]
	add r5, r5, r10, lsl #2
	vldr s0, [r5, #0]
	ldr r5, [sp, #340]
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #344]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #348]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #196]
	ldr r5, [sp, #352]
	add r5, r5, r10, lsl #2
	vldr s0, [r5, #0]
	ldr r5, [sp, #356]
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #360]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #364]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #200]
	ldr r5, [sp, #368]
	add r5, r5, r10, lsl #2
	vldr s0, [r5, #0]
	ldr r5, [sp, #372]
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #376]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	ldr r5, [sp, #380]
	vadd.f32 s0, s0, s1
	add r5, r5, r10, lsl #2
	vldr s1, [r5, #0]
	vadd.f32 s0, s0, s1
	vstr s0, [sp, #204]
	vldr s0, [r5, #0]
	mov r5, #0
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
	beq label418
	add r4, sp, #168
	mov r0, #10
	mov r1, r4
	bl putfarray
	ldr r10, [sp, #152]
	add r0, r4, r10, lsl #2
	vldr s0, [r0, #0]
label416:
	add sp, sp, #208
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label418:
	str r0, [sp, #0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	str r4, [sp, #16]
	add r4, sp, #168
	str r9, [sp, #20]
	ldr r5, [sp, #268]
	str r5, [sp, #24]
	ldr r5, [sp, #272]
	str r5, [sp, #28]
	ldr r5, [sp, #276]
	str r5, [sp, #32]
	ldr r5, [sp, #280]
	str r5, [sp, #36]
	ldr r5, [sp, #284]
	str r5, [sp, #40]
	ldr r5, [sp, #288]
	str r5, [sp, #44]
	ldr r5, [sp, #292]
	str r5, [sp, #48]
	ldr r5, [sp, #296]
	str r5, [sp, #52]
	ldr r5, [sp, #300]
	str r5, [sp, #56]
	ldr r5, [sp, #304]
	str r5, [sp, #60]
	ldr r5, [sp, #308]
	str r5, [sp, #64]
	ldr r5, [sp, #312]
	str r5, [sp, #68]
	ldr r5, [sp, #316]
	str r5, [sp, #72]
	ldr r5, [sp, #320]
	str r5, [sp, #76]
	ldr r5, [sp, #324]
	str r5, [sp, #80]
	ldr r5, [sp, #328]
	str r5, [sp, #84]
	ldr r5, [sp, #332]
	str r5, [sp, #88]
	ldr r5, [sp, #336]
	str r5, [sp, #92]
	ldr r5, [sp, #340]
	str r5, [sp, #96]
	ldr r5, [sp, #344]
	str r5, [sp, #100]
	ldr r5, [sp, #348]
	str r5, [sp, #104]
	ldr r5, [sp, #352]
	str r5, [sp, #108]
	ldr r5, [sp, #356]
	str r5, [sp, #112]
	ldr r5, [sp, #360]
	str r5, [sp, #116]
	ldr r5, [sp, #364]
	str r5, [sp, #120]
	ldr r5, [sp, #368]
	str r5, [sp, #124]
	ldr r5, [sp, #372]
	str r5, [sp, #128]
	ldr r5, [sp, #376]
	str r5, [sp, #132]
	ldr r5, [sp, #380]
	str r5, [sp, #136]
	str r4, [sp, #140]
	ldr r5, [sp, #384]
	str r5, [sp, #144]
	ldr r8, [sp, #240]
	ldr r5, [sp, #156]
	ldr r6, [sp, #160]
	ldr r7, [sp, #164]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r8
	bl params_fa40
	b label416
.p2align 4
params_mix:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	mov r4, r0
	sub sp, sp, #344
	vstr s3, [sp, #184]
	vstr s4, [sp, #188]
	vstr s5, [sp, #192]
	vstr s6, [sp, #196]
	vstr s7, [sp, #200]
	vstr s8, [sp, #204]
	vstr s9, [sp, #208]
	vstr s10, [sp, #212]
	vstr s11, [sp, #216]
	vstr s12, [sp, #220]
	vstr s13, [sp, #224]
	vstr s14, [sp, #228]
	vstr s15, [sp, #232]
	str r1, [sp, #248]
	str r3, [sp, #252]
	vldr s21, [sp, #556]
	vldr s23, [sp, #560]
	vldr s20, [sp, #580]
	vldr s18, [sp, #588]
	vldr s25, [sp, #600]
	ldr r0, [sp, #608]
	ldr r0, [r0, #0]
	add r1, r2, r0, lsl #2
	str r0, [sp, #256]
	mov r2, #0
	vldr s3, [r1, #0]
	vadd.f32 s3, s0, s3
	vadd.f32 s3, s3, s1
	vadd.f32 s16, s3, s2
	vstr s16, [sp, #304]
	ldr r1, [sp, #432]
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vldr s3, [sp, #184]
	ldr r1, [sp, #448]
	vadd.f32 s3, s3, s4
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	ldr r1, [sp, #464]
	vadd.f32 s3, s3, s4
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s17, s3, s4
	vstr s17, [sp, #308]
	ldr r1, [sp, #468]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	vldr s4, [sp, #188]
	vadd.f32 s3, s3, s4
	vadd.f32 s3, s3, s5
	vadd.f32 s19, s3, s6
	vstr s19, [sp, #312]
	ldr r1, [sp, #472]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	vadd.f32 s3, s3, s7
	vadd.f32 s3, s3, s8
	vadd.f32 s22, s3, s9
	vstr s22, [sp, #316]
	ldr r1, [sp, #484]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	ldr r1, [sp, #496]
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s3, s3, s4
	vadd.f32 s3, s3, s10
	vadd.f32 s24, s3, s11
	vstr s24, [sp, #320]
	ldr r1, [sp, #508]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	ldr r1, [sp, #512]
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s3, s3, s4
	vadd.f32 s4, s14, s15
	vadd.f32 s3, s3, s12
	vadd.f32 s26, s3, s13
	vstr s26, [sp, #324]
	ldr r1, [sp, #540]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	vadd.f32 s3, s4, s3
	vadd.f32 s27, s3, s21
	vstr s27, [sp, #328]
	ldr r1, [sp, #564]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	ldr r1, [sp, #576]
	vadd.f32 s3, s23, s3
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s3, s3, s4
	vadd.f32 s28, s3, s20
	vstr s28, [sp, #332]
	ldr r1, [sp, #592]
	add r1, r1, r0, lsl #2
	vldr s3, [r1, #0]
	ldr r1, [sp, #596]
	vadd.f32 s3, s18, s3
	add r1, r1, r0, lsl #2
	vldr s4, [r1, #0]
	vadd.f32 s3, s3, s4
	vadd.f32 s3, s3, s25
	vstr s3, [sp, #236]
	vstr s3, [sp, #336]
	vmov s3, r2
	vstr s3, [sp, #340]
	ldr r2, [r4, r0, lsl #2]
	ldr r1, [sp, #248]
	add r1, r1, r3
	add r1, r2, r1
	str r1, [sp, #244]
	str r1, [sp, #264]
	ldr r1, [sp, #436]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #444]
	ldr r3, [sp, #440]
	add r2, r3, r2
	add r1, r1, r2
	str r1, [sp, #240]
	str r1, [sp, #268]
	ldr r1, [sp, #452]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #460]
	add r1, r2, r1
	ldr r2, [sp, #456]
	ldr r2, [r2, r0, lsl #2]
	add r5, r1, r2
	str r5, [sp, #272]
	ldr r1, [sp, #480]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #476]
	add r1, r2, r1
	ldr r2, [sp, #488]
	ldr r2, [r2, r0, lsl #2]
	add r6, r1, r2
	str r6, [sp, #276]
	ldr r1, [sp, #492]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #504]
	add r1, r2, r1
	ldr r2, [sp, #500]
	ldr r2, [r2, r0, lsl #2]
	add r7, r1, r2
	str r7, [sp, #280]
	ldr r1, [sp, #516]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #524]
	add r1, r2, r1
	ldr r2, [sp, #520]
	ldr r2, [r2, r0, lsl #2]
	add r8, r1, r2
	str r8, [sp, #284]
	ldr r1, [sp, #532]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #536]
	ldr r3, [sp, #528]
	add r2, r3, r2
	add r9, r1, r2
	str r9, [sp, #288]
	ldr r1, [sp, #548]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #544]
	add r1, r2, r1
	ldr r2, [sp, #552]
	ldr r2, [r2, r0, lsl #2]
	add r10, r1, r2
	str r10, [sp, #292]
	ldr r1, [sp, #572]
	ldr r0, [r1, r0, lsl #2]
	ldr r1, [sp, #584]
	ldr r2, [sp, #568]
	add r2, r2, r1
	ldr r1, [sp, #604]
	cmp r1, #0
	add r2, r1, r2
	add r11, r0, r2
	mov r2, #0
	str r11, [sp, #296]
	str r2, [sp, #300]
	beq label5
	add r2, sp, #304
	mov r0, #10
	mov r1, r2
	bl putfarray
	mov r0, #10
	add r4, sp, #264
	mov r1, r4
	bl putarray
	mov r2, #0
	ldr r1, [sp, #244]
	vmov s0, r1
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s16
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [sp, #264]
	ldr r1, [sp, #240]
	vmov s0, r1
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s17
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r5
	str r0, [sp, #268]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s19
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r6
	str r0, [sp, #272]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s22
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r7
	str r0, [sp, #276]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s24
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r8
	str r0, [sp, #280]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s26
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r9
	str r0, [sp, #284]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s27
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r10
	str r0, [sp, #288]
	vcvt.f32.s32 s0, s0
	vsub.f32 s0, s0, s28
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	vmov s0, r11
	str r0, [sp, #292]
	vcvt.f32.s32 s0, s0
	vldr s3, [sp, #236]
	vsub.f32 s0, s0, s3
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	str r0, [sp, #296]
	str r2, [sp, #300]
	ldr r0, [sp, #256]
	ldr r0, [r4, r0, lsl #2]
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s0, s3
	vcvt.s32.f32 s0, s0
	vmov r0, s0
label2:
	add sp, sp, #344
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label5:
	vcvt.s32.f32 s3, s25
	ldr r1, [sp, #604]
	add r4, sp, #264
	vmov r0, s3
	vmov s3, r1
	ldr r1, [sp, #432]
	vcvt.f32.s32 s3, s3
	str r1, [sp, #0]
	ldr r1, [sp, #436]
	str r1, [sp, #4]
	ldr r3, [sp, #440]
	str r3, [sp, #8]
	ldr r2, [sp, #444]
	str r2, [sp, #12]
	ldr r1, [sp, #448]
	str r1, [sp, #16]
	ldr r1, [sp, #452]
	str r1, [sp, #20]
	ldr r2, [sp, #456]
	str r2, [sp, #24]
	ldr r2, [sp, #460]
	str r2, [sp, #28]
	ldr r1, [sp, #464]
	str r1, [sp, #32]
	ldr r1, [sp, #468]
	str r1, [sp, #36]
	ldr r1, [sp, #472]
	str r1, [sp, #40]
	ldr r2, [sp, #476]
	str r2, [sp, #44]
	ldr r1, [sp, #480]
	str r1, [sp, #48]
	ldr r1, [sp, #484]
	str r1, [sp, #52]
	ldr r2, [sp, #488]
	str r2, [sp, #56]
	ldr r1, [sp, #492]
	str r1, [sp, #60]
	ldr r1, [sp, #496]
	str r1, [sp, #64]
	ldr r2, [sp, #500]
	str r2, [sp, #68]
	ldr r2, [sp, #504]
	str r2, [sp, #72]
	ldr r1, [sp, #508]
	str r1, [sp, #76]
	ldr r1, [sp, #512]
	str r1, [sp, #80]
	ldr r1, [sp, #516]
	str r1, [sp, #84]
	ldr r2, [sp, #520]
	str r2, [sp, #88]
	ldr r2, [sp, #524]
	str r2, [sp, #92]
	ldr r3, [sp, #528]
	str r3, [sp, #96]
	ldr r1, [sp, #532]
	str r1, [sp, #100]
	ldr r2, [sp, #536]
	str r2, [sp, #104]
	ldr r1, [sp, #540]
	str r1, [sp, #108]
	ldr r2, [sp, #544]
	str r2, [sp, #112]
	ldr r1, [sp, #548]
	str r1, [sp, #116]
	ldr r2, [sp, #552]
	str r2, [sp, #120]
	vstr s21, [sp, #124]
	vstr s23, [sp, #128]
	ldr r1, [sp, #564]
	str r1, [sp, #132]
	ldr r2, [sp, #568]
	str r2, [sp, #136]
	add r2, sp, #304
	ldr r1, [sp, #572]
	str r1, [sp, #140]
	ldr r1, [sp, #576]
	str r1, [sp, #144]
	vstr s20, [sp, #148]
	ldr r1, [sp, #584]
	str r1, [sp, #152]
	vstr s18, [sp, #156]
	ldr r1, [sp, #592]
	str r1, [sp, #160]
	ldr r1, [sp, #596]
	str r1, [sp, #164]
	vstr s3, [sp, #168]
	str r0, [sp, #172]
	ldr r0, [sp, #608]
	str r0, [sp, #176]
	ldr r3, [sp, #252]
	ldr r1, [sp, #248]
	vldr s15, [sp, #232]
	vldr s14, [sp, #228]
	vldr s13, [sp, #224]
	vldr s12, [sp, #220]
	vldr s11, [sp, #216]
	vldr s10, [sp, #212]
	vldr s9, [sp, #208]
	vldr s8, [sp, #204]
	vldr s7, [sp, #200]
	vldr s6, [sp, #196]
	vldr s5, [sp, #192]
	vldr s4, [sp, #188]
	vldr s3, [sp, #184]
	mov r0, r4
	bl params_mix
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29 }
	movw r12, #1348
	sub sp, sp, r12
	bl getint
	mov r5, #0
	add r4, sp, #816
	str r0, [sp, #504]
.p2align 4
label1183:
	mov r0, r4
	bl getfarray
	add r0, r5, #1
	cmp r0, #40
	bge label1203
	add r4, r4, #12
	mov r5, r0
	b label1183
label1203:
	add r5, sp, #520
	mov r4, #0
.p2align 4
label1188:
	mov r0, r5
	bl getarray
	add r0, r4, #1
	cmp r0, #24
	bge label1192
	add r5, r5, #12
	mov r4, r0
	b label1188
label1192:
	ldr r10, [sp, #504]
	add r4, sp, #816
	add r6, sp, #504
	add r0, r4, r10, lsl #2
	vldr s0, [r0, #0]
	add r0, r4, #12
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #244]
	vldr s22, [r0, #0]
	add r0, r4, #24
	add r0, r0, r10, lsl #2
	vldr s2, [r0, #0]
	add r0, r4, #36
	add r0, r0, r10, lsl #2
	vstr s2, [sp, #264]
	vldr s5, [r0, #0]
	add r0, r4, #48
	add r0, r0, r10, lsl #2
	vstr s5, [sp, #208]
	vldr s4, [r0, #0]
	add r0, r4, #60
	add r0, r0, r10, lsl #2
	vstr s4, [sp, #212]
	vldr s6, [r0, #0]
	add r0, r4, #72
	add r0, r0, r10, lsl #2
	vstr s6, [sp, #192]
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
	vstr s9, [sp, #248]
	vldr s10, [r0, #0]
	add r0, r4, #132
	add r0, r0, r10, lsl #2
	vstr s10, [sp, #236]
	vldr s11, [r0, #0]
	add r0, r4, #144
	add r0, r0, r10, lsl #2
	vstr s11, [sp, #272]
	vldr s12, [r0, #0]
	add r0, r4, #156
	add r0, r0, r10, lsl #2
	vstr s12, [sp, #184]
	vldr s13, [r0, #0]
	add r0, r4, #168
	add r0, r0, r10, lsl #2
	vstr s13, [sp, #228]
	vldr s14, [r0, #0]
	add r0, r4, #180
	add r0, r0, r10, lsl #2
	vstr s14, [sp, #240]
	vldr s15, [r0, #0]
	add r0, r4, #192
	add r0, r0, r10, lsl #2
	vstr s15, [sp, #256]
	vldr s0, [r0, #0]
	add r0, r4, #204
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #288]
	vldr s0, [r0, #0]
	add r0, r4, #216
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #304]
	vldr s29, [r0, #0]
	add r0, r4, #228
	add r0, r0, r10, lsl #2
	vstr s29, [sp, #220]
	vldr s28, [r0, #0]
	add r0, r4, #240
	add r0, r0, r10, lsl #2
	vstr s28, [sp, #276]
	vldr s14, [r0, #0]
	add r0, r4, #252
	add r0, r0, r10, lsl #2
	vstr s14, [sp, #188]
	vldr s0, [r0, #0]
	add r0, r4, #264
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #284]
	vldr s12, [r0, #0]
	add r0, r4, #276
	add r0, r0, r10, lsl #2
	vstr s12, [sp, #268]
	vldr s27, [r0, #0]
	add r0, r4, #288
	add r0, r0, r10, lsl #2
	vstr s27, [sp, #260]
	vldr s26, [r0, #0]
	add r0, r4, #300
	add r0, r0, r10, lsl #2
	vstr s26, [sp, #252]
	vldr s16, [r0, #0]
	add r0, r4, #312
	add r0, r0, r10, lsl #2
	vldr s0, [r0, #0]
	add r0, r4, #324
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #292]
	vldr s21, [r0, #0]
	add r0, r4, #336
	add r0, r0, r10, lsl #2
	vldr s18, [r0, #0]
	add r0, r4, #348
	add r0, r0, r10, lsl #2
	vldr s0, [r0, #0]
	add r0, r4, #360
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #280]
	vldr s7, [r0, #0]
	add r0, r4, #372
	add r0, r0, r10, lsl #2
	vstr s7, [sp, #196]
	vldr s19, [r0, #0]
	add r0, r4, #384
	add r0, r0, r10, lsl #2
	vldr s17, [r0, #0]
	add r0, r4, #396
	add r0, r0, r10, lsl #2
	vldr s26, [r0, #0]
	add r0, r4, #408
	add r0, r0, r10, lsl #2
	vstr s26, [sp, #308]
	vldr s0, [r0, #0]
	add r0, r4, #420
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #216]
	vldr s20, [r0, #0]
	add r0, r4, #432
	add r0, r0, r10, lsl #2
	vldr s0, [r0, #0]
	add r0, r4, #444
	add r0, r0, r10, lsl #2
	vstr s0, [sp, #200]
	vldr s6, [r0, #0]
	add r0, r4, #456
	add r0, r0, r10, lsl #2
	vstr s6, [sp, #296]
	vldr s13, [r0, #0]
	add r0, r4, #468
	add r0, r0, r10, lsl #2
	vstr s13, [sp, #300]
	vldr s0, [r0, #0]
	vstr s0, [sp, #204]
	vldr s0, [sp, #288]
	vstr s0, [sp, #0]
	vldr s0, [sp, #304]
	vstr s0, [sp, #4]
	vstr s29, [sp, #8]
	vstr s28, [sp, #12]
	vstr s14, [sp, #16]
	vldr s0, [sp, #284]
	vstr s0, [sp, #20]
	vstr s12, [sp, #24]
	vstr s27, [sp, #28]
	vldr s26, [sp, #252]
	vstr s26, [sp, #32]
	vstr s16, [sp, #36]
	vldr s0, [sp, #292]
	vstr s0, [sp, #40]
	vstr s21, [sp, #44]
	vstr s18, [sp, #48]
	vldr s0, [sp, #280]
	vstr s0, [sp, #52]
	vstr s7, [sp, #56]
	vstr s19, [sp, #60]
	vstr s17, [sp, #64]
	vldr s26, [sp, #308]
	vstr s26, [sp, #68]
	vldr s0, [sp, #216]
	vstr s0, [sp, #72]
	vstr s20, [sp, #76]
	vldr s0, [sp, #200]
	vstr s0, [sp, #80]
	vstr s6, [sp, #84]
	vstr s13, [sp, #88]
	vldr s0, [sp, #204]
	vstr s0, [sp, #92]
	vldr s14, [sp, #240]
	vldr s13, [sp, #228]
	vldr s0, [sp, #244]
	vldr s6, [sp, #192]
	vldr s12, [sp, #184]
	vmov.f32 s1, s22
	vmov.f32 s3, s5
	vmov.f32 s5, s6
	vmov.f32 s6, s23
	vmov.f32 s7, s24
	vmov.f32 s8, s25
	mov r0, r6
	bl params_f40
	add r5, sp, #520
	movw r12, #1336
	add r12, sp, r12
	vstr s0, [r12, #0]
	add r0, r5, #276
	ldr r0, [r0, r10, lsl #2]
	str r0, [sp, #412]
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
	str r3, [sp, #312]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #228
	str r1, [sp, #500]
	ldr r1, [r5, r10, lsl #2]
	str r1, [sp, #316]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #84
	str r1, [sp, #508]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #120
	str r1, [sp, #512]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #156
	str r1, [sp, #812]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #96
	str r1, [sp, #1296]
	ldr r3, [r0, r10, lsl #2]
	add r0, r5, #204
	str r3, [sp, #320]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #216
	str r1, [sp, #324]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #108
	str r1, [sp, #328]
	ldr r3, [r0, r10, lsl #2]
	add r0, r5, #144
	str r3, [sp, #332]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #132
	str r1, [sp, #1320]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #192
	str r1, [sp, #1324]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #36
	str r1, [sp, #1328]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #252
	str r1, [sp, #336]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #240
	str r1, [sp, #340]
	ldr r1, [r0, r10, lsl #2]
	add r0, r5, #180
	str r1, [sp, #344]
	add r1, r5, #168
	ldr r0, [r0, r10, lsl #2]
	ldr r1, [r1, r10, lsl #2]
	str r1, [sp, #348]
	str r9, [sp, #0]
	ldr r3, [sp, #312]
	str r3, [sp, #4]
	ldr r1, [sp, #500]
	str r1, [sp, #8]
	ldr r1, [sp, #316]
	str r1, [sp, #12]
	ldr r1, [sp, #508]
	str r1, [sp, #16]
	ldr r1, [sp, #512]
	str r1, [sp, #20]
	ldr r1, [sp, #812]
	str r1, [sp, #24]
	ldr r1, [sp, #1296]
	str r1, [sp, #28]
	vldr s27, [sp, #260]
	vstr s27, [sp, #32]
	vldr s9, [sp, #248]
	vstr s9, [sp, #36]
	vstr s16, [sp, #40]
	ldr r3, [sp, #320]
	str r3, [sp, #44]
	vldr s0, [sp, #204]
	vstr s0, [sp, #48]
	ldr r1, [sp, #324]
	str r1, [sp, #52]
	vldr s0, [sp, #284]
	vstr s0, [sp, #56]
	vldr s0, [sp, #288]
	vstr s0, [sp, #60]
	vldr s6, [sp, #192]
	vstr s6, [sp, #64]
	vldr s0, [sp, #216]
	vstr s0, [sp, #68]
	ldr r1, [sp, #328]
	str r1, [sp, #72]
	ldr r3, [sp, #332]
	str r3, [sp, #76]
	vldr s14, [sp, #240]
	vstr s14, [sp, #80]
	vldr s10, [sp, #236]
	vstr s10, [sp, #84]
	vldr s0, [sp, #244]
	vstr s0, [sp, #88]
	ldr r1, [sp, #1320]
	str r1, [sp, #92]
	vstr s19, [sp, #96]
	ldr r1, [sp, #1324]
	str r1, [sp, #100]
	ldr r1, [sp, #1328]
	str r1, [sp, #104]
	vstr s21, [sp, #108]
	vldr s26, [sp, #252]
	vstr s26, [sp, #112]
	vldr s13, [sp, #228]
	vstr s13, [sp, #116]
	vldr s0, [sp, #280]
	vstr s0, [sp, #120]
	ldr r1, [sp, #336]
	str r1, [sp, #124]
	ldr r1, [sp, #340]
	str r1, [sp, #128]
	ldr r1, [sp, #344]
	str r1, [sp, #132]
	vldr s29, [sp, #220]
	vstr s29, [sp, #136]
	vldr s28, [sp, #276]
	vstr s28, [sp, #140]
	vldr s12, [sp, #268]
	vstr s12, [sp, #144]
	vldr s0, [sp, #292]
	vstr s0, [sp, #148]
	vldr s0, [sp, #200]
	vstr s0, [sp, #152]
	vldr s0, [sp, #304]
	vstr s0, [sp, #156]
	str r0, [sp, #160]
	vldr s2, [sp, #264]
	vstr s2, [sp, #164]
	ldr r1, [sp, #348]
	str r1, [sp, #168]
	vstr s20, [sp, #172]
	str r6, [sp, #176]
	ldr r0, [sp, #412]
	vldr s15, [sp, #256]
	vldr s11, [sp, #272]
	vldr s4, [sp, #212]
	vldr s5, [sp, #208]
	vldr s6, [sp, #296]
	vldr s13, [sp, #300]
	vldr s26, [sp, #308]
	vldr s7, [sp, #196]
	vldr s14, [sp, #188]
	vldr s12, [sp, #184]
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
	add r3, r4, #36
	add r2, r4, #12
	vmov.f32 s22, s0
	add r0, r4, #48
	add r10, r4, #24
	str r2, [sp, #352]
	str r3, [sp, #224]
	add r2, r4, #192
	str r0, [sp, #480]
	add r3, r4, #60
	add r0, r4, #108
	str r3, [sp, #408]
	add r3, r4, #72
	str r3, [sp, #404]
	add r3, r4, #84
	str r3, [sp, #396]
	add r3, r4, #96
	str r3, [sp, #400]
	add r3, r4, #144
	str r0, [sp, #456]
	add r0, r4, #120
	str r0, [sp, #476]
	add r0, r4, #132
	str r0, [sp, #452]
	str r3, [sp, #392]
	add r0, r4, #156
	str r0, [sp, #448]
	add r0, r4, #168
	str r0, [sp, #472]
	add r0, r4, #180
	str r0, [sp, #444]
	str r2, [sp, #384]
	add r0, r4, #204
	str r0, [sp, #388]
	add r0, r4, #216
	str r0, [sp, #468]
	add r0, r4, #228
	str r0, [sp, #440]
	add r0, r4, #240
	str r0, [sp, #380]
	add r0, r4, #252
	str r0, [sp, #376]
	add r0, r4, #264
	str r0, [sp, #464]
	add r0, r4, #276
	str r0, [sp, #436]
	add r0, r4, #288
	str r0, [sp, #460]
	add r0, r4, #300
	str r0, [sp, #432]
	add r0, r4, #312
	str r0, [sp, #372]
	add r0, r4, #324
	str r0, [sp, #428]
	add r0, r4, #336
	str r0, [sp, #484]
	add r0, r4, #348
	str r0, [sp, #368]
	add r0, r4, #360
	str r0, [sp, #356]
	add r0, r4, #372
	str r0, [sp, #424]
	add r0, r4, #384
	str r0, [sp, #488]
	add r0, r4, #396
	str r0, [sp, #360]
	add r0, r4, #408
	str r0, [sp, #364]
	add r0, r4, #420
	str r0, [sp, #420]
	add r0, r4, #432
	str r0, [sp, #492]
	add r0, r4, #444
	str r0, [sp, #416]
	add r0, r4, #456
	str r0, [sp, #496]
	add r0, r4, #468
	str r0, [sp, #232]
	ldr r0, [sp, #480]
	str r0, [sp, #0]
	ldr r3, [sp, #408]
	str r3, [sp, #4]
	ldr r3, [sp, #404]
	str r3, [sp, #8]
	ldr r3, [sp, #396]
	str r3, [sp, #12]
	ldr r3, [sp, #400]
	str r3, [sp, #16]
	ldr r0, [sp, #456]
	str r0, [sp, #20]
	ldr r0, [sp, #476]
	str r0, [sp, #24]
	ldr r0, [sp, #452]
	str r0, [sp, #28]
	ldr r3, [sp, #392]
	str r3, [sp, #32]
	ldr r0, [sp, #448]
	str r0, [sp, #36]
	ldr r0, [sp, #472]
	str r0, [sp, #40]
	ldr r0, [sp, #444]
	str r0, [sp, #44]
	str r2, [sp, #48]
	ldr r0, [sp, #388]
	str r0, [sp, #52]
	ldr r0, [sp, #468]
	str r0, [sp, #56]
	ldr r0, [sp, #440]
	str r0, [sp, #60]
	ldr r0, [sp, #380]
	str r0, [sp, #64]
	ldr r0, [sp, #376]
	str r0, [sp, #68]
	ldr r0, [sp, #464]
	str r0, [sp, #72]
	ldr r0, [sp, #436]
	str r0, [sp, #76]
	ldr r0, [sp, #460]
	str r0, [sp, #80]
	ldr r0, [sp, #432]
	str r0, [sp, #84]
	ldr r0, [sp, #372]
	str r0, [sp, #88]
	ldr r0, [sp, #428]
	str r0, [sp, #92]
	ldr r0, [sp, #484]
	str r0, [sp, #96]
	ldr r0, [sp, #368]
	str r0, [sp, #100]
	ldr r0, [sp, #356]
	str r0, [sp, #104]
	ldr r0, [sp, #424]
	str r0, [sp, #108]
	ldr r0, [sp, #488]
	str r0, [sp, #112]
	ldr r0, [sp, #360]
	str r0, [sp, #116]
	ldr r0, [sp, #364]
	str r0, [sp, #120]
	ldr r0, [sp, #420]
	str r0, [sp, #124]
	ldr r0, [sp, #492]
	str r0, [sp, #128]
	ldr r0, [sp, #416]
	str r0, [sp, #132]
	ldr r0, [sp, #496]
	str r0, [sp, #136]
	ldr r0, [sp, #232]
	str r0, [sp, #140]
	str r6, [sp, #144]
	ldr r2, [sp, #352]
	ldr r3, [sp, #224]
	mov r0, r4
	mov r1, r2
	mov r2, r10
	bl params_fa40
	add r2, r5, #120
	add r0, r5, #144
	vmov.f32 s23, s0
	add r3, r5, #156
	add r4, r5, #84
	add r10, r5, #72
	add r11, r5, #36
	str r3, [sp, #1332]
	add r1, r5, #132
	add r3, r5, #180
	str r3, [sp, #1312]
	add r3, r5, #192
	str r3, [sp, #1316]
	add r3, r5, #228
	str r3, [sp, #1308]
	add r3, r5, #264
	str r3, [sp, #1304]
	add r3, r5, #276
	str r3, [sp, #1300]
	add r3, r5, #12
	str r3, [sp, #808]
	ldr r3, [sp, #408]
	str r3, [sp, #0]
	str r11, [sp, #4]
	str r9, [sp, #8]
	ldr r3, [sp, #312]
	str r3, [sp, #12]
	ldr r3, [sp, #404]
	str r3, [sp, #16]
	str r10, [sp, #20]
	str r4, [sp, #24]
	ldr r3, [sp, #320]
	str r3, [sp, #28]
	ldr r3, [sp, #396]
	str r3, [sp, #32]
	ldr r3, [sp, #400]
	str r3, [sp, #36]
	ldr r3, [sp, #392]
	str r3, [sp, #40]
	ldr r3, [sp, #332]
	str r3, [sp, #44]
	str r2, [sp, #48]
	ldr r2, [sp, #384]
	str r2, [sp, #52]
	str r1, [sp, #56]
	str r0, [sp, #60]
	ldr r0, [sp, #388]
	str r0, [sp, #64]
	ldr r3, [sp, #1332]
	str r3, [sp, #68]
	ldr r1, [sp, #348]
	str r1, [sp, #72]
	ldr r0, [sp, #380]
	str r0, [sp, #76]
	ldr r0, [sp, #376]
	str r0, [sp, #80]
	ldr r3, [sp, #1312]
	str r3, [sp, #84]
	ldr r3, [sp, #1316]
	str r3, [sp, #88]
	ldr r1, [sp, #324]
	str r1, [sp, #92]
	ldr r1, [sp, #328]
	str r1, [sp, #96]
	ldr r3, [sp, #1308]
	str r3, [sp, #100]
	ldr r1, [sp, #344]
	str r1, [sp, #104]
	ldr r0, [sp, #372]
	str r0, [sp, #108]
	ldr r1, [sp, #340]
	str r1, [sp, #112]
	ldr r3, [sp, #1304]
	str r3, [sp, #116]
	ldr r3, [sp, #1300]
	str r3, [sp, #120]
	vstr s21, [sp, #124]
	vstr s18, [sp, #128]
	ldr r0, [sp, #368]
	str r0, [sp, #132]
	ldr r1, [sp, #316]
	str r1, [sp, #136]
	ldr r3, [sp, #808]
	str r3, [sp, #140]
	ldr r0, [sp, #356]
	str r0, [sp, #144]
	vstr s19, [sp, #148]
	str r7, [sp, #152]
	vstr s17, [sp, #156]
	ldr r0, [sp, #360]
	str r0, [sp, #160]
	ldr r0, [sp, #364]
	str r0, [sp, #164]
	vstr s20, [sp, #168]
	ldr r1, [sp, #336]
	str r1, [sp, #172]
	str r6, [sp, #176]
	ldr r2, [sp, #352]
	vldr s26, [sp, #252]
	vldr s27, [sp, #260]
	vldr s12, [sp, #268]
	vldr s28, [sp, #276]
	vldr s29, [sp, #220]
	vldr s14, [sp, #240]
	vldr s13, [sp, #228]
	vldr s0, [sp, #244]
	vldr s10, [sp, #236]
	vldr s9, [sp, #248]
	vldr s15, [sp, #256]
	vldr s2, [sp, #264]
	vldr s11, [sp, #272]
	vldr s4, [sp, #212]
	vldr s5, [sp, #208]
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
	movw r12, #1336
	add r12, sp, r12
	vldr s0, [r12, #0]
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
	movw r12, #1348
	mov r0, #0
	add sp, sp, r12
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
