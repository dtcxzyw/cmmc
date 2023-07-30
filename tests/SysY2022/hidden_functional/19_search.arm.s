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
	mov r4, r0
	sub sp, sp, #60
	str r0, [sp, #24]
	str r1, [sp, #28]
	str r2, [sp, #32]
	str r3, [sp, #16]
	movw r3, #:lower16:a
	movt r3, #:upper16:a
	str r3, [sp, #20]
	bgt label58
	mov r0, #1073741824
	str r0, [sp, #36]
	mov r0, #0
	b label4
label58:
	mov r0, #1073741824
	b label2
label4:
	ldr r3, [sp, #16]
	cmp r0, #4
	add r5, r3, r0, lsl #3
	bge label63
	mov r2, #0
	ldr r1, [sp, #28]
	str r1, [sp, #40]
	mov r3, r1
	ldr r4, [sp, #24]
	mov r1, r4
	b label7
label2:
	add sp, sp, #60
	pop { r4, r5, r6, r7, r8, r9, pc }
label63:
	ldr r0, [sp, #36]
	mov r1, #1073741824
	cmp r0, #10
	movgt r0, r1
	b label2
label7:
	rsb r4, r1, r1, lsl #4
	ldr r3, [sp, #20]
	add r4, r3, r4, lsl #3
	str r4, [sp, #44]
	ldr r3, [sp, #40]
	ldr r3, [r4, r3, lsl #2]
	cmp r3, #1
	beq label14
	ldr r3, [sp, #96]
	ldr r3, [r3, #0]
	cmp r1, r3
	beq label12
label77:
	ldr r3, [r5, #0]
	add r2, r2, #1
	ldr r4, [r5, #4]
	add r1, r1, r3
	ldr r3, [sp, #40]
	add r3, r3, r4
	str r3, [sp, #40]
	b label7
label14:
	ldr r3, [sp, #96]
	ldr r3, [r3, #0]
	cmp r1, r3
	beq label15
	b label16
label12:
	ldr r3, [sp, #100]
	ldr r4, [r3, #0]
	ldr r3, [sp, #40]
	cmp r3, r4
	beq label14
	b label77
label15:
	ldr r3, [sp, #100]
	ldr r4, [r3, #0]
	ldr r3, [sp, #40]
	cmp r3, r4
	bne label16
	mov r0, #1
	b label2
label16:
	add r0, r0, #1
	cmp r2, #2
	str r0, [sp, #48]
	bge label17
label104:
	ldr r0, [sp, #48]
	b label4
label17:
	cmp r1, #0
	beq label104
	ldr r3, [sp, #92]
	ldr r0, [r3, #0]
	ldr r3, [sp, #40]
	add r0, r0, #1
	clz r2, r3
	sub r0, r1, r0
	lsr r2, r2, #5
	clz r0, r0
	lsr r0, r0, #5
	orrs r0, r0, r2
	bne label104
	ldr r3, [sp, #88]
	ldr r0, [r3, #0]
	ldr r3, [sp, #40]
	add r0, r0, #1
	cmp r3, r0
	beq label104
	mov r0, #0
	ldr r4, [sp, #44]
	str r0, [r4, r3, lsl #2]
	ldr r0, [r5, #0]
	sub r4, r1, r0
	ldr r0, [r5, #4]
	ldr r2, [sp, #32]
	sub r5, r3, r0
	add r0, r2, #1
	cmp r0, #10
	bgt label134
	mov r6, #1073741824
	mov r7, #0
	b label23
label134:
	mov r0, #1073741824
label21:
	add r1, r0, #1
	ldr r0, [sp, #36]
	ldr r3, [sp, #40]
	ldr r4, [sp, #44]
	cmp r0, r1
	movge r0, r1
	mov r1, #1
	str r1, [r4, r3, lsl #2]
	str r0, [sp, #36]
	ldr r0, [sp, #48]
	b label4
label23:
	ldr r3, [sp, #16]
	cmp r7, #4
	add r2, r3, r7, lsl #3
	blt label144
	cmp r6, #10
	mov r1, #1073741824
	mov r0, r6
	movgt r0, r1
	b label21
label144:
	mov r9, #0
	mov r0, r5
	mov r1, r4
label27:
	rsb r8, r1, r1, lsl #4
	ldr r3, [sp, #20]
	add r8, r3, r8, lsl #3
	ldr r3, [r8, r0, lsl #2]
	cmp r3, #1
	bne label38
label31:
	ldr r3, [sp, #96]
	ldr r3, [r3, #0]
	cmp r1, r3
	beq label37
	b label32
label38:
	ldr r3, [sp, #96]
	ldr r3, [r3, #0]
	cmp r1, r3
	beq label40
label207:
	ldr r3, [r2, #0]
	add r9, r9, #1
	add r1, r1, r3
	ldr r3, [r2, #4]
	add r0, r0, r3
	b label27
label40:
	ldr r3, [sp, #100]
	ldr r3, [r3, #0]
	cmp r0, r3
	beq label31
	b label207
label32:
	add r7, r7, #1
	cmp r9, #2
	blt label23
	cmp r1, #0
	beq label23
	ldr r3, [sp, #92]
	clz r9, r0
	lsr r9, r9, #5
	ldr r3, [r3, #0]
	add r3, r3, #1
	sub r3, r1, r3
	clz r3, r3
	lsr r3, r3, #5
	orrs r3, r3, r9
	bne label23
	ldr r3, [sp, #88]
	ldr r3, [r3, #0]
	add r3, r3, #1
	cmp r0, r3
	beq label23
	add r8, r8, r0, lsl #2
	mov r3, #0
	str r3, [r8, #0]
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	sub r1, r1, r3
	sub r9, r0, r2
	ldr r2, [sp, #32]
	ldr r3, [sp, #88]
	add r2, r2, #2
	str r3, [sp, #0]
	ldr r3, [sp, #92]
	str r3, [sp, #4]
	ldr r3, [sp, #96]
	str r3, [sp, #8]
	ldr r3, [sp, #100]
	str r3, [sp, #12]
	ldr r3, [sp, #16]
	mov r0, r1
	mov r1, r9
	bl search
	add r0, r0, #1
	cmp r6, r0
	movge r6, r0
	mov r0, #1
	str r0, [r8, #0]
	b label23
label37:
	ldr r3, [sp, #100]
	ldr r3, [r3, #0]
	cmp r0, r3
	bne label32
	mov r0, #1
	b label21
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	sub sp, sp, #68
	mvn r1, #0
	mov r0, #1
	mov r7, #0
	movt r4, #:upper16:a
	str r0, [sp, #32]
	add r5, sp, #32
	add r6, sp, #16
	str r7, [sp, #36]
	mov r11, r7
	str r1, [sp, #40]
	str r7, [sp, #44]
	str r7, [sp, #48]
	str r0, [sp, #52]
	str r7, [sp, #56]
	str r1, [sp, #60]
	str r7, [sp, #20]
	str r7, [sp, #16]
.p2align 4
label281:
	bl getint
	str r0, [sp, #28]
	mov r8, r0
	bl getint
	cmp r8, #0
	str r0, [sp, #24]
	beq label303
	mov r2, #0
	b label284
.p2align 4
label302:
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
	b label281
label303:
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label521:
	mov r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	ble label295
	add r7, r7, #1
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label521
	b label302
.p2align 4
label295:
	bl getint
	cmp r0, #2
	str r0, [r8, r9, lsl #2]
	beq label533
	cmp r0, #3
	beq label300
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	ble label295
	add r7, r7, #1
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label521
	b label302
.p2align 4
label533:
	mov r10, r9
	mov r11, r7
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	ble label295
	add r7, r7, #1
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label521
	b label302
.p2align 4
label300:
	str r7, [sp, #20]
	str r9, [sp, #16]
	add r9, r9, #1
	ldr r0, [sp, #28]
	cmp r9, r0
	ble label295
	add r7, r7, #1
	ldr r0, [sp, #24]
	rsb r1, r7, r7, lsl #4
	add r8, r4, r1, lsl #3
	cmp r7, r0
	ble label521
	b label302
.p2align 4
label284:
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
	blt label284
	rsb r0, r2, r2, lsl #4
	mov r10, r7
	add r1, r4, r0, lsl #3
	mov r0, #1
	str r0, [r1, #0]
	mov r7, r0
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
	ble label521
	b label302
