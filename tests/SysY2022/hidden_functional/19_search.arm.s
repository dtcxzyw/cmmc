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
	push { r4, r5, r6, r7, r8, r9, lr }
	cmp r2, #10
	mov r5, r1
	mov r4, r0
	sub sp, sp, #52
	str r0, [sp, #28]
	str r1, [sp, #44]
	str r2, [sp, #40]
	str r3, [sp, #36]
	bgt label58
	mov r0, #1073741824
	str r0, [sp, #32]
	mov r0, #0
label2:
	ldr r3, [sp, #36]
	cmp r0, #4
	add r2, r3, r0, lsl #3
	bge label63
	mov r1, #0
	ldr r5, [sp, #44]
	str r5, [sp, #24]
	mov r3, r5
	ldr r4, [sp, #28]
	rsb r5, r4, r4, lsl #4
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r5, r3, r5, lsl #3
	str r5, [sp, #20]
	ldr r3, [sp, #24]
	ldr r3, [r5, r3, lsl #2]
	cmp r3, #1
	bne label37
	b label10
label11:
	add r0, r0, #1
	cmp r1, #2
	str r0, [sp, #16]
	bge label12
label85:
	ldr r0, [sp, #16]
	b label2
label10:
	ldr r3, [sp, #88]
	ldr r3, [r3, #0]
	cmp r4, r3
	beq label36
	b label11
.p2align 4
label37:
	ldr r3, [sp, #88]
	ldr r3, [r3, #0]
	cmp r4, r3
	beq label38
	ldr r3, [r2, #0]
	add r1, r1, #1
	ldr r5, [r2, #4]
	add r4, r4, r3
	ldr r3, [sp, #24]
	add r3, r3, r5
	str r3, [sp, #24]
	rsb r5, r4, r4, lsl #4
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r5, r3, r5, lsl #3
	str r5, [sp, #20]
	ldr r3, [sp, #24]
	ldr r3, [r5, r3, lsl #2]
	cmp r3, #1
	bne label37
	b label10
label38:
	ldr r3, [sp, #92]
	ldr r5, [r3, #0]
	ldr r3, [sp, #24]
	cmp r3, r5
	beq label10
	ldr r3, [r2, #0]
	add r1, r1, #1
	ldr r5, [r2, #4]
	add r4, r4, r3
	ldr r3, [sp, #24]
	add r3, r3, r5
	str r3, [sp, #24]
	rsb r5, r4, r4, lsl #4
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r5, r3, r5, lsl #3
	str r5, [sp, #20]
	ldr r3, [sp, #24]
	ldr r3, [r5, r3, lsl #2]
	cmp r3, #1
	bne label37
	b label10
label12:
	cmp r4, #0
	beq label85
	ldr r3, [sp, #84]
	ldr r0, [r3, #0]
	ldr r3, [sp, #24]
	add r0, r0, #1
	clz r1, r3
	sub r0, r4, r0
	lsr r1, r1, #5
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r1
	bne label85
	ldr r3, [sp, #80]
	ldr r0, [r3, #0]
	ldr r3, [sp, #24]
	add r0, r0, #1
	cmp r3, r0
	beq label85
	mov r0, #0
	ldr r5, [sp, #20]
	str r0, [r5, r3, lsl #2]
	ldr r0, [r2, #0]
	sub r4, r4, r0
	ldr r0, [r2, #4]
	ldr r2, [sp, #40]
	sub r5, r3, r0
	add r0, r2, #1
	cmp r0, #10
	ble label114
	mov r0, #1073741824
label16:
	add r1, r0, #1
	ldr r0, [sp, #32]
	ldr r3, [sp, #24]
	ldr r5, [sp, #20]
	cmp r0, r1
	movge r0, r1
	mov r1, #1
	str r1, [r5, r3, lsl #2]
	str r0, [sp, #32]
	ldr r0, [sp, #16]
	b label2
label58:
	mov r0, #1073741824
label40:
	add sp, sp, #52
	pop { r4, r5, r6, r7, r8, r9, pc }
label36:
	ldr r3, [sp, #92]
	ldr r5, [r3, #0]
	ldr r3, [sp, #24]
	cmp r3, r5
	bne label11
	mov r0, #1
	b label40
label114:
	mov r6, #1073741824
	mov r7, #0
label18:
	ldr r3, [sp, #36]
	cmp r7, #4
	add r2, r3, r7, lsl #3
	bge label124
	mov r9, #0
	mov r0, r5
	mov r1, r4
	b label22
label26:
	ldr r3, [sp, #88]
	ldr r3, [r3, #0]
	cmp r1, r3
	beq label32
label27:
	add r7, r7, #1
	cmp r9, #2
	blt label18
	cmp r1, #0
	beq label18
	ldr r3, [sp, #84]
	clz r9, r0
	lsr r9, r9, #5
	ldr r3, [r3, #0]
	add r3, r3, #1
	sub r3, r1, r3
	clz r3, r3
	lsr r3, r3, #5
	orrs r3, r3, r9
	bne label18
	ldr r3, [sp, #80]
	ldr r3, [r3, #0]
	add r3, r3, #1
	cmp r0, r3
	beq label18
	add r8, r8, r0, lsl #2
	mov r3, #0
	str r3, [r8, #0]
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	sub r1, r1, r3
	sub r9, r0, r2
	ldr r2, [sp, #40]
	ldr r3, [sp, #80]
	add r2, r2, #2
	str r3, [sp, #0]
	ldr r3, [sp, #84]
	str r3, [sp, #4]
	ldr r3, [sp, #88]
	str r3, [sp, #8]
	ldr r3, [sp, #92]
	str r3, [sp, #12]
	ldr r3, [sp, #36]
	mov r0, r1
	mov r1, r9
	bl search
	add r0, r0, #1
	cmp r6, r0
	movge r6, r0
	mov r0, #1
	str r0, [r8, #0]
	b label18
label22:
	rsb r8, r1, r1, lsl #4
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	add r8, r3, r8, lsl #3
	ldr r3, [r8, r0, lsl #2]
	cmp r3, #1
	beq label26
	ldr r3, [sp, #88]
	ldr r3, [r3, #0]
	cmp r1, r3
	beq label35
label34:
	ldr r3, [r2, #0]
	add r9, r9, #1
	add r1, r1, r3
	ldr r3, [r2, #4]
	add r0, r0, r3
	b label22
label35:
	ldr r3, [sp, #92]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label26
	b label34
label32:
	ldr r3, [sp, #92]
	ldr r3, [r3, #0]
	cmp r0, r3
	bne label27
	mov r0, #1
	b label16
label63:
	ldr r0, [sp, #32]
	cmp r0, #10
	movgt r0, #1073741824
	b label40
label124:
	cmp r6, #10
	mov r0, r6
	movgt r0, #1073741824
	b label16
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r5, #:lower16:a
	movt r5, #:upper16:a
	mov r4, #1
	mov r6, #0
	sub sp, sp, #68
	mvn r1, #0
	mov r7, r6
	str r4, [sp, #16]
	str r6, [sp, #20]
	str r1, [sp, #24]
	str r6, [sp, #28]
	str r6, [sp, #32]
	str r4, [sp, #36]
	str r6, [sp, #40]
	str r1, [sp, #44]
	str r6, [sp, #56]
	str r6, [sp, #60]
	mov r11, r6
.p2align 4
label289:
	bl getint
	str r0, [sp, #48]
	mov r8, r0
	bl getint
	cmp r8, #0
	str r0, [sp, #52]
	bne label335
	b label311
.p2align 4
label529:
	mov r9, r4
	ldr r0, [sp, #48]
	cmp r4, r0
	ble label303
	b label533
.p2align 4
label762:
	add r7, r7, #1
	ldr r0, [sp, #52]
	rsb r1, r7, r7, lsl #4
	add r8, r5, r1, lsl #3
	cmp r7, r0
	ble label529
.p2align 4
label310:
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
	mov r7, r10
	b label289
.p2align 4
label303:
	bl getint
	cmp r0, #2
	str r0, [r8, r9, lsl #2]
	beq label541
	cmp r0, #3
	beq label308
	b label761
.p2align 4
label541:
	mov r10, r9
	mov r11, r7
	add r9, r9, #1
	ldr r0, [sp, #48]
	cmp r9, r0
	ble label303
	b label762
.p2align 4
label308:
	str r7, [sp, #56]
	str r9, [sp, #60]
	add r9, r9, #1
	ldr r0, [sp, #48]
	cmp r9, r0
	ble label303
	add r7, r7, #1
	ldr r0, [sp, #52]
	rsb r1, r7, r7, lsl #4
	add r8, r5, r1, lsl #3
	cmp r7, r0
	ble label529
	b label310
.p2align 4
label761:
	add r9, r9, #1
	ldr r0, [sp, #48]
	cmp r9, r0
	ble label303
	add r7, r7, #1
	ldr r0, [sp, #52]
	rsb r1, r7, r7, lsl #4
	add r8, r5, r1, lsl #3
	cmp r7, r0
	ble label529
	b label310
.p2align 4
label335:
	mov r1, r6
.p2align 4
label292:
	rsb r0, r1, r1, lsl #4
	add r1, r1, #4
	add r0, r5, r0, lsl #3
	cmp r1, #28
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
	blt label292
	rsb r0, r1, r1, lsl #4
	mov r10, r7
	mov r7, r4
	add r0, r5, r0, lsl #3
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
	rsb r1, r4, r4, lsl #4
	add r8, r5, r1, lsl #3
	cmp r4, r0
	ble label529
	b label310
label311:
	mov r0, r6
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label533:
	add r7, r7, #1
	ldr r0, [sp, #52]
	rsb r1, r7, r7, lsl #4
	add r8, r5, r1, lsl #3
	cmp r7, r0
	ble label529
	b label310
