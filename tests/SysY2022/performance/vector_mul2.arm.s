.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	movw r12, #20720
	movt r12, #18
	sub sp, sp, r12
	movw r12, #7144
	movt r12, #6
	add r2, sp, r12
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r12, #13932
	movt r12, #12
	add r2, sp, r12
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	add r2, sp, #44
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
label2:
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	mov r2, #1065353216
	vmov s0, r2
	vstr s0, [r1, #0]
	vstr s0, [r1, #4]
	vstr s0, [r1, #8]
	vstr s0, [r1, #12]
	vstr s0, [r1, #16]
	vstr s0, [r1, #20]
	vstr s0, [r1, #24]
	vstr s0, [r1, #28]
	vstr s0, [r1, #32]
	vstr s0, [r1, #36]
	vstr s0, [r1, #40]
	vstr s0, [r1, #44]
	vstr s0, [r1, #48]
	vstr s0, [r1, #52]
	vstr s0, [r1, #56]
	vstr s0, [r1, #60]
	add r0, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label215
	b label2
label215:
	mov r0, #0
	movw r12, #6916
	movt r12, #6
	add r12, sp, r12
	str r0, [r12, #0]
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label221
	b label10
label221:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label956
label134:
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #16
	movw r12, #6924
	movt r12, #6
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #15
	movw r12, #7104
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #14
	movw r12, #7108
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #13
	movw r12, #7112
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #12
	movw r12, #6948
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #11
	movw r12, #6944
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #10
	movw r12, #6940
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #9
	movw r12, #6936
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #8
	movw r12, #7120
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #7
	movw r12, #7128
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #6
	movw r12, #7132
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #5
	movw r12, #7136
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #4
	str r3, [sp, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #3
	movw r12, #6932
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #2
	movw r12, #6928
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, #1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label135
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3058
	b label156
label10:
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #16
	str r3, [sp, #28]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #15
	str r3, [sp, #4]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #14
	str r3, [sp, #32]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #13
	str r3, [sp, #8]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #12
	str r3, [sp, #36]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #11
	str r3, [sp, #40]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #10
	movw r12, #6828
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #9
	movw r12, #20716
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #8
	movw r12, #6832
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #7
	movw r12, #13928
	movt r12, #12
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #6
	str r3, [sp, #24]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #5
	movw r12, #6836
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #4
	str r3, [sp, #16]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #3
	str r3, [sp, #12]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #2
	str r3, [sp, #20]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label11
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7004
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label250
	b label17
label250:
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6996
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label430
	b label21
label430:
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6988
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label610
	b label32
label610:
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label28
	b label31
label28:
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label631
	b label28
label631:
	mov r1, r0
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label221
	b label10
label3058:
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label3063
	b label155
label3063:
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3068
	b label147
label3068:
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label152
	b label151
label155:
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r5, r1, r2
	mul r1, r5, r3
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, #2
	add r1, r4, r2
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r2, r1, lsl #2
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r5
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r0, r0, r1
	vmov s3, r0
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r4, r2
	movw r12, #6928
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #3
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #6932
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #4
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	ldr r3, [sp, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #5
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #7136
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #6
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #7132
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #7
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #7128
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #8
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #7120
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #9
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #6936
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #10
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #6940
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #11
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #6944
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #12
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #6948
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #13
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #7112
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #14
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #7108
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r2, r0, #1
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #15
	add r1, r0, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r0, r2
	movw r12, #7104
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	movw r12, #7028
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label3063
	b label155
label152:
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	add r1, r0, #1
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label135
	mov r0, r1
	b label152
label32:
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r0, r3
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, r3
	mul r0, r4, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s2, s1
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s1, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #2
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #20]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #12]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #16]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6836
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #24]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #13928
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6832
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #20716
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6828
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #40]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #36]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #8]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #32]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #4]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6988
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7036
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6988
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label610
	b label32
label21:
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r0, r3
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, r3
	mul r0, r4, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s2, s1
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s1, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #2
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #20]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #12]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #16]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6836
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #24]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #13928
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6832
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #20716
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6828
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #40]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #36]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #8]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #32]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #4]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6996
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6996
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label430
	b label21
label31:
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #20]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #12]
	add r6, r3, r0
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #16]
	add r4, r3, r0
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6836
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #24]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #13928
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r3, r0
	mul r3, r4, r6
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6832
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r3, r0
	mul r3, r6, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20716
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6828
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r3, r0
	mul r3, r4, r6
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #40]
	add r5, r3, r0
	mul r3, r6, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #36]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #8]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #32]
	add r6, r3, r0
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #4]
	add r4, r3, r0
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #28]
	add r0, r3, r0
	mul r0, r4, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label28
	b label31
label17:
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r0, r3
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, r3
	mul r0, r4, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s2, s1
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s1, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #2
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #20]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #12]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #16]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6836
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #24]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #13928
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6832
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #20716
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6828
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #40]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #36]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #8]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #32]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	ldr r3, [sp, #4]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7004
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7052
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7004
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label250
	b label17
label151:
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r4, r2, r0
	mul r2, r3, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #1
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6928
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #2
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6932
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r0, #3
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #0]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7136
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r0, #5
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7132
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7128
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r0, #7
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7120
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #8
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6936
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r0, #9
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6940
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #10
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6944
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r0, #11
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6948
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #12
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7112
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r0, #13
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7108
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r3, r0
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #14
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7104
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r4, r5, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r0, #15
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6924
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r0, r4, r0
	mul r0, r3, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	add r0, r1, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label152
	b label151
label156:
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r4, r1, r2
	mul r2, r3, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r1, #1
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6928
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #2
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6932
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #3
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7136
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #5
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7132
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #6
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7128
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7120
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #8
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6936
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #9
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6940
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r1, r3
	mul r3, r4, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #10
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6944
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r6, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #11
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6948
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #12
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7112
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #13
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7108
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #14
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7104
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	mul r1, r5, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3058
	b label156
label147:
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r1
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r4, r1, r2
	mul r2, r3, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r1, #1
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6928
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #2
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6932
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #3
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7136
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #5
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7132
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r1, r3
	mul r3, r4, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7128
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r6, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7120
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #8
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6936
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #9
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6940
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #10
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6944
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #11
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6948
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #12
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7112
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #13
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7108
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #14
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7104
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r4, r5, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #15
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6924
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r1, r1, r4
	mul r1, r3, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3068
	b label147
label956:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label962
	b label111
label962:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label45
	b label88
label45:
	movw r12, #6916
	movt r12, #6
	add r12, sp, r12
	ldr r0, [r12, #0]
	add r0, r0, #1
	cmp r0, #1000
	bge label46
	movw r12, #6916
	movt r12, #6
	add r12, sp, r12
	str r0, [r12, #0]
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label221
	b label10
label46:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label51
label50:
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r3, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r3, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label51
	b label50
label51:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label55
label54:
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r3, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r3, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label55
	b label54
label111:
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #15
	movw r12, #6876
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #14
	movw r12, #7068
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #13
	movw r12, #6872
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #12
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #11
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #10
	movw r12, #6860
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #9
	movw r12, #6888
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #8
	movw r12, #6856
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #7
	movw r12, #6852
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #6
	movw r12, #6884
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #5
	movw r12, #6848
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #4
	movw r12, #6844
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #3
	movw r12, #6880
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #2
	movw r12, #6840
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #16
	movw r12, #6956
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label112
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7096
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label2328
	b label133
label2328:
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7088
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label2333
	b label132
label2333:
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label2338
	b label124
label2338:
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6964
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label2489
	b label128
label124:
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6840
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6880
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6844
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6848
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6884
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6852
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6856
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6888
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6860
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6872
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7068
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6876
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r5
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6956
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label2338
	b label124
label2489:
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	mov r0, r1
label129:
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label2681
	b label129
label2681:
	mov r1, r0
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label962
	b label111
label88:
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #15
	movw r12, #6992
	movt r12, #6
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #14
	movw r12, #6976
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #13
	movw r12, #7000
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #12
	movw r12, #7100
	movt r12, #6
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #11
	movw r12, #6896
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #10
	movw r12, #7024
	movt r12, #6
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #9
	movw r12, #6900
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #8
	movw r12, #6892
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #7
	movw r12, #6904
	movt r12, #6
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #6
	movw r12, #6960
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #5
	movw r12, #6952
	movt r12, #6
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #4
	movw r12, #7008
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #3
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #2
	movw r12, #7016
	movt r12, #6
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, #1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label108
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1581
	b label107
label1581:
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7020
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1586
	b label106
label1586:
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1591
	b label105
label1591:
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6972
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1596
	b label101
label1596:
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	mov r0, r1
	b label102
label101:
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, #1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r4, r2
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r2, r1
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r5, r1, #2
	add r0, r5, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s1, s3, s1
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r3, r3, r1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r2
	mul r1, r3, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r4, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r5, r2
	movw r12, #7016
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r4, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7008
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6952
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r4, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6960
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6904
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r4, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6892
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6900
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7024
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r4, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6896
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7100
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r4, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7000
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6976
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6992
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r4, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #6972
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6972
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6972
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1596
	b label101
label102:
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	add r1, r0, #1
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label108
	mov r0, r1
	b label102
label108:
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r3, r2
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label45
	b label88
label133:
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r0, r3
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, r3
	mul r0, r4, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s1, s3, s1
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #2
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6840
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6880
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6844
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6848
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6884
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6852
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6856
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6888
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6860
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6872
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #7068
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6876
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7096
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7040
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7096
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label2328
	b label133
label132:
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r0, r3
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, r3
	mul r0, r4, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s2, s1
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s1, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #2
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6840
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6880
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6844
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6848
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6884
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6852
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6856
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6888
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6860
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6872
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #7068
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6876
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7088
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7032
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7088
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label2333
	b label132
label128:
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r0, r3
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s1, s3, s1
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r2, r3, r1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #2
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6840
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6880
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6844
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6848
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6884
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6852
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6856
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6888
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6860
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6872
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #7068
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r1, r3
	movw r12, #6876
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6964
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7072
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #6964
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label2489
	b label128
label107:
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r1, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r4, r1, #1
	add r2, r4, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7016
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r5, r1, r4
	mul r3, r3, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #2
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #3
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7008
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #4
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6952
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #5
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6960
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #6
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6904
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r5, r1, r4
	mul r3, r3, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6892
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #8
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6900
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #9
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7024
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #10
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6896
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #11
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7100
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #12
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7000
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #13
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6976
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r4, r5, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #14
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6992
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1581
	b label107
label106:
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, #1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r4, r2
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r6, r1, r2
	mul r0, r6, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r5, r1, #2
	add r0, r5, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s1, s3, s1
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r6
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r4, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r5, r2
	movw r12, #7016
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7008
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6952
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6960
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6904
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6892
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6900
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7024
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6896
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7100
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7000
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6976
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6992
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7020
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7020
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7048
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7020
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1586
	b label106
label105:
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r4, r1, #1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r4, r2
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r6, r1, r2
	mul r0, r6, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r5, r1, #2
	add r0, r5, r0
	vmov s1, r0
	vcvt.f32.s32 s2, s1
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r0, r2, r1, lsl #2
	vldr s1, [r0, #0]
	vldr s3, [r0, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #6912
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r3, r1
	mul r1, r1, r6
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r4, r1
	vmov s3, r1
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r5, r2
	movw r12, #7016
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #3
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #4
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7008
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #5
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6952
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #6
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6960
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #7
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6904
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #8
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6892
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #9
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6900
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #10
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7024
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #11
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6896
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #12
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7100
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #13
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #7000
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #14
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6976
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, #15
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6908
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	movw r12, #6992
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r4
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	add r1, r1, r2
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r0, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	ldr r1, [r12, #0]
	movw r12, #7044
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	add r1, r1, #16
	movw r12, #7012
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1591
	b label105
label11:
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #7076
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #7092
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label221
	b label10
label135:
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #7140
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r3, r2
	movw r12, #7060
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label956
	b label134
label112:
	movw r12, #6920
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #7084
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	movw r12, #6968
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label962
	b label111
label55:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label59
label58:
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r3, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r3, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label59
	b label58
label59:
	movw r12, #7116
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s1, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label1297
	vmov.f32 s0, s1
	b label59
label1297:
	mov r0, #0
	vmov s0, r0
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label65
label87:
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label65
	b label87
label65:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label69
	b label68
label69:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label73
	b label72
label73:
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
label4468:
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label76
	b label4468
label76:
	vdiv.f32 s1, s1, s0
	mov r0, #1065353216
	vmov s0, r0
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label1467
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label83
	b label1472
label1467:
	mov r0, #1
	cmp r0, #0
	beq label83
	vadd.f32 s0, s0, s2
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label1467
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label83
label1472:
	vadd.f32 s0, s0, s2
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label1467
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label83
	b label1472
label83:
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s0, s0, s1
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label84
	b label4419
label68:
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label69
	b label68
label72:
	movw r12, #7124
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label73
	b label72
label84:
	movw r0, #14269
	movt r0, #46470
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwge r0, #1
	b label85
label4419:
	mov r0, #0
label85:
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	movw r12, #20720
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, pc }
