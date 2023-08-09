.arch armv7ve
.data
.bss
.align 8
a:
	.zero	16384
.align 8
c:
	.zero	16384
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, lr }
	mov r0, #1
	movw r4, #:lower16:c
	movt r4, #:upper16:c
	mov r2, #3
	mov r3, #4
	str r0, [r4, #0]
	add r1, r4, #24
	mov r0, #2
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #12]
	str r2, [r4, #16]
	str r3, [r4, #20]
	mov r3, r0
.p2align 4
label2:
	str r0, [r1, #0]
	add r3, r3, #64
	str r0, [r1, #4]
	cmp r3, #4032
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
	str r0, [r1, #64]
	str r0, [r1, #68]
	str r0, [r1, #72]
	str r0, [r1, #76]
	str r0, [r1, #80]
	str r0, [r1, #84]
	str r0, [r1, #88]
	str r0, [r1, #92]
	str r0, [r1, #96]
	str r0, [r1, #100]
	str r0, [r1, #104]
	str r0, [r1, #108]
	str r0, [r1, #112]
	str r0, [r1, #116]
	str r0, [r1, #120]
	str r0, [r1, #124]
	str r0, [r1, #128]
	str r0, [r1, #132]
	str r0, [r1, #136]
	str r0, [r1, #140]
	str r0, [r1, #144]
	str r0, [r1, #148]
	str r0, [r1, #152]
	str r0, [r1, #156]
	str r0, [r1, #160]
	str r0, [r1, #164]
	str r0, [r1, #168]
	str r0, [r1, #172]
	str r0, [r1, #176]
	str r0, [r1, #180]
	str r0, [r1, #184]
	str r0, [r1, #188]
	str r0, [r1, #192]
	str r0, [r1, #196]
	str r0, [r1, #200]
	str r0, [r1, #204]
	str r0, [r1, #208]
	str r0, [r1, #212]
	str r0, [r1, #216]
	str r0, [r1, #220]
	str r0, [r1, #224]
	str r0, [r1, #228]
	str r0, [r1, #232]
	str r0, [r1, #236]
	str r0, [r1, #240]
	str r0, [r1, #244]
	str r0, [r1, #248]
	str r0, [r1, #252]
	bge label6
	add r1, r1, #256
	b label2
label6:
	str r0, [r1, #256]
	str r0, [r1, #260]
	str r0, [r1, #264]
	str r0, [r1, #268]
	str r0, [r1, #272]
	str r0, [r1, #276]
	str r0, [r1, #280]
	str r0, [r1, #284]
	str r0, [r1, #288]
	str r0, [r1, #292]
	str r0, [r1, #296]
	str r0, [r1, #300]
	str r0, [r1, #304]
	str r0, [r1, #308]
	str r0, [r1, #312]
	str r0, [r1, #316]
	str r0, [r1, #320]
	str r0, [r1, #324]
	str r0, [r1, #328]
	str r0, [r1, #332]
	str r0, [r1, #336]
	str r0, [r1, #340]
	str r0, [r1, #344]
	str r0, [r1, #348]
	str r0, [r1, #352]
	str r0, [r1, #356]
	str r0, [r1, #360]
	str r0, [r1, #364]
	str r0, [r1, #368]
	str r0, [r1, #372]
	str r0, [r1, #376]
	str r0, [r1, #380]
	str r0, [r1, #384]
	str r0, [r1, #388]
	str r0, [r1, #392]
	str r0, [r1, #396]
	str r0, [r1, #400]
	str r0, [r1, #404]
	str r0, [r1, #408]
	str r0, [r1, #412]
	str r0, [r1, #416]
	str r0, [r1, #420]
	str r0, [r1, #424]
	str r0, [r1, #428]
	str r0, [r1, #432]
	str r0, [r1, #436]
	str r0, [r1, #440]
	str r0, [r1, #444]
	str r0, [r1, #448]
	str r0, [r1, #452]
	str r0, [r1, #456]
	str r0, [r1, #460]
	str r0, [r1, #464]
	str r0, [r1, #468]
	str r0, [r1, #472]
	str r0, [r1, #476]
	str r0, [r1, #480]
	str r0, [r1, #484]
	mov r1, #4000
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	str r1, [r0, #20]
	add r1, r0, #16000
	str r2, [r1, #0]
	movw r1, #16380
	add r0, r0, r1
	mov r1, #7
	str r1, [r0, #0]
	mov r0, r2
	bl putint
	mov r0, #10
	bl putch
	ldr r0, [r4, #32]
	pop { r4, pc }
