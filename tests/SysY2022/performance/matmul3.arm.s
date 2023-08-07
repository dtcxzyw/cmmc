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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r5, #0
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	sub sp, sp, #60
	mov r4, r1
label2:
	cmp r5, #1000
	blt label73
	b label7
label5:
	add sp, sp, #60
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label73:
	mov r0, r4
	bl getarray
	cmp r0, #1000
	bne label5
	add r5, r5, #1
	add r4, r4, #4000
	b label2
label7:
	mov r0, #23
	bl _sysy_starttime
	mov r0, #0
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	str r1, [sp, #4]
	str r0, [sp, #8]
label8:
	ldr r0, [sp, #8]
	cmp r0, #1000
	bge label86
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r3, #0
	str r1, [sp, #28]
	str r3, [sp, #32]
	b label12
label16:
	mov r0, #4000
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mla r2, r3, r0, r1
	ldr r0, [sp, #8]
	ldr r4, [r2, r0, lsl #2]
	ldr r1, [sp, #4]
	add r3, r1, r3, lsl #2
	add r1, r1, #4000
	str r4, [r3, #0]
	add r4, r2, #4000
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #4]
	add r4, r2, #8000
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #8]
	movw r4, #12000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #12]
	add r4, r2, #16000
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #16]
	movw r4, #20000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #20]
	movw r4, #24000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #24]
	movw r4, #28000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #28]
	add r4, r2, #32000
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #32]
	movw r4, #36000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #36]
	movw r4, #40000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #40]
	movw r4, #44000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #44]
	movw r4, #48000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #48]
	movw r4, #52000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #52]
	movw r4, #56000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #56]
	movw r4, #60000
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #60]
	add r4, r2, #64000
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #64]
	movw r4, #2464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #68]
	movw r4, #6464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #72]
	movw r4, #10464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #76]
	movw r4, #14464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #80]
	movw r4, #18464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #84]
	movw r4, #22464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #88]
	movw r4, #26464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #92]
	movw r4, #30464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #96]
	movw r4, #34464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #100]
	movw r4, #38464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #104]
	movw r4, #42464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #108]
	movw r4, #46464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #112]
	movw r4, #50464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #116]
	movw r4, #54464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #120]
	movw r4, #58464
	movt r4, #1
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #124]
	add r4, r2, #128000
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #128]
	movw r4, #928
	movt r4, #2
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #132]
	movw r4, #4928
	movt r4, #2
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #136]
	movw r4, #8928
	movt r4, #2
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #140]
	movw r4, #12928
	movt r4, #2
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #144]
	movw r4, #16928
	movt r4, #2
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #148]
	movw r4, #20928
	movt r4, #2
	add r4, r2, r4
	ldr r4, [r4, r0, lsl #2]
	str r4, [r3, #152]
	movw r4, #24928
	movt r4, #2
	add r2, r2, r4
	ldr r2, [r2, r0, lsl #2]
	add r0, r0, #1
	str r2, [r3, #156]
	str r1, [sp, #4]
	str r0, [sp, #8]
	b label8
.p2align 4
label12:
	ldr r0, [sp, #8]
	ldr r1, [sp, #28]
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #4]
	ldr r3, [sp, #32]
	add r1, r1, r3, lsl #2
	add r3, r3, #64
	str r1, [sp, #36]
	cmp r3, #960
	str r2, [r1, #0]
	ldr r1, [sp, #28]
	add r1, r1, #4000
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #4]
	ldr r1, [sp, #28]
	add r1, r1, #8000
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #8]
	ldr r1, [sp, #28]
	movw r2, #12000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #12]
	ldr r1, [sp, #28]
	add r1, r1, #16000
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #16]
	ldr r1, [sp, #28]
	movw r2, #20000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #20]
	ldr r1, [sp, #28]
	movw r2, #24000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #24]
	ldr r1, [sp, #28]
	movw r2, #28000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #28]
	ldr r1, [sp, #28]
	add r1, r1, #32000
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #32]
	ldr r1, [sp, #28]
	movw r2, #36000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #36]
	ldr r1, [sp, #28]
	movw r2, #40000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #40]
	ldr r1, [sp, #28]
	movw r2, #44000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #44]
	ldr r1, [sp, #28]
	movw r2, #48000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #48]
	ldr r1, [sp, #28]
	movw r2, #52000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #52]
	ldr r1, [sp, #28]
	movw r2, #56000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #56]
	ldr r1, [sp, #28]
	movw r2, #60000
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #60]
	ldr r1, [sp, #28]
	add r1, r1, #64000
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #64]
	ldr r1, [sp, #28]
	movw r2, #2464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #68]
	ldr r1, [sp, #28]
	movw r2, #6464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #72]
	ldr r1, [sp, #28]
	movw r2, #10464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #76]
	ldr r1, [sp, #28]
	movw r2, #14464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #80]
	ldr r1, [sp, #28]
	movw r2, #18464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #84]
	ldr r1, [sp, #28]
	movw r2, #22464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #88]
	ldr r1, [sp, #28]
	movw r2, #26464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #92]
	ldr r1, [sp, #28]
	movw r2, #30464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #96]
	ldr r1, [sp, #28]
	movw r2, #34464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #100]
	ldr r1, [sp, #28]
	movw r2, #38464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #104]
	ldr r1, [sp, #28]
	movw r2, #42464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #108]
	ldr r1, [sp, #28]
	movw r2, #46464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #112]
	ldr r1, [sp, #28]
	movw r2, #50464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #116]
	ldr r1, [sp, #28]
	movw r2, #54464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #120]
	ldr r1, [sp, #28]
	movw r2, #58464
	movt r2, #1
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #124]
	ldr r1, [sp, #28]
	add r1, r1, #128000
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #128]
	ldr r1, [sp, #28]
	movw r2, #928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #132]
	ldr r1, [sp, #28]
	movw r2, #4928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #136]
	ldr r1, [sp, #28]
	movw r2, #8928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #140]
	ldr r1, [sp, #28]
	movw r2, #12928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #144]
	ldr r1, [sp, #28]
	movw r2, #16928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #148]
	ldr r1, [sp, #28]
	movw r2, #20928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #152]
	ldr r1, [sp, #28]
	movw r2, #24928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #156]
	ldr r1, [sp, #28]
	movw r2, #28928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #160]
	ldr r1, [sp, #28]
	movw r2, #32928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #164]
	ldr r1, [sp, #28]
	movw r2, #36928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #168]
	ldr r1, [sp, #28]
	movw r2, #40928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #172]
	ldr r1, [sp, #28]
	movw r2, #44928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #176]
	ldr r1, [sp, #28]
	movw r2, #48928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #180]
	ldr r1, [sp, #28]
	movw r2, #52928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #184]
	ldr r1, [sp, #28]
	movw r2, #56928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #188]
	ldr r1, [sp, #28]
	movw r2, #60928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #192]
	ldr r1, [sp, #28]
	movw r2, #64928
	movt r2, #2
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #196]
	ldr r1, [sp, #28]
	movw r2, #3392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #200]
	ldr r1, [sp, #28]
	movw r2, #7392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #204]
	ldr r1, [sp, #28]
	movw r2, #11392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #208]
	ldr r1, [sp, #28]
	movw r2, #15392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #212]
	ldr r1, [sp, #28]
	movw r2, #19392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #216]
	ldr r1, [sp, #28]
	movw r2, #23392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #220]
	ldr r1, [sp, #28]
	movw r2, #27392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #224]
	ldr r1, [sp, #28]
	movw r2, #31392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #228]
	ldr r1, [sp, #28]
	movw r2, #35392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #232]
	ldr r1, [sp, #28]
	movw r2, #39392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #236]
	ldr r1, [sp, #28]
	movw r2, #43392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #240]
	ldr r1, [sp, #28]
	movw r2, #47392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #244]
	ldr r1, [sp, #28]
	movw r2, #51392
	movt r2, #3
	add r1, r1, r2
	ldr r2, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r2, [r1, #248]
	ldr r1, [sp, #28]
	movw r2, #55392
	movt r2, #3
	add r1, r1, r2
	ldr r0, [r1, r0, lsl #2]
	ldr r1, [sp, #36]
	str r0, [r1, #252]
	bge label16
	ldr r1, [sp, #28]
	add r1, r1, #256000
	str r1, [sp, #28]
	str r3, [sp, #32]
	b label12
label86:
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mov r3, #0
	str r1, [sp, #0]
	mov r4, r1
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r2, r1
label18:
	cmp r3, #1000
	blt label61
	b label22
label65:
	add r3, r3, #1
	add r2, r2, #4000
	ldr r4, [sp, #0]
	add r4, r4, #4000
	str r4, [sp, #0]
	b label18
.p2align 4
label66:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mov r5, #0
	mov r6, r5
	b label67
.p2align 4
label72:
	mov r7, #4000
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mla r1, r5, r7, r1
	add r5, r2, r5, lsl #2
	ldr r7, [r5, #0]
	add r10, r1, #4000
	ldr r8, [r1, r0, lsl #2]
	ldr r9, [r5, #4]
	ldr r10, [r10, r0, lsl #2]
	mla r6, r7, r8, r6
	ldr r8, [r5, #8]
	add r7, r1, #8000
	mla r6, r9, r10, r6
	ldr r7, [r7, r0, lsl #2]
	mla r6, r8, r7, r6
	movw r7, #12000
	add r8, r1, r7
	ldr r7, [r5, #12]
	ldr r8, [r8, r0, lsl #2]
	mla r6, r7, r8, r6
	ldr r7, [r5, #16]
	add r8, r1, #16000
	ldr r8, [r8, r0, lsl #2]
	mla r6, r7, r8, r6
	movw r7, #20000
	add r8, r1, r7
	ldr r7, [r5, #20]
	ldr r8, [r8, r0, lsl #2]
	mla r6, r7, r8, r6
	ldr r8, [r5, #24]
	movw r7, #24000
	add r7, r1, r7
	ldr r7, [r7, r0, lsl #2]
	mla r6, r8, r7, r6
	movw r7, #28000
	add r7, r1, r7
	ldr r1, [r5, #28]
	ldr r5, [r7, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #1000
	mla r1, r1, r5, r6
	str r1, [r4, #0]
	add r4, r4, #4
	blt label66
	b label65
.p2align 4
label67:
	add r7, r2, r5, lsl #2
	add r10, r1, #4000
	add r5, r5, #16
	ldr r8, [r7, #0]
	cmp r5, #992
	ldr r9, [r1, r0, lsl #2]
	ldr r11, [r7, #4]
	ldr r10, [r10, r0, lsl #2]
	mul r10, r11, r10
	mla r8, r8, r9, r10
	ldr r10, [r7, #8]
	add r9, r1, #8000
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r7, #12]
	movw r9, #12000
	add r9, r1, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r9, [r7, #16]
	add r10, r1, #16000
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #20]
	movw r9, #20000
	add r9, r1, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r7, #24]
	movw r9, #24000
	add r9, r1, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #28000
	add r10, r1, r9
	ldr r9, [r7, #28]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r9, [r7, #32]
	add r10, r1, #32000
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	movw r9, #36000
	add r10, r1, r9
	ldr r9, [r7, #36]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #40]
	movw r9, #40000
	add r9, r1, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #44000
	add r10, r1, r9
	ldr r9, [r7, #44]
	ldr r10, [r10, r0, lsl #2]
	mla r8, r9, r10, r8
	ldr r10, [r7, #48]
	movw r9, #48000
	add r9, r1, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	ldr r10, [r7, #52]
	movw r9, #52000
	add r9, r1, r9
	ldr r9, [r9, r0, lsl #2]
	mla r8, r10, r9, r8
	movw r9, #56000
	add r10, r1, r9
	ldr r9, [r7, #56]
	ldr r10, [r10, r0, lsl #2]
	ldr r7, [r7, #60]
	mla r8, r9, r10, r8
	movw r9, #60000
	add r9, r1, r9
	ldr r9, [r9, r0, lsl #2]
	mla r7, r7, r9, r8
	add r6, r6, r7
	bge label72
	add r1, r1, #64000
	b label67
label61:
	ldr r4, [sp, #0]
	mov r0, #0
	cmp r0, #1000
	blt label66
	b label65
label22:
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mov r0, #0
	str r1, [sp, #12]
	str r0, [sp, #16]
label23:
	ldr r0, [sp, #16]
	cmp r0, #1000
	blt label49
	b label26
label59:
	ldr r1, [sp, #12]
	add r2, r1, r2, lsl #2
	add r1, r1, #4000
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #12]
	str r0, [r2, #16]
	str r0, [r2, #20]
	str r0, [r2, #24]
	str r0, [r2, #28]
	str r0, [r2, #32]
	str r0, [r2, #36]
	str r0, [r2, #40]
	str r0, [r2, #44]
	str r0, [r2, #48]
	str r0, [r2, #52]
	str r0, [r2, #56]
	str r0, [r2, #60]
	str r0, [r2, #64]
	str r0, [r2, #68]
	str r0, [r2, #72]
	str r0, [r2, #76]
	str r0, [r2, #80]
	str r0, [r2, #84]
	str r0, [r2, #88]
	str r0, [r2, #92]
	str r0, [r2, #96]
	str r0, [r2, #100]
	str r0, [r2, #104]
	str r0, [r2, #108]
	str r0, [r2, #112]
	str r0, [r2, #116]
	str r0, [r2, #120]
	str r0, [r2, #124]
	str r0, [r2, #128]
	str r0, [r2, #132]
	str r0, [r2, #136]
	str r0, [r2, #140]
	str r0, [r2, #144]
	str r0, [r2, #148]
	str r0, [r2, #152]
	str r0, [r2, #156]
	ldr r0, [sp, #16]
	str r1, [sp, #12]
	add r0, r0, #1
	str r0, [sp, #16]
	b label23
label26:
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mov r0, #0
	mov r2, r1
label27:
	cmp r0, #1000
	bge label30
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mov r3, #0
	b label44
label48:
	mov r4, #4000
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mla r4, r3, r4, r1
	ldr r1, [r4, r0, lsl #2]
	rsb r5, r1, #0
	add r1, r2, r3, lsl #2
	add r2, r2, #4000
	add r3, r4, #4000
	str r5, [r1, #0]
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r1, #4]
	add r3, r4, #8000
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r1, #8]
	movw r3, #12000
	add r3, r4, r3
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r1, #12]
	add r3, r4, #16000
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r1, #16]
	movw r3, #20000
	add r3, r4, r3
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r1, #20]
	movw r3, #24000
	add r3, r4, r3
	ldr r3, [r3, r0, lsl #2]
	rsb r3, r3, #0
	str r3, [r1, #24]
	movw r3, #28000
	add r3, r4, r3
	ldr r3, [r3, r0, lsl #2]
	add r0, r0, #1
	rsb r3, r3, #0
	str r3, [r1, #28]
	b label27
.p2align 4
label44:
	ldr r4, [r1, r0, lsl #2]
	rsb r5, r4, #0
	add r4, r2, r3, lsl #2
	add r3, r3, #16
	str r5, [r4, #0]
	cmp r3, #992
	add r5, r1, #4000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #4]
	add r5, r1, #8000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #8]
	movw r5, #12000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #12]
	add r5, r1, #16000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #16]
	movw r5, #20000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #20]
	movw r5, #24000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #24]
	movw r5, #28000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #28]
	add r5, r1, #32000
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #32]
	movw r5, #36000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #36]
	movw r5, #40000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #40]
	movw r5, #44000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #44]
	movw r5, #48000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #48]
	movw r5, #52000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #52]
	movw r5, #56000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #56]
	movw r5, #60000
	add r5, r1, r5
	ldr r5, [r5, r0, lsl #2]
	rsb r5, r5, #0
	str r5, [r4, #60]
	bge label48
	add r1, r1, #64000
	b label44
label30:
	movw r1, #:lower16:c
	movt r1, #:upper16:c
	mov r4, #0
	str r1, [sp, #20]
	mov r0, r4
	str r4, [sp, #24]
label31:
	ldr r0, [sp, #24]
	cmp r0, #1000
	bge label42
	ldr r0, [sp, #20]
	mov r2, #0
	mov r1, r4
	str r0, [sp, #40]
	str r2, [sp, #44]
	b label36
label41:
	ldr r0, [sp, #20]
	add r0, r0, r2, lsl #2
	ldr r2, [r0, #0]
	add r1, r1, r2
	ldr r2, [r0, #4]
	add r1, r1, r2
	ldr r2, [r0, #8]
	add r1, r1, r2
	ldr r2, [r0, #12]
	add r1, r1, r2
	ldr r2, [r0, #16]
	add r1, r1, r2
	ldr r2, [r0, #20]
	add r1, r1, r2
	ldr r2, [r0, #24]
	add r1, r1, r2
	ldr r2, [r0, #28]
	add r1, r1, r2
	ldr r2, [r0, #32]
	add r1, r1, r2
	ldr r2, [r0, #36]
	add r1, r1, r2
	ldr r2, [r0, #40]
	add r1, r1, r2
	ldr r2, [r0, #44]
	add r1, r1, r2
	ldr r2, [r0, #48]
	add r1, r1, r2
	ldr r2, [r0, #52]
	add r1, r1, r2
	ldr r2, [r0, #56]
	add r1, r1, r2
	ldr r2, [r0, #60]
	add r1, r1, r2
	ldr r2, [r0, #64]
	add r1, r1, r2
	ldr r2, [r0, #68]
	add r1, r1, r2
	ldr r2, [r0, #72]
	add r1, r1, r2
	ldr r2, [r0, #76]
	add r1, r1, r2
	ldr r2, [r0, #80]
	add r1, r1, r2
	ldr r2, [r0, #84]
	add r1, r1, r2
	ldr r2, [r0, #88]
	add r1, r1, r2
	ldr r2, [r0, #92]
	add r1, r1, r2
	ldr r2, [r0, #96]
	add r1, r1, r2
	ldr r2, [r0, #100]
	add r1, r1, r2
	ldr r2, [r0, #104]
	add r1, r1, r2
	ldr r2, [r0, #108]
	add r1, r1, r2
	ldr r2, [r0, #112]
	add r1, r1, r2
	ldr r2, [r0, #116]
	add r1, r1, r2
	ldr r2, [r0, #120]
	add r1, r1, r2
	ldr r2, [r0, #124]
	add r1, r1, r2
	ldr r2, [r0, #128]
	add r1, r1, r2
	ldr r2, [r0, #132]
	add r1, r1, r2
	ldr r2, [r0, #136]
	add r1, r1, r2
	ldr r2, [r0, #140]
	add r1, r1, r2
	ldr r2, [r0, #144]
	add r1, r1, r2
	ldr r2, [r0, #148]
	add r1, r1, r2
	ldr r2, [r0, #152]
	ldr r0, [r0, #156]
	add r1, r1, r2
	add r4, r1, r0
	ldr r0, [sp, #24]
	add r1, r0, #1
	ldr r0, [sp, #20]
	add r0, r0, #4000
	str r0, [sp, #20]
	str r1, [sp, #24]
	mov r0, r1
	b label31
.p2align 4
label36:
	ldr r0, [sp, #40]
	ldr r0, [r0, #0]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #4]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #8]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #12]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #16]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #20]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #24]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #28]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #32]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #36]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #40]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #44]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #48]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #52]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #56]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #60]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #64]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #68]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #72]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #76]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #80]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #84]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #88]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #92]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #96]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #100]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #104]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #108]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #112]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #116]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #120]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #124]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #128]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #132]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #136]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #140]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #144]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #148]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #152]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #156]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #160]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #164]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #168]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #172]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #176]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #180]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #184]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #188]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #192]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #196]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #200]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #204]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #208]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #212]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #216]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #220]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #224]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #228]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #232]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #236]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #240]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #244]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #248]
	add r1, r1, r0
	ldr r0, [sp, #40]
	ldr r0, [r0, #252]
	ldr r2, [sp, #44]
	add r1, r1, r0
	add r2, r2, #64
	cmp r2, #960
	bge label41
	ldr r0, [sp, #40]
	add r0, r0, #256
	str r0, [sp, #40]
	str r2, [sp, #44]
	b label36
label42:
	mov r0, #92
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #0
	b label5
label49:
	ldr r1, [sp, #12]
	mov r3, #0
	mvn r2, #-2147483648
	str r1, [sp, #48]
	mov r0, r1
	str r3, [sp, #52]
.p2align 4
label50:
	ldr r0, [sp, #48]
	mov r1, r2
	ldr r0, [r0, #0]
	cmp r2, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #4]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #8]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #12]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #16]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #20]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #24]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #28]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #32]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #36]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #40]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #44]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #48]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #52]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #56]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #60]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #64]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #68]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #72]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #76]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #80]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #84]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #88]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #92]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #96]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #100]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #104]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #108]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #112]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #116]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #120]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #124]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #128]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #132]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #136]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #140]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #144]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #148]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #152]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #156]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #160]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #164]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #168]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #172]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #176]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #180]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #184]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #188]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #192]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #196]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #200]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #204]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #208]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #212]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #216]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #220]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #224]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #228]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #232]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #236]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #240]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #244]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	ldr r0, [r0, #248]
	cmp r1, r0
	movge r1, r0
	ldr r0, [sp, #48]
	mov r2, r1
	ldr r0, [r0, #252]
	ldr r3, [sp, #52]
	cmp r1, r0
	add r3, r3, #64
	movge r2, r0
	cmp r3, #960
	bge label54
	ldr r0, [sp, #48]
	add r0, r0, #256
	str r0, [sp, #48]
	str r3, [sp, #52]
	b label50
label54:
	ldr r1, [sp, #12]
	add r0, r1, r3, lsl #2
	ldr r3, [r0, #0]
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
	mov r0, r2
	cmp r2, r3
	mov r2, #0
	movge r0, r3
.p2align 4
label55:
	str r0, [r1, #0]
	add r2, r2, #64
	str r0, [r1, #4]
	cmp r2, #960
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
	bge label59
	add r1, r1, #256
	b label55
