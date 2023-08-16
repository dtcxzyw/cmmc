.arch armv7ve
.data
.bss
.align 8
a:
	.zero	4000000
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	8
.align 8
var:
	.zero	4000
.align 8
mean:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	vpush { s16 }
	mov r9, #0
	movw r5, #:lower16:var
	movt r5, #:upper16:var
	movw r6, #:lower16:mean
	movt r6, #:upper16:mean
	movw r8, #:lower16:cmmc_parallel_body_payload_1
	movt r8, #:upper16:cmmc_parallel_body_payload_1
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r7, r4
label583:
	cmp r9, #1000
	bge label588
	mov r0, r7
	bl getfarray
	cmp r0, #1000
	bne label617
	add r9, r9, #1
	add r7, r7, #4000
	b label583
label588:
	mov r0, #42
	bl _sysy_starttime
	mov r7, #0
	vmov s16, r7
	b label589
label601:
	add r7, r7, #1
	cmp r7, #100
	bge label784
	vmov.f32 s16, s2
label589:
	movw r0, #:lower16:cmmc_parallel_body_payload_0
	movt r0, #:upper16:cmmc_parallel_body_payload_0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	mov r1, #1000
	str r6, [r0, #0]
	mov r0, #0
	bl cmmcParallelFor
	mov r1, #1000
	mov r0, #0
	str r5, [r8, #0]
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	str r6, [r8, #4]
	bl cmmcParallelFor
	vmov.f32 s2, s16
	mov r2, #0
	mov r1, r6
	add r0, r5, r2, lsl #2
	vldr s1, [r6, #0]
	mov r3, #0
	vldr s0, [r0, #0]
	mov r0, #4000
	mla r0, r2, r0, r4
	b label596
.p2align 4
label616:
	add r0, r0, #64
.p2align 4
label596:
	vldr s3, [r0, #0]
	add r3, r3, #16
	cmp r3, #992
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vadd.f32 s2, s2, s3
	vstr s3, [r0, #0]
	vldr s3, [r0, #4]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #4]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #8]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #8]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #12]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #12]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #16]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #16]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #20]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #20]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #24]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #24]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #28]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #28]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #32]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #32]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #36]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #36]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #40]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #40]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #44]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #44]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #48]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #48]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #52]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #52]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #56]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #56]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #60]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #60]
	vadd.f32 s2, s2, s3
	blt label616
	vldr s3, [r0, #64]
	add r2, r2, #1
	cmp r2, #1000
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vadd.f32 s2, s2, s3
	vstr s3, [r0, #64]
	vldr s3, [r0, #68]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #68]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #72]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #72]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #76]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #76]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #80]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #80]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #84]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #84]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #88]
	vsub.f32 s3, s3, s1
	vdiv.f32 s3, s3, s0
	vstr s3, [r0, #88]
	vadd.f32 s2, s2, s3
	vldr s3, [r0, #92]
	vsub.f32 s1, s3, s1
	vdiv.f32 s0, s1, s0
	vstr s0, [r0, #92]
	vadd.f32 s2, s2, s0
	bge label601
	add r1, r1, #4
	add r0, r5, r2, lsl #2
	mov r3, #0
	vldr s1, [r1, #0]
	vldr s0, [r0, #0]
	mov r0, #4000
	mla r0, r2, r0, r4
	b label596
label612:
	mov r0, #95
	bl _sysy_stoptime
	vmov.f32 s0, s16
	bl putfloat
	mov r0, #0
label617:
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, r9, pc }
label784:
	mov r1, #0
	vmov.f32 s0, s2
	mov r0, r4
	mov r2, #0
	b label607
.p2align 4
label614:
	add r0, r0, #256
.p2align 4
label607:
	vldr s1, [r0, #0]
	add r2, r2, #64
	cmp r2, #960
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #48]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #52]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #56]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #60]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #64]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #68]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #72]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #76]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #80]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #84]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #88]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #92]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #96]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #100]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #104]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #108]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #112]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #116]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #120]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #124]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #128]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #132]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #136]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #140]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #144]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #148]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #152]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #156]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #160]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #164]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #168]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #172]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #176]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #180]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #184]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #188]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #192]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #196]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #200]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #204]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #208]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #212]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #216]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #220]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #224]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #228]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #232]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #236]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #240]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #244]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #248]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #252]
	vadd.f32 s0, s0, s1
	blt label614
	vldr s1, [r0, #256]
	add r1, r1, #1
	cmp r1, #1000
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #260]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #264]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #268]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #272]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #276]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #280]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #284]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #288]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #292]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #296]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #300]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #304]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #308]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #312]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #316]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #320]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #324]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #328]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #332]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #336]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #340]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #344]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #348]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #352]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #356]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #360]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #364]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #368]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #372]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #376]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #380]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #384]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #388]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #392]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #396]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #400]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #404]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #408]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #412]
	vadd.f32 s16, s0, s1
	bge label612
	add r4, r4, #4000
	vmov.f32 s0, s16
	mov r2, #0
	mov r0, r4
	b label607
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7 }
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r6, r0
	movw r5, #0
	movt r5, #17530
	mov r2, r1
	movw r1, #:lower16:cmmc_parallel_body_payload_0
	movt r1, #:upper16:cmmc_parallel_body_payload_0
	ldr r1, [r1, #0]
	add r3, r1, r0, lsl #2
	mov r1, #0
	mov r0, #4000
	vmov s0, r1
	mov r7, r1
	mla r0, r6, r0, r4
	b label5
.p2align 4
label10:
	vldr s1, [r0, #256]
	add r6, r6, #1
	cmp r2, r6
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #260]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #264]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #268]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #272]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #276]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #280]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #284]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #288]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #292]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #296]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #300]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #304]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #308]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #312]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #316]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #320]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #324]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #328]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #332]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #336]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #340]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #344]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #348]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #352]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #356]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #360]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #364]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #368]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #372]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #376]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #380]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #384]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #388]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #392]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #396]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #400]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #404]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #408]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #412]
	vadd.f32 s0, s0, s1
	vmov s1, r5
	vdiv.f32 s0, s0, s1
	vstr s0, [r3, #0]
	ble label12
	add r3, r3, #4
	mov r0, #4000
	vmov s0, r1
	mov r7, r1
	mla r0, r6, r0, r4
.p2align 4
label5:
	vldr s1, [r0, #0]
	add r7, r7, #64
	cmp r7, #960
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #48]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #52]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #56]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #60]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #64]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #68]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #72]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #76]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #80]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #84]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #88]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #92]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #96]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #100]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #104]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #108]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #112]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #116]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #120]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #124]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #128]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #132]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #136]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #140]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #144]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #148]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #152]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #156]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #160]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #164]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #168]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #172]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #176]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #180]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #184]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #188]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #192]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #196]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #200]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #204]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #208]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #212]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #216]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #220]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #224]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #228]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #232]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #236]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #240]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #244]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #248]
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #252]
	vadd.f32 s0, s0, s1
	bge label10
	add r0, r0, #256
	b label5
label12:
	pop { r4, r5, r6, r7 }
	bx lr
.p2align 4
cmmc_parallel_body_1:
	push { r4, r5, r6, r7, r8 }
	mov r6, r0
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r2, r1
	movw r1, #:lower16:cmmc_parallel_body_payload_1
	movt r1, #:upper16:cmmc_parallel_body_payload_1
	ldr r4, [r1, #0]
	ldr r1, [r1, #4]
	add r3, r1, r0, lsl #2
	mov r1, #1056964608
	movw r0, #4719
	movt r0, #14979
	mov r7, #4000
	vldr s0, [r3, #0]
	mov r8, #0
	mla r7, r6, r7, r5
	vmov s1, r8
	b label365
.p2align 4
label574:
	add r7, r4, r6, lsl #2
	add r6, r6, #1
	vstr s1, [r7, #0]
	cmp r2, r6
	ble label380
.p2align 4
label379:
	add r3, r3, #4
	mov r7, #4000
	mov r8, #0
	vldr s0, [r3, #0]
	mla r7, r6, r7, r5
	vmov s1, r8
.p2align 4
label365:
	vldr s2, [r7, #0]
	add r8, r8, #16
	cmp r8, #992
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #4]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #8]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #12]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #16]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #20]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #24]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #28]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #32]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #36]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #40]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #44]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #48]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #52]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #56]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #60]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label370
	add r7, r7, #64
	b label365
.p2align 4
label370:
	vldr s2, [r7, #64]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #68]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #72]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #76]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #80]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #84]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #88]
	vsub.f32 s2, s2, s0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r7, #92]
	movw r7, #0
	movt r7, #17530
	vsub.f32 s0, s2, s0
	vmul.f32 s0, s0, s0
	vadd.f32 s0, s1, s0
	vmov s1, r7
	movw r7, #55050
	movt r7, #15395
	vdiv.f32 s0, s0, s1
	vmov s1, r7
	mov r7, #0
	vmov s3, r7
	vadd.f32 s0, s0, s1
	vmov s1, r1
	vmov.f32 s2, s0
	vmul.f32 s1, s0, s1
	vmul.f32 s4, s1, s1
	vmov s6, r0
	vsub.f32 s5, s4, s0
	vabs.f32 s5, s5
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt label375
	add r7, r4, r6, lsl #2
	add r6, r6, #1
	vstr s1, [r7, #0]
	cmp r2, r6
	bgt label379
	b label380
.p2align 4
label376:
	vadd.f32 s2, s1, s3
	vmov s4, r1
	vmov s6, r0
	vmul.f32 s4, s2, s4
	vmov.f32 s2, s1
	vmov.f32 s1, s4
	vmul.f32 s4, s4, s4
	vsub.f32 s5, s4, s0
	vabs.f32 s5, s5
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	ble label574
.p2align 4
label375:
	vcmp.f32 s4, s0
	vmrs APSR_nzcv, FPSCR
	bgt label376
	vadd.f32 s3, s1, s2
	vmov s4, r1
	vmov s6, r0
	vmul.f32 s4, s3, s4
	vmov.f32 s3, s1
	vmov.f32 s1, s4
	vmul.f32 s4, s4, s4
	vsub.f32 s5, s4, s0
	vabs.f32 s5, s5
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt label375
	add r7, r4, r6, lsl #2
	add r6, r6, #1
	vstr s1, [r7, #0]
	cmp r2, r6
	bgt label379
label380:
	pop { r4, r5, r6, r7, r8 }
	bx lr
