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
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	sub sp, sp, #4
	mov r0, #1
	movw r4, #:lower16:c
	mov r2, #0
	movt r4, #:upper16:c
	add r3, r4, #24
	str r0, [r4, #0]
	mov r0, #2
	str r0, [r4, #4]
	mov r0, #3
	str r2, [r4, #8]
	str r2, [r4, #12]
	str r0, [r4, #16]
	mov r0, #4
	str r0, [r4, #20]
.p2align 4
label2:
	add r0, r3, r2, lsl #2
	mov r1, #0
	str r1, [r3, r2, lsl #2]
	str r1, [r0, #4]
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
	add r0, r2, #64
	cmp r0, #4032
	bge label4
	mov r2, r0
	b label2
label4:
	add r1, r3, r0, lsl #2
	mov r5, #0
	str r5, [r3, r0, lsl #2]
	add r0, r2, #120
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #12]
	str r5, [r1, #16]
	str r5, [r1, #20]
	str r5, [r1, #24]
	str r5, [r1, #28]
	str r5, [r1, #32]
	str r5, [r1, #36]
	str r5, [r1, #40]
	str r5, [r1, #44]
	str r5, [r1, #48]
	str r5, [r1, #52]
	str r5, [r1, #56]
	str r5, [r1, #60]
	str r5, [r1, #64]
	str r5, [r1, #68]
	str r5, [r1, #72]
	str r5, [r1, #76]
	str r5, [r1, #80]
	str r5, [r1, #84]
	str r5, [r1, #88]
	str r5, [r1, #92]
	str r5, [r1, #96]
	str r5, [r1, #100]
	str r5, [r1, #104]
	str r5, [r1, #108]
	str r5, [r1, #112]
	str r5, [r1, #116]
	str r5, [r1, #120]
	str r5, [r1, #124]
	str r5, [r1, #128]
	str r5, [r1, #132]
	str r5, [r1, #136]
	str r5, [r1, #140]
	str r5, [r1, #144]
	str r5, [r1, #148]
	str r5, [r1, #152]
	str r5, [r1, #156]
	str r5, [r1, #160]
	str r5, [r1, #164]
	str r5, [r1, #168]
	str r5, [r1, #172]
	str r5, [r1, #176]
	str r5, [r1, #180]
	str r5, [r1, #184]
	str r5, [r1, #188]
	str r5, [r1, #192]
	str r5, [r1, #196]
	str r5, [r1, #200]
	str r5, [r1, #204]
	str r5, [r1, #208]
	str r5, [r1, #212]
	str r5, [r1, #216]
	str r5, [r1, #220]
label5:
	mov r1, #0
	str r1, [r3, r0, lsl #2]
	movw r1, #4090
	add r0, r0, #1
	cmp r0, r1
	blt label5
	movw r1, #:lower16:a
	mov r0, #4000
	movt r1, #:upper16:a
	add r2, r1, #16000
	str r0, [r1, #20]
	mov r0, #3
	str r0, [r2, #0]
	movw r2, #16380
	add r1, r1, r2
	mov r2, #7
	str r2, [r1, #0]
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	ldr r0, [r4, #32]
	pop { r4, r5, pc }
