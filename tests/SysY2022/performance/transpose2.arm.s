.arch armv7ve
.data
.align 4
matrix:
	.zero	80000000
.align 4
a:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #232
	bl getint
	mov r2, r0
	str r0, [sp, #84]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r1, r0
	str r0, [sp, #80]
	bl getarray
	mov r2, r0
	str r0, [sp, #64]
	mov r0, #28
	bl _sysy_starttime
	movw r8, #:lower16:matrix
	movt r8, #:upper16:matrix
	str r8, [sp, #68]
	ldr r2, [sp, #84]
	cmp r2, #0
	ble label2
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #84]
	cmp r1, r2
	bge label33
	b label38
label2:
	ldr r2, [sp, #64]
	cmp r2, #0
	ble label3
	mov r0, #0
	ldr r1, [sp, #80]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #84]
	sdiv r4, r2, r3
	mov r1, #0
	mul r5, r1, r3
	cmp r1, r4
	bge label30
	mov r2, #0
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	b label556
label26:
	add r1, r1, #1
	mul r5, r1, r3
	cmp r1, r4
	bge label30
	mov r2, #0
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	b label532
label556:
	add r2, r2, #1
	cmp r2, r3
	bge label26
label532:
	cmp r1, r2
	bge label28
label545:
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	b label545
label30:
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label3
	ldr r1, [sp, #80]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #84]
	sdiv r4, r2, r3
	mov r1, #0
	mul r5, r1, r3
	cmp r1, r4
	bge label30
	mov r2, #0
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	b label556
label28:
	add r6, r2, r5
	ldr r8, [sp, #68]
	ldr r7, [r8, r6, lsl #2]
	mla r9, r4, r2, r1
	ldr r8, [sp, #68]
	str r7, [r8, r9, lsl #2]
	ldr r8, [sp, #68]
	str r7, [r8, r6, lsl #2]
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	add r2, r2, #1
	cmp r2, r3
	bge label26
	cmp r1, r2
	bge label28
	b label545
label3:
	ldr r2, [sp, #64]
	cmp r2, #0
	ble label54
	mov r0, #0
	str r0, [sp, #92]
	str r0, [sp, #36]
	add r0, r0, #16
	str r0, [sp, #72]
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label64
	b label19
label54:
	mov r4, #0
	cmp r4, #0
	bge label6
label57:
	rsb r4, r4, #0
	b label6
label64:
	ldr r0, [sp, #92]
	str r0, [sp, #88]
	ldr r0, [sp, #36]
	str r0, [sp, #4]
	add r0, r0, #16
	str r0, [sp, #76]
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label69
	b label15
label69:
	ldr r0, [sp, #88]
	mov r1, r0
	ldr r0, [sp, #4]
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	b label555
label15:
	ldr r8, [sp, #68]
	ldr r0, [sp, #4]
	add r1, r8, r0, lsl #2
	ldr r8, [sp, #68]
	ldr r0, [sp, #4]
	ldr r2, [r8, r0, lsl #2]
	ldr r0, [sp, #4]
	mul r3, r0, r0
	ldr r0, [sp, #4]
	add r0, r0, #1
	ldr r8, [r1, #4]
	str r8, [sp, #224]
	mul r9, r0, r0
	str r9, [sp, #160]
	ldr r0, [sp, #4]
	add r0, r0, #2
	ldr r8, [r1, #8]
	str r8, [sp, #216]
	mul r4, r0, r0
	ldr r0, [sp, #4]
	add r0, r0, #3
	ldr r8, [r1, #12]
	str r8, [sp, #44]
	mul r9, r0, r0
	str r9, [sp, #136]
	ldr r0, [sp, #4]
	add r5, r0, #4
	ldr r0, [r1, #16]
	str r0, [sp, #52]
	mul r8, r5, r5
	str r8, [sp, #128]
	ldr r0, [sp, #4]
	add r0, r0, #5
	ldr r8, [r1, #20]
	str r8, [sp, #24]
	mul r9, r0, r0
	str r9, [sp, #148]
	ldr r0, [sp, #4]
	add r0, r0, #6
	ldr r8, [r1, #24]
	str r8, [sp, #12]
	mul r9, r0, r0
	str r9, [sp, #120]
	ldr r0, [sp, #4]
	add r0, r0, #7
	ldr r8, [r1, #28]
	str r8, [sp, #60]
	mul r9, r0, r0
	str r9, [sp, #168]
	ldr r0, [sp, #4]
	add r5, r0, #8
	ldr r0, [r1, #32]
	str r0, [sp, #108]
	mul r8, r5, r5
	str r8, [sp, #176]
	ldr r0, [sp, #4]
	add r0, r0, #9
	ldr r8, [r1, #36]
	str r8, [sp, #104]
	mul r9, r0, r0
	str r9, [sp, #156]
	ldr r0, [sp, #4]
	add r0, r0, #10
	ldr r8, [r1, #40]
	str r8, [sp, #16]
	mul r9, r0, r0
	str r9, [sp, #180]
	ldr r0, [sp, #4]
	add r5, r0, #11
	ldr r0, [r1, #44]
	str r0, [sp, #28]
	mul r8, r5, r5
	str r8, [sp, #144]
	ldr r0, [sp, #4]
	add r0, r0, #12
	ldr r8, [r1, #48]
	str r8, [sp, #228]
	mul r9, r0, r0
	str r9, [sp, #184]
	ldr r0, [sp, #4]
	add r0, r0, #13
	ldr r8, [r1, #52]
	str r8, [sp, #32]
	mul r5, r0, r0
	ldr r0, [sp, #4]
	add r0, r0, #14
	ldr r8, [r1, #56]
	str r8, [sp, #208]
	mul r6, r0, r0
	ldr r0, [sp, #4]
	add r0, r0, #15
	ldr r1, [r1, #60]
	mul r7, r0, r0
	ldr r0, [sp, #88]
	mla r0, r3, r2, r0
	ldr r8, [sp, #224]
	ldr r9, [sp, #160]
	mla r0, r8, r9, r0
	ldr r8, [sp, #216]
	mla r0, r8, r4, r0
	ldr r8, [sp, #44]
	ldr r9, [sp, #136]
	mla r2, r8, r9, r0
	ldr r0, [sp, #52]
	ldr r8, [sp, #128]
	mla r0, r0, r8, r2
	ldr r8, [sp, #24]
	ldr r9, [sp, #148]
	mla r0, r8, r9, r0
	ldr r8, [sp, #12]
	ldr r9, [sp, #120]
	mla r0, r8, r9, r0
	ldr r8, [sp, #60]
	ldr r9, [sp, #168]
	mla r2, r8, r9, r0
	ldr r0, [sp, #108]
	ldr r8, [sp, #176]
	mla r0, r0, r8, r2
	ldr r8, [sp, #104]
	ldr r9, [sp, #156]
	mla r0, r8, r9, r0
	ldr r8, [sp, #16]
	ldr r9, [sp, #180]
	mla r2, r8, r9, r0
	ldr r0, [sp, #28]
	ldr r8, [sp, #144]
	mla r0, r0, r8, r2
	ldr r8, [sp, #228]
	ldr r9, [sp, #184]
	mla r0, r8, r9, r0
	ldr r8, [sp, #32]
	mla r0, r8, r5, r0
	ldr r8, [sp, #208]
	mla r0, r8, r6, r0
	mla r0, r1, r7, r0
	str r0, [sp, #88]
	ldr r0, [sp, #76]
	str r0, [sp, #4]
	add r0, r0, #16
	str r0, [sp, #76]
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label69
	b label15
label555:
	ldr r8, [sp, #68]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label176
	b label555
label176:
	mov r4, r1
	cmp r1, #0
	bge label6
	b label57
label33:
	add r1, r0, #16
	ldr r2, [sp, #84]
	cmp r1, r2
	bge label35
label37:
	ldr r8, [sp, #68]
	add r2, r8, r0, lsl #2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	str r3, [r2, #8]
	add r3, r0, #3
	str r3, [r2, #12]
	add r3, r0, #4
	str r3, [r2, #16]
	add r3, r0, #5
	str r3, [r2, #20]
	add r3, r0, #6
	str r3, [r2, #24]
	add r3, r0, #7
	str r3, [r2, #28]
	add r3, r0, #8
	str r3, [r2, #32]
	add r3, r0, #9
	str r3, [r2, #36]
	add r3, r0, #10
	str r3, [r2, #40]
	add r3, r0, #11
	str r3, [r2, #44]
	add r3, r0, #12
	str r3, [r2, #48]
	add r3, r0, #13
	str r3, [r2, #52]
	add r3, r0, #14
	str r3, [r2, #56]
	add r0, r0, #15
	str r0, [r2, #60]
	mov r0, r1
	add r1, r1, #16
	ldr r2, [sp, #84]
	cmp r1, r2
	bge label35
	b label37
label35:
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
label564:
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #84]
	cmp r0, r2
	bge label2
	b label564
label19:
	ldr r8, [sp, #68]
	ldr r0, [sp, #36]
	add r1, r8, r0, lsl #2
	ldr r8, [sp, #68]
	ldr r0, [sp, #36]
	ldr r2, [r8, r0, lsl #2]
	ldr r0, [sp, #36]
	mul r3, r0, r0
	ldr r0, [sp, #36]
	add r0, r0, #1
	ldr r10, [r1, #4]
	str r10, [sp, #204]
	mul r4, r0, r0
	ldr r0, [sp, #36]
	add r0, r0, #2
	ldr r10, [r1, #8]
	str r10, [sp, #200]
	mul r5, r0, r0
	ldr r0, [sp, #36]
	add r0, r0, #3
	ldr r10, [r1, #12]
	str r10, [sp, #196]
	mul r6, r0, r0
	ldr r0, [sp, #36]
	add r0, r0, #4
	ldr r10, [r1, #16]
	str r10, [sp, #0]
	mul r7, r0, r0
	ldr r0, [sp, #36]
	add r8, r0, #5
	ldr r0, [r1, #20]
	str r0, [sp, #220]
	mul r10, r8, r8
	str r10, [sp, #164]
	ldr r0, [sp, #36]
	add r0, r0, #6
	ldr r10, [r1, #24]
	str r10, [sp, #212]
	mul r8, r0, r0
	ldr r0, [sp, #36]
	add r0, r0, #7
	ldr r10, [r1, #28]
	str r10, [sp, #40]
	mul r0, r0, r0
	str r0, [sp, #140]
	ldr r0, [sp, #36]
	add r0, r0, #8
	ldr r10, [r1, #32]
	str r10, [sp, #48]
	mul r0, r0, r0
	str r0, [sp, #132]
	ldr r0, [sp, #36]
	add r9, r0, #9
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	mul r10, r9, r9
	str r10, [sp, #152]
	ldr r0, [sp, #36]
	add r9, r0, #10
	ldr r0, [r1, #40]
	str r0, [sp, #8]
	mul r10, r9, r9
	str r10, [sp, #124]
	ldr r0, [sp, #36]
	add r9, r0, #11
	ldr r0, [r1, #44]
	str r0, [sp, #56]
	mul r10, r9, r9
	str r10, [sp, #116]
	ldr r0, [sp, #36]
	add r0, r0, #12
	ldr r10, [r1, #48]
	str r10, [sp, #112]
	mul r0, r0, r0
	str r0, [sp, #172]
	ldr r0, [sp, #36]
	add r9, r0, #13
	ldr r0, [r1, #52]
	str r0, [sp, #100]
	mul r10, r9, r9
	str r10, [sp, #188]
	ldr r0, [sp, #36]
	add r0, r0, #14
	ldr r10, [r1, #56]
	str r10, [sp, #96]
	mul r0, r0, r0
	str r0, [sp, #192]
	ldr r0, [sp, #36]
	add r0, r0, #15
	ldr r1, [r1, #60]
	mul r9, r0, r0
	ldr r0, [sp, #92]
	mla r0, r3, r2, r0
	ldr r10, [sp, #204]
	mla r0, r10, r4, r0
	ldr r10, [sp, #200]
	mla r0, r10, r5, r0
	ldr r10, [sp, #196]
	mla r0, r10, r6, r0
	ldr r10, [sp, #0]
	mla r2, r10, r7, r0
	ldr r0, [sp, #220]
	ldr r10, [sp, #164]
	mla r0, r0, r10, r2
	ldr r10, [sp, #212]
	mla r2, r10, r8, r0
	ldr r10, [sp, #40]
	ldr r0, [sp, #140]
	mla r2, r10, r0, r2
	ldr r10, [sp, #48]
	ldr r0, [sp, #132]
	mla r2, r10, r0, r2
	ldr r0, [sp, #20]
	ldr r10, [sp, #152]
	mla r2, r0, r10, r2
	ldr r0, [sp, #8]
	ldr r10, [sp, #124]
	mla r2, r0, r10, r2
	ldr r0, [sp, #56]
	ldr r10, [sp, #116]
	mla r2, r0, r10, r2
	ldr r10, [sp, #112]
	ldr r0, [sp, #172]
	mla r2, r10, r0, r2
	ldr r0, [sp, #100]
	ldr r10, [sp, #188]
	mla r2, r0, r10, r2
	ldr r10, [sp, #96]
	ldr r0, [sp, #192]
	mla r0, r10, r0, r2
	mla r0, r1, r9, r0
	str r0, [sp, #92]
	ldr r0, [sp, #72]
	str r0, [sp, #36]
	add r0, r0, #16
	str r0, [sp, #72]
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label64
	b label19
label38:
	ldr r8, [sp, #68]
	add r2, r8, r0, lsl #2
	ldr r8, [sp, #68]
	str r0, [r8, r0, lsl #2]
	add r3, r0, #1
	str r3, [r2, #4]
	add r3, r0, #2
	str r3, [r2, #8]
	add r3, r0, #3
	str r3, [r2, #12]
	add r3, r0, #4
	str r3, [r2, #16]
	add r3, r0, #5
	str r3, [r2, #20]
	add r3, r0, #6
	str r3, [r2, #24]
	add r3, r0, #7
	str r3, [r2, #28]
	add r3, r0, #8
	str r3, [r2, #32]
	add r3, r0, #9
	str r3, [r2, #36]
	add r3, r0, #10
	str r3, [r2, #40]
	add r3, r0, #11
	str r3, [r2, #44]
	add r3, r0, #12
	str r3, [r2, #48]
	add r3, r0, #13
	str r3, [r2, #52]
	add r3, r0, #14
	str r3, [r2, #56]
	add r0, r0, #15
	str r0, [r2, #60]
	mov r0, r1
	add r1, r1, #16
	ldr r2, [sp, #84]
	cmp r1, r2
	bge label33
	b label38
label6:
	mov r0, #47
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #232
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
