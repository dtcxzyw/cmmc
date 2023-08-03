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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #300
	bl getint
	add r4, r0, #1
	str r0, [sp, #152]
	bl getint
	str r0, [sp, #148]
	add r1, r4, r0
	str r1, [sp, #156]
	ldr r0, [sp, #152]
	ldr r2, [sp, #148]
	add r0, r0, #2
	add r1, r2, r0
	str r1, [sp, #160]
	ldr r0, [sp, #152]
	add r0, r0, #3
	add r1, r2, r0
	str r1, [sp, #164]
	ldr r0, [sp, #152]
	add r0, r0, #4
	add r1, r2, r0
	str r1, [sp, #168]
	ldr r0, [sp, #152]
	add r0, r0, #5
	add r1, r2, r0
	str r1, [sp, #116]
	ldr r0, [sp, #152]
	add r0, r0, #6
	add r1, r2, r0
	str r1, [sp, #112]
	ldr r0, [sp, #152]
	add r0, r0, #7
	add r1, r2, r0
	str r1, [sp, #108]
	ldr r0, [sp, #152]
	add r0, r0, #8
	add r1, r2, r0
	str r1, [sp, #104]
	ldr r0, [sp, #152]
	add r0, r0, #9
	add r1, r2, r0
	str r1, [sp, #100]
	ldr r0, [sp, #152]
	add r0, r0, #10
	add r1, r2, r0
	str r1, [sp, #92]
	ldr r0, [sp, #152]
	add r1, r0, r2
	str r1, [sp, #96]
	bl getint
	str r0, [sp, #140]
	mov r1, r0
	bl getint
	str r0, [sp, #132]
	mov r1, r0
	bl getint
	str r0, [sp, #124]
	mov r1, r0
	bl getint
	str r0, [sp, #120]
	mov r1, r0
	bl getint
	str r0, [sp, #128]
	mov r1, r0
	bl getint
	str r0, [sp, #136]
	mov r1, r0
	bl getint
	mov r1, #0
	movw r2, #:lower16:arr1
	movt r2, #:upper16:arr1
	str r0, [sp, #144]
	mov r5, r0
	mov r3, r2
	str r2, [sp, #76]
	str r1, [sp, #68]
.p2align 4
label2:
	ldr r0, [sp, #152]
	ldr r1, [sp, #68]
	ldr r2, [sp, #148]
	cmp r0, r1
	mov r0, #0
	movwgt r0, #1
	cmp r2, r1
	mov r1, #0
	movwgt r1, #1
	ands r0, r0, r1
	bne label85
	b label5
.p2align 4
label89:
	ldr r1, [sp, #68]
	ldr r3, [sp, #76]
	add r1, r1, #1
	add r3, r3, #5760
	str r3, [sp, #76]
	str r1, [sp, #68]
	b label2
.p2align 4
label85:
	ldr r3, [sp, #76]
	mov r0, #0
	str r3, [sp, #56]
	str r0, [sp, #172]
	ldr r1, [sp, #68]
	add r0, r1, r0
	str r0, [sp, #180]
	ldr r0, [sp, #172]
	cmp r0, #2
	bge label89
.p2align 4
label90:
	ldr r3, [sp, #56]
	mov r0, #0
	str r3, [sp, #188]
	str r0, [sp, #192]
	cmp r0, #3
	blt label94
.p2align 4
label338:
	ldr r0, [sp, #172]
	ldr r3, [sp, #56]
	add r0, r0, #1
	add r3, r3, #2880
	str r3, [sp, #56]
	str r0, [sp, #172]
	ldr r1, [sp, #68]
	add r0, r1, r0
	str r0, [sp, #180]
	ldr r0, [sp, #172]
	cmp r0, #2
	blt label90
	b label89
.p2align 4
label94:
	ldr r1, [sp, #96]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	str r1, [sp, #200]
	ldr r1, [sp, #156]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	str r1, [sp, #204]
	ldr r1, [sp, #160]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	str r1, [sp, #212]
	ldr r1, [sp, #164]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	str r1, [sp, #220]
	ldr r1, [sp, #168]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	str r1, [sp, #224]
	ldr r1, [sp, #116]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r2, r0, r1
	str r2, [sp, #232]
	ldr r1, [sp, #112]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r3, r0, r1
	str r3, [sp, #268]
	ldr r1, [sp, #108]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r3, r0, r1
	str r3, [sp, #280]
	ldr r1, [sp, #104]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r3, r0, r1
	str r3, [sp, #48]
	ldr r1, [sp, #100]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r3, r0, r1
	str r3, [sp, #36]
	ldr r1, [sp, #92]
	ldr r0, [sp, #192]
	add r1, r1, r0
	ldr r0, [sp, #180]
	add r1, r0, r1
	mov r0, #0
	str r1, [sp, #12]
	ldr r3, [sp, #188]
	str r3, [sp, #4]
	b label95
.p2align 4
label98:
	ldr r0, [sp, #192]
	ldr r3, [sp, #188]
	add r0, r0, #1
	add r3, r3, #960
	cmp r0, #3
	str r3, [sp, #188]
	str r0, [sp, #192]
	blt label94
	b label338
.p2align 4
label95:
	ldr r1, [sp, #200]
	ldr r3, [sp, #4]
	add r1, r1, r0
	str r1, [r3, #0]
	ldr r1, [sp, #204]
	add r6, r1, r0
	str r6, [r3, #4]
	str r6, [r3, #8]
	ldr r1, [sp, #212]
	add r7, r1, r0
	str r7, [r3, #12]
	str r7, [r3, #16]
	ldr r1, [sp, #220]
	add r5, r1, r0
	str r5, [r3, #20]
	str r5, [r3, #24]
	ldr r1, [sp, #224]
	add r1, r1, r0
	str r1, [r3, #28]
	str r1, [r3, #32]
	ldr r2, [sp, #232]
	add r2, r2, r0
	str r2, [r3, #36]
	str r2, [r3, #40]
	ldr r3, [sp, #268]
	add r4, r3, r0
	ldr r3, [sp, #4]
	str r4, [r3, #44]
	str r6, [r3, #48]
	str r7, [r3, #52]
	str r7, [r3, #56]
	str r5, [r3, #60]
	str r5, [r3, #64]
	str r1, [r3, #68]
	str r1, [r3, #72]
	str r2, [r3, #76]
	str r2, [r3, #80]
	str r4, [r3, #84]
	str r4, [r3, #88]
	ldr r3, [sp, #280]
	add r6, r3, r0
	ldr r3, [sp, #4]
	str r6, [r3, #92]
	str r7, [r3, #96]
	str r5, [r3, #100]
	str r5, [r3, #104]
	str r1, [r3, #108]
	str r1, [r3, #112]
	str r2, [r3, #116]
	str r2, [r3, #120]
	str r4, [r3, #124]
	str r4, [r3, #128]
	str r6, [r3, #132]
	str r6, [r3, #136]
	ldr r3, [sp, #48]
	add r7, r3, r0
	ldr r3, [sp, #4]
	str r7, [r3, #140]
	str r5, [r3, #144]
	str r1, [r3, #148]
	str r1, [r3, #152]
	str r2, [r3, #156]
	str r2, [r3, #160]
	str r4, [r3, #164]
	str r4, [r3, #168]
	str r6, [r3, #172]
	str r6, [r3, #176]
	str r7, [r3, #180]
	str r7, [r3, #184]
	ldr r3, [sp, #36]
	add r5, r3, r0
	ldr r3, [sp, #4]
	str r5, [r3, #188]
	str r1, [r3, #192]
	str r2, [r3, #196]
	str r2, [r3, #200]
	str r4, [r3, #204]
	str r4, [r3, #208]
	str r6, [r3, #212]
	str r6, [r3, #216]
	str r7, [r3, #220]
	str r7, [r3, #224]
	str r5, [r3, #228]
	str r5, [r3, #232]
	ldr r1, [sp, #12]
	add r1, r1, r0
	add r0, r0, #1
	str r1, [r3, #236]
	cmp r0, #4
	bge label98
	add r3, r3, #240
	str r3, [sp, #4]
	b label95
label5:
	movw r1, #:lower16:arr2
	movt r1, #:upper16:arr2
	str r1, [sp, #240]
	mov r4, r1
	mov r1, #0
	str r1, [sp, #264]
.p2align 4
label6:
	ldr r1, [sp, #264]
	add r1, r1, #1
	str r1, [sp, #236]
	ldr r1, [sp, #264]
	add r1, r1, #2
	str r1, [sp, #260]
	ldr r1, [sp, #264]
	add r1, r1, #3
	str r1, [sp, #256]
	ldr r1, [sp, #264]
	add r1, r1, #4
	str r1, [sp, #252]
	ldr r1, [sp, #264]
	add r1, r1, #5
	str r1, [sp, #248]
	ldr r1, [sp, #264]
	add r1, r1, #6
	str r1, [sp, #244]
	ldr r1, [sp, #264]
	cmp r1, #10
	blt label9
	b label148
.p2align 4
label13:
	ldr r4, [sp, #240]
	add r4, r4, #10752
	str r4, [sp, #240]
	ldr r1, [sp, #236]
	str r1, [sp, #264]
	b label6
label148:
	movw r2, #:lower16:arr1
	movt r2, #:upper16:arr1
	mov r4, #0
	str r2, [sp, #88]
	mov r0, r4
	str r4, [sp, #84]
label31:
	mov r2, #10752
	movw r1, #:lower16:arr2
	movt r1, #:upper16:arr2
	ldr r0, [sp, #84]
	cmp r0, #10
	mla r2, r0, r2, r1
	str r2, [sp, #80]
	bge label83
	ldr r2, [sp, #88]
	mov r0, #0
	str r2, [sp, #72]
	str r0, [sp, #64]
label36:
	mov r1, #5376
	ldr r2, [sp, #80]
	ldr r0, [sp, #64]
	cmp r0, #100
	mla r1, r0, r1, r2
	str r1, [sp, #60]
	bge label40
	ldr r2, [sp, #72]
	mov r0, #0
	str r2, [sp, #176]
	str r0, [sp, #184]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #196]
	ldr r0, [sp, #184]
	cmp r0, #1000
	bge label48
.p2align 4
label51:
	ldr r2, [sp, #176]
	mov r0, #0
	str r2, [sp, #208]
	str r0, [sp, #216]
	ldr r1, [sp, #196]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #228]
	ldr r0, [sp, #216]
	movw r1, #10000
	cmp r0, r1
	bge label56
.p2align 4
label59:
	ldr r2, [sp, #208]
	mov r0, #0
	str r2, [sp, #272]
	str r0, [sp, #52]
	ldr r1, [sp, #228]
	rsb r0, r0, r0, lsl #3
	add r2, r1, r0, lsl #5
	movw r1, #34464
	movt r1, #1
	str r2, [sp, #28]
	ldr r0, [sp, #52]
	cmp r0, r1
	bge label80
.p2align 4
label64:
	ldr r2, [sp, #272]
	mov r0, #0
	str r2, [sp, #8]
	rsb r1, r0, r0, lsl #3
	ldr r2, [sp, #28]
	add r1, r2, r1, lsl #2
	movw r2, #16960
	movt r2, #15
	cmp r0, r2
	bge label77
.p2align 4
label69:
	ldr r2, [sp, #8]
	mov r3, #0
.p2align 4
label70:
	ldr r5, [r2, #0]
	movw r6, #19413
	movt r6, #41070
	smmla r6, r4, r6, r4
	asr r7, r6, #9
	add r6, r7, r6, lsr #31
	movw r7, #817
	mls r4, r6, r7, r4
	add r4, r5, r4
	ldr r5, [r1, r3, lsl #2]
	add r3, r3, #1
	add r4, r4, r5
	ldr r5, [sp, #144]
	cmp r5, r3
	bgt label308
	add r0, r0, #1
	ldr r1, [sp, #136]
	cmp r1, r0
	bgt label75
.p2align 4
label77:
	ldr r0, [sp, #52]
	ldr r1, [sp, #128]
	add r0, r0, #1
	cmp r1, r0
	bgt label79
.p2align 4
label80:
	ldr r0, [sp, #216]
	ldr r1, [sp, #120]
	add r0, r0, #1
	cmp r1, r0
	ble label56
	ldr r2, [sp, #208]
	add r2, r2, #240
	str r2, [sp, #208]
	str r0, [sp, #216]
	ldr r1, [sp, #196]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #7
	str r1, [sp, #228]
	ldr r0, [sp, #216]
	movw r1, #10000
	cmp r0, r1
	blt label59
	b label56
.p2align 4
label75:
	ldr r2, [sp, #8]
	rsb r1, r0, r0, lsl #3
	add r2, r2, #8
	str r2, [sp, #8]
	ldr r2, [sp, #28]
	add r1, r2, r1, lsl #2
	movw r2, #16960
	movt r2, #15
	cmp r0, r2
	blt label69
	b label77
.p2align 4
label79:
	ldr r2, [sp, #272]
	add r2, r2, #48
	str r2, [sp, #272]
	str r0, [sp, #52]
	ldr r1, [sp, #228]
	rsb r0, r0, r0, lsl #3
	add r2, r1, r0, lsl #5
	movw r1, #34464
	movt r1, #1
	str r2, [sp, #28]
	ldr r0, [sp, #52]
	cmp r0, r1
	blt label64
	b label80
.p2align 4
label56:
	ldr r0, [sp, #184]
	ldr r1, [sp, #124]
	add r0, r0, #1
	cmp r1, r0
	ble label48
	ldr r2, [sp, #176]
	add r2, r2, #960
	str r2, [sp, #176]
	str r0, [sp, #184]
	ldr r1, [sp, #60]
	rsb r0, r0, r0, lsl #3
	add r1, r1, r0, lsl #8
	str r1, [sp, #196]
	ldr r0, [sp, #184]
	cmp r0, #1000
	blt label51
label48:
	ldr r0, [sp, #64]
	ldr r1, [sp, #132]
	add r0, r0, #1
	cmp r1, r0
	ble label40
	ldr r2, [sp, #72]
	add r2, r2, #2880
	str r2, [sp, #72]
	str r0, [sp, #64]
	b label36
label40:
	ldr r0, [sp, #84]
	ldr r1, [sp, #140]
	add r0, r0, #1
	cmp r1, r0
	ble label83
	ldr r2, [sp, #88]
	add r2, r2, #5760
	str r2, [sp, #88]
	str r0, [sp, #84]
	b label31
label83:
	mov r0, r4
	add sp, sp, #300
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label9:
	ldr r4, [sp, #240]
	mov r0, #0
	str r4, [sp, #276]
	str r0, [sp, #284]
.p2align 4
label10:
	ldr r1, [sp, #264]
	ldr r0, [sp, #284]
	add r0, r1, r0
	str r0, [sp, #288]
	ldr r1, [sp, #236]
	ldr r0, [sp, #284]
	add r0, r1, r0
	str r0, [sp, #44]
	ldr r1, [sp, #260]
	ldr r0, [sp, #284]
	add r0, r1, r0
	str r0, [sp, #40]
	ldr r1, [sp, #256]
	ldr r0, [sp, #284]
	add r0, r1, r0
	str r0, [sp, #32]
	ldr r1, [sp, #252]
	ldr r0, [sp, #284]
	add r0, r1, r0
	str r0, [sp, #24]
	ldr r1, [sp, #248]
	ldr r0, [sp, #284]
	add r0, r1, r0
	str r0, [sp, #20]
	ldr r1, [sp, #244]
	ldr r0, [sp, #284]
	add r0, r1, r0
	str r0, [sp, #16]
	ldr r0, [sp, #284]
	cmp r0, #2
	blt label14
	b label13
.p2align 4
label164:
	ldr r0, [sp, #284]
	ldr r4, [sp, #276]
	add r0, r0, #1
	add r4, r4, #5376
	str r4, [sp, #276]
	str r0, [sp, #284]
	b label10
.p2align 4
label18:
	ldr r4, [sp, #0]
	mov r5, #0
	b label19
.p2align 4
label175:
	add r2, r2, #1
	ldr r4, [sp, #0]
	cmp r2, #3
	add r4, r4, #1792
	str r4, [sp, #0]
	blt label18
	b label164
.p2align 4
label19:
	ldr r0, [sp, #288]
	cmp r5, #2
	add r1, r0, r5
	ldr r0, [sp, #44]
	add r3, r0, r5
	ldr r0, [sp, #40]
	add r6, r0, r5
	ldr r0, [sp, #32]
	add r7, r0, r5
	ldr r0, [sp, #24]
	add r8, r0, r5
	ldr r0, [sp, #20]
	add r9, r0, r5
	ldr r0, [sp, #16]
	add r10, r0, r5
	blt label22
	b label175
.p2align 4
label235:
	add r5, r5, #1
	add r4, r4, #896
	b label19
.p2align 4
label22:
	mov r0, r4
	mov r11, #0
.p2align 4
label23:
	str r1, [r0, #0]
	add r11, r11, #1
	str r3, [r0, #4]
	cmp r11, #4
	str r6, [r0, #8]
	str r7, [r0, #12]
	str r8, [r0, #16]
	str r9, [r0, #20]
	str r10, [r0, #24]
	str r1, [r0, #28]
	str r3, [r0, #32]
	str r6, [r0, #36]
	str r7, [r0, #40]
	str r8, [r0, #44]
	str r9, [r0, #48]
	str r10, [r0, #52]
	str r1, [r0, #56]
	str r3, [r0, #60]
	str r6, [r0, #64]
	str r7, [r0, #68]
	str r8, [r0, #72]
	str r9, [r0, #76]
	str r10, [r0, #80]
	str r1, [r0, #84]
	str r3, [r0, #88]
	str r6, [r0, #92]
	str r7, [r0, #96]
	str r8, [r0, #100]
	str r9, [r0, #104]
	str r10, [r0, #108]
	str r1, [r0, #112]
	str r3, [r0, #116]
	str r6, [r0, #120]
	str r7, [r0, #124]
	str r8, [r0, #128]
	str r9, [r0, #132]
	str r10, [r0, #136]
	str r1, [r0, #140]
	str r3, [r0, #144]
	str r6, [r0, #148]
	str r7, [r0, #152]
	str r8, [r0, #156]
	str r9, [r0, #160]
	str r10, [r0, #164]
	str r1, [r0, #168]
	str r3, [r0, #172]
	str r6, [r0, #176]
	str r7, [r0, #180]
	str r8, [r0, #184]
	str r9, [r0, #188]
	str r10, [r0, #192]
	str r1, [r0, #196]
	str r3, [r0, #200]
	str r6, [r0, #204]
	str r7, [r0, #208]
	str r8, [r0, #212]
	str r9, [r0, #216]
	str r10, [r0, #220]
	bge label235
	add r0, r0, #224
	b label23
.p2align 4
label14:
	ldr r4, [sp, #276]
	mov r2, #0
	str r4, [sp, #0]
	cmp r2, #3
	blt label18
	b label164
.p2align 4
label308:
	add r2, r2, #4
	b label70
