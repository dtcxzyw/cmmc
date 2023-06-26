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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #252
	bl getint
	mov r2, r0
	str r0, [sp, #64]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r1, r0
	str r0, [sp, #24]
	bl getarray
	mov r2, r0
	str r0, [sp, #28]
	mov r0, #28
	bl _sysy_starttime
	movw r8, #:lower16:matrix
	movt r8, #:upper16:matrix
	str r8, [sp, #96]
	ldr r2, [sp, #64]
	cmp r2, #0
	ble label10
	mov r0, #0
	add r1, r0, #16
	ldr r2, [sp, #64]
	cmp r1, r2
	bge label5
label4:
	ldr r8, [sp, #96]
	add r2, r8, r0, lsl #2
	ldr r8, [sp, #96]
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
	ldr r2, [sp, #64]
	cmp r1, r2
	bge label5
	b label4
label5:
	add r1, r0, #16
	ldr r2, [sp, #64]
	cmp r1, r2
	bge label7
label9:
	ldr r8, [sp, #96]
	add r2, r8, r0, lsl #2
	ldr r8, [sp, #96]
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
	ldr r2, [sp, #64]
	cmp r1, r2
	bge label7
	b label9
label7:
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	b label561
label10:
	ldr r2, [sp, #28]
	cmp r2, #0
	ble label22
	mov r0, #0
	ldr r1, [sp, #24]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #64]
	sdiv r4, r2, r3
	mov r1, #0
	mul r5, r1, r3
	cmp r1, r4
	bge label15
	mov r2, #0
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
label564:
	add r2, r2, #1
	cmp r2, r3
	bge label21
	b label540
label15:
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label22
	ldr r1, [sp, #24]
	ldr r3, [r1, r0, lsl #2]
	ldr r2, [sp, #64]
	sdiv r4, r2, r3
	mov r1, #0
	mul r5, r1, r3
	cmp r1, r4
	bge label15
	mov r2, #0
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	b label564
label540:
	cmp r1, r2
	bge label19
	b label553
label19:
	add r6, r2, r5
	ldr r8, [sp, #96]
	ldr r7, [r8, r6, lsl #2]
	mla r9, r4, r2, r1
	ldr r8, [sp, #96]
	str r7, [r8, r9, lsl #2]
	ldr r8, [sp, #96]
	str r7, [r8, r6, lsl #2]
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	b label553
label21:
	add r1, r1, #1
	mul r5, r1, r3
	cmp r1, r4
	bge label15
	mov r2, #0
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	add r2, r2, #1
	cmp r2, r3
	bge label21
	b label540
label22:
	ldr r2, [sp, #28]
	cmp r2, #0
	ble label168
	mov r0, #0
	str r0, [sp, #16]
	str r0, [sp, #52]
	add r0, r0, #16
	str r0, [sp, #72]
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label178
	b label31
label553:
	add r2, r2, #1
	cmp r2, r3
	bge label21
	cmp r1, r2
	bge label19
	b label553
label561:
	ldr r8, [sp, #96]
	str r0, [r8, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #64]
	cmp r0, r2
	bge label10
	b label561
label168:
	mov r4, #0
	cmp r4, #0
	bge label25
	b label171
label178:
	ldr r0, [sp, #16]
	str r0, [sp, #20]
	ldr r0, [sp, #52]
	str r0, [sp, #100]
	add r0, r0, #16
	str r0, [sp, #84]
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label279
	b label38
label279:
	ldr r0, [sp, #20]
	mov r1, r0
	ldr r0, [sp, #100]
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	b label572
label290:
	mov r4, r1
	cmp r1, #0
	bge label25
	b label171
label38:
	ldr r8, [sp, #96]
	ldr r0, [sp, #100]
	add r1, r8, r0, lsl #2
	ldr r8, [sp, #96]
	ldr r0, [sp, #100]
	ldr r4, [r8, r0, lsl #2]
	str r4, [sp, #216]
	ldr r0, [sp, #100]
	mul r3, r0, r0
	str r3, [sp, #212]
	ldr r0, [sp, #100]
	add r0, r0, #1
	ldr r3, [r1, #4]
	str r3, [sp, #124]
	mul r4, r0, r0
	str r4, [sp, #8]
	ldr r0, [sp, #100]
	add r2, r0, #2
	ldr r0, [r1, #8]
	str r0, [sp, #48]
	mul r4, r2, r2
	str r4, [sp, #208]
	ldr r0, [sp, #100]
	add r0, r0, #3
	ldr r3, [r1, #12]
	str r3, [sp, #44]
	mul r4, r0, r0
	str r4, [sp, #204]
	ldr r0, [sp, #100]
	add r0, r0, #4
	ldr r3, [r1, #16]
	str r3, [sp, #40]
	mul r4, r0, r0
	str r4, [sp, #228]
	ldr r0, [sp, #100]
	add r0, r0, #5
	ldr r3, [r1, #20]
	str r3, [sp, #112]
	mul r4, r0, r0
	str r4, [sp, #200]
	ldr r0, [sp, #100]
	add r0, r0, #6
	ldr r3, [r1, #24]
	str r3, [sp, #36]
	mul r4, r0, r0
	str r4, [sp, #4]
	ldr r0, [sp, #100]
	add r0, r0, #7
	ldr r3, [r1, #28]
	str r3, [sp, #76]
	mul r4, r0, r0
	str r4, [sp, #196]
	ldr r0, [sp, #100]
	add r2, r0, #8
	ldr r0, [r1, #32]
	str r0, [sp, #140]
	mul r4, r2, r2
	str r4, [sp, #240]
	ldr r0, [sp, #100]
	add r2, r0, #9
	ldr r0, [r1, #36]
	str r0, [sp, #144]
	mul r4, r2, r2
	str r4, [sp, #192]
	ldr r0, [sp, #100]
	add r0, r0, #10
	ldr r3, [r1, #40]
	str r3, [sp, #136]
	mul r4, r0, r0
	str r4, [sp, #188]
	ldr r0, [sp, #100]
	add r2, r0, #11
	ldr r0, [r1, #44]
	str r0, [sp, #132]
	mul r4, r2, r2
	str r4, [sp, #232]
	ldr r0, [sp, #100]
	add r2, r0, #12
	ldr r0, [r1, #48]
	str r0, [sp, #128]
	mul r4, r2, r2
	str r4, [sp, #184]
	ldr r0, [sp, #100]
	add r2, r0, #13
	ldr r0, [r1, #52]
	str r0, [sp, #88]
	mul r4, r2, r2
	str r4, [sp, #180]
	ldr r0, [sp, #100]
	add r2, r0, #14
	ldr r0, [r1, #56]
	str r0, [sp, #12]
	mul r4, r2, r2
	str r4, [sp, #236]
	ldr r0, [sp, #100]
	add r0, r0, #15
	ldr r1, [r1, #60]
	mul r2, r0, r0
	ldr r0, [sp, #20]
	ldr r3, [sp, #212]
	ldr r4, [sp, #216]
	mla r0, r3, r4, r0
	ldr r3, [sp, #124]
	ldr r4, [sp, #8]
	mla r3, r3, r4, r0
	ldr r0, [sp, #48]
	ldr r4, [sp, #208]
	mla r0, r0, r4, r3
	ldr r3, [sp, #44]
	ldr r4, [sp, #204]
	mla r0, r3, r4, r0
	ldr r3, [sp, #40]
	ldr r4, [sp, #228]
	mla r0, r3, r4, r0
	ldr r3, [sp, #112]
	ldr r4, [sp, #200]
	mla r0, r3, r4, r0
	ldr r3, [sp, #36]
	ldr r4, [sp, #4]
	mla r0, r3, r4, r0
	ldr r3, [sp, #76]
	ldr r4, [sp, #196]
	mla r3, r3, r4, r0
	ldr r0, [sp, #140]
	ldr r4, [sp, #240]
	mla r3, r0, r4, r3
	ldr r0, [sp, #144]
	ldr r4, [sp, #192]
	mla r0, r0, r4, r3
	ldr r3, [sp, #136]
	ldr r4, [sp, #188]
	mla r3, r3, r4, r0
	ldr r0, [sp, #132]
	ldr r4, [sp, #232]
	mla r3, r0, r4, r3
	ldr r0, [sp, #128]
	ldr r4, [sp, #184]
	mla r3, r0, r4, r3
	ldr r0, [sp, #88]
	ldr r4, [sp, #180]
	mla r3, r0, r4, r3
	ldr r0, [sp, #12]
	ldr r4, [sp, #236]
	mla r0, r0, r4, r3
	mla r0, r1, r2, r0
	str r0, [sp, #20]
	ldr r0, [sp, #84]
	str r0, [sp, #100]
	add r0, r0, #16
	str r0, [sp, #84]
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label279
	b label38
label572:
	ldr r8, [sp, #96]
	ldr r2, [r8, r0, lsl #2]
	mul r3, r0, r0
	mla r1, r2, r3, r1
	add r0, r0, #1
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label290
	b label572
label31:
	ldr r8, [sp, #96]
	ldr r0, [sp, #52]
	add r1, r8, r0, lsl #2
	ldr r8, [sp, #96]
	ldr r0, [sp, #52]
	ldr r10, [r8, r0, lsl #2]
	ldr r0, [sp, #52]
	mul r9, r0, r0
	str r9, [sp, #244]
	ldr r0, [sp, #52]
	add r2, r0, #1
	ldr r0, [r1, #4]
	str r0, [sp, #104]
	mul r9, r2, r2
	str r9, [sp, #68]
	ldr r0, [sp, #52]
	add r0, r0, #2
	ldr r9, [r1, #8]
	str r9, [sp, #148]
	mul r0, r0, r0
	str r0, [sp, #0]
	ldr r0, [sp, #52]
	add r0, r0, #3
	ldr r9, [r1, #12]
	str r9, [sp, #116]
	mul r2, r0, r0
	ldr r0, [sp, #52]
	add r0, r0, #4
	ldr r9, [r1, #16]
	str r9, [sp, #152]
	mul r0, r0, r0
	str r0, [sp, #92]
	ldr r0, [sp, #52]
	add r0, r0, #5
	ldr r9, [r1, #20]
	str r9, [sp, #108]
	mul r3, r0, r0
	ldr r0, [sp, #52]
	add r0, r0, #6
	ldr r9, [r1, #24]
	str r9, [sp, #156]
	mul r0, r0, r0
	str r0, [sp, #80]
	ldr r0, [sp, #52]
	add r0, r0, #7
	ldr r9, [r1, #28]
	str r9, [sp, #160]
	mul r4, r0, r0
	ldr r0, [sp, #52]
	add r0, r0, #8
	ldr r9, [r1, #32]
	str r9, [sp, #164]
	mul r5, r0, r0
	ldr r0, [sp, #52]
	add r0, r0, #9
	ldr r9, [r1, #36]
	str r9, [sp, #120]
	mul r6, r0, r0
	ldr r0, [sp, #52]
	add r7, r0, #10
	ldr r0, [r1, #40]
	str r0, [sp, #168]
	mul r9, r7, r7
	str r9, [sp, #224]
	ldr r0, [sp, #52]
	add r0, r0, #11
	ldr r9, [r1, #44]
	str r9, [sp, #60]
	mul r7, r0, r0
	ldr r0, [sp, #52]
	add r0, r0, #12
	ldr r9, [r1, #48]
	str r9, [sp, #172]
	mul r0, r0, r0
	str r0, [sp, #220]
	ldr r0, [sp, #52]
	add r0, r0, #13
	ldr r9, [r1, #52]
	str r9, [sp, #56]
	mul r8, r0, r0
	ldr r0, [sp, #52]
	add r9, r0, #14
	ldr r0, [r1, #56]
	str r0, [sp, #176]
	mul r9, r9, r9
	str r9, [sp, #32]
	ldr r0, [sp, #52]
	add r0, r0, #15
	ldr r1, [r1, #60]
	mul r11, r0, r0
	ldr r0, [sp, #16]
	ldr r9, [sp, #244]
	mla r10, r9, r10, r0
	ldr r0, [sp, #104]
	ldr r9, [sp, #68]
	mla r10, r0, r9, r10
	ldr r9, [sp, #148]
	ldr r0, [sp, #0]
	mla r0, r9, r0, r10
	ldr r9, [sp, #116]
	mla r2, r9, r2, r0
	ldr r9, [sp, #152]
	ldr r0, [sp, #92]
	mla r0, r9, r0, r2
	ldr r9, [sp, #108]
	mla r2, r9, r3, r0
	ldr r9, [sp, #156]
	ldr r0, [sp, #80]
	mla r0, r9, r0, r2
	ldr r9, [sp, #160]
	mla r0, r9, r4, r0
	ldr r9, [sp, #164]
	mla r0, r9, r5, r0
	ldr r9, [sp, #120]
	mla r2, r9, r6, r0
	ldr r0, [sp, #168]
	ldr r9, [sp, #224]
	mla r0, r0, r9, r2
	ldr r9, [sp, #60]
	mla r2, r9, r7, r0
	ldr r9, [sp, #172]
	ldr r0, [sp, #220]
	mla r0, r9, r0, r2
	ldr r9, [sp, #56]
	mla r2, r9, r8, r0
	ldr r0, [sp, #176]
	ldr r9, [sp, #32]
	mla r0, r0, r9, r2
	mla r0, r1, r11, r0
	str r0, [sp, #16]
	ldr r0, [sp, #72]
	str r0, [sp, #52]
	add r0, r0, #16
	str r0, [sp, #72]
	ldr r2, [sp, #28]
	cmp r0, r2
	bge label178
	b label31
label25:
	mov r0, #47
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #252
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label171:
	rsb r4, r4, #0
	b label25
