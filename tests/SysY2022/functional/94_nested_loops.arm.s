.arch armv7ve
.data
.bss
.align 4
arr1:
	.zero	57600
.align 4
arr2:
	.zero	107520
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #228
	bl getint
	add r4, r0, #1
	str r0, [sp, #176]
	bl getint
	str r0, [sp, #100]
	mov r2, r0
	add r0, r4, r0
	str r0, [sp, #168]
	ldr r0, [sp, #176]
	ldr r2, [sp, #100]
	add r0, r0, #2
	add r0, r2, r0
	str r0, [sp, #160]
	ldr r0, [sp, #176]
	add r0, r0, #3
	add r0, r2, r0
	str r0, [sp, #60]
	ldr r0, [sp, #176]
	add r0, r0, #4
	add r0, r2, r0
	str r0, [sp, #56]
	ldr r0, [sp, #176]
	add r0, r0, #5
	add r0, r2, r0
	str r0, [sp, #52]
	ldr r0, [sp, #176]
	add r0, r0, #6
	add r0, r2, r0
	str r0, [sp, #40]
	ldr r0, [sp, #176]
	add r0, r0, r2
	str r0, [sp, #44]
	bl getint
	str r0, [sp, #84]
	mov r1, r0
	bl getint
	str r0, [sp, #80]
	mov r1, r0
	bl getint
	str r0, [sp, #72]
	mov r1, r0
	bl getint
	str r0, [sp, #64]
	mov r1, r0
	bl getint
	str r0, [sp, #68]
	mov r1, r0
	bl getint
	str r0, [sp, #76]
	mov r1, r0
	bl getint
	mov r1, #0
	movw r2, #:lower16:arr1
	str r0, [sp, #88]
	mov r5, r0
	movt r2, #:upper16:arr1
	str r2, [sp, #92]
	str r1, [sp, #20]
label2:
	ldr r0, [sp, #176]
	ldr r1, [sp, #20]
	ldr r2, [sp, #100]
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	cmp r2, r1
	ldr r2, [sp, #92]
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	ldr r1, [sp, #20]
	mov r0, #5760
	mla r2, r1, r0, r2
	str r2, [sp, #8]
	beq label17
	mov r0, #0
	str r0, [sp, #0]
	cmp r0, #2
	add r1, r1, r0
	str r1, [sp, #216]
	mov r1, #2880
	mla r2, r0, r1, r2
	str r2, [sp, #208]
	bge label103
	b label464
label103:
	ldr r1, [sp, #20]
	add r1, r1, #1
	str r1, [sp, #20]
	b label2
label17:
	movw r2, #:lower16:arr2
	mov r1, #0
	movt r2, #:upper16:arr2
	str r2, [sp, #96]
	str r1, [sp, #156]
	mov r0, #10752
	cmp r1, #10
	mla r2, r1, r0, r2
	str r2, [sp, #112]
	bge label167
	b label166
label167:
	mov r4, #0
	str r4, [sp, #48]
	mov r0, r4
	b label32
label464:
	mov r0, #0
	str r0, [sp, #204]
label6:
	ldr r1, [sp, #216]
	ldr r0, [sp, #204]
	add r0, r1, r0
	mov r1, #960
	str r0, [sp, #196]
	ldr r2, [sp, #208]
	ldr r0, [sp, #204]
	cmp r0, #3
	mla r3, r0, r1, r2
	str r3, [sp, #192]
	bge label15
	mov r1, #0
	str r1, [sp, #184]
	cmp r1, #4
	bge label114
	b label10
label15:
	ldr r0, [sp, #0]
	add r0, r0, #1
	str r0, [sp, #0]
	ldr r1, [sp, #20]
	cmp r0, #2
	add r1, r1, r0
	str r1, [sp, #216]
	ldr r2, [sp, #8]
	mov r1, #2880
	mla r2, r0, r1, r2
	str r2, [sp, #208]
	bge label103
	b label464
label10:
	ldr r0, [sp, #44]
	mov r2, #240
	ldr r1, [sp, #184]
	add r1, r0, r1
	ldr r0, [sp, #196]
	add r5, r0, r1
	str r5, [sp, #172]
	ldr r0, [sp, #168]
	ldr r1, [sp, #184]
	add r1, r0, r1
	ldr r0, [sp, #196]
	add r4, r0, r1
	str r4, [sp, #164]
	ldr r0, [sp, #160]
	ldr r1, [sp, #184]
	add r1, r0, r1
	ldr r0, [sp, #196]
	add r4, r0, r1
	str r4, [sp, #108]
	ldr r0, [sp, #60]
	ldr r1, [sp, #184]
	add r1, r0, r1
	ldr r0, [sp, #196]
	add r4, r0, r1
	str r4, [sp, #120]
	ldr r0, [sp, #56]
	ldr r1, [sp, #184]
	add r1, r0, r1
	ldr r0, [sp, #196]
	add r4, r0, r1
	str r4, [sp, #132]
	ldr r0, [sp, #52]
	ldr r1, [sp, #184]
	add r1, r0, r1
	ldr r0, [sp, #196]
	add r4, r0, r1
	str r4, [sp, #144]
	ldr r0, [sp, #40]
	ldr r1, [sp, #184]
	add r1, r0, r1
	ldr r0, [sp, #196]
	ldr r3, [sp, #192]
	add r0, r0, r1
	ldr r1, [sp, #184]
	mla r1, r1, r2, r3
	mov r2, #0
label11:
	mov r3, #48
	ldr r5, [sp, #172]
	mul r4, r2, r3
	mla r3, r2, r3, r1
	add r5, r5, r2
	str r5, [r1, r4]
	ldr r4, [sp, #164]
	add r4, r4, r2
	str r4, [r3, #4]
	str r4, [r3, #8]
	ldr r4, [sp, #108]
	add r4, r4, r2
	str r4, [r3, #12]
	str r4, [r3, #16]
	ldr r4, [sp, #120]
	add r4, r4, r2
	str r4, [r3, #20]
	str r4, [r3, #24]
	ldr r4, [sp, #132]
	add r4, r4, r2
	str r4, [r3, #28]
	str r4, [r3, #32]
	ldr r4, [sp, #144]
	add r4, r4, r2
	str r4, [r3, #36]
	str r4, [r3, #40]
	add r4, r0, r2
	add r2, r2, #1
	str r4, [r3, #44]
	cmp r2, #5
	bge label13
	b label11
label13:
	ldr r1, [sp, #184]
	add r1, r1, #1
	str r1, [sp, #184]
	cmp r1, #4
	bge label114
	b label10
label166:
	mov r0, #0
	str r0, [sp, #116]
	ldr r1, [sp, #156]
	cmp r0, #2
	add r7, r1, r0
	mov r1, #5376
	str r7, [sp, #124]
	ldr r2, [sp, #112]
	mla r2, r0, r1, r2
	str r2, [sp, #136]
	bge label22
	str r0, [sp, #148]
	mov r1, #1792
	cmp r0, #3
	mla r10, r0, r1, r2
	str r10, [sp, #152]
	bge label31
	mov r1, #0
	cmp r1, #2
	bge label27
	b label28
label22:
	ldr r1, [sp, #156]
	add r1, r1, #1
	str r1, [sp, #156]
	mov r0, #10752
	ldr r2, [sp, #96]
	cmp r1, #10
	mla r2, r1, r0, r2
	str r2, [sp, #112]
	bge label167
	b label166
label27:
	ldr r0, [sp, #148]
	add r0, r0, #1
	str r0, [sp, #148]
	mov r1, #1792
	ldr r2, [sp, #136]
	cmp r0, #3
	mla r10, r0, r1, r2
	str r10, [sp, #152]
	bge label31
	mov r1, #0
	cmp r1, #2
	bge label27
	b label28
label31:
	ldr r0, [sp, #116]
	add r0, r0, #1
	str r0, [sp, #116]
	ldr r1, [sp, #156]
	cmp r0, #2
	add r7, r1, r0
	mov r1, #5376
	str r7, [sp, #124]
	ldr r2, [sp, #112]
	mla r2, r0, r1, r2
	str r2, [sp, #136]
	bge label22
	mov r0, #0
	str r0, [sp, #148]
	mov r1, #1792
	cmp r0, #3
	mla r10, r0, r1, r2
	str r10, [sp, #152]
	bge label31
	mov r1, #0
	cmp r1, #2
	bge label27
label28:
	add r0, r1, #6
	ldr r7, [sp, #124]
	add r2, r1, #5
	add r3, r1, #4
	add r4, r1, #3
	ldr r10, [sp, #152]
	add r5, r1, #2
	add r8, r1, #1
	mov r9, #896
	add r3, r7, r3
	add r4, r7, r4
	mla r9, r1, r9, r10
	add r0, r7, r0
	add r2, r7, r2
	add r5, r7, r5
	add r6, r7, r8
	mov r10, #0
	add r7, r7, r1
label29:
	mov r1, #224
	mul r11, r10, r1
	mla r1, r10, r1, r9
	add r10, r10, #1
	str r7, [r9, r11]
	cmp r10, #4
	str r6, [r1, #4]
	str r5, [r1, #8]
	str r4, [r1, #12]
	str r3, [r1, #16]
	str r2, [r1, #20]
	str r0, [r1, #24]
	str r7, [r1, #28]
	str r6, [r1, #32]
	str r5, [r1, #36]
	str r4, [r1, #40]
	str r3, [r1, #44]
	str r2, [r1, #48]
	str r0, [r1, #52]
	str r7, [r1, #56]
	str r6, [r1, #60]
	str r5, [r1, #64]
	str r4, [r1, #68]
	str r3, [r1, #72]
	str r2, [r1, #76]
	str r0, [r1, #80]
	str r7, [r1, #84]
	str r6, [r1, #88]
	str r5, [r1, #92]
	str r4, [r1, #96]
	str r3, [r1, #100]
	str r2, [r1, #104]
	str r0, [r1, #108]
	str r7, [r1, #112]
	str r6, [r1, #116]
	str r5, [r1, #120]
	str r4, [r1, #124]
	str r3, [r1, #128]
	str r2, [r1, #132]
	str r0, [r1, #136]
	str r7, [r1, #140]
	str r6, [r1, #144]
	str r5, [r1, #148]
	str r4, [r1, #152]
	str r3, [r1, #156]
	str r2, [r1, #160]
	str r0, [r1, #164]
	str r7, [r1, #168]
	str r6, [r1, #172]
	str r5, [r1, #176]
	str r4, [r1, #180]
	str r3, [r1, #184]
	str r2, [r1, #188]
	str r0, [r1, #192]
	str r7, [r1, #196]
	str r6, [r1, #200]
	str r5, [r1, #204]
	str r4, [r1, #208]
	str r3, [r1, #212]
	str r2, [r1, #216]
	str r0, [r1, #220]
	bge label263
	b label29
label263:
	mov r1, r8
	cmp r8, #2
	bge label27
	b label28
label114:
	ldr r0, [sp, #204]
	add r0, r0, #1
	str r0, [sp, #204]
	b label6
label32:
	mov r1, #5760
	ldr r2, [sp, #92]
	ldr r0, [sp, #48]
	cmp r0, #10
	mla r2, r0, r1, r2
	mov r1, #10752
	str r2, [sp, #36]
	ldr r2, [sp, #96]
	mla r2, r0, r1, r2
	str r2, [sp, #32]
	bge label35
	mov r0, #0
	str r0, [sp, #28]
	b label37
label40:
	ldr r0, [sp, #48]
	ldr r1, [sp, #84]
	add r0, r0, #1
	cmp r1, r0
	bgt label285
	b label35
label285:
	str r0, [sp, #48]
	b label32
label37:
	mov r1, #2880
	ldr r2, [sp, #36]
	ldr r0, [sp, #28]
	cmp r0, #100
	mla r2, r0, r1, r2
	mov r1, #5376
	str r2, [sp, #24]
	ldr r2, [sp, #32]
	mla r2, r0, r1, r2
	str r2, [sp, #16]
	bge label40
	mov r0, #0
	str r0, [sp, #12]
label42:
	mov r1, #960
	ldr r2, [sp, #24]
	ldr r0, [sp, #12]
	cmp r0, #1000
	mla r2, r0, r1, r2
	mov r1, #1792
	str r2, [sp, #4]
	ldr r2, [sp, #16]
	mla r2, r0, r1, r2
	str r2, [sp, #212]
	bge label45
	mov r0, #0
	str r0, [sp, #200]
	b label47
label298:
	str r0, [sp, #28]
	b label37
label47:
	mov r1, #240
	ldr r2, [sp, #4]
	ldr r0, [sp, #200]
	mla r2, r0, r1, r2
	mov r1, #896
	str r2, [sp, #188]
	ldr r2, [sp, #212]
	mla r2, r0, r1, r2
	movw r1, #10000
	cmp r0, r1
	str r2, [sp, #180]
	bge label64
	mov r0, #0
	str r0, [sp, #104]
label50:
	mov r1, #48
	ldr r2, [sp, #188]
	ldr r0, [sp, #104]
	mla r1, r0, r1, r2
	str r1, [sp, #128]
	ldr r2, [sp, #180]
	mov r1, #224
	mla r3, r0, r1, r2
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	str r3, [sp, #140]
	bge label62
	mov r0, #0
	ldr r1, [sp, #128]
	mov r2, #28
	mla r2, r0, r2, r3
	movw r3, #16960
	add r1, r1, r0, lsl #3
	movt r3, #15
	cmp r0, r3
	bge label60
label477:
	mov r3, #0
	b label56
label53:
	ldr r1, [sp, #128]
	mov r2, #28
	ldr r3, [sp, #140]
	mla r2, r0, r2, r3
	movw r3, #16960
	add r1, r1, r0, lsl #3
	movt r3, #15
	cmp r0, r3
	bge label60
	b label477
label56:
	ldr r5, [r1, r3, lsl #2]
	movw r6, #817
	movw r7, #19413
	movt r7, #41070
	smmla r7, r4, r7, r4
	asr r8, r7, #9
	add r7, r8, r7, lsr #31
	mls r4, r7, r6, r4
	add r4, r5, r4
	ldr r5, [r2, r3, lsl #2]
	add r3, r3, #1
	add r4, r4, r5
	ldr r5, [sp, #88]
	cmp r5, r3
	bgt label56
	add r0, r0, #1
	ldr r1, [sp, #76]
	cmp r1, r0
	bgt label53
	ldr r0, [sp, #104]
	ldr r1, [sp, #68]
	add r0, r0, #1
	cmp r1, r0
	bgt label346
	ldr r0, [sp, #200]
	ldr r1, [sp, #64]
	add r0, r0, #1
	cmp r1, r0
	bgt label351
	ldr r0, [sp, #12]
	ldr r1, [sp, #72]
	add r0, r0, #1
	cmp r1, r0
	bgt label356
	ldr r0, [sp, #28]
	ldr r1, [sp, #80]
	add r0, r0, #1
	cmp r1, r0
	bgt label298
	ldr r0, [sp, #48]
	ldr r1, [sp, #84]
	add r0, r0, #1
	cmp r1, r0
	bgt label285
	b label35
label346:
	str r0, [sp, #104]
	b label50
label62:
	ldr r0, [sp, #200]
	ldr r1, [sp, #64]
	add r0, r0, #1
	cmp r1, r0
	bgt label351
	ldr r0, [sp, #12]
	ldr r1, [sp, #72]
	add r0, r0, #1
	cmp r1, r0
	bgt label356
	ldr r0, [sp, #28]
	ldr r1, [sp, #80]
	add r0, r0, #1
	cmp r1, r0
	bgt label298
	ldr r0, [sp, #48]
	ldr r1, [sp, #84]
	add r0, r0, #1
	cmp r1, r0
	bgt label285
	b label35
label351:
	str r0, [sp, #200]
	b label47
label64:
	ldr r0, [sp, #12]
	ldr r1, [sp, #72]
	add r0, r0, #1
	cmp r1, r0
	bgt label356
	ldr r0, [sp, #28]
	ldr r1, [sp, #80]
	add r0, r0, #1
	cmp r1, r0
	bgt label298
	ldr r0, [sp, #48]
	ldr r1, [sp, #84]
	add r0, r0, #1
	cmp r1, r0
	bgt label285
	b label35
label356:
	str r0, [sp, #12]
	b label42
label60:
	ldr r0, [sp, #104]
	ldr r1, [sp, #68]
	add r0, r0, #1
	cmp r1, r0
	bgt label346
	ldr r0, [sp, #200]
	ldr r1, [sp, #64]
	add r0, r0, #1
	cmp r1, r0
	bgt label351
	ldr r0, [sp, #12]
	ldr r1, [sp, #72]
	add r0, r0, #1
	cmp r1, r0
	bgt label356
	ldr r0, [sp, #28]
	ldr r1, [sp, #80]
	add r0, r0, #1
	cmp r1, r0
	bgt label298
	ldr r0, [sp, #48]
	ldr r1, [sp, #84]
	add r0, r0, #1
	cmp r1, r0
	bgt label285
	b label35
label45:
	ldr r0, [sp, #28]
	ldr r1, [sp, #80]
	add r0, r0, #1
	cmp r1, r0
	bgt label298
	ldr r0, [sp, #48]
	ldr r1, [sp, #84]
	add r0, r0, #1
	cmp r1, r0
	bgt label285
label35:
	mov r0, r4
	add sp, sp, #228
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
