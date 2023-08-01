.arch armv7ve
.data
.bss
.align 8
arr1:
	.zero	57600
.align 8
arr2:
	.zero	107520
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #212
	bl getint
	mov invalid, r0
	add r4, invalid, #1
	vstr invalid, [sp, #100]
	bl getint
	str r0, [sp, #104]
	mov r1, r0
	add r1, r4, r0
	add r0, invalid, #2
	str r1, [sp, #96]
	ldr r1, [sp, #104]
	add r1, r1, r0
	add r0, invalid, #3
	str r1, [sp, #92]
	ldr r1, [sp, #104]
	add r1, r1, r0
	add r0, invalid, #4
	str r1, [sp, #144]
	ldr r1, [sp, #104]
	add r1, r1, r0
	add r0, invalid, #5
	str r1, [sp, #148]
	ldr r1, [sp, #104]
	add r1, r1, r0
	add r0, invalid, #6
	str r1, [sp, #152]
	ldr r1, [sp, #104]
	add r1, r1, r0
	add r0, invalid, #7
	str r1, [sp, #156]
	ldr r1, [sp, #104]
	add r1, r1, r0
	add r0, invalid, #8
	str r1, [sp, #160]
	ldr r1, [sp, #104]
	add r1, r1, r0
	add r0, invalid, #9
	str r1, [sp, #164]
	ldr r1, [sp, #104]
	add r2, r1, r0
	add r0, invalid, #10
	str r2, [sp, #168]
	add r3, r1, r0
	add r1, invalid, r1
	str r3, [sp, #172]
	str r1, [sp, #176]
	bl getint
	str r0, [sp, #140]
	mov r2, r0
	bl getint
	str r0, [sp, #136]
	mov r2, r0
	bl getint
	str r0, [sp, #132]
	mov r2, r0
	bl getint
	str r0, [sp, #128]
	mov r2, r0
	bl getint
	str r0, [sp, #124]
	mov r2, r0
	bl getint
	str r0, [sp, #120]
	mov r1, r0
	bl getint
	str r0, [sp, #116]
	mov r1, r0
	movw r0, #:lower16:arr1
	movt r0, #:upper16:arr1
	str r0, [sp, #112]
	mov r2, r0
	mov r0, #0
	str r0, [sp, #188]
label2:
	vldr invalid, [sp, #100]
	mov r2, #0
	ldr r0, [sp, #188]
	ldr r1, [sp, #104]
	cmp invalid, r0
	movwgt r2, #1
	cmp r1, r0
	mov r1, #5760
	mov r0, #0
	movwgt r0, #1
	ands r0, r2, r0
	ldr r2, [sp, #112]
	ldr r0, [sp, #188]
	mla r2, r0, r1, r2
	str r2, [sp, #200]
	bne label100
	b label99
label106:
	ldr r0, [sp, #188]
	add r0, r0, #1
	str r0, [sp, #188]
	b label2
label100:
	mov r1, #0
	str r1, [sp, #204]
label4:
	mov r0, #2880
	ldr r2, [sp, #200]
	ldr r1, [sp, #204]
	cmp r1, #2
	mla r0, r1, r0, r2
	str r0, [sp, #84]
	ldr r0, [sp, #188]
	add r0, r0, r1
	str r0, [sp, #76]
	bge label106
	mov r0, #0
	str r0, [sp, #72]
label6:
	ldr r0, [sp, #72]
	cmp r0, #3
	bge label110
	ldr r1, [sp, #176]
	add r1, r1, r0
	ldr r0, [sp, #76]
	add r5, r0, r1
	str r5, [sp, #68]
	ldr r1, [sp, #96]
	ldr r0, [sp, #72]
	add r1, r1, r0
	ldr r0, [sp, #76]
	add r5, r0, r1
	str r5, [sp, #60]
	ldr r1, [sp, #92]
	ldr r0, [sp, #72]
	add r1, r1, r0
	ldr r0, [sp, #76]
	add r5, r0, r1
	str r5, [sp, #52]
	ldr r1, [sp, #144]
	ldr r0, [sp, #72]
	add r1, r1, r0
	ldr r0, [sp, #76]
	add r5, r0, r1
	str r5, [sp, #44]
	ldr r1, [sp, #148]
	ldr r0, [sp, #72]
	add r1, r1, r0
	ldr r0, [sp, #76]
	add r5, r0, r1
	str r5, [sp, #40]
	ldr r1, [sp, #152]
	ldr r0, [sp, #72]
	add r1, r1, r0
	ldr r0, [sp, #76]
	add r5, r0, r1
	str r5, [sp, #32]
	ldr r1, [sp, #156]
	ldr r0, [sp, #72]
	add r1, r1, r0
	ldr r0, [sp, #76]
	add r5, r0, r1
	str r5, [sp, #24]
	ldr r1, [sp, #160]
	ldr r0, [sp, #72]
	add r1, r1, r0
	ldr r0, [sp, #76]
	add r7, r0, r1
	str r7, [sp, #0]
	ldr r1, [sp, #164]
	ldr r0, [sp, #72]
	add r1, r1, r0
	ldr r0, [sp, #76]
	ldr r2, [sp, #168]
	add r1, r0, r1
	ldr r0, [sp, #72]
	add r2, r2, r0
	ldr r0, [sp, #76]
	ldr r3, [sp, #172]
	add r2, r0, r2
	ldr r0, [sp, #72]
	add r3, r3, r0
	ldr r0, [sp, #76]
	add r3, r0, r3
	ldr r0, [sp, #72]
	rsb r4, r0, r0, lsl #4
	ldr r0, [sp, #84]
	add r4, r0, r4, lsl #6
	mov r0, #0
label9:
	rsb r5, r0, r0, lsl #4
	add r6, r4, r5, lsl #4
	ldr r5, [sp, #68]
	add r5, r5, r0
	str r5, [r6, #0]
	ldr r5, [sp, #60]
	add r7, r5, r0
	str r7, [r6, #4]
	str r7, [r6, #8]
	ldr r5, [sp, #52]
	add r8, r5, r0
	str r8, [r6, #12]
	str r8, [r6, #16]
	ldr r5, [sp, #44]
	add r9, r5, r0
	str r9, [r6, #20]
	str r9, [r6, #24]
	ldr r5, [sp, #40]
	add r10, r5, r0
	str r10, [r6, #28]
	str r10, [r6, #32]
	ldr r5, [sp, #32]
	add r11, r5, r0
	str r11, [r6, #36]
	str r11, [r6, #40]
	ldr r5, [sp, #24]
	add r5, r5, r0
	str r5, [r6, #44]
	str r7, [r6, #48]
	str r8, [r6, #52]
	str r8, [r6, #56]
	str r9, [r6, #60]
	str r9, [r6, #64]
	str r10, [r6, #68]
	str r10, [r6, #72]
	str r11, [r6, #76]
	str r11, [r6, #80]
	str r5, [r6, #84]
	str r5, [r6, #88]
	ldr r7, [sp, #0]
	add r7, r7, r0
	str r7, [r6, #92]
	str r8, [r6, #96]
	add r8, r1, r0
	str r9, [r6, #100]
	str r9, [r6, #104]
	str r10, [r6, #108]
	str r10, [r6, #112]
	str r11, [r6, #116]
	str r11, [r6, #120]
	str r5, [r6, #124]
	str r5, [r6, #128]
	str r7, [r6, #132]
	str r7, [r6, #136]
	str r8, [r6, #140]
	str r9, [r6, #144]
	add r9, r2, r0
	str r10, [r6, #148]
	str r10, [r6, #152]
	str r11, [r6, #156]
	str r11, [r6, #160]
	str r5, [r6, #164]
	str r5, [r6, #168]
	str r7, [r6, #172]
	str r7, [r6, #176]
	str r8, [r6, #180]
	str r8, [r6, #184]
	str r9, [r6, #188]
	str r10, [r6, #192]
	str r11, [r6, #196]
	str r11, [r6, #200]
	str r5, [r6, #204]
	str r5, [r6, #208]
	add r5, r3, r0
	str r7, [r6, #212]
	add r0, r0, #1
	str r7, [r6, #216]
	cmp r0, #4
	str r8, [r6, #220]
	str r8, [r6, #224]
	str r9, [r6, #228]
	str r9, [r6, #232]
	str r5, [r6, #236]
	blt label9
	ldr r0, [sp, #72]
	add r0, r0, #1
	str r0, [sp, #72]
	b label6
label99:
	mov r1, #0
	str r1, [sp, #28]
label14:
	movw r0, #:lower16:arr2
	movt r0, #:upper16:arr2
	str r0, [sp, #108]
	mov r2, r0
	ldr r1, [sp, #28]
	cmp r1, #10
	blt label221
	b label220
label317:
	ldr r0, [sp, #16]
	str r0, [sp, #28]
	mov r1, r0
	b label14
label110:
	ldr r1, [sp, #204]
	add r0, r1, #1
	str r0, [sp, #204]
	mov r1, r0
	b label4
label221:
	mov r0, #0
	str r0, [sp, #12]
label50:
	ldr r1, [sp, #28]
	add r0, r1, #1
	str r0, [sp, #16]
	ldr r0, [sp, #12]
	cmp r0, #2
	blt label318
	b label317
label321:
	ldr r0, [sp, #12]
	add r0, r0, #1
	str r0, [sp, #12]
	b label50
label220:
	mov r0, #0
	str r0, [sp, #180]
	mov r1, r0
label16:
	mov r3, #5760
	ldr r2, [sp, #112]
	ldr r1, [sp, #180]
	cmp r1, #10
	mla r2, r1, r3, r2
	mov r3, #10752
	str r2, [sp, #184]
	ldr r2, [sp, #108]
	mla r2, r1, r3, r2
	str r2, [sp, #192]
	blt label229
	b label19
label48:
	ldr r1, [sp, #180]
	ldr r2, [sp, #140]
	add r1, r1, #1
	cmp r2, r1
	ble label19
	str r1, [sp, #180]
	b label16
label229:
	mov r1, #0
	str r1, [sp, #196]
label21:
	mov r3, #2880
	ldr r2, [sp, #184]
	ldr r1, [sp, #196]
	mla r1, r1, r3, r2
	mov r3, #5376
	str r1, [sp, #88]
	ldr r2, [sp, #192]
	ldr r1, [sp, #196]
	mla r1, r1, r3, r2
	str r1, [sp, #80]
	ldr r1, [sp, #196]
	cmp r1, #100
	bge label48
	mov r1, #0
	str r1, [sp, #64]
label24:
	ldr r1, [sp, #64]
	rsb r2, r1, r1, lsl #4
	ldr r1, [sp, #88]
	add r2, r1, r2, lsl #6
	str r2, [sp, #56]
	ldr r1, [sp, #64]
	rsb r2, r1, r1, lsl #3
	ldr r1, [sp, #80]
	add r2, r1, r2, lsl #8
	str r2, [sp, #48]
	ldr r1, [sp, #64]
	cmp r1, #1000
	bge label46
	mov r1, #0
	str r1, [sp, #36]
	b label27
label19:
	add sp, sp, #212
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label27:
	ldr r1, [sp, #36]
	ldr r2, [sp, #56]
	rsb r1, r1, r1, lsl #4
	add r1, r2, r1, lsl #4
	str r1, [sp, #20]
	ldr r1, [sp, #36]
	ldr r2, [sp, #48]
	rsb r1, r1, r1, lsl #3
	add r1, r2, r1, lsl #7
	movw r2, #10000
	str r1, [sp, #4]
	ldr r1, [sp, #36]
	cmp r1, r2
	blt label253
	b label30
label44:
	ldr r1, [sp, #36]
	ldr r2, [sp, #128]
	add r1, r1, #1
	cmp r2, r1
	ble label30
	str r1, [sp, #36]
	b label27
label253:
	mov r4, #0
label32:
	add r2, r4, r4, lsl #1
	ldr r1, [sp, #20]
	add r5, r1, r2, lsl #4
	ldr r1, [sp, #4]
	rsb r2, r4, r4, lsl #3
	add r6, r1, r2, lsl #5
	movw r1, #34464
	movt r1, #1
	cmp r4, r1
	bge label44
	mov r2, #0
label35:
	add r7, r5, r2, lsl #3
	rsb r1, r2, r2, lsl #3
	add r8, r6, r1, lsl #2
	movw r1, #16960
	movt r1, #15
	cmp r2, r1
	blt label274
	b label42
label41:
	add r2, r2, #1
	ldr r1, [sp, #120]
	cmp r1, r2
	bgt label35
label42:
	add r1, r4, #1
	ldr r2, [sp, #124]
	cmp r2, r1
	ble label44
	mov r4, r1
	b label32
label30:
	ldr r1, [sp, #64]
	ldr r2, [sp, #132]
	add r1, r1, #1
	cmp r2, r1
	ble label46
	str r1, [sp, #64]
	b label24
label46:
	ldr r1, [sp, #196]
	ldr r2, [sp, #136]
	add r1, r1, #1
	cmp r2, r1
	ble label48
	str r1, [sp, #196]
	b label21
label274:
	mov r1, #0
label38:
	ldr r3, [r7, r1, lsl #2]
	movw r9, #19413
	movt r9, #41070
	smmla r9, r0, r9, r0
	asr r10, r9, #9
	add r9, r10, r9, lsr #31
	movw r10, #817
	mls r0, r9, r10, r0
	add r0, r3, r0
	ldr r3, [r8, r1, lsl #2]
	add r0, r0, r3
	add r3, r1, #1
	ldr r1, [sp, #116]
	cmp r1, r3
	ble label41
	mov r1, r3
	b label38
label318:
	mov r0, #0
	str r0, [sp, #8]
label52:
	ldr r0, [sp, #8]
	cmp r0, #3
	blt label322
	b label321
label57:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	b label52
label322:
	mov r3, #0
label55:
	cmp r3, #2
	bge label57
	mov r0, #10752
	ldr r2, [sp, #108]
	ldr r1, [sp, #28]
	mla r1, r1, r0, r2
	ldr r0, [sp, #12]
	mov r2, #5376
	mla r1, r0, r2, r1
	ldr r0, [sp, #8]
	rsb r0, r0, r0, lsl #3
	add r0, r1, r0, lsl #8
	rsb r1, r3, r3, lsl #3
	add r2, r0, r1, lsl #7
	ldr r1, [sp, #28]
	ldr r0, [sp, #12]
	add r1, r1, #2
	add r0, r0, r1
	ldr r1, [sp, #28]
	add r4, r3, r0
	ldr r0, [sp, #12]
	add r1, r1, #3
	add r0, r0, r1
	ldr r1, [sp, #28]
	add r5, r3, r0
	ldr r0, [sp, #12]
	add r1, r1, #4
	add r0, r0, r1
	ldr r1, [sp, #28]
	add r6, r3, r0
	ldr r0, [sp, #12]
	add r1, r1, #5
	add r0, r0, r1
	ldr r1, [sp, #28]
	add r7, r3, r0
	ldr r0, [sp, #12]
	add r1, r1, #6
	add r0, r0, r1
	ldr r1, [sp, #28]
	add r8, r3, r0
	ldr r0, [sp, #12]
	add r0, r1, r0
	add r1, r3, r0
	ldr r0, [sp, #12]
	add r9, r0, r3
	ldr r0, [sp, #16]
	add r10, r0, r9
	mov r0, #0
label59:
	rsb r9, r0, r0, lsl #3
	add r0, r0, #1
	add r9, r2, r9, lsl #5
	cmp r0, #4
	str r1, [r9, #0]
	str r10, [r9, #4]
	str r4, [r9, #8]
	str r5, [r9, #12]
	str r6, [r9, #16]
	str r7, [r9, #20]
	str r8, [r9, #24]
	str r1, [r9, #28]
	str r10, [r9, #32]
	str r4, [r9, #36]
	str r5, [r9, #40]
	str r6, [r9, #44]
	str r7, [r9, #48]
	str r8, [r9, #52]
	str r1, [r9, #56]
	str r10, [r9, #60]
	str r4, [r9, #64]
	str r5, [r9, #68]
	str r6, [r9, #72]
	str r7, [r9, #76]
	str r8, [r9, #80]
	str r1, [r9, #84]
	str r10, [r9, #88]
	str r4, [r9, #92]
	str r5, [r9, #96]
	str r6, [r9, #100]
	str r7, [r9, #104]
	str r8, [r9, #108]
	str r1, [r9, #112]
	str r10, [r9, #116]
	str r4, [r9, #120]
	str r5, [r9, #124]
	str r6, [r9, #128]
	str r7, [r9, #132]
	str r8, [r9, #136]
	str r1, [r9, #140]
	str r10, [r9, #144]
	str r4, [r9, #148]
	str r5, [r9, #152]
	str r6, [r9, #156]
	str r7, [r9, #160]
	str r8, [r9, #164]
	str r1, [r9, #168]
	str r10, [r9, #172]
	str r4, [r9, #176]
	str r5, [r9, #180]
	str r6, [r9, #184]
	str r7, [r9, #188]
	str r8, [r9, #192]
	str r1, [r9, #196]
	str r10, [r9, #200]
	str r4, [r9, #204]
	str r5, [r9, #208]
	str r6, [r9, #212]
	str r7, [r9, #216]
	str r8, [r9, #220]
	blt label59
	add r0, r3, #1
	mov r3, r0
	b label55
