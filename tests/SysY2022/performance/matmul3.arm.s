.arch armv7ve
.data
.align 4
a:
	.zero	4000000
.align 4
b:
	.zero	4000000
.align 4
c:
	.zero	4000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #348
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	str r0, [sp, #120]
	movw r0, #:lower16:b
	movt r0, #:upper16:b
	str r0, [sp, #128]
	movw r0, #:lower16:c
	movt r0, #:upper16:c
	str r0, [sp, #112]
	mov r4, #0
	cmp r4, #1000
	bge label6
	mov r0, #4000
	mul r1, r4, r0
	ldr r0, [sp, #120]
	add r0, r0, r1
	bl getarray
	cmp r0, #1000
	beq label5
	b label47
label961:
	mov r1, #4000
	ldr r0, [sp, #176]
	mul r1, r0, r1
	ldr r0, [sp, #128]
	add r2, r0, r1
	str r2, [sp, #64]
	mov r0, #0
	str r0, [sp, #20]
	b label10
label6:
	mov r0, #23
	bl _sysy_starttime
	mov r0, #0
	str r0, [sp, #176]
	cmp r0, #1000
	bge label69
	b label961
label69:
	mov r0, #0
	str r0, [sp, #136]
label13:
	mov r1, #4000
	ldr r0, [sp, #136]
	mul r2, r0, r1
	ldr r0, [sp, #120]
	add r2, r0, r2
	str r2, [sp, #144]
	ldr r0, [sp, #136]
	mul r1, r0, r1
	ldr r0, [sp, #112]
	add r2, r0, r1
	str r2, [sp, #320]
	ldr r0, [sp, #136]
	cmp r0, #1000
	bge label209
	mov r0, #0
	str r0, [sp, #152]
	cmp r0, #1000
	bge label213
	b label954
label209:
	mov r0, #0
	str r0, [sp, #268]
	cmp r0, #1000
	bge label422
	b label955
label954:
	mov r0, #0
	str r0, [sp, #192]
	str r0, [sp, #168]
	b label17
label213:
	ldr r0, [sp, #136]
	add r0, r0, #1
	str r0, [sp, #136]
	b label13
label17:
	ldr r2, [sp, #144]
	ldr r0, [sp, #168]
	add r0, r2, r0, lsl #2
	str r0, [sp, #244]
	ldr r2, [sp, #144]
	ldr r0, [sp, #168]
	ldr r1, [r2, r0, lsl #2]
	str r1, [sp, #200]
	mov r1, #4000
	ldr r0, [sp, #168]
	mul r1, r0, r1
	ldr r0, [sp, #128]
	add r1, r0, r1
	str r1, [sp, #88]
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #276]
	ldr r0, [sp, #244]
	ldr r0, [r0, #4]
	str r0, [sp, #292]
	add r1, r1, #4000
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #284]
	ldr r0, [sp, #244]
	ldr r0, [r0, #8]
	str r0, [sp, #300]
	ldr r1, [sp, #88]
	add r1, r1, #8000
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #260]
	ldr r0, [sp, #244]
	ldr r0, [r0, #12]
	str r0, [sp, #308]
	movw r0, #12000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #212]
	ldr r0, [sp, #244]
	ldr r0, [r0, #16]
	str r0, [sp, #236]
	ldr r1, [sp, #88]
	add r1, r1, #16000
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #220]
	ldr r0, [sp, #244]
	ldr r0, [r0, #20]
	str r0, [sp, #252]
	movw r0, #20000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #324]
	ldr r0, [sp, #244]
	ldr r1, [r0, #24]
	str r1, [sp, #228]
	movw r0, #24000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #332]
	ldr r0, [sp, #244]
	ldr r0, [r0, #28]
	str r0, [sp, #104]
	movw r0, #28000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #84]
	ldr r0, [sp, #244]
	ldr r1, [r0, #32]
	str r1, [sp, #336]
	ldr r1, [sp, #88]
	add r1, r1, #32000
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #80]
	ldr r0, [sp, #244]
	ldr r0, [r0, #36]
	str r0, [sp, #100]
	movw r0, #36000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #68]
	ldr r0, [sp, #244]
	ldr r1, [r0, #40]
	str r1, [sp, #76]
	movw r0, #40000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #56]
	ldr r0, [sp, #244]
	ldr r1, [r0, #44]
	str r1, [sp, #72]
	movw r0, #44000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #48]
	ldr r0, [sp, #244]
	ldr r1, [r0, #48]
	str r1, [sp, #60]
	movw r0, #48000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #44]
	ldr r0, [sp, #244]
	ldr r0, [r0, #52]
	str r0, [sp, #52]
	movw r0, #52000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #36]
	ldr r0, [sp, #244]
	ldr r0, [r0, #56]
	str r0, [sp, #40]
	movw r0, #56000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #28]
	ldr r0, [sp, #244]
	ldr r1, [r0, #60]
	str r1, [sp, #32]
	movw r0, #60000
	ldr r1, [sp, #88]
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r2, [r1, r0, lsl #2]
	str r2, [sp, #16]
	ldr r0, [sp, #192]
	ldr r1, [sp, #200]
	ldr r2, [sp, #276]
	mla r1, r1, r2, r0
	ldr r0, [sp, #292]
	ldr r2, [sp, #284]
	mla r1, r0, r2, r1
	ldr r0, [sp, #300]
	ldr r2, [sp, #260]
	mla r1, r0, r2, r1
	ldr r0, [sp, #308]
	ldr r2, [sp, #212]
	mla r1, r0, r2, r1
	ldr r0, [sp, #236]
	ldr r2, [sp, #220]
	mla r1, r0, r2, r1
	ldr r0, [sp, #252]
	ldr r2, [sp, #324]
	mla r0, r0, r2, r1
	ldr r1, [sp, #228]
	ldr r2, [sp, #332]
	mla r1, r1, r2, r0
	ldr r0, [sp, #104]
	ldr r2, [sp, #84]
	mla r0, r0, r2, r1
	ldr r1, [sp, #336]
	ldr r2, [sp, #80]
	mla r1, r1, r2, r0
	ldr r0, [sp, #100]
	ldr r2, [sp, #68]
	mla r0, r0, r2, r1
	ldr r1, [sp, #76]
	ldr r2, [sp, #56]
	mla r0, r1, r2, r0
	ldr r1, [sp, #72]
	ldr r2, [sp, #48]
	mla r0, r1, r2, r0
	ldr r1, [sp, #60]
	ldr r2, [sp, #44]
	mla r1, r1, r2, r0
	ldr r0, [sp, #52]
	ldr r2, [sp, #36]
	mla r1, r0, r2, r1
	ldr r0, [sp, #40]
	ldr r2, [sp, #28]
	mla r0, r0, r2, r1
	ldr r1, [sp, #32]
	ldr r2, [sp, #16]
	mla r0, r1, r2, r0
	str r0, [sp, #4]
	ldr r0, [sp, #168]
	add r1, r0, #16
	cmp r1, #992
	bge label20
	ldr r0, [sp, #4]
	str r0, [sp, #192]
	mov r0, r1
	str r1, [sp, #168]
	b label17
label10:
	ldr r2, [sp, #64]
	ldr r0, [sp, #20]
	add r0, r2, r0, lsl #2
	str r0, [sp, #24]
	mov r1, #4000
	ldr r0, [sp, #20]
	mul r1, r0, r1
	ldr r0, [sp, #120]
	add r1, r0, r1
	str r1, [sp, #12]
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r2, [sp, #64]
	ldr r0, [sp, #20]
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #12]
	add r1, r1, #4000
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #4]
	ldr r1, [sp, #12]
	add r1, r1, #8000
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #8]
	movw r0, #12000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #12]
	ldr r1, [sp, #12]
	add r1, r1, #16000
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #16]
	movw r0, #20000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #20]
	movw r0, #24000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #24]
	movw r0, #28000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #28]
	ldr r1, [sp, #12]
	add r1, r1, #32000
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #32]
	movw r0, #36000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #36]
	movw r0, #40000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #40]
	movw r0, #44000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #44]
	movw r0, #48000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #48]
	movw r0, #52000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #52]
	movw r0, #56000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #56]
	movw r0, #60000
	ldr r1, [sp, #12]
	add r1, r1, r0
	ldr r0, [sp, #176]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #24]
	str r1, [r0, #60]
	ldr r0, [sp, #20]
	add r1, r0, #16
	cmp r1, #992
	bge label12
	mov r0, r1
	str r1, [sp, #20]
	b label10
label12:
	ldr r2, [sp, #64]
	add r3, r2, r1, lsl #2
	mov r0, #4000
	mul r2, r1, r0
	ldr r0, [sp, #120]
	add r4, r0, r2
	ldr r0, [sp, #176]
	ldr r0, [r4, r0, lsl #2]
	ldr r2, [sp, #64]
	str r0, [r2, r1, lsl #2]
	add r1, r4, #4000
	ldr r0, [sp, #176]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r3, #4]
	add r1, r4, #8000
	ldr r0, [sp, #176]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r3, #8]
	movw r0, #12000
	add r1, r4, r0
	ldr r0, [sp, #176]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r3, #12]
	add r1, r4, #16000
	ldr r0, [sp, #176]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r3, #16]
	movw r0, #20000
	add r1, r4, r0
	ldr r0, [sp, #176]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r3, #20]
	movw r0, #24000
	add r1, r4, r0
	ldr r0, [sp, #176]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r3, #24]
	movw r0, #28000
	add r1, r4, r0
	ldr r0, [sp, #176]
	ldr r0, [r1, r0, lsl #2]
	str r0, [r3, #28]
	ldr r0, [sp, #176]
	add r0, r0, #1
	str r0, [sp, #176]
	cmp r0, #1000
	bge label69
	b label961
label20:
	ldr r2, [sp, #144]
	add r0, r2, r1, lsl #2
	str r0, [sp, #188]
	ldr r2, [sp, #144]
	ldr r2, [r2, r1, lsl #2]
	str r2, [sp, #124]
	mov r0, #4000
	mul r1, r1, r0
	ldr r0, [sp, #128]
	add r1, r0, r1
	ldr r0, [sp, #152]
	ldr r3, [r1, r0, lsl #2]
	str r3, [sp, #312]
	ldr r0, [sp, #188]
	ldr r2, [r0, #4]
	str r2, [sp, #148]
	add r2, r1, #4000
	ldr r0, [sp, #152]
	ldr r3, [r2, r0, lsl #2]
	str r3, [sp, #304]
	ldr r0, [sp, #188]
	ldr r2, [r0, #8]
	str r2, [sp, #156]
	add r2, r1, #8000
	ldr r0, [sp, #152]
	ldr r3, [r2, r0, lsl #2]
	str r3, [sp, #196]
	ldr r0, [sp, #188]
	ldr r0, [r0, #12]
	str r0, [sp, #164]
	movw r0, #12000
	add r2, r1, r0
	ldr r0, [sp, #152]
	ldr r3, [r2, r0, lsl #2]
	str r3, [sp, #288]
	ldr r0, [sp, #188]
	ldr r0, [r0, #16]
	str r0, [sp, #204]
	add r2, r1, #16000
	ldr r0, [sp, #152]
	ldr r3, [r2, r0, lsl #2]
	str r3, [sp, #280]
	ldr r0, [sp, #188]
	ldr r2, [r0, #20]
	str r2, [sp, #180]
	movw r0, #20000
	add r2, r1, r0
	ldr r0, [sp, #152]
	ldr r3, [r2, r0, lsl #2]
	str r3, [sp, #248]
	ldr r0, [sp, #188]
	ldr r2, [r0, #24]
	str r2, [sp, #272]
	movw r0, #24000
	add r2, r1, r0
	ldr r0, [sp, #152]
	ldr r3, [r2, r0, lsl #2]
	str r3, [sp, #232]
	ldr r0, [sp, #188]
	ldr r0, [r0, #28]
	str r0, [sp, #224]
	movw r0, #28000
	add r1, r1, r0
	ldr r0, [sp, #152]
	ldr r1, [r1, r0, lsl #2]
	ldr r0, [sp, #4]
	ldr r2, [sp, #124]
	ldr r3, [sp, #312]
	mla r0, r2, r3, r0
	ldr r2, [sp, #148]
	ldr r3, [sp, #304]
	mla r0, r2, r3, r0
	ldr r2, [sp, #156]
	ldr r3, [sp, #196]
	mla r2, r2, r3, r0
	ldr r0, [sp, #164]
	ldr r3, [sp, #288]
	mla r2, r0, r3, r2
	ldr r0, [sp, #204]
	ldr r3, [sp, #280]
	mla r0, r0, r3, r2
	ldr r2, [sp, #180]
	ldr r3, [sp, #248]
	mla r0, r2, r3, r0
	ldr r2, [sp, #272]
	ldr r3, [sp, #232]
	mla r2, r2, r3, r0
	ldr r0, [sp, #224]
	mla r1, r0, r1, r2
	ldr r2, [sp, #320]
	ldr r0, [sp, #152]
	str r1, [r2, r0, lsl #2]
	ldr r0, [sp, #152]
	add r0, r0, #1
	str r0, [sp, #152]
	cmp r0, #1000
	bge label213
	b label954
label422:
	mov r0, #0
	str r0, [sp, #160]
	cmp r0, #1000
	bge label426
	b label425
label426:
	mov r0, #0
	str r0, [sp, #96]
	mov r4, r0
	cmp r0, #1000
	bge label33
label957:
	mov r1, #4000
	ldr r0, [sp, #96]
	mul r1, r0, r1
	ldr r0, [sp, #112]
	add r2, r0, r1
	str r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #108]
	b label35
label33:
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #0
	b label47
label35:
	ldr r2, [sp, #8]
	ldr r0, [sp, #108]
	add r1, r2, r0, lsl #2
	ldr r2, [sp, #8]
	ldr r0, [sp, #108]
	ldr r0, [r2, r0, lsl #2]
	ldr r5, [r1, #4]
	ldr r8, [r1, #8]
	ldr r6, [r1, #12]
	ldr r3, [r1, #16]
	ldr r2, [r1, #20]
	ldr r7, [r1, #24]
	ldr r9, [r1, #28]
	ldr r10, [r1, #32]
	ldr r11, [r1, #36]
	str r11, [sp, #216]
	ldr r11, [r1, #40]
	str r11, [sp, #240]
	ldr r11, [r1, #44]
	str r11, [sp, #264]
	ldr r11, [r1, #48]
	str r11, [sp, #296]
	ldr r11, [r1, #52]
	str r11, [sp, #172]
	ldr r11, [r1, #56]
	str r11, [sp, #140]
	ldr r1, [r1, #60]
	add r0, r4, r0
	add r0, r0, r5
	add r0, r0, r8
	add r0, r0, r6
	add r0, r0, r3
	add r0, r0, r2
	add r0, r0, r7
	add r0, r0, r9
	add r0, r0, r10
	ldr r11, [sp, #216]
	add r0, r0, r11
	ldr r11, [sp, #240]
	add r0, r0, r11
	ldr r11, [sp, #264]
	add r0, r0, r11
	ldr r11, [sp, #296]
	add r0, r0, r11
	ldr r11, [sp, #172]
	add r0, r0, r11
	ldr r11, [sp, #140]
	add r0, r0, r11
	add r4, r0, r1
	ldr r0, [sp, #108]
	add r0, r0, #16
	cmp r0, #992
	bge label38
	str r0, [sp, #108]
	b label35
label38:
	ldr r2, [sp, #8]
	add r1, r2, r0, lsl #2
	ldr r2, [sp, #8]
	ldr r0, [r2, r0, lsl #2]
	ldr r2, [r1, #4]
	ldr r8, [r1, #8]
	ldr r3, [r1, #12]
	ldr r7, [r1, #16]
	ldr r6, [r1, #20]
	ldr r5, [r1, #24]
	ldr r1, [r1, #28]
	add r0, r0, r2
	add r0, r0, r8
	add r0, r0, r3
	add r0, r0, r7
	add r0, r0, r6
	add r0, r0, r5
	add r0, r0, r4
	add r4, r0, r1
	ldr r0, [sp, #96]
	add r0, r0, #1
	str r0, [sp, #96]
	cmp r0, #1000
	bge label33
	b label957
label425:
	mov r1, #4000
	ldr r0, [sp, #160]
	mul r1, r0, r1
	ldr r0, [sp, #112]
	add r2, r0, r1
	str r2, [sp, #184]
	mov r0, #0
	str r0, [sp, #208]
label27:
	ldr r2, [sp, #184]
	ldr r0, [sp, #208]
	add r0, r2, r0, lsl #2
	str r0, [sp, #316]
	mov r1, #4000
	ldr r0, [sp, #208]
	mul r1, r0, r1
	ldr r0, [sp, #112]
	add r1, r0, r1
	str r1, [sp, #328]
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r2, [sp, #184]
	ldr r0, [sp, #208]
	str r1, [r2, r0, lsl #2]
	ldr r1, [sp, #328]
	add r1, r1, #4000
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #4]
	ldr r1, [sp, #328]
	add r1, r1, #8000
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #8]
	movw r0, #12000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #12]
	ldr r1, [sp, #328]
	add r1, r1, #16000
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #16]
	movw r0, #20000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #20]
	movw r0, #24000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #24]
	movw r0, #28000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #28]
	ldr r1, [sp, #328]
	add r1, r1, #32000
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #32]
	movw r0, #36000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #36]
	movw r0, #40000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #40]
	movw r0, #44000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #44]
	movw r0, #48000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #48]
	movw r0, #52000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #52]
	movw r0, #56000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #56]
	movw r0, #60000
	ldr r1, [sp, #328]
	add r1, r1, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #316]
	str r1, [r0, #60]
	ldr r0, [sp, #208]
	add r1, r0, #16
	cmp r1, #992
	bge label29
	mov r0, r1
	str r1, [sp, #208]
	b label27
label29:
	ldr r2, [sp, #184]
	add r0, r2, r1, lsl #2
	str r0, [sp, #116]
	mov r0, #4000
	mul r2, r1, r0
	ldr r0, [sp, #112]
	add r2, r0, r2
	str r2, [sp, #256]
	ldr r0, [sp, #160]
	ldr r0, [r2, r0, lsl #2]
	rsb r0, r0, #0
	ldr r2, [sp, #184]
	str r0, [r2, r1, lsl #2]
	ldr r2, [sp, #256]
	add r1, r2, #4000
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #116]
	str r1, [r0, #4]
	ldr r2, [sp, #256]
	add r1, r2, #8000
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #116]
	str r1, [r0, #8]
	movw r0, #12000
	ldr r2, [sp, #256]
	add r1, r2, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #116]
	str r1, [r0, #12]
	ldr r2, [sp, #256]
	add r1, r2, #16000
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #116]
	str r1, [r0, #16]
	movw r0, #20000
	ldr r2, [sp, #256]
	add r1, r2, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #116]
	str r1, [r0, #20]
	movw r0, #24000
	ldr r2, [sp, #256]
	add r1, r2, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #116]
	str r1, [r0, #24]
	movw r0, #28000
	ldr r2, [sp, #256]
	add r1, r2, r0
	ldr r0, [sp, #160]
	ldr r0, [r1, r0, lsl #2]
	rsb r1, r0, #0
	ldr r0, [sp, #116]
	str r1, [r0, #28]
	ldr r0, [sp, #160]
	add r0, r0, #1
	str r0, [sp, #160]
	cmp r0, #1000
	bge label426
	b label425
label955:
	mov r1, #4000
	ldr r0, [sp, #268]
	mul r1, r0, r1
	ldr r0, [sp, #112]
	add r3, r0, r1
	str r3, [sp, #92]
	mvn r0, #-2147483648
	mov r1, #0
	str r1, [sp, #0]
	b label40
label46:
	ldr r3, [sp, #92]
	add r2, r3, r0, lsl #2
	ldr r3, [sp, #92]
	str r1, [r3, r0, lsl #2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	str r1, [r2, #16]
	str r1, [r2, #20]
	str r1, [r2, #24]
	str r1, [r2, #28]
	ldr r0, [sp, #268]
	add r0, r0, #1
	str r0, [sp, #268]
	cmp r0, #1000
	bge label422
	b label955
label40:
	ldr r3, [sp, #92]
	ldr r1, [sp, #0]
	add r1, r3, r1, lsl #2
	str r1, [sp, #132]
	ldr r3, [sp, #92]
	ldr r1, [sp, #0]
	ldr r1, [r3, r1, lsl #2]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #4]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #8]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #12]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #16]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #20]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #24]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #28]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #32]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #36]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #40]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #44]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #48]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #52]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #56]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #132]
	ldr r1, [r1, #60]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [sp, #0]
	add r1, r1, #16
	cmp r1, #992
	bge label43
	str r1, [sp, #0]
	b label40
label43:
	ldr r3, [sp, #92]
	add r2, r3, r1, lsl #2
	ldr r3, [sp, #92]
	ldr r1, [r3, r1, lsl #2]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [r2, #4]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [r2, #8]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [r2, #12]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [r2, #16]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [r2, #20]
	cmp r1, r0
	movlt r0, r1
	ldr r1, [r2, #24]
	cmp r1, r0
	movlt r0, r1
	ldr r2, [r2, #28]
	cmp r2, r0
	mov r1, r0
	movlt r1, r2
	mov r0, #0
label44:
	ldr r3, [sp, #92]
	add r2, r3, r0, lsl #2
	ldr r3, [sp, #92]
	str r1, [r3, r0, lsl #2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	str r1, [r2, #16]
	str r1, [r2, #20]
	str r1, [r2, #24]
	str r1, [r2, #28]
	str r1, [r2, #32]
	str r1, [r2, #36]
	str r1, [r2, #40]
	str r1, [r2, #44]
	str r1, [r2, #48]
	str r1, [r2, #52]
	str r1, [r2, #56]
	str r1, [r2, #60]
	add r0, r0, #16
	cmp r0, #992
	bge label46
	b label44
label5:
	add r4, r4, #1
	cmp r4, #1000
	bge label6
	mov r0, #4000
	mul r1, r4, r0
	ldr r0, [sp, #120]
	add r0, r0, r1
	bl getarray
	cmp r0, #1000
	beq label5
label47:
	add sp, sp, #348
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
