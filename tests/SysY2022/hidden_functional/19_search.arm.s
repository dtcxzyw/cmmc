.arch armv7ve
.data
.bss
.align 8
a:
	.zero	3600
.text
.syntax unified
.arm
.fpu vfpv4
search:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	cmp r2, #10
	mov r9, r3
	movw r6, #:lower16:a
	mov r4, r0
	sub sp, sp, #36
	movt r6, #:upper16:a
	mov r0, r2
	str r1, [sp, #24]
	str r2, [sp, #20]
	str r3, [sp, #16]
	bgt label38
	mov r7, #1073741824
	mov r5, #0
	b label4
label38:
	mov r0, #1073741824
	b label2
label4:
	ldr r9, [sp, #16]
	cmp r5, #4
	add r2, r9, r5, lsl #3
	bge label43
	mov r8, #0
	ldr r1, [sp, #24]
	mov r0, r1
	mov r1, r4
	b label8
label2:
	add sp, sp, #36
	pop { r4, r5, r6, r7, r8, r9, pc }
label43:
	cmp r7, #10
	mov r1, #1073741824
	mov r0, r7
	movgt r0, r1
	b label2
label8:
	rsb r3, r1, r1, lsl #4
	add r3, r6, r3, lsl #3
	ldr r9, [r3, r0, lsl #2]
	cmp r9, #1
	bne label19
label12:
	ldr r9, [sp, #72]
	ldr r9, [r9, #0]
	cmp r1, r9
	beq label13
	b label14
label19:
	ldr r9, [sp, #72]
	ldr r9, [r9, #0]
	cmp r1, r9
	beq label21
label106:
	ldr r3, [r2, #0]
	add r8, r8, #1
	add r1, r1, r3
	ldr r3, [r2, #4]
	add r0, r0, r3
	b label8
label21:
	ldr r9, [sp, #76]
	ldr r9, [r9, #0]
	cmp r0, r9
	beq label12
	b label106
label13:
	ldr r9, [sp, #76]
	ldr r9, [r9, #0]
	cmp r0, r9
	bne label14
	mov r0, #1
	b label2
label14:
	cmp r8, #2
	clz r9, r1
	mov r8, #0
	lsr r9, r9, #5
	movwlt r8, #1
	orrs r8, r8, r9
	bne label71
	ldr r9, [sp, #68]
	ldr r8, [r9, #0]
	clz r9, r0
	lsr r9, r9, #5
	add r8, r8, #1
	sub r8, r1, r8
	clz r8, r8
	lsr r8, r8, #5
	orrs r8, r8, r9
	bne label71
	ldr r9, [sp, #64]
	ldr r8, [r9, #0]
	add r8, r8, #1
	cmp r0, r8
	beq label71
	add r8, r3, r0, lsl #2
	mov r3, #0
	str r3, [r8, #0]
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	sub r1, r1, r3
	sub r2, r0, r2
	ldr r0, [sp, #20]
	add r3, r0, #1
	str r9, [sp, #0]
	ldr r9, [sp, #68]
	str r9, [sp, #4]
	ldr r9, [sp, #72]
	str r9, [sp, #8]
	ldr r9, [sp, #76]
	str r9, [sp, #12]
	ldr r9, [sp, #16]
	mov r0, r1
	mov r1, r2
	mov r2, r3
	mov r3, r9
	bl search
	add r5, r5, #1
	add r0, r0, #1
	cmp r7, r0
	movge r7, r0
	mov r0, #1
	str r0, [r8, #0]
	b label4
label71:
	add r5, r5, #1
	b label4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	mov r0, #1
	mov r7, #0
	mvn r1, #0
	sub sp, sp, #68
	movt r4, #:upper16:a
	mov r11, r7
	str r0, [sp, #32]
	add r5, sp, #32
	add r6, sp, #16
	str r7, [sp, #36]
	str r1, [sp, #40]
	str r7, [sp, #44]
	str r7, [sp, #48]
	str r0, [sp, #52]
	str r7, [sp, #56]
	str r1, [sp, #60]
	str r7, [sp, #20]
	str r7, [sp, #16]
.p2align 4
label148:
	bl getint
	str r0, [sp, #28]
	mov r8, r0
	bl getint
	cmp r8, #0
	str r0, [sp, #24]
	beq label170
	mov r2, #0
	b label151
.p2align 4
label169:
	add r0, sp, #28
	mov r2, #1
	str r0, [sp, #0]
	add r0, sp, #24
	str r0, [sp, #4]
	add r0, sp, #20
	str r0, [sp, #8]
	str r6, [sp, #12]
	mov r0, r11
	mov r1, r10
	mov r3, r5
	bl search
	mvn r1, #0
	cmp r0, #11
	movlt r1, r0
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r7, r10
	b label148
label170:
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label388:
	mov r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	ble label162
	add r7, r7, #1
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label388
	b label169
.p2align 4
label162:
	bl getint
	cmp r0, #2
	str r0, [r8, r9, lsl #2]
	beq label400
	cmp r0, #3
	beq label167
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	ble label162
	add r7, r7, #1
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label388
	b label169
.p2align 4
label400:
	mov r10, r9
	mov r11, r7
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	ble label162
	add r7, r7, #1
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label388
	b label169
.p2align 4
label167:
	str r7, [sp, #20]
	str r9, [sp, #16]
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	ble label162
	add r7, r7, #1
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label388
	b label169
.p2align 4
label151:
	rsb r0, r2, r2, lsl #4
	mov r1, #1
	add r2, r2, #4
	add r0, r4, r0, lsl #3
	cmp r2, #28
	str r1, [r0, #0]
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
	str r1, [r0, #256]
	str r1, [r0, #260]
	str r1, [r0, #264]
	str r1, [r0, #268]
	str r1, [r0, #272]
	str r1, [r0, #276]
	str r1, [r0, #280]
	str r1, [r0, #284]
	str r1, [r0, #288]
	str r1, [r0, #292]
	str r1, [r0, #296]
	str r1, [r0, #300]
	str r1, [r0, #304]
	str r1, [r0, #308]
	str r1, [r0, #312]
	str r1, [r0, #316]
	str r1, [r0, #320]
	str r1, [r0, #324]
	str r1, [r0, #328]
	str r1, [r0, #332]
	str r1, [r0, #336]
	str r1, [r0, #340]
	str r1, [r0, #344]
	str r1, [r0, #348]
	str r1, [r0, #352]
	str r1, [r0, #356]
	str r1, [r0, #360]
	str r1, [r0, #364]
	str r1, [r0, #368]
	str r1, [r0, #372]
	str r1, [r0, #376]
	str r1, [r0, #380]
	str r1, [r0, #384]
	str r1, [r0, #388]
	str r1, [r0, #392]
	str r1, [r0, #396]
	str r1, [r0, #400]
	str r1, [r0, #404]
	str r1, [r0, #408]
	str r1, [r0, #412]
	str r1, [r0, #416]
	str r1, [r0, #420]
	str r1, [r0, #424]
	str r1, [r0, #428]
	str r1, [r0, #432]
	str r1, [r0, #436]
	str r1, [r0, #440]
	str r1, [r0, #444]
	str r1, [r0, #448]
	str r1, [r0, #452]
	str r1, [r0, #456]
	str r1, [r0, #460]
	str r1, [r0, #464]
	str r1, [r0, #468]
	str r1, [r0, #472]
	str r1, [r0, #476]
	blt label151
	rsb r0, r2, r2, lsl #4
	mov r10, r7
	add r1, r4, r0, lsl #3
	mov r0, #1
	mov r7, r0
	str r0, [r1, #0]
	str r0, [r1, #4]
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
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label388
	b label169
