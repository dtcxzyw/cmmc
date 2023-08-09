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
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[52] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #0
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	sub sp, sp, #60
	mov r4, r2
label2:
	cmp r5, #1000
	bge label5
	mov r0, r4
	bl getarray
	cmp r0, #1000
	beq label72
label73:
	add sp, sp, #60
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label72:
	add r5, r5, #1
	add r4, r4, #4000
	b label2
label5:
	mov r0, #23
	bl _sysy_starttime
	mov r1, #0
	movw r8, #:lower16:b
	movt r8, #:upper16:b
	str r8, [sp, #48]
	mov r0, r8
	str r1, [sp, #44]
	b label6
.p2align 4
label13:
	ldr r0, [sp, #40]
	add r0, r0, #256
	str r0, [sp, #40]
	str r1, [sp, #8]
.p2align 4
label10:
	mov r0, #4000
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	ldr r1, [sp, #8]
	mla r2, r1, r0, r2
	str r2, [sp, #36]
	ldr r1, [sp, #44]
	ldr r3, [r2, r1, lsl #2]
	ldr r0, [sp, #40]
	str r3, [r0, #0]
	add r3, r2, #4000
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #4]
	add r3, r2, #8000
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #8]
	movw r3, #12000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #12]
	add r3, r2, #16000
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #16]
	movw r3, #20000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #20]
	movw r3, #24000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #24]
	movw r3, #28000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #28]
	add r3, r2, #32000
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #32]
	movw r3, #36000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #36]
	movw r3, #40000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #40]
	movw r3, #44000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #44]
	movw r3, #48000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #48]
	movw r3, #52000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #52]
	movw r3, #56000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #56]
	movw r3, #60000
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #60]
	add r3, r2, #64000
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #64]
	movw r3, #2464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #68]
	movw r3, #6464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #72]
	movw r3, #10464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #76]
	movw r3, #14464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #80]
	movw r3, #18464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #84]
	movw r3, #22464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #88]
	movw r3, #26464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #92]
	movw r3, #30464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #96]
	movw r3, #34464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #100]
	movw r3, #38464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #104]
	movw r3, #42464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #108]
	movw r3, #46464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #112]
	movw r3, #50464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #116]
	movw r3, #54464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #120]
	movw r3, #58464
	movt r3, #1
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #124]
	add r3, r2, #128000
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #128]
	movw r3, #928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #132]
	movw r3, #4928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #136]
	movw r3, #8928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #140]
	movw r3, #12928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #144]
	movw r3, #16928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #148]
	movw r3, #20928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #152]
	movw r3, #24928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #156]
	movw r3, #28928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #160]
	movw r3, #32928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #164]
	movw r3, #36928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #168]
	movw r3, #40928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #172]
	movw r3, #44928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #176]
	movw r3, #48928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #180]
	movw r3, #52928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #184]
	movw r3, #56928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #188]
	movw r3, #60928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #192]
	movw r3, #64928
	movt r3, #2
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #196]
	movw r3, #3392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #200]
	movw r3, #7392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #204]
	movw r3, #11392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #208]
	movw r3, #15392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #212]
	movw r3, #19392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #216]
	movw r3, #23392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #220]
	movw r3, #27392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #224]
	movw r3, #31392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #228]
	movw r3, #35392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #232]
	movw r3, #39392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #236]
	movw r3, #43392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #240]
	movw r3, #47392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #244]
	movw r3, #51392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #248]
	movw r3, #55392
	movt r3, #3
	add r2, r2, r3
	ldr r1, [r2, r1, lsl #2]
	str r1, [r0, #252]
	ldr r1, [sp, #8]
	add r1, r1, #64
	cmp r1, #960
	blt label13
	ldr r2, [sp, #36]
	ldr r1, [sp, #44]
	add r0, r2, #256000
	ldr r3, [r0, r1, lsl #2]
	ldr r0, [sp, #40]
	str r3, [r0, #256]
	movw r3, #63392
	movt r3, #3
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #260]
	movw r3, #1856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #264]
	movw r3, #5856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #268]
	movw r3, #9856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #272]
	movw r3, #13856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #276]
	movw r3, #17856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #280]
	movw r3, #21856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #284]
	movw r3, #25856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #288]
	movw r3, #29856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #292]
	movw r3, #33856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #296]
	movw r3, #37856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #300]
	movw r3, #41856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #304]
	movw r3, #45856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #308]
	movw r3, #49856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #312]
	movw r3, #53856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #316]
	movw r3, #57856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #320]
	movw r3, #61856
	movt r3, #4
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #324]
	movw r3, #320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #328]
	movw r3, #4320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #332]
	movw r3, #8320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #336]
	movw r3, #12320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #340]
	movw r3, #16320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #344]
	movw r3, #20320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #348]
	movw r3, #24320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #352]
	movw r3, #28320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #356]
	movw r3, #32320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #360]
	movw r3, #36320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #364]
	movw r3, #40320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #368]
	movw r3, #44320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #372]
	movw r3, #48320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #376]
	movw r3, #52320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #380]
	movw r3, #56320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #384]
	movw r3, #60320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #388]
	movw r3, #64320
	movt r3, #5
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #392]
	movw r3, #2784
	movt r3, #6
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #396]
	movw r3, #6784
	movt r3, #6
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #400]
	movw r3, #10784
	movt r3, #6
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #404]
	movw r3, #14784
	movt r3, #6
	add r3, r2, r3
	ldr r3, [r3, r1, lsl #2]
	str r3, [r0, #408]
	movw r3, #18784
	movt r3, #6
	add r2, r2, r3
	ldr r2, [r2, r1, lsl #2]
	add r1, r1, #1
	str r2, [r0, #412]
	ldr r0, [sp, #48]
	add r0, r0, #4000
	str r0, [sp, #48]
	str r1, [sp, #44]
label6:
	ldr r1, [sp, #44]
	cmp r1, #1000
	bge label86
	ldr r0, [sp, #48]
	mov r1, #0
	str r0, [sp, #40]
	str r1, [sp, #8]
	b label10
label86:
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r3, #0
	str r5, [sp, #0]
	mov r4, r5
	b label16
label63:
	add r3, r3, #1
	add r2, r2, #4000
	ldr r4, [sp, #0]
	add r4, r4, #4000
	str r4, [sp, #0]
label16:
	cmp r3, #1000
	bge label20
	ldr r4, [sp, #0]
	mov r0, #0
	cmp r0, #1000
	blt label64
	b label63
.p2align 4
label69:
	add r1, r1, #64
.p2align 4
label65:
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
	movw r9, #12000
	add r10, r5, r9
	ldr r9, [r1, #12]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
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
	ldr r10, [r1, #36]
	movw r9, #36000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #40000
	add r10, r5, r9
	ldr r9, [r1, #40]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r1, #44]
	movw r9, #44000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r1, #48]
	movw r9, #48000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #52000
	add r10, r5, r9
	ldr r9, [r1, #52]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r1, #56]
	movw r9, #56000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r1, #60]
	movw r9, #60000
	add r9, r5, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	add r7, r7, r8
	blt label69
	add r8, r5, #64000
	ldr r6, [r1, #64]
	ldr r8, [r8, r0, lsl #2]
	mla r6, r6, r8, r7
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
	movw r7, #18464
	movt r7, #1
	add r8, r5, r7
	ldr r7, [r1, #84]
	ldr r8, [r8, r0, lsl #2]
	mla r6, r7, r8, r6
	ldr r8, [r1, #88]
	movw r7, #22464
	movt r7, #1
	add r7, r5, r7
	ldr r7, [r7, r0, lsl #2]
	ldr r1, [r1, #92]
	mla r6, r8, r7, r6
	movw r7, #26464
	movt r7, #1
	add r5, r5, r7
	ldr r5, [r5, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #1000
	mla r1, r1, r5, r6
	str r1, [r4, #0]
	add r4, r4, #4
	bge label63
.p2align 4
label64:
	mov r1, r2
	mov r6, #0
	mov r7, r6
	b label65
label20:
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	mov r1, #0
	str r5, [sp, #32]
	mov r0, r5
	str r1, [sp, #28]
	b label21
.p2align 4
label57:
	add r0, r0, #256
.p2align 4
label54:
	str r1, [r0, #0]
	add r2, r2, #64
	str r1, [r0, #4]
	cmp r2, #960
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
	str r1, [r0, #80]
	str r1, [r0, #84]
	str r1, [r0, #88]
	str r1, [r0, #92]
	str r1, [r0, #96]
	str r1, [r0, #100]
	str r1, [r0, #104]
	str r1, [r0, #108]
	str r1, [r0, #112]
	str r1, [r0, #116]
	str r1, [r0, #120]
	str r1, [r0, #124]
	str r1, [r0, #128]
	str r1, [r0, #132]
	str r1, [r0, #136]
	str r1, [r0, #140]
	str r1, [r0, #144]
	str r1, [r0, #148]
	str r1, [r0, #152]
	str r1, [r0, #156]
	str r1, [r0, #160]
	str r1, [r0, #164]
	str r1, [r0, #168]
	str r1, [r0, #172]
	str r1, [r0, #176]
	str r1, [r0, #180]
	str r1, [r0, #184]
	str r1, [r0, #188]
	str r1, [r0, #192]
	str r1, [r0, #196]
	str r1, [r0, #200]
	str r1, [r0, #204]
	str r1, [r0, #208]
	str r1, [r0, #212]
	str r1, [r0, #216]
	str r1, [r0, #220]
	str r1, [r0, #224]
	str r1, [r0, #228]
	str r1, [r0, #232]
	str r1, [r0, #236]
	str r1, [r0, #240]
	str r1, [r0, #244]
	str r1, [r0, #248]
	str r1, [r0, #252]
	blt label57
	str r1, [r0, #256]
	str r1, [r0, #260]
	str r1, [r0, #264]
	str r1, [r0, #268]
	str r1, [r0, #272]
	str r1, [r0, #276]
	str r1, [r0, #280]
	str r1, [r0, #284]
	str r1, [r0, #288]
	str r1, [r0, #292]
	str r1, [r0, #296]
	str r1, [r0, #300]
	str r1, [r0, #304]
	str r1, [r0, #308]
	str r1, [r0, #312]
	str r1, [r0, #316]
	str r1, [r0, #320]
	str r1, [r0, #324]
	str r1, [r0, #328]
	str r1, [r0, #332]
	str r1, [r0, #336]
	str r1, [r0, #340]
	str r1, [r0, #344]
	str r1, [r0, #348]
	str r1, [r0, #352]
	str r1, [r0, #356]
	str r1, [r0, #360]
	str r1, [r0, #364]
	str r1, [r0, #368]
	str r1, [r0, #372]
	str r1, [r0, #376]
	str r1, [r0, #380]
	str r1, [r0, #384]
	str r1, [r0, #388]
	str r1, [r0, #392]
	str r1, [r0, #396]
	str r1, [r0, #400]
	str r1, [r0, #404]
	str r1, [r0, #408]
	str r1, [r0, #412]
	ldr r1, [sp, #28]
	ldr r0, [sp, #32]
	add r1, r1, #1
	add r0, r0, #4000
	str r0, [sp, #32]
	str r1, [sp, #28]
label21:
	ldr r1, [sp, #28]
	cmp r1, #1000
	bge label24
	ldr r0, [sp, #32]
	mvn r2, #-2147483648
	str r0, [sp, #12]
	mov r1, r0
	mov r0, #0
	b label48
.p2align 4
label52:
	ldr r1, [sp, #12]
	add r1, r1, #256
	str r1, [sp, #12]
.p2align 4
label48:
	ldr r1, [sp, #12]
	add r0, r0, #64
	ldr r1, [r1, #0]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #4]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #8]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #12]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #16]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #20]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #24]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #28]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #32]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #36]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #40]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #44]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #48]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #52]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #56]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #60]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #64]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #68]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #72]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #76]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #80]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #84]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #88]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #92]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #96]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #100]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #104]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #108]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #112]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #116]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #120]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #124]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #128]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #132]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #136]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #140]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #144]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #148]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #152]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #156]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #160]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #164]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #168]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #172]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #176]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #180]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #184]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #188]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #192]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #196]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #200]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #204]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #208]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #212]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #216]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #220]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #224]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #228]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #232]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #236]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #240]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #244]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #248]
	cmp r2, r1
	movge r2, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #252]
	cmp r2, r1
	movge r2, r1
	cmp r0, #960
	blt label52
	ldr r1, [sp, #12]
	mov r0, r2
	ldr r1, [r1, #256]
	cmp r2, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #260]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #264]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #268]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #272]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #276]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #280]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #284]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #288]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #292]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #296]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #300]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #304]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #308]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #312]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #316]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #320]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #324]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #328]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #332]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #336]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #340]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #344]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #348]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #352]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #356]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #360]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #364]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #368]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #372]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #376]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #380]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #384]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #388]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #392]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #396]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #400]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #404]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r1, [r1, #408]
	cmp r0, r1
	movge r0, r1
	ldr r1, [sp, #12]
	ldr r2, [r1, #412]
	mov r1, r0
	cmp r0, r2
	ldr r0, [sp, #32]
	movge r1, r2
	mov r2, #0
	b label54
label24:
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	mov r0, #0
	mov r2, r5
	b label25
label45:
	add r4, r3, #64000
	add r2, r2, #4000
	ldr r4, [r4, r0, lsl #2]
	rsb r4, r4, #0
	str r4, [r1, #64]
	movw r4, #2464
	movt r4, #1
	add r4, r3, r4
	ldr r4, [r4, r0, lsl #2]
	rsb r4, r4, #0
	str r4, [r1, #68]
	movw r4, #6464
	movt r4, #1
	add r4, r3, r4
	ldr r4, [r4, r0, lsl #2]
	rsb r4, r4, #0
	str r4, [r1, #72]
	movw r4, #10464
	movt r4, #1
	add r4, r3, r4
	ldr r4, [r4, r0, lsl #2]
	rsb r4, r4, #0
	str r4, [r1, #76]
	movw r4, #14464
	movt r4, #1
	add r4, r3, r4
	ldr r4, [r4, r0, lsl #2]
	rsb r4, r4, #0
	str r4, [r1, #80]
	movw r4, #18464
	movt r4, #1
	add r4, r3, r4
	ldr r4, [r4, r0, lsl #2]
	rsb r4, r4, #0
	str r4, [r1, #84]
	movw r4, #22464
	movt r4, #1
	add r4, r3, r4
	ldr r4, [r4, r0, lsl #2]
	rsb r4, r4, #0
	str r4, [r1, #88]
	movw r4, #26464
	movt r4, #1
	add r3, r3, r4
	ldr r3, [r3, r0, lsl #2]
	add r0, r0, #1
	rsb r3, r3, #0
	str r3, [r1, #92]
label25:
	cmp r0, #1000
	bge label28
	mov r1, r2
	mov r4, #0
.p2align 4
label42:
	mov r3, #4000
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	mla r3, r4, r3, r5
	add r4, r4, #16
	cmp r4, #992
	ldr r5, [r3, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #0]
	add r5, r3, #4000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #4]
	add r5, r3, #8000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #8]
	movw r5, #12000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #12]
	add r5, r3, #16000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #16]
	movw r5, #20000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #20]
	movw r5, #24000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #24]
	movw r5, #28000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #28]
	add r5, r3, #32000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #32]
	movw r5, #36000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #36]
	movw r5, #40000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #40]
	movw r5, #44000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #44]
	movw r5, #48000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #48]
	movw r5, #52000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #52]
	movw r5, #56000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #56]
	movw r5, #60000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r1, #60]
	bge label45
	add r1, r1, #64
	b label42
label28:
	movw r5, #:lower16:c
	movt r5, #:upper16:c
	mov r4, #0
	str r5, [sp, #24]
	mov r0, r4
	str r4, [sp, #20]
	b label29
label39:
	ldr r0, [sp, #16]
	ldr r0, [r0, #256]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #260]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #264]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #268]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #272]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #276]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #280]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #284]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #288]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #292]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #296]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #300]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #304]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #308]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #312]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #316]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #320]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #324]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #328]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #332]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #336]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #340]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #344]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #348]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #352]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #356]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #360]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #364]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #368]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #372]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #376]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #380]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #384]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #388]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #392]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #396]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #400]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #404]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #408]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #412]
	add r4, r1, r0
	ldr r0, [sp, #20]
	add r1, r0, #1
	ldr r0, [sp, #24]
	add r0, r0, #4000
	str r0, [sp, #24]
	str r1, [sp, #20]
	mov r0, r1
label29:
	ldr r0, [sp, #20]
	cmp r0, #1000
	bge label40
	ldr r0, [sp, #24]
	mov r2, #0
	mov r1, r4
	str r0, [sp, #16]
	str r2, [sp, #4]
.p2align 4
label34:
	ldr r0, [sp, #16]
	ldr r0, [r0, #0]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #4]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #8]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #12]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #16]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #20]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #24]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #28]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #32]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #36]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #40]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #44]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #48]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #52]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #56]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #60]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #64]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #68]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #72]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #76]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #80]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #84]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #88]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #92]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #96]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #100]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #104]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #108]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #112]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #116]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #120]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #124]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #128]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #132]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #136]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #140]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #144]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #148]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #152]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #156]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #160]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #164]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #168]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #172]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #176]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #180]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #184]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #188]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #192]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #196]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #200]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #204]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #208]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #212]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #216]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #220]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #224]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #228]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #232]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #236]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #240]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #244]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #248]
	add r1, r1, r0
	ldr r0, [sp, #16]
	ldr r0, [r0, #252]
	ldr r2, [sp, #4]
	add r1, r1, r0
	add r2, r2, #64
	cmp r2, #960
	bge label39
	ldr r0, [sp, #16]
	add r0, r0, #256
	str r0, [sp, #16]
	str r2, [sp, #4]
	b label34
label40:
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #0
	b label73
