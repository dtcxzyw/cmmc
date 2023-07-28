.arch armv7ve
.data
.bss
.align 4
count:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
QuickSort:
.p2align 4
	push { r4, r5, r6, r7, lr }
	mov r5, r2
	mov r4, r0
	sub sp, sp, #4
label2:
	cmp r5, r1
	bgt label4
	b label21
label8:
	str r0, [r4, r6, lsl #2]
	sub r2, r6, #1
	mov r0, r4
	bl QuickSort
	add r1, r6, #1
	b label2
.p2align 4
label20:
	ldr r7, [r4, r3, lsl #2]
	str r7, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r3, r6
	bgt label16
	b label8
label21:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label19:
	ldr r7, [r4, r6, lsl #2]
	str r7, [r4, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, r6
	bgt label9
	b label8
.p2align 4
label16:
	ldr r7, [r4, r6, lsl #2]
	cmp r0, r7
	bgt label17
	cmp r3, r6
	bgt label19
	b label8
.p2align 4
label17:
	add r6, r6, #1
	cmp r3, r6
	bgt label16
	b label8
label4:
	ldr r0, [r4, r1, lsl #2]
	mov r3, r5
	mov r6, r1
	sub r2, r0, #1
	cmp r5, r1
	ble label8
.p2align 4
label9:
	cmp r6, r3
	blt label11
	cmp r3, r6
	bgt label16
	b label8
.p2align 4
label11:
	ldr r7, [r4, r3, lsl #2]
	cmp r2, r7
	blt label12
	cmp r6, r3
	blt label20
	cmp r3, r6
	bgt label16
	b label8
.p2align 4
label12:
	sub r3, r3, #1
	cmp r6, r3
	blt label11
	cmp r3, r6
	bgt label16
	b label8
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r4, #89
	mov r2, #23
	mov r1, #7
	sub sp, sp, #364
	movw r6, #282
	mov r11, #254
	mov r5, #26
	mov r7, #39
	mov r8, #28
	mov r9, #1
	movw r10, #290
	add r0, sp, #228
	add r3, sp, #60
	str r3, [sp, #224]
	str r0, [sp, #200]
	str r1, [sp, #228]
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r5, [r0, #12]
	str r6, [r0, #16]
	str r11, [sp, #220]
	str r11, [r0, #20]
	mov r11, #27
	str r11, [sp, #188]
	str r11, [r0, #24]
	mov r11, #5
	str r11, [sp, #196]
	str r11, [r0, #28]
	mov r11, #83
	str r11, [sp, #0]
	str r11, [r0, #32]
	movw r11, #273
	str r11, [sp, #4]
	str r11, [r0, #36]
	movw r11, #574
	str r11, [sp, #356]
	str r11, [r0, #40]
	movw r11, #905
	str r11, [sp, #8]
	str r11, [r0, #44]
	movw r11, #354
	str r11, [sp, #56]
	str r11, [r0, #48]
	movw r11, #657
	str r11, [sp, #12]
	str r11, [r0, #52]
	movw r11, #935
	str r11, [sp, #16]
	str r11, [r0, #56]
	mov r11, #264
	str r11, [sp, #20]
	str r11, [r0, #60]
	movw r11, #639
	str r11, [sp, #24]
	str r11, [r0, #64]
	movw r11, #459
	str r11, [sp, #28]
	str r11, [r0, #68]
	mov r11, #29
	str r11, [sp, #32]
	str r11, [r0, #72]
	mov r11, #68
	str r11, [sp, #36]
	str r11, [r0, #76]
	movw r11, #929
	str r11, [sp, #40]
	str r11, [r0, #80]
	mov r11, #756
	str r11, [sp, #44]
	str r11, [r0, #84]
	mov r11, #452
	str r11, [sp, #48]
	str r11, [r0, #88]
	movw r11, #279
	str r11, [sp, #52]
	str r11, [r0, #92]
	mov r11, #58
	str r11, [sp, #204]
	str r11, [r0, #96]
	mov r11, #87
	str r11, [sp, #208]
	str r11, [r0, #100]
	mov r11, #96
	str r11, [sp, #212]
	str r11, [r0, #104]
	mov r11, #36
	str r11, [sp, #216]
	str r11, [r0, #108]
	str r7, [r0, #112]
	str r8, [r0, #116]
	str r9, [r0, #120]
	str r10, [r0, #124]
	str r1, [sp, #60]
	str r2, [r3, #4]
	str r4, [r3, #8]
	mov r4, #0
	str r5, [r3, #12]
	str r6, [r3, #16]
	ldr r11, [sp, #220]
	str r11, [r3, #20]
	ldr r11, [sp, #188]
	str r11, [r3, #24]
	ldr r11, [sp, #196]
	str r11, [r3, #28]
	ldr r11, [sp, #0]
	str r11, [r3, #32]
	ldr r11, [sp, #4]
	str r11, [r3, #36]
	ldr r11, [sp, #356]
	str r11, [r3, #40]
	ldr r11, [sp, #8]
	str r11, [r3, #44]
	ldr r11, [sp, #56]
	str r11, [r3, #48]
	ldr r11, [sp, #12]
	str r11, [r3, #52]
	ldr r11, [sp, #16]
	str r11, [r3, #56]
	ldr r11, [sp, #20]
	str r11, [r3, #60]
	ldr r11, [sp, #24]
	str r11, [r3, #64]
	ldr r11, [sp, #28]
	str r11, [r3, #68]
	ldr r11, [sp, #32]
	str r11, [r3, #72]
	ldr r11, [sp, #36]
	str r11, [r3, #76]
	ldr r11, [sp, #40]
	str r11, [r3, #80]
	ldr r11, [sp, #44]
	str r11, [r3, #84]
	ldr r11, [sp, #48]
	str r11, [r3, #88]
	ldr r11, [sp, #52]
	str r11, [r3, #92]
	ldr r11, [sp, #204]
	str r11, [r3, #96]
	ldr r11, [sp, #208]
	str r11, [r3, #100]
	ldr r11, [sp, #212]
	str r11, [r3, #104]
	ldr r11, [sp, #216]
	str r11, [r3, #108]
	str r7, [r3, #112]
	str r8, [r3, #116]
	str r9, [r3, #120]
	str r10, [r3, #124]
	movw r3, #:lower16:count
	movt r3, #:upper16:count
	str r3, [sp, #192]
.p2align 4
label120:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label120
	mov r1, #0
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label287
.p2align 4
label1027:
	mov r4, #0
	b label129
.p2align 4
label287:
	mov r0, #0
	cmp r2, r0
	bgt label126
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label287
	b label1027
.p2align 4
label126:
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	bgt label127
	mov r0, r6
	cmp r2, r6
	bgt label126
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label287
	b label1027
.p2align 4
label127:
	ldr r3, [sp, #224]
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label126
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label287
	b label1027
.p2align 4
label129:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label129
	ldr r3, [sp, #224]
	ldr r0, [r3, #64]
	ldr r1, [r3, #60]
	add r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl putint
	mov r2, #0
.p2align 4
label132:
	ldr r3, [sp, #192]
	mov r1, #0
	add r0, r3, r2, lsl #2
	str r1, [r3, r2, lsl #2]
	add r2, r2, #64
	str r1, [r0, #4]
	cmp r2, #960
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
	blt label132
	mov r0, #0
	add r1, r3, r2, lsl #2
	str r0, [r3, r2, lsl #2]
	mov r2, r0
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
	mov r4, r0
.p2align 4
label135:
	ldr r3, [sp, #224]
	ldr r5, [r3, r0, lsl #2]
	add r1, r3, r0, lsl #2
	ldr r3, [sp, #192]
	ldr r6, [r3, r5, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	str r6, [r3, r5, lsl #2]
	movlt r2, r5
	movle r4, r6
	ldr r6, [r1, #4]
	mov r5, r2
	ldr r7, [r3, r6, lsl #2]
	add r7, r7, #1
	str r7, [r3, r6, lsl #2]
	cmp r4, r7
	movlt r5, r6
	ldr r6, [r1, #8]
	mov r2, r4
	movle r2, r7
	ldr r4, [r3, r6, lsl #2]
	add r7, r4, #1
	str r7, [r3, r6, lsl #2]
	mov r4, r2
	cmp r2, r7
	ldr r1, [r1, #12]
	movle r4, r7
	movlt r5, r6
	ldr r2, [r3, r1, lsl #2]
	add r6, r2, #1
	str r6, [r3, r1, lsl #2]
	mov r2, r5
	cmp r4, r6
	movle r4, r6
	movlt r2, r1
	add r1, r0, #8
	cmp r1, #32
	add r0, r0, #4
	blt label135
label139:
	ldr r3, [sp, #224]
	ldr r1, [r3, r0, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #192]
	ldr r5, [r3, r1, lsl #2]
	add r5, r5, #1
	str r5, [r3, r1, lsl #2]
	cmp r4, r5
	movle r4, r5
	movlt r2, r1
	cmp r0, #32
	blt label139
	mov r0, r2
	bl putint
	mov r1, #0
.p2align 4
label144:
	ldr r0, [sp, #200]
	ldr r4, [r0, r1, lsl #2]
	add r2, r0, r1, lsl #2
	ldr r3, [sp, #224]
	str r4, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r2, [r2, #12]
	str r2, [r0, #12]
	add r0, r1, #8
	cmp r0, #32
	add r1, r1, #4
	blt label144
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label146
label1031:
	mov r1, #0
	b label148
label146:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label146
	b label1031
.p2align 4
label148:
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label524
.p2align 4
label523:
	mov r4, #0
.p2align 4
label155:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label155
	mov r1, #0
.p2align 4
label157:
	ldr r0, [sp, #200]
	ldr r4, [r0, r1, lsl #2]
	add r2, r0, r1, lsl #2
	ldr r3, [sp, #224]
	str r4, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r2, [r2, #12]
	str r2, [r0, #12]
	add r0, r1, #8
	cmp r0, #32
	add r1, r1, #4
	blt label157
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label159
	b label1036
.p2align 4
label524:
	mov r0, #0
	cmp r2, r0
	bgt label152
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label524
	b label523
.p2align 4
label152:
	ldr r3, [sp, #224]
	add r6, r0, #1
	ldr r4, [r3, r0, lsl #2]
	add r5, r3, r0, lsl #2
	ldr r5, [r5, #4]
	cmp r4, r5
	bgt label153
	mov r0, r6
	cmp r2, r6
	bgt label152
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label524
	b label523
.p2align 4
label153:
	ldr r3, [sp, #224]
	add r7, r3, r0, lsl #2
	str r4, [r7, #4]
	str r5, [r3, r0, lsl #2]
	mov r0, r6
	cmp r2, r6
	bgt label152
	add r1, r1, #1
	rsb r0, r1, #32
	cmp r1, #31
	sub r2, r0, #1
	blt label524
	b label523
label1036:
	mov r0, #1
	b label161
label159:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label159
	b label1036
.p2align 4
label161:
	cmp r0, #32
	bge label583
.p2align 4
label201:
	ldr r3, [sp, #224]
	sub r2, r0, #1
	ldr r1, [r3, r0, lsl #2]
	cmn r2, #1
	bgt label204
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r3, r2, lsl #2]
	cmp r0, #32
	blt label201
	b label583
.p2align 4
label204:
	ldr r3, [sp, #224]
	ldr r4, [r3, r2, lsl #2]
	cmp r1, r4
	blt label205
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r3, r2, lsl #2]
	cmp r0, #32
	blt label201
	b label583
.p2align 4
label205:
	add r5, r2, #1
	ldr r3, [sp, #224]
	sub r2, r2, #1
	str r4, [r3, r5, lsl #2]
	cmn r2, #1
	bgt label204
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r3, r2, lsl #2]
	cmp r0, #32
	blt label201
.p2align 4
label583:
	mov r4, #0
.p2align 4
label163:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label163
	mov r1, #0
.p2align 4
label165:
	ldr r0, [sp, #200]
	ldr r4, [r0, r1, lsl #2]
	add r2, r0, r1, lsl #2
	ldr r3, [sp, #224]
	str r4, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r2, [r2, #12]
	str r2, [r0, #12]
	add r0, r1, #8
	cmp r0, #32
	add r1, r1, #4
	blt label165
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	bge label169
label167:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label167
label169:
	ldr r3, [sp, #224]
	mov r1, #0
	mov r2, #31
	mov r0, r3
	bl QuickSort
	mov r4, #0
.p2align 4
label170:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label170
	mov r1, #0
.p2align 4
label172:
	ldr r0, [sp, #200]
	ldr r4, [r0, r1, lsl #2]
	add r2, r0, r1, lsl #2
	ldr r3, [sp, #224]
	str r4, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r2, [r2, #12]
	str r2, [r0, #12]
	add r0, r1, #8
	cmp r0, #32
	add r1, r1, #4
	blt label172
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label174
label1039:
	mov r1, #0
	mov r0, r1
	b label176
label174:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label174
	b label1039
.p2align 4
label176:
	cmp r0, #32
	blt label179
.p2align 4
label663:
	mov r4, #0
	b label182
.p2align 4
label179:
	ldr r3, [sp, #224]
	ldr r2, [r3, r0, lsl #2]
	add r1, r1, r2
	and r2, r0, #3
	cmp r2, #3
	bne label181
	str r1, [r3, r0, lsl #2]
	mov r1, #0
	add r0, r0, #1
	cmp r0, #32
	blt label179
	b label663
.p2align 4
label181:
	mov r2, #0
	ldr r3, [sp, #224]
	str r2, [r3, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #32
	blt label179
	b label663
.p2align 4
label182:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label182
	mov r1, #0
.p2align 4
label184:
	ldr r0, [sp, #200]
	ldr r4, [r0, r1, lsl #2]
	add r2, r0, r1, lsl #2
	ldr r3, [sp, #224]
	str r4, [r3, r1, lsl #2]
	add r0, r3, r1, lsl #2
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r2, [r2, #12]
	str r2, [r0, #12]
	add r0, r1, #8
	cmp r0, #32
	add r1, r1, #4
	blt label184
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label186
label1043:
	mov r2, #0
	mov r1, r2
	mov r0, r2
	b label188
label186:
	ldr r0, [sp, #200]
	ldr r0, [r0, r1, lsl #2]
	ldr r3, [sp, #224]
	str r0, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #32
	blt label186
	b label1043
.p2align 4
label188:
	cmp r1, #32
	blt label192
.p2align 4
label720:
	mov r4, #0
	ldr r3, [sp, #224]
	str r4, [r3, #120]
	str r4, [r3, #124]
	b label198
.p2align 4
label192:
	cmp r1, #2
	blt label193
	beq label195
	b label196
.p2align 4
label193:
	ldr r3, [sp, #224]
	ldr r3, [r3, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r3
	cmp r1, #32
	blt label192
	b label720
label196:
	ldr r3, [sp, #224]
	add r4, r3, r1, lsl #2
	ldr r3, [r3, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, r3
	sub r0, r0, r2
	movw r2, #21846
	movt r2, #21845
	smmul r2, r0, r2
	add r3, r2, r2, lsr #31
	ldr r2, [r4, #-8]
	str r3, [r4, #-8]
	b label188
.p2align 4
label198:
	ldr r3, [sp, #224]
	ldr r0, [r3, r4, lsl #2]
	bl putint
	add r4, r4, #1
	cmp r4, #32
	blt label198
	mov r0, #0
	add sp, sp, #364
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label195:
	ldr r2, [sp, #60]
	movw r1, #21846
	movt r1, #21845
	smmul r1, r0, r1
	add r1, r1, r1, lsr #31
	str r1, [sp, #60]
	mov r1, #3
	b label188
