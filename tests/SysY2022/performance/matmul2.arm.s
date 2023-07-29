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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r7, #:lower16:b
	movw r4, #:lower16:c
	movw r2, #:lower16:a
	sub sp, sp, #20
	movt r7, #:upper16:b
	movt r4, #:upper16:c
	movt r2, #:upper16:a
	str r2, [sp, #4]
	str r4, [sp, #0]
	mov r4, #0
	str r7, [sp, #8]
label2:
	cmp r4, #1000
	bge label8
	mov r0, #4000
	ldr r2, [sp, #4]
	mla r0, r4, r0, r2
	bl getarray
	cmp r0, #1000
	bne label6
	add r4, r4, #1
	b label2
label8:
	mov r0, #23
	bl _sysy_starttime
	mov r0, #0
label9:
	cmp r0, #1000
	blt label68
	mov r1, #0
	b label11
label68:
	mov r1, #4000
	ldr r7, [sp, #8]
	mov r4, #0
	mla r3, r0, r1, r7
.p2align 4
label45:
	mov r1, #4000
	ldr r2, [sp, #4]
	mla r1, r4, r1, r2
	add r2, r3, r4, lsl #2
	ldr r5, [r1, r0, lsl #2]
	str r5, [r3, r4, lsl #2]
	add r4, r4, #64
	add r5, r1, #4000
	cmp r4, #960
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #4]
	add r5, r1, #8000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #8]
	movw r5, #12000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #12]
	add r5, r1, #16000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #16]
	movw r5, #20000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #20]
	movw r5, #24000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #24]
	movw r5, #28000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #28]
	add r5, r1, #32000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #32]
	movw r5, #36000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #36]
	movw r5, #40000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #40]
	movw r5, #44000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #44]
	movw r5, #48000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #48]
	movw r5, #52000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #52]
	movw r5, #56000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #56]
	movw r5, #60000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #60]
	add r5, r1, #64000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #64]
	movw r5, #2464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #68]
	movw r5, #6464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #72]
	movw r5, #10464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #76]
	movw r5, #14464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #80]
	movw r5, #18464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #84]
	movw r5, #22464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #88]
	movw r5, #26464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #92]
	movw r5, #30464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #96]
	movw r5, #34464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #100]
	movw r5, #38464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #104]
	movw r5, #42464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #108]
	movw r5, #46464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #112]
	movw r5, #50464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #116]
	movw r5, #54464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #120]
	movw r5, #58464
	movt r5, #1
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #124]
	add r5, r1, #128000
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #128]
	movw r5, #928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #132]
	movw r5, #4928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #136]
	movw r5, #8928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #140]
	movw r5, #12928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #144]
	movw r5, #16928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #148]
	movw r5, #20928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #152]
	movw r5, #24928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #156]
	movw r5, #28928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #160]
	movw r5, #32928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #164]
	movw r5, #36928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #168]
	movw r5, #40928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #172]
	movw r5, #44928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #176]
	movw r5, #48928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #180]
	movw r5, #52928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #184]
	movw r5, #56928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #188]
	movw r5, #60928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #192]
	movw r5, #64928
	movt r5, #2
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #196]
	movw r5, #3392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #200]
	movw r5, #7392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #204]
	movw r5, #11392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #208]
	movw r5, #15392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #212]
	movw r5, #19392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #216]
	movw r5, #23392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #220]
	movw r5, #27392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #224]
	movw r5, #31392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #228]
	movw r5, #35392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #232]
	movw r5, #39392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #236]
	movw r5, #43392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #240]
	movw r5, #47392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #244]
	movw r5, #51392
	movt r5, #3
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	str r5, [r2, #248]
	movw r5, #55392
	movt r5, #3
	add r1, r1, r5
	ldr r1, [r1, r0, lsl #2]
	str r1, [r2, #252]
	blt label45
	mov r1, #4000
	ldr r2, [sp, #4]
	mla r1, r4, r1, r2
	add r2, r3, r4, lsl #2
	ldr r5, [r1, r0, lsl #2]
	str r5, [r3, r4, lsl #2]
	add r3, r1, #4000
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #4]
	add r3, r1, #8000
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #8]
	movw r3, #12000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #12]
	add r3, r1, #16000
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #16]
	movw r3, #20000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #20]
	movw r3, #24000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #24]
	movw r3, #28000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #28]
	add r3, r1, #32000
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #32]
	movw r3, #36000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #36]
	movw r3, #40000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #40]
	movw r3, #44000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #44]
	movw r3, #48000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #48]
	movw r3, #52000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #52]
	movw r3, #56000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #56]
	movw r3, #60000
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #60]
	add r3, r1, #64000
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #64]
	movw r3, #2464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #68]
	movw r3, #6464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #72]
	movw r3, #10464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #76]
	movw r3, #14464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #80]
	movw r3, #18464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #84]
	movw r3, #22464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #88]
	movw r3, #26464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #92]
	movw r3, #30464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #96]
	movw r3, #34464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #100]
	movw r3, #38464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #104]
	movw r3, #42464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #108]
	movw r3, #46464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #112]
	movw r3, #50464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #116]
	movw r3, #54464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #120]
	movw r3, #58464
	movt r3, #1
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #124]
	add r3, r1, #128000
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #128]
	movw r3, #928
	movt r3, #2
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #132]
	movw r3, #4928
	movt r3, #2
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #136]
	movw r3, #8928
	movt r3, #2
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #140]
	movw r3, #12928
	movt r3, #2
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #144]
	movw r3, #16928
	movt r3, #2
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #148]
	movw r3, #20928
	movt r3, #2
	add r3, r1, r3
	ldr r3, [r3, r0, lsl #2]
	str r3, [r2, #152]
	movw r3, #24928
	movt r3, #2
	add r1, r1, r3
	ldr r1, [r1, r0, lsl #2]
	add r0, r0, #1
	str r1, [r2, #156]
	b label9
label11:
	mov r0, #4000
	ldr r4, [sp, #0]
	cmp r1, #1000
	ldr r2, [sp, #4]
	mla r3, r1, r0, r4
	mla r2, r1, r0, r2
	blt label76
	mov r0, #0
	mov r1, #4000
	cmp r0, #1000
	mla r1, r0, r1, r4
	blt label82
label1911:
	mov r5, #0
	mov r1, r5
	b label17
label13:
	mov r1, #4000
	ldr r4, [sp, #0]
	cmp r0, #1000
	mla r1, r0, r1, r4
	blt label82
	mov r0, #0
	cmp r0, #1000
	blt label86
	b label1911
label82:
	mov r3, #0
	mvn r4, #-2147483648
	b label30
label15:
	cmp r0, #1000
	bge label1911
label86:
	mov r1, #4000
	ldr r4, [sp, #0]
	mov r2, #0
	mla r1, r0, r1, r4
	b label27
label17:
	cmp r1, #1000
	blt label90
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r5
	bl putint
	mov r0, #0
	b label6
.p2align 4
label27:
	mov r3, #4000
	ldr r4, [sp, #0]
	mla r3, r2, r3, r4
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	str r5, [r1, r2, lsl #2]
	add r4, r1, r2, lsl #2
	add r5, r3, #4000
	add r2, r2, #16
	ldr r5, [r5, r0, lsl #2]
	cmp r2, #992
	rsb r5, r5, #0
	str r5, [r4, #4]
	add r5, r3, #8000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #12]
	add r5, r3, #16000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #24]
	movw r5, #28000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #28]
	add r5, r3, #32000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #32]
	movw r5, #36000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #36]
	movw r5, #40000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #40]
	movw r5, #44000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #44]
	movw r5, #48000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #48]
	movw r5, #52000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #52]
	movw r5, #56000
	add r5, r3, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #56]
	movw r5, #60000
	add r3, r3, r5
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r4, #60]
	blt label27
	mov r3, #4000
	ldr r4, [sp, #0]
	mla r3, r2, r3, r4
	ldr r4, [r3, r0, lsl #2]
	rsb r5, r4, #0
	str r5, [r1, r2, lsl #2]
	add r4, r1, r2, lsl #2
	add r1, r3, #4000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #4]
	add r1, r3, #8000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #8]
	movw r1, #12000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #12]
	add r1, r3, #16000
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #16]
	movw r1, #20000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #20]
	movw r1, #24000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	rsb r1, r1, #0
	str r1, [r4, #24]
	movw r1, #28000
	add r1, r3, r1
	ldr r1, [r1, r0, lsl #2]
	add r0, r0, #1
	rsb r1, r1, #0
	str r1, [r4, #28]
	b label15
.p2align 4
label30:
	add r2, r1, r3, lsl #2
	ldr r5, [r1, r3, lsl #2]
	add r3, r3, #64
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #4]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #8]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #12]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #16]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #20]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #24]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #28]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #32]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #36]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #40]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #44]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #48]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #52]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #56]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #60]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #64]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #68]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #72]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #76]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #80]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #84]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #88]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #92]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #96]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #100]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #104]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #108]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #112]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #116]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #120]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #124]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #128]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #132]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #136]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #140]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #144]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #148]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #152]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #156]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #160]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #164]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #168]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #172]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #176]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #180]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #184]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #188]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #192]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #196]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #200]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #204]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #208]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #212]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #216]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #220]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #224]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #228]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #232]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #236]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #240]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #244]
	cmp r4, r5
	movge r4, r5
	ldr r5, [r2, #248]
	ldr r2, [r2, #252]
	cmp r4, r5
	movge r4, r5
	cmp r4, r2
	movge r4, r2
	cmp r3, #960
	blt label30
	add r2, r1, r3, lsl #2
	ldr r5, [r1, r3, lsl #2]
	mov r3, r4
	cmp r4, r5
	movge r3, r5
	ldr r4, [r2, #4]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #8]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #12]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #16]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #20]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #24]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #28]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #32]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #36]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #40]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #44]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #48]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #52]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #56]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #60]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #64]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #68]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #72]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #76]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #80]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #84]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #88]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #92]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #96]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #100]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #104]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #108]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #112]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #116]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #120]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #124]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #128]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #132]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #136]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #140]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #144]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #148]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #152]
	cmp r3, r4
	movge r3, r4
	ldr r4, [r2, #156]
	mov r2, r3
	cmp r3, r4
	movge r2, r4
	mov r4, #0
.p2align 4
label34:
	add r3, r1, r4, lsl #2
	str r2, [r1, r4, lsl #2]
	add r4, r4, #64
	str r2, [r3, #4]
	cmp r4, #960
	str r2, [r3, #8]
	str r2, [r3, #12]
	str r2, [r3, #16]
	str r2, [r3, #20]
	str r2, [r3, #24]
	str r2, [r3, #28]
	str r2, [r3, #32]
	str r2, [r3, #36]
	str r2, [r3, #40]
	str r2, [r3, #44]
	str r2, [r3, #48]
	str r2, [r3, #52]
	str r2, [r3, #56]
	str r2, [r3, #60]
	str r2, [r3, #64]
	str r2, [r3, #68]
	str r2, [r3, #72]
	str r2, [r3, #76]
	str r2, [r3, #80]
	str r2, [r3, #84]
	str r2, [r3, #88]
	str r2, [r3, #92]
	str r2, [r3, #96]
	str r2, [r3, #100]
	str r2, [r3, #104]
	str r2, [r3, #108]
	str r2, [r3, #112]
	str r2, [r3, #116]
	str r2, [r3, #120]
	str r2, [r3, #124]
	str r2, [r3, #128]
	str r2, [r3, #132]
	str r2, [r3, #136]
	str r2, [r3, #140]
	str r2, [r3, #144]
	str r2, [r3, #148]
	str r2, [r3, #152]
	str r2, [r3, #156]
	str r2, [r3, #160]
	str r2, [r3, #164]
	str r2, [r3, #168]
	str r2, [r3, #172]
	str r2, [r3, #176]
	str r2, [r3, #180]
	str r2, [r3, #184]
	str r2, [r3, #188]
	str r2, [r3, #192]
	str r2, [r3, #196]
	str r2, [r3, #200]
	str r2, [r3, #204]
	str r2, [r3, #208]
	str r2, [r3, #212]
	str r2, [r3, #216]
	str r2, [r3, #220]
	str r2, [r3, #224]
	str r2, [r3, #228]
	str r2, [r3, #232]
	str r2, [r3, #236]
	str r2, [r3, #240]
	str r2, [r3, #244]
	str r2, [r3, #248]
	str r2, [r3, #252]
	blt label34
	add r3, r1, r4, lsl #2
	str r2, [r1, r4, lsl #2]
	add r0, r0, #1
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #12]
	str r2, [r3, #16]
	str r2, [r3, #20]
	str r2, [r3, #24]
	str r2, [r3, #28]
	str r2, [r3, #32]
	str r2, [r3, #36]
	str r2, [r3, #40]
	str r2, [r3, #44]
	str r2, [r3, #48]
	str r2, [r3, #52]
	str r2, [r3, #56]
	str r2, [r3, #60]
	str r2, [r3, #64]
	str r2, [r3, #68]
	str r2, [r3, #72]
	str r2, [r3, #76]
	str r2, [r3, #80]
	str r2, [r3, #84]
	str r2, [r3, #88]
	str r2, [r3, #92]
	str r2, [r3, #96]
	str r2, [r3, #100]
	str r2, [r3, #104]
	str r2, [r3, #108]
	str r2, [r3, #112]
	str r2, [r3, #116]
	str r2, [r3, #120]
	str r2, [r3, #124]
	str r2, [r3, #128]
	str r2, [r3, #132]
	str r2, [r3, #136]
	str r2, [r3, #140]
	str r2, [r3, #144]
	str r2, [r3, #148]
	str r2, [r3, #152]
	str r2, [r3, #156]
	b label13
label76:
	mov r0, #0
	cmp r0, #1000
	blt label1003
	add r1, r1, #1
	mov r0, #4000
	ldr r4, [sp, #0]
	cmp r1, #1000
	ldr r2, [sp, #4]
	mla r3, r1, r0, r4
	mla r2, r1, r0, r2
	blt label76
	mov r0, #0
	mov r1, #4000
	cmp r0, #1000
	mla r1, r0, r1, r4
	blt label82
	b label1911
label1003:
	mov r4, #0
	mov r5, r4
.p2align 4
label40:
	mov r6, #4000
	ldr r7, [sp, #8]
	ldr r8, [r2, r4, lsl #2]
	mla r6, r4, r6, r7
	add r7, r2, r4, lsl #2
	add r4, r4, #16
	cmp r4, #992
	ldr r9, [r6, r0, lsl #2]
	add r11, r6, #4000
	ldr r10, [r7, #4]
	ldr r11, [r11, r0, lsl #2]
	mul r10, r10, r11
	mla r8, r8, r9, r10
	ldr r9, [r7, #8]
	add r10, r6, #8000
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	movw r9, #12000
	add r10, r6, r9
	ldr r9, [r7, #12]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #16]
	add r9, r6, #16000
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r7, #20]
	movw r9, #20000
	add r9, r6, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #24000
	add r10, r6, r9
	ldr r9, [r7, #24]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #28]
	movw r9, #28000
	add r9, r6, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r9, [r7, #32]
	add r10, r6, #32000
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #36]
	movw r9, #36000
	add r9, r6, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #40000
	add r10, r6, r9
	ldr r9, [r7, #40]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	movw r9, #44000
	add r10, r6, r9
	ldr r9, [r7, #44]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #48]
	movw r9, #48000
	add r9, r6, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #52000
	add r10, r6, r9
	ldr r9, [r7, #52]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #56]
	movw r9, #56000
	add r9, r6, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #60000
	add r9, r6, r9
	ldr r6, [r7, #60]
	ldr r7, [r9, r0, lsl #2]
	mla r6, r6, r7, r8
	add r5, r5, r6
	blt label40
	mov r6, #4000
	ldr r7, [sp, #8]
	mla r6, r4, r6, r7
	add r7, r2, r4, lsl #2
	ldr r4, [r2, r4, lsl #2]
	add r10, r6, #4000
	ldr r8, [r6, r0, lsl #2]
	ldr r9, [r7, #4]
	ldr r10, [r10, r0, lsl #2]
	mla r4, r4, r8, r5
	ldr r5, [r7, #8]
	add r8, r6, #8000
	mla r4, r9, r10, r4
	ldr r8, [r8, r0, lsl #2]
	mla r4, r5, r8, r4
	ldr r8, [r7, #12]
	movw r5, #12000
	add r5, r6, r5
	ldr r5, [r5, r0, lsl #2]
	mla r4, r8, r5, r4
	ldr r5, [r7, #16]
	add r8, r6, #16000
	ldr r8, [r8, r0, lsl #2]
	mla r4, r5, r8, r4
	ldr r8, [r7, #20]
	movw r5, #20000
	add r5, r6, r5
	ldr r5, [r5, r0, lsl #2]
	mla r4, r8, r5, r4
	ldr r8, [r7, #24]
	movw r5, #24000
	add r5, r6, r5
	ldr r5, [r5, r0, lsl #2]
	mla r4, r8, r5, r4
	movw r5, #28000
	add r6, r6, r5
	ldr r5, [r7, #28]
	ldr r6, [r6, r0, lsl #2]
	mla r4, r5, r6, r4
	str r4, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #1000
	blt label1003
	add r1, r1, #1
	mov r0, #4000
	ldr r4, [sp, #0]
	cmp r1, #1000
	ldr r2, [sp, #4]
	mla r3, r1, r0, r4
	mla r2, r1, r0, r2
	blt label76
	mov r0, #0
	mov r1, #4000
	cmp r0, #1000
	mla r1, r0, r1, r4
	blt label82
	b label1911
label90:
	mov r0, #4000
	ldr r4, [sp, #0]
	mov r3, #0
	mla r2, r1, r0, r4
	mov r4, r5
.p2align 4
label22:
	add r0, r2, r3, lsl #2
	ldr r5, [r2, r3, lsl #2]
	add r3, r3, #64
	cmp r3, #960
	add r4, r4, r5
	ldr r5, [r0, #4]
	add r4, r4, r5
	ldr r5, [r0, #8]
	add r4, r4, r5
	ldr r5, [r0, #12]
	add r4, r4, r5
	ldr r5, [r0, #16]
	add r4, r4, r5
	ldr r5, [r0, #20]
	add r4, r4, r5
	ldr r5, [r0, #24]
	add r4, r4, r5
	ldr r5, [r0, #28]
	add r4, r4, r5
	ldr r5, [r0, #32]
	add r4, r4, r5
	ldr r5, [r0, #36]
	add r4, r4, r5
	ldr r5, [r0, #40]
	add r4, r4, r5
	ldr r5, [r0, #44]
	add r4, r4, r5
	ldr r5, [r0, #48]
	add r4, r4, r5
	ldr r5, [r0, #52]
	add r4, r4, r5
	ldr r5, [r0, #56]
	add r4, r4, r5
	ldr r5, [r0, #60]
	add r4, r4, r5
	ldr r5, [r0, #64]
	add r4, r4, r5
	ldr r5, [r0, #68]
	add r4, r4, r5
	ldr r5, [r0, #72]
	add r4, r4, r5
	ldr r5, [r0, #76]
	add r4, r4, r5
	ldr r5, [r0, #80]
	add r4, r4, r5
	ldr r5, [r0, #84]
	add r4, r4, r5
	ldr r5, [r0, #88]
	add r4, r4, r5
	ldr r5, [r0, #92]
	add r4, r4, r5
	ldr r5, [r0, #96]
	add r4, r4, r5
	ldr r5, [r0, #100]
	add r4, r4, r5
	ldr r5, [r0, #104]
	add r4, r4, r5
	ldr r5, [r0, #108]
	add r4, r4, r5
	ldr r5, [r0, #112]
	add r4, r4, r5
	ldr r5, [r0, #116]
	add r4, r4, r5
	ldr r5, [r0, #120]
	add r4, r4, r5
	ldr r5, [r0, #124]
	add r4, r4, r5
	ldr r5, [r0, #128]
	add r4, r4, r5
	ldr r5, [r0, #132]
	add r4, r4, r5
	ldr r5, [r0, #136]
	add r4, r4, r5
	ldr r5, [r0, #140]
	add r4, r4, r5
	ldr r5, [r0, #144]
	add r4, r4, r5
	ldr r5, [r0, #148]
	add r4, r4, r5
	ldr r5, [r0, #152]
	add r4, r4, r5
	ldr r5, [r0, #156]
	add r4, r4, r5
	ldr r5, [r0, #160]
	add r4, r4, r5
	ldr r5, [r0, #164]
	add r4, r4, r5
	ldr r5, [r0, #168]
	add r4, r4, r5
	ldr r5, [r0, #172]
	add r4, r4, r5
	ldr r5, [r0, #176]
	add r4, r4, r5
	ldr r5, [r0, #180]
	add r4, r4, r5
	ldr r5, [r0, #184]
	add r4, r4, r5
	ldr r5, [r0, #188]
	add r4, r4, r5
	ldr r5, [r0, #192]
	add r4, r4, r5
	ldr r5, [r0, #196]
	add r4, r4, r5
	ldr r5, [r0, #200]
	add r4, r4, r5
	ldr r5, [r0, #204]
	add r4, r4, r5
	ldr r5, [r0, #208]
	add r4, r4, r5
	ldr r5, [r0, #212]
	add r4, r4, r5
	ldr r5, [r0, #216]
	add r4, r4, r5
	ldr r5, [r0, #220]
	add r4, r4, r5
	ldr r5, [r0, #224]
	add r4, r4, r5
	ldr r5, [r0, #228]
	add r4, r4, r5
	ldr r5, [r0, #232]
	add r4, r4, r5
	ldr r5, [r0, #236]
	add r4, r4, r5
	ldr r5, [r0, #240]
	add r4, r4, r5
	ldr r5, [r0, #244]
	add r4, r4, r5
	ldr r5, [r0, #248]
	ldr r0, [r0, #252]
	add r4, r4, r5
	add r4, r4, r0
	blt label22
	add r0, r2, r3, lsl #2
	add r1, r1, #1
	ldr r2, [r2, r3, lsl #2]
	ldr r3, [r0, #4]
	add r2, r4, r2
	add r2, r2, r3
	ldr r3, [r0, #8]
	add r2, r2, r3
	ldr r3, [r0, #12]
	add r2, r2, r3
	ldr r3, [r0, #16]
	add r2, r2, r3
	ldr r3, [r0, #20]
	add r2, r2, r3
	ldr r3, [r0, #24]
	add r2, r2, r3
	ldr r3, [r0, #28]
	add r2, r2, r3
	ldr r3, [r0, #32]
	add r2, r2, r3
	ldr r3, [r0, #36]
	add r2, r2, r3
	ldr r3, [r0, #40]
	add r2, r2, r3
	ldr r3, [r0, #44]
	add r2, r2, r3
	ldr r3, [r0, #48]
	add r2, r2, r3
	ldr r3, [r0, #52]
	add r2, r2, r3
	ldr r3, [r0, #56]
	add r2, r2, r3
	ldr r3, [r0, #60]
	add r2, r2, r3
	ldr r3, [r0, #64]
	add r2, r2, r3
	ldr r3, [r0, #68]
	add r2, r2, r3
	ldr r3, [r0, #72]
	add r2, r2, r3
	ldr r3, [r0, #76]
	add r2, r2, r3
	ldr r3, [r0, #80]
	add r2, r2, r3
	ldr r3, [r0, #84]
	add r2, r2, r3
	ldr r3, [r0, #88]
	add r2, r2, r3
	ldr r3, [r0, #92]
	add r2, r2, r3
	ldr r3, [r0, #96]
	add r2, r2, r3
	ldr r3, [r0, #100]
	add r2, r2, r3
	ldr r3, [r0, #104]
	add r2, r2, r3
	ldr r3, [r0, #108]
	add r2, r2, r3
	ldr r3, [r0, #112]
	add r2, r2, r3
	ldr r3, [r0, #116]
	add r2, r2, r3
	ldr r3, [r0, #120]
	add r2, r2, r3
	ldr r3, [r0, #124]
	add r2, r2, r3
	ldr r3, [r0, #128]
	add r2, r2, r3
	ldr r3, [r0, #132]
	add r2, r2, r3
	ldr r3, [r0, #136]
	add r2, r2, r3
	ldr r3, [r0, #140]
	add r2, r2, r3
	ldr r3, [r0, #144]
	add r2, r2, r3
	ldr r3, [r0, #148]
	add r2, r2, r3
	ldr r3, [r0, #152]
	ldr r0, [r0, #156]
	add r2, r2, r3
	add r5, r2, r0
	b label17
label6:
	add sp, sp, #20
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
