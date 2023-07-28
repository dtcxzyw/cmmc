.arch armv7ve
.data
.bss
.align 4
array:
	.zero	2097152
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	movw r8, #:lower16:array
	sub sp, sp, #28
	movt r8, #:upper16:array
	str r8, [sp, #0]
label2:
	ldr r8, [sp, #0]
	mov r2, #0
	add r1, r8, r0, lsl #2
	str r2, [r8, r0, lsl #2]
	add r0, r0, #64
	str r2, [r1, #4]
	cmp r0, #524288
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	str r2, [r1, #64]
	str r2, [r1, #68]
	str r2, [r1, #72]
	str r2, [r1, #76]
	str r2, [r1, #80]
	str r2, [r1, #84]
	str r2, [r1, #88]
	str r2, [r1, #92]
	str r2, [r1, #96]
	str r2, [r1, #100]
	str r2, [r1, #104]
	str r2, [r1, #108]
	str r2, [r1, #112]
	str r2, [r1, #116]
	str r2, [r1, #120]
	str r2, [r1, #124]
	str r2, [r1, #128]
	str r2, [r1, #132]
	str r2, [r1, #136]
	str r2, [r1, #140]
	str r2, [r1, #144]
	str r2, [r1, #148]
	str r2, [r1, #152]
	str r2, [r1, #156]
	str r2, [r1, #160]
	str r2, [r1, #164]
	str r2, [r1, #168]
	str r2, [r1, #172]
	str r2, [r1, #176]
	str r2, [r1, #180]
	str r2, [r1, #184]
	str r2, [r1, #188]
	str r2, [r1, #192]
	str r2, [r1, #196]
	str r2, [r1, #200]
	str r2, [r1, #204]
	str r2, [r1, #208]
	str r2, [r1, #212]
	str r2, [r1, #216]
	str r2, [r1, #220]
	str r2, [r1, #224]
	str r2, [r1, #228]
	str r2, [r1, #232]
	str r2, [r1, #236]
	str r2, [r1, #240]
	str r2, [r1, #244]
	str r2, [r1, #248]
	str r2, [r1, #252]
	blt label2
	mov r0, #0
	str r0, [sp, #4]
	mov r9, r0
label4:
	ldr r9, [sp, #4]
	cmp r9, #2
	bge label56
	mov r8, #0
	str r8, [sp, #8]
	b label7
label134:
	ldr r9, [sp, #4]
	add r9, r9, #1
	str r9, [sp, #4]
	b label4
label56:
	ldr r8, [sp, #0]
	ldr r0, [r8, #0]
	ldr r1, [r8, #8]
	add r0, r0, r1
	ldr r1, [r8, #4]
	add r0, r0, r1
	ldr r1, [r8, #40]
	add r0, r0, r1
	ldr r1, [r8, #24]
	add r0, r0, r1
	ldr r1, [r8, #228]
	add r0, r0, r1
	ldr r1, [r8, #56]
	add r0, r0, r1
	ldr r1, [r8, #964]
	add r0, r0, r1
	ldr r1, [r8, #224]
	add r0, r0, r1
	ldr r1, [r8, #804]
	add r0, r0, r1
	ldr r1, [r8, #1996]
	add r0, r0, r1
	ldr r1, [r8, #3224]
	add r0, r0, r1
	movw r1, #26400
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	ldr r1, [r8, #508]
	add r0, r0, r1
	ldr r1, [r8, #124]
	add r0, r0, r1
	movw r1, #50064
	movt r1, #3
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #15956
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #41932
	movt r1, #12
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #19456
	movt r1, #4
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	bl putint
	add sp, sp, #28
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label7:
	ldr r8, [sp, #8]
	cmp r8, #2
	bge label134
	mov r8, #0
	str r8, [sp, #12]
	b label10
label138:
	ldr r8, [sp, #8]
	add r8, r8, #1
	str r8, [sp, #8]
	b label7
label10:
	ldr r8, [sp, #12]
	cmp r8, #2
	bge label138
	mov r8, #0
	str r8, [sp, #16]
label13:
	ldr r8, [sp, #16]
	cmp r8, #2
	blt label143
	ldr r8, [sp, #12]
	add r8, r8, #1
	str r8, [sp, #12]
	b label10
label143:
	mov r8, #0
	str r8, [sp, #20]
label16:
	ldr r8, [sp, #20]
	cmp r8, #2
	bge label146
	mov r1, r0
	mov r0, #0
label19:
	cmp r0, #2
	bge label150
	mov r2, r1
	mov r1, #0
	b label22
label154:
	add r0, r0, #1
	mov r1, r2
	b label19
label22:
	cmp r1, #2
	bge label154
	mov r5, r2
	mov r2, #0
label25:
	cmp r2, #2
	blt label159
	add r1, r1, #1
	mov r2, r5
	b label22
label159:
	mov r3, #0
label28:
	cmp r3, #2
	bge label162
	mov r4, #0
label31:
	cmp r4, #2
	bge label166
	mov r6, #0
label34:
	cmp r6, #2
	bge label170
	mov r7, #0
label37:
	cmp r7, #2
	blt label40
	b label174
label332:
	add r7, r7, #1
	b label37
label40:
	ldr r8, [sp, #0]
	ldr r9, [sp, #4]
	add r9, r8, r9, lsl #20
	ldr r8, [sp, #8]
	add r9, r9, r8, lsl #19
	ldr r8, [sp, #12]
	add r9, r9, r8, lsl #18
	ldr r8, [sp, #16]
	add r9, r9, r8, lsl #17
	ldr r8, [sp, #20]
	add r8, r9, r8, lsl #16
	add r8, r8, r0, lsl #15
	add r8, r8, r1, lsl #14
	add r8, r8, r2, lsl #13
	add r8, r8, r3, lsl #12
	add r8, r8, r4, lsl #11
	add r8, r8, r6, lsl #10
	add r10, r8, r7, lsl #9
	mov r8, #0
label41:
	lsl r11, r8, #8
	add r9, r10, r8, lsl #8
	str r5, [r10, r11]
	add r8, r8, #1
	add r11, r5, #1
	cmp r8, #2
	str r11, [r9, #4]
	add r11, r5, #2
	str r11, [r9, #8]
	add r11, r5, #3
	str r11, [r9, #12]
	add r11, r5, #4
	str r11, [r9, #16]
	add r11, r5, #5
	str r11, [r9, #20]
	add r11, r5, #6
	str r11, [r9, #24]
	add r11, r5, #7
	str r11, [r9, #28]
	add r11, r5, #8
	str r11, [r9, #32]
	add r11, r5, #9
	str r11, [r9, #36]
	add r11, r5, #10
	str r11, [r9, #40]
	add r11, r5, #11
	str r11, [r9, #44]
	add r11, r5, #12
	str r11, [r9, #48]
	add r11, r5, #13
	str r11, [r9, #52]
	add r11, r5, #14
	str r11, [r9, #56]
	add r11, r5, #15
	str r11, [r9, #60]
	add r11, r5, #16
	str r11, [r9, #64]
	add r11, r5, #17
	str r11, [r9, #68]
	add r11, r5, #18
	str r11, [r9, #72]
	add r11, r5, #19
	str r11, [r9, #76]
	add r11, r5, #20
	str r11, [r9, #80]
	add r11, r5, #21
	str r11, [r9, #84]
	add r11, r5, #22
	str r11, [r9, #88]
	add r11, r5, #23
	str r11, [r9, #92]
	add r11, r5, #24
	str r11, [r9, #96]
	add r11, r5, #25
	str r11, [r9, #100]
	add r11, r5, #26
	str r11, [r9, #104]
	add r11, r5, #27
	str r11, [r9, #108]
	add r11, r5, #28
	str r11, [r9, #112]
	add r11, r5, #29
	str r11, [r9, #116]
	add r11, r5, #30
	str r11, [r9, #120]
	add r11, r5, #31
	str r11, [r9, #124]
	add r11, r5, #32
	str r11, [r9, #128]
	add r11, r5, #33
	str r11, [r9, #132]
	add r11, r5, #34
	str r11, [r9, #136]
	add r11, r5, #35
	str r11, [r9, #140]
	add r11, r5, #36
	str r11, [r9, #144]
	add r11, r5, #37
	str r11, [r9, #148]
	add r11, r5, #38
	str r11, [r9, #152]
	add r11, r5, #39
	str r11, [r9, #156]
	add r11, r5, #40
	str r11, [r9, #160]
	add r11, r5, #41
	str r11, [r9, #164]
	add r11, r5, #42
	str r11, [r9, #168]
	add r11, r5, #43
	str r11, [r9, #172]
	add r11, r5, #44
	str r11, [r9, #176]
	add r11, r5, #45
	str r11, [r9, #180]
	add r11, r5, #46
	str r11, [r9, #184]
	add r11, r5, #47
	str r11, [r9, #188]
	add r11, r5, #48
	str r11, [r9, #192]
	add r11, r5, #49
	str r11, [r9, #196]
	add r11, r5, #50
	str r11, [r9, #200]
	add r11, r5, #51
	str r11, [r9, #204]
	add r11, r5, #52
	str r11, [r9, #208]
	add r11, r5, #53
	str r11, [r9, #212]
	add r11, r5, #54
	str r11, [r9, #216]
	add r11, r5, #55
	str r11, [r9, #220]
	add r11, r5, #56
	str r11, [r9, #224]
	add r11, r5, #57
	str r11, [r9, #228]
	add r11, r5, #58
	str r11, [r9, #232]
	add r11, r5, #59
	str r11, [r9, #236]
	add r11, r5, #60
	str r11, [r9, #240]
	add r11, r5, #61
	str r11, [r9, #244]
	add r11, r5, #62
	str r11, [r9, #248]
	add r11, r5, #63
	add r5, r5, #64
	str r11, [r9, #252]
	blt label41
	b label332
label174:
	add r6, r6, #1
	b label34
label170:
	add r4, r4, #1
	b label31
label166:
	add r3, r3, #1
	b label28
label162:
	add r2, r2, #1
	b label25
label150:
	ldr r8, [sp, #20]
	mov r0, r1
	add r8, r8, #1
	str r8, [sp, #20]
	b label16
label146:
	ldr r8, [sp, #16]
	add r8, r8, #1
	str r8, [sp, #16]
	b label13
