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
.p2align 4
search:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	cmp r2, #10
	mov r5, r1
	mov r4, r0
	sub sp, sp, #56
	str r3, [sp, #40]
	str r0, [sp, #32]
	str r1, [sp, #48]
	str r2, [sp, #44]
	ble label73
	mov r0, #1073741824
label2:
	add sp, sp, #56
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label73:
	ldr r3, [sp, #40]
	mov r0, #1073741824
	str r3, [sp, #28]
	str r0, [sp, #36]
	mov r0, #0
label5:
	cmp r0, #4
	bge label9
	ldr r4, [sp, #32]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	rsb r1, r4, r4, lsl #4
	add r4, r2, r1, lsl #3
	mov r1, #0
	str r4, [sp, #24]
	ldr r5, [sp, #48]
	str r5, [sp, #20]
	ldr r4, [sp, #32]
	mov r2, r4
	ldr r4, [sp, #24]
	ldr r3, [r4, r5, lsl #2]
	cmp r3, #1
	bne label16
	b label19
label20:
	add r0, r0, #1
	cmp r1, #2
	str r0, [sp, #16]
	bge label21
label24:
	ldr r3, [sp, #28]
	add r3, r3, #8
	str r3, [sp, #28]
	ldr r0, [sp, #16]
	b label5
.p2align 4
label16:
	ldr r3, [sp, #96]
	ldr r3, [r3, #0]
	cmp r2, r3
	beq label17
.p2align 4
label18:
	ldr r3, [sp, #28]
	add r1, r1, #1
	ldr r4, [r3, #0]
	ldr r5, [r3, #4]
	ldr r3, [sp, #20]
	add r2, r2, r4
	add r3, r3, r5
	rsb r5, r4, r4, lsl #4
	ldr r4, [sp, #24]
	add r4, r4, r5, lsl #3
	str r4, [sp, #24]
	str r3, [sp, #20]
	ldr r3, [r4, r3, lsl #2]
	cmp r3, #1
	bne label16
label19:
	ldr r3, [sp, #96]
	ldr r3, [r3, #0]
	cmp r2, r3
	bne label20
	ldr r3, [sp, #100]
	ldr r4, [r3, #0]
	ldr r3, [sp, #20]
	cmp r3, r4
	bne label20
	mov r0, #1
	b label2
label17:
	ldr r3, [sp, #100]
	ldr r4, [r3, #0]
	ldr r3, [sp, #20]
	cmp r3, r4
	beq label19
	b label18
label21:
	cmp r2, #0
	beq label24
	ldr r3, [sp, #92]
	ldr r0, [r3, #0]
	ldr r3, [sp, #20]
	add r0, r0, #1
	clz r1, r3
	sub r0, r2, r0
	lsr r1, r1, #5
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r1
	bne label24
	ldr r3, [sp, #88]
	ldr r0, [r3, #0]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	beq label24
	mov r0, #0
	ldr r4, [sp, #24]
	str r0, [r4, r3, lsl #2]
	ldr r3, [sp, #28]
	ldr r0, [r3, #0]
	sub r5, r2, r0
	ldr r0, [r3, #4]
	ldr r3, [sp, #20]
	ldr r2, [sp, #44]
	sub r6, r3, r0
	add r0, r2, #1
	cmp r0, #10
	ble label147
	mov r0, #1073741824
label26:
	add r1, r0, #1
	ldr r0, [sp, #36]
	ldr r4, [sp, #24]
	ldr r3, [sp, #20]
	cmp r0, r1
	movge r0, r1
	mov r1, #1
	str r1, [r4, r3, lsl #2]
	ldr r3, [sp, #28]
	add r3, r3, #8
	str r3, [sp, #28]
	str r0, [sp, #36]
	ldr r0, [sp, #16]
	b label5
label9:
	ldr r0, [sp, #36]
	cmp r0, #10
	movgt r0, #1073741824
	b label2
label147:
	ldr r3, [sp, #40]
	mov r7, #1073741824
	mov r8, #0
	mov r4, r3
label29:
	cmp r8, #4
	bge label33
	rsb r0, r5, r5, lsl #4
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r9, #0
	mov r1, r6
	add r2, r2, r0, lsl #3
	mov r0, r5
	b label35
label41:
	add r8, r8, #1
	cmp r9, #2
	blt label44
	cmp r0, #0
	bne label43
label44:
	add r4, r4, #8
	b label29
label35:
	ldr r3, [r2, r1, lsl #2]
	cmp r3, #1
	beq label40
	ldr r3, [sp, #96]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label53
label52:
	ldr r3, [r4, #0]
	add r9, r9, #1
	ldr r10, [r4, #4]
	add r0, r0, r3
	add r1, r1, r10
	rsb r3, r3, r3, lsl #4
	add r2, r2, r3, lsl #3
	b label35
label40:
	ldr r3, [sp, #96]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label50
	b label41
label53:
	ldr r3, [sp, #100]
	ldr r3, [r3, #0]
	cmp r1, r3
	beq label40
	b label52
label50:
	ldr r3, [sp, #100]
	ldr r3, [r3, #0]
	cmp r1, r3
	beq label221
	b label41
label43:
	ldr r3, [sp, #92]
	clz r9, r1
	lsr r9, r9, #5
	ldr r3, [r3, #0]
	add r3, r3, #1
	sub r3, r0, r3
	clz r3, r3
	lsr r3, r3, #5
	orrs r3, r3, r9
	bne label44
	ldr r3, [sp, #88]
	ldr r3, [r3, #0]
	add r3, r3, #1
	cmp r1, r3
	beq label44
	add r9, r2, r1, lsl #2
	mov r2, #0
	str r2, [r9, #0]
	ldr r2, [r4, #0]
	sub r0, r0, r2
	ldr r2, [r4, #4]
	sub r1, r1, r2
	ldr r2, [sp, #44]
	ldr r3, [sp, #88]
	add r2, r2, #2
	str r3, [sp, #0]
	ldr r3, [sp, #92]
	str r3, [sp, #4]
	ldr r3, [sp, #96]
	str r3, [sp, #8]
	ldr r3, [sp, #100]
	str r3, [sp, #12]
	ldr r3, [sp, #40]
	bl search
	add r4, r4, #8
	add r0, r0, #1
	cmp r7, r0
	movge r7, r0
	mov r0, #1
	str r0, [r9, #0]
	b label29
label33:
	cmp r7, #10
	mov r0, r7
	movgt r0, #1073741824
	b label26
label221:
	mov r0, #1
	b label26
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #68
	mov r4, #1
	mov r5, #0
	mvn r1, #0
	str r4, [sp, #16]
	mov r6, r5
	str r5, [sp, #20]
	str r1, [sp, #24]
	str r5, [sp, #28]
	str r5, [sp, #32]
	str r4, [sp, #36]
	str r5, [sp, #40]
	str r1, [sp, #44]
	str r5, [sp, #56]
	str r5, [sp, #60]
	mov r8, r5
.p2align 4
label320:
	bl getint
	str r0, [sp, #48]
	mov r7, r0
	bl getint
	cmp r7, #0
	str r0, [sp, #52]
	bne label324
	b label323
.p2align 4
label335:
	ldr r0, [sp, #48]
	cmp r0, #0
	ble label336
	add r8, r7, #4
	mov r9, r4
	b label340
.p2align 4
label800:
	add r6, r6, #1
	add r7, r7, #120
	ldr r0, [sp, #52]
	cmp r6, r0
	ble label335
.p2align 4
label351:
	add r0, sp, #48
	add r3, sp, #16
	str r0, [sp, #0]
	add r0, sp, #52
	str r0, [sp, #4]
	add r0, sp, #56
	str r0, [sp, #8]
	add r0, sp, #60
	str r0, [sp, #12]
	mov r0, r11
	mov r1, r10
	mov r2, r4
	bl search
	mvn r1, #0
	cmp r0, #11
	movlt r1, r0
	mov r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r8, r11
	mov r6, r10
	b label320
.p2align 4
label340:
	bl getint
	cmp r0, #2
	str r0, [r8, #0]
	bne label579
	mov r10, r9
	mov r11, r6
	ldr r0, [sp, #48]
	add r9, r9, #1
	cmp r9, r0
	bgt label800
.p2align 4
label350:
	add r8, r8, #4
	b label340
.p2align 4
label579:
	cmp r0, #3
	beq label346
	add r9, r9, #1
	ldr r0, [sp, #48]
	cmp r9, r0
	ble label350
	add r6, r6, #1
	add r7, r7, #120
	ldr r0, [sp, #52]
	cmp r6, r0
	ble label335
	b label351
.p2align 4
label346:
	str r6, [sp, #56]
	str r9, [sp, #60]
	add r9, r9, #1
	ldr r0, [sp, #48]
	cmp r9, r0
	ble label350
	add r6, r6, #1
	add r7, r7, #120
	ldr r0, [sp, #52]
	cmp r6, r0
	ble label335
	b label351
.p2align 4
label324:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r0, r1
	mov r1, r5
.p2align 4
label325:
	str r4, [r0, #0]
	add r1, r1, #4
	str r4, [r0, #4]
	cmp r1, #28
	str r4, [r0, #8]
	str r4, [r0, #12]
	str r4, [r0, #16]
	str r4, [r0, #20]
	str r4, [r0, #24]
	str r4, [r0, #28]
	str r4, [r0, #32]
	str r4, [r0, #36]
	str r4, [r0, #40]
	str r4, [r0, #44]
	str r4, [r0, #48]
	str r4, [r0, #52]
	str r4, [r0, #56]
	str r4, [r0, #60]
	str r4, [r0, #64]
	str r4, [r0, #68]
	str r4, [r0, #72]
	str r4, [r0, #76]
	str r4, [r0, #80]
	str r4, [r0, #84]
	str r4, [r0, #88]
	str r4, [r0, #92]
	str r4, [r0, #96]
	str r4, [r0, #100]
	str r4, [r0, #104]
	str r4, [r0, #108]
	str r4, [r0, #112]
	str r4, [r0, #116]
	str r4, [r0, #120]
	str r4, [r0, #124]
	str r4, [r0, #128]
	str r4, [r0, #132]
	str r4, [r0, #136]
	str r4, [r0, #140]
	str r4, [r0, #144]
	str r4, [r0, #148]
	str r4, [r0, #152]
	str r4, [r0, #156]
	str r4, [r0, #160]
	str r4, [r0, #164]
	str r4, [r0, #168]
	str r4, [r0, #172]
	str r4, [r0, #176]
	str r4, [r0, #180]
	str r4, [r0, #184]
	str r4, [r0, #188]
	str r4, [r0, #192]
	str r4, [r0, #196]
	str r4, [r0, #200]
	str r4, [r0, #204]
	str r4, [r0, #208]
	str r4, [r0, #212]
	str r4, [r0, #216]
	str r4, [r0, #220]
	str r4, [r0, #224]
	str r4, [r0, #228]
	str r4, [r0, #232]
	str r4, [r0, #236]
	str r4, [r0, #240]
	str r4, [r0, #244]
	str r4, [r0, #248]
	str r4, [r0, #252]
	str r4, [r0, #256]
	str r4, [r0, #260]
	str r4, [r0, #264]
	str r4, [r0, #268]
	str r4, [r0, #272]
	str r4, [r0, #276]
	str r4, [r0, #280]
	str r4, [r0, #284]
	str r4, [r0, #288]
	str r4, [r0, #292]
	str r4, [r0, #296]
	str r4, [r0, #300]
	str r4, [r0, #304]
	str r4, [r0, #308]
	str r4, [r0, #312]
	str r4, [r0, #316]
	str r4, [r0, #320]
	str r4, [r0, #324]
	str r4, [r0, #328]
	str r4, [r0, #332]
	str r4, [r0, #336]
	str r4, [r0, #340]
	str r4, [r0, #344]
	str r4, [r0, #348]
	str r4, [r0, #352]
	str r4, [r0, #356]
	str r4, [r0, #360]
	str r4, [r0, #364]
	str r4, [r0, #368]
	str r4, [r0, #372]
	str r4, [r0, #376]
	str r4, [r0, #380]
	str r4, [r0, #384]
	str r4, [r0, #388]
	str r4, [r0, #392]
	str r4, [r0, #396]
	str r4, [r0, #400]
	str r4, [r0, #404]
	str r4, [r0, #408]
	str r4, [r0, #412]
	str r4, [r0, #416]
	str r4, [r0, #420]
	str r4, [r0, #424]
	str r4, [r0, #428]
	str r4, [r0, #432]
	str r4, [r0, #436]
	str r4, [r0, #440]
	str r4, [r0, #444]
	str r4, [r0, #448]
	str r4, [r0, #452]
	str r4, [r0, #456]
	str r4, [r0, #460]
	str r4, [r0, #464]
	str r4, [r0, #468]
	str r4, [r0, #472]
	str r4, [r0, #476]
	bge label329
	add r0, r0, #480
	b label325
.p2align 4
label329:
	rsb r0, r1, r1, lsl #4
	mov r10, r6
	mov r11, r8
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r6, r4
	add r7, r1, #120
	add r0, r1, r0, lsl #3
	str r4, [r0, #0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	str r4, [r0, #16]
	str r4, [r0, #20]
	str r4, [r0, #24]
	str r4, [r0, #28]
	str r4, [r0, #32]
	str r4, [r0, #36]
	str r4, [r0, #40]
	str r4, [r0, #44]
	str r4, [r0, #48]
	str r4, [r0, #52]
	str r4, [r0, #56]
	str r4, [r0, #60]
	str r4, [r0, #64]
	str r4, [r0, #68]
	str r4, [r0, #72]
	str r4, [r0, #76]
	str r4, [r0, #80]
	str r4, [r0, #84]
	str r4, [r0, #88]
	str r4, [r0, #92]
	str r4, [r0, #96]
	str r4, [r0, #100]
	str r4, [r0, #104]
	str r4, [r0, #108]
	str r4, [r0, #112]
	str r4, [r0, #116]
	str r4, [r0, #120]
	str r4, [r0, #124]
	str r4, [r0, #128]
	str r4, [r0, #132]
	str r4, [r0, #136]
	str r4, [r0, #140]
	str r4, [r0, #144]
	str r4, [r0, #148]
	str r4, [r0, #152]
	str r4, [r0, #156]
	str r4, [r0, #160]
	str r4, [r0, #164]
	str r4, [r0, #168]
	str r4, [r0, #172]
	str r4, [r0, #176]
	str r4, [r0, #180]
	str r4, [r0, #184]
	str r4, [r0, #188]
	str r4, [r0, #192]
	str r4, [r0, #196]
	str r4, [r0, #200]
	str r4, [r0, #204]
	str r4, [r0, #208]
	str r4, [r0, #212]
	str r4, [r0, #216]
	str r4, [r0, #220]
	str r4, [r0, #224]
	str r4, [r0, #228]
	str r4, [r0, #232]
	str r4, [r0, #236]
	ldr r0, [sp, #52]
	cmp r4, r0
	ble label335
	b label351
.p2align 4
label336:
	add r6, r6, #1
	add r7, r7, #120
	ldr r0, [sp, #52]
	cmp r6, r0
	ble label335
	b label351
label323:
	mov r0, r5
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
