.arch armv7ve
.data
.bss
.align 8
a:
	.zero	4000000
.align 8
b:
	.zero	4000000
.align 8
c:
	.zero	4000000
.align 8
cmmc_parallel_body_payload_2:
	.zero	8
.align 8
cmmc_parallel_body_payload_3:
	.zero	12
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	mov r7, #0
	movw r6, #:lower16:cmmc_parallel_body_payload_2
	movt r6, #:upper16:cmmc_parallel_body_payload_2
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	sub sp, sp, #4
label1032:
	cmp r7, #1000
	bge label1039
	mov r0, r5
	bl getarray
	cmp r0, #1000
	bne label1037
	add r7, r7, #1
	add r5, r5, #4000
	b label1032
.p2align 4
label1065:
	add r4, r4, #4000
.p2align 4
label1060:
	str r7, [r5, #0]
	movw r2, #:lower16:cmmc_parallel_body_3
	movt r2, #:upper16:cmmc_parallel_body_3
	mov r0, #0
	mov r1, #1000
	str r7, [r5, #4]
	str r4, [r5, #8]
	bl cmmcParallelFor
	ldr r7, [r5, #0]
	add r6, r6, #1
	cmp r6, #1000
	blt label1065
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r7
	bl putint
	mov r0, #0
label1037:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label1039:
	mov r0, #23
	bl _sysy_starttime
	mov r1, #1000
	mov r0, #0
	movw r2, #:lower16:cmmc_parallel_body_0
	movt r2, #:upper16:cmmc_parallel_body_0
	bl cmmcParallelFor
	mov r1, #1000
	mov r0, #0
	movw r2, #:lower16:cmmc_parallel_body_1
	movt r2, #:upper16:cmmc_parallel_body_1
	bl cmmcParallelFor
	mov r7, #0
	mov r5, r4
	mov r0, r4
	mov r1, #0
	mvn r2, #-2147483648
	b label1043
.p2align 4
label1048:
	ldr r3, [r0, #256]
	mov r1, r2
	cmp r2, r3
	ldr r2, [r0, #260]
	movge r1, r3
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #264]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #268]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #272]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #276]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #280]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #284]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #288]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #292]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #296]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #300]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #304]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #308]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #312]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #316]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #320]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #324]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #328]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #332]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #336]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #340]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #344]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #348]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #352]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #356]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #360]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #364]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #368]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #372]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #376]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #380]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #384]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #388]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #392]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #396]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #400]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #404]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #408]
	cmp r1, r2
	movge r1, r2
	ldr r2, [r0, #412]
	str r5, [r6, #0]
	mov r0, r1
	cmp r1, r2
	mov r1, #1000
	movge r0, r2
	movw r2, #:lower16:cmmc_parallel_body_2
	movt r2, #:upper16:cmmc_parallel_body_2
	str r0, [r6, #4]
	mov r0, #0
	bl cmmcParallelFor
	add r7, r7, #1
	cmp r7, #1000
	bge label1408
	add r5, r5, #4000
	mov r1, #0
	mvn r2, #-2147483648
	mov r0, r5
.p2align 4
label1043:
	ldr r3, [r0, #0]
	add r1, r1, #64
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #4]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #8]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #12]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #16]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #20]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #24]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #28]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #32]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #36]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #40]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #44]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #48]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #52]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #56]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #60]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #64]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #68]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #72]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #76]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #80]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #84]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #88]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #92]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #96]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #100]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #104]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #108]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #112]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #116]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #120]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #124]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #128]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #132]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #136]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #140]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #144]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #148]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #152]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #156]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #160]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #164]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #168]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #172]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #176]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #180]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #184]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #188]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #192]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #196]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #200]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #204]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #208]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #212]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #216]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #220]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #224]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #228]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #232]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #236]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #240]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #244]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #248]
	cmp r2, r3
	movge r2, r3
	ldr r3, [r0, #252]
	cmp r2, r3
	movge r2, r3
	cmp r1, #960
	bge label1048
	add r0, r0, #256
	b label1043
label1408:
	mov r2, r4
	mov r0, #0
	mov r1, r4
	mov r5, #0
	b label1054
.p2align 4
label1057:
	add r1, r1, #64
.p2align 4
label1054:
	mov r3, #4000
	mla r3, r5, r3, r4
	add r5, r5, #16
	cmp r5, #992
	ldr r6, [r3, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #0]
	add r6, r3, #4000
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #4]
	add r6, r3, #8000
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #8]
	movw r6, #12000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #12]
	add r6, r3, #16000
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #16]
	movw r6, #20000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #20]
	movw r6, #24000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #24]
	movw r6, #28000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #28]
	add r6, r3, #32000
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #32]
	movw r6, #36000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #36]
	movw r6, #40000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #40]
	movw r6, #44000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #44]
	movw r6, #48000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #48]
	movw r6, #52000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #52]
	movw r6, #56000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #56]
	movw r6, #60000
	add r6, r3, r6
	ldr r6, [r6, r0, lsl #2]
	rsb r6, r6, #0
	str r6, [r1, #60]
	blt label1057
	add r5, r3, #64000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #64]
	movw r5, #2464
	movt r5, #1
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #68]
	movw r5, #6464
	movt r5, #1
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #72]
	movw r5, #10464
	movt r5, #1
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #76]
	movw r5, #14464
	movt r5, #1
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #80]
	movw r5, #18464
	movt r5, #1
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #84]
	movw r5, #22464
	movt r5, #1
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #88]
	movw r5, #26464
	movt r5, #1
	add r3, r3, r5
	ldr r3, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #1000
	rsb r3, r3, #0
	str r3, [r1, #92]
	bge label1059
	add r2, r2, #4000
	mov r5, #0
	mov r1, r2
	b label1054
label1059:
	movw r5, #:lower16:cmmc_parallel_body_payload_3
	movt r5, #:upper16:cmmc_parallel_body_payload_3
	mov r6, #0
	mov r7, r6
	b label1060
.p2align 4
cmmc_parallel_body_0:
	push { r4, r5, r6, r7, r8, r9 }
	movw r5, #12000
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r3, #4000
	mov r7, r1
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mla r6, r0, r3, r1
	mov r1, r6
	mov r8, #0
	b label5
.p2align 4
label8:
	add r8, r2, #256000
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #256]
	movw r8, #63392
	movt r8, #3
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #260]
	movw r8, #1856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #264]
	movw r8, #5856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #268]
	movw r8, #9856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #272]
	movw r8, #13856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #276]
	movw r8, #17856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #280]
	movw r8, #21856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #284]
	movw r8, #25856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #288]
	movw r8, #29856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #292]
	movw r8, #33856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #296]
	movw r8, #37856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #300]
	movw r8, #41856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #304]
	movw r8, #45856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #308]
	movw r8, #49856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #312]
	movw r8, #53856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #316]
	movw r8, #57856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #320]
	movw r8, #61856
	movt r8, #4
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #324]
	movw r8, #320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #328]
	movw r8, #4320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #332]
	movw r8, #8320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #336]
	movw r8, #12320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #340]
	movw r8, #16320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #344]
	movw r8, #20320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #348]
	movw r8, #24320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #352]
	movw r8, #28320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #356]
	movw r8, #32320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #360]
	movw r8, #36320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #364]
	movw r8, #40320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #368]
	movw r8, #44320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #372]
	movw r8, #48320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #376]
	movw r8, #52320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #380]
	movw r8, #56320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #384]
	movw r8, #60320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #388]
	movw r8, #64320
	movt r8, #5
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #392]
	movw r8, #2784
	movt r8, #6
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #396]
	movw r8, #6784
	movt r8, #6
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #400]
	movw r8, #10784
	movt r8, #6
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #404]
	movw r8, #14784
	movt r8, #6
	add r8, r2, r8
	ldr r8, [r8, r0, lsl #2]
	str r8, [r1, #408]
	movw r8, #18784
	movt r8, #6
	add r2, r2, r8
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r7, r0
	str r2, [r1, #412]
	ble label10
	add r6, r6, #4000
	mov r8, #0
	mov r1, r6
.p2align 4
label5:
	mla r2, r8, r3, r4
	add r8, r8, #64
	cmp r8, #960
	ldr r9, [r2, r0, lsl #2]
	str r9, [r1, #0]
	add r9, r2, #4000
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #4]
	add r9, r2, #8000
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #8]
	add r9, r2, r5
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #12]
	add r9, r2, #16000
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #16]
	movw r9, #20000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #20]
	movw r9, #24000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #24]
	movw r9, #28000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #28]
	add r9, r2, #32000
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #32]
	movw r9, #36000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #36]
	movw r9, #40000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #40]
	movw r9, #44000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #44]
	movw r9, #48000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #48]
	movw r9, #52000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #52]
	movw r9, #56000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #56]
	movw r9, #60000
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #60]
	add r9, r2, #64000
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #64]
	movw r9, #2464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #68]
	movw r9, #6464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #72]
	movw r9, #10464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #76]
	movw r9, #14464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #80]
	movw r9, #18464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #84]
	movw r9, #22464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #88]
	movw r9, #26464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #92]
	movw r9, #30464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #96]
	movw r9, #34464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #100]
	movw r9, #38464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #104]
	movw r9, #42464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #108]
	movw r9, #46464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #112]
	movw r9, #50464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #116]
	movw r9, #54464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #120]
	movw r9, #58464
	movt r9, #1
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #124]
	add r9, r2, #128000
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #128]
	movw r9, #928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #132]
	movw r9, #4928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #136]
	movw r9, #8928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #140]
	movw r9, #12928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #144]
	movw r9, #16928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #148]
	movw r9, #20928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #152]
	movw r9, #24928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #156]
	movw r9, #28928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #160]
	movw r9, #32928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #164]
	movw r9, #36928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #168]
	movw r9, #40928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #172]
	movw r9, #44928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #176]
	movw r9, #48928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #180]
	movw r9, #52928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #184]
	movw r9, #56928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #188]
	movw r9, #60928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #192]
	movw r9, #64928
	movt r9, #2
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #196]
	movw r9, #3392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #200]
	movw r9, #7392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #204]
	movw r9, #11392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #208]
	movw r9, #15392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #212]
	movw r9, #19392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #216]
	movw r9, #23392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #220]
	movw r9, #27392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #224]
	movw r9, #31392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #228]
	movw r9, #35392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #232]
	movw r9, #39392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #236]
	movw r9, #43392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #240]
	movw r9, #47392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #244]
	movw r9, #51392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #248]
	movw r9, #55392
	movt r9, #3
	add r9, r2, r9
	ldr r9, [r9, r0, lsl #2]
	str r9, [r1, #252]
	bge label8
	add r1, r1, #256
	b label5
label10:
	pop { r4, r5, r6, r7, r8, r9 }
	bx lr
.p2align 4
cmmc_parallel_body_1:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11 }
	mov r3, r0
	mov r5, #4000
	sub sp, sp, #8
	str r1, [sp, #4]
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mla r4, r0, r5, r1
	str r4, [sp, #0]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mla r2, r3, r5, r0
	mov r0, #0
	mov r1, r2
	mov r6, #0
	mov r7, r6
	b label665
.p2align 4
label670:
	add r6, r5, #64000
	ldr r8, [r1, #64]
	ldr r6, [r6, r0, lsl #2]
	mla r6, r8, r6, r7
	ldr r8, [r1, #68]
	movw r7, #2464
	movt r7, #1
	add r7, r5, r7
	ldr r7, [r7, r0, lsl #2]
	mla r6, r8, r7, r6
	movw r7, #6464
	movt r7, #1
	add r8, r5, r7
	ldr r7, [r1, #72]
	ldr r8, [r8, r0, lsl #2]
	mla r6, r7, r8, r6
	ldr r8, [r1, #76]
	movw r7, #10464
	movt r7, #1
	add r7, r5, r7
	ldr r7, [r7, r0, lsl #2]
	mla r6, r8, r7, r6
	ldr r8, [r1, #80]
	movw r7, #14464
	movt r7, #1
	add r7, r5, r7
	ldr r7, [r7, r0, lsl #2]
	mla r6, r8, r7, r6
	ldr r8, [r1, #84]
	movw r7, #18464
	movt r7, #1
	add r7, r5, r7
	ldr r7, [r7, r0, lsl #2]
	mla r6, r8, r7, r6
	movw r7, #22464
	movt r7, #1
	add r8, r5, r7
	ldr r7, [r1, #88]
	ldr r8, [r8, r0, lsl #2]
	ldr r1, [r1, #92]
	mla r6, r7, r8, r6
	movw r7, #26464
	movt r7, #1
	add r5, r5, r7
	ldr r5, [r5, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #1000
	mla r1, r1, r5, r6
	str r1, [r4, #0]
	bge label671
	add r4, r4, #4
	mov r1, r2
	mov r6, #0
	mov r7, r6
.p2align 4
label665:
	mov r5, #4000
	movw r8, #:lower16:b
	movt r8, #:upper16:b
	mla r5, r6, r5, r8
	add r6, r6, #16
	ldr r8, [r1, #0]
	cmp r6, #992
	ldr r9, [r5, r0, lsl #2]
	add r10, r5, #4000
	ldr r11, [r1, #4]
	ldr r10, [r10, r0, lsl #2]
	mul r10, r11, r10
	mla r8, r8, r9, r10
	ldr r10, [r1, #8]
	add r9, r5, #8000
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r1, #12]
	movw r9, #12000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r1, #16]
	add r9, r5, #16000
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r1, #20]
	movw r9, #20000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r1, #24]
	movw r9, #24000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r1, #28]
	movw r9, #28000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r1, #32]
	add r9, r5, #32000
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #36000
	add r10, r5, r9
	ldr r9, [r1, #36]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	movw r9, #40000
	add r10, r5, r9
	ldr r9, [r1, #40]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	movw r9, #44000
	add r10, r5, r9
	ldr r9, [r1, #44]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	movw r9, #48000
	add r10, r5, r9
	ldr r9, [r1, #48]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r1, #52]
	movw r9, #52000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #56000
	add r10, r5, r9
	ldr r9, [r1, #56]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	movw r9, #60000
	add r10, r5, r9
	ldr r9, [r1, #60]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	add r7, r7, r8
	bge label670
	add r1, r1, #64
	b label665
.p2align 4
label671:
	add r3, r3, #1
	ldr r1, [sp, #4]
	cmp r1, r3
	ble label673
	ldr r4, [sp, #0]
	mov r5, #4000
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r6, #0
	mla r2, r3, r5, r0
	mov r7, r6
	mov r0, #0
	add r4, r4, #4000
	mov r1, r2
	str r4, [sp, #0]
	b label665
label673:
	add sp, sp, #8
	pop { r4, r5, r6, r7, r8, r9, r10, r11 }
	bx lr
.p2align 4
cmmc_parallel_body_2:
	push { r4, r5, r6 }
	mov r2, r1
	mov r6, r0
	add r1, r0, #3
	cmp r2, r1
	movw r0, #:lower16:cmmc_parallel_body_payload_2
	movt r0, #:upper16:cmmc_parallel_body_payload_2
	ldr r3, [r0, #0]
	ldr r0, [r0, #4]
	ble label931
	add r1, r6, #15
	sub r4, r2, #3
	sub r5, r2, #18
	cmp r1, r4
	bge label982
	add r1, r3, r6, lsl #2
.p2align 4
label949:
	str r0, [r1, #0]
	add r6, r6, #16
	str r0, [r1, #4]
	cmp r5, r6
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	ble label1019
	add r1, r1, #64
	b label949
label1019:
	mov r1, r6
label940:
	cmp r4, r1
	ble label931
	add r5, r3, r1, lsl #2
	b label944
label947:
	add r5, r5, #16
label944:
	str r0, [r5, #0]
	add r1, r1, #4
	str r0, [r5, #4]
	cmp r4, r1
	str r0, [r5, #8]
	str r0, [r5, #12]
	bgt label947
	mov r6, r1
label931:
	cmp r2, r6
	ble label938
	add r1, r3, r6, lsl #2
	b label934
label937:
	add r1, r1, #4
label934:
	add r6, r6, #1
	str r0, [r1, #0]
	cmp r2, r6
	bgt label937
label938:
	pop { r4, r5, r6 }
	bx lr
label982:
	mov r1, r6
	mov r6, #0
	b label940
.p2align 4
cmmc_parallel_body_3:
	push { r4, r5, r6, r7, r8, lr }
	add r2, r0, #3
	mov r6, r0
	cmp r1, r2
	movw r0, #:lower16:cmmc_parallel_body_payload_3
	movt r0, #:upper16:cmmc_parallel_body_payload_3
	ldr r3, [r0, #8]
	ble label1649
	add r2, r6, #15
	sub r4, r1, #3
	sub r5, r1, #18
	cmp r2, r4
	bge label1656
	add r2, r3, r6, lsl #2
	mov r7, #0
	b label1624
.p2align 4
label1628:
	add r2, r2, #64
.p2align 4
label1624:
	ldr r8, [r2, #0]
	add r6, r6, #16
	cmp r5, r6
	add r7, r7, r8
	ldr r8, [r2, #4]
	add r7, r7, r8
	ldr r8, [r2, #8]
	add r7, r7, r8
	ldr r8, [r2, #12]
	add r7, r7, r8
	ldr r8, [r2, #16]
	add r7, r7, r8
	ldr r8, [r2, #20]
	add r7, r7, r8
	ldr r8, [r2, #24]
	add r7, r7, r8
	ldr r8, [r2, #28]
	add r7, r7, r8
	ldr r8, [r2, #32]
	add r7, r7, r8
	ldr r8, [r2, #36]
	add r7, r7, r8
	ldr r8, [r2, #40]
	add r7, r7, r8
	ldr r8, [r2, #44]
	add r7, r7, r8
	ldr r8, [r2, #48]
	add r7, r7, r8
	ldr r8, [r2, #52]
	add r7, r7, r8
	ldr r8, [r2, #56]
	add r7, r7, r8
	ldr r8, [r2, #60]
	add r7, r7, r8
	bgt label1628
	mov r5, r6
	mov r8, r7
label1609:
	cmp r4, r5
	ble label1660
	add r2, r3, r5, lsl #2
	mov r6, r8
	b label1618
label1622:
	add r2, r2, #16
label1618:
	ldr r7, [r2, #0]
	add r5, r5, #4
	cmp r4, r5
	add r6, r6, r7
	ldr r7, [r2, #4]
	add r6, r6, r7
	ldr r7, [r2, #8]
	add r6, r6, r7
	ldr r7, [r2, #12]
	add r6, r6, r7
	bgt label1622
	mov r2, r6
	mov r4, r6
	mov r6, r5
label1629:
	cmp r1, r6
	ble label1738
	add r2, r3, r6, lsl #2
	mov r3, r4
	b label1636
label1640:
	add r2, r2, #4
label1636:
	ldr r4, [r2, #0]
	add r6, r6, #1
	cmp r1, r6
	add r3, r3, r4
	bgt label1640
	mov r1, r3
label1633:
	bl cmmcReduceAddI32
	pop { r4, r5, r6, r7, r8, pc }
label1660:
	mov r2, r7
	mov r4, r7
	b label1629
label1656:
	mov r5, r6
	mov r8, #0
	mov r6, r8
	mov r7, r8
	b label1609
label1738:
	mov r1, r2
	b label1633
label1649:
	mov r4, #0
	mov r2, r4
	b label1629
