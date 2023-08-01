.arch armv7ve
.data
.bss
.align 8
array:
	.zero	2097152
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r1, #0
	sub sp, sp, #28
	mov r10, r1
	str r1, [sp, #20]
.p2align 4
label2:
	movw r8, #:lower16:array
	movt r8, #:upper16:array
	ldr r10, [sp, #20]
	add r0, r8, r1, lsl #2
	add r1, r1, #64
	cmp r1, #524288
	str r10, [r0, #0]
	str r10, [r0, #4]
	str r10, [r0, #8]
	str r10, [r0, #12]
	str r10, [r0, #16]
	str r10, [r0, #20]
	str r10, [r0, #24]
	str r10, [r0, #28]
	str r10, [r0, #32]
	str r10, [r0, #36]
	str r10, [r0, #40]
	str r10, [r0, #44]
	str r10, [r0, #48]
	str r10, [r0, #52]
	str r10, [r0, #56]
	str r10, [r0, #60]
	str r10, [r0, #64]
	str r10, [r0, #68]
	str r10, [r0, #72]
	str r10, [r0, #76]
	str r10, [r0, #80]
	str r10, [r0, #84]
	str r10, [r0, #88]
	str r10, [r0, #92]
	str r10, [r0, #96]
	str r10, [r0, #100]
	str r10, [r0, #104]
	str r10, [r0, #108]
	str r10, [r0, #112]
	str r10, [r0, #116]
	str r10, [r0, #120]
	str r10, [r0, #124]
	str r10, [r0, #128]
	str r10, [r0, #132]
	str r10, [r0, #136]
	str r10, [r0, #140]
	str r10, [r0, #144]
	str r10, [r0, #148]
	str r10, [r0, #152]
	str r10, [r0, #156]
	str r10, [r0, #160]
	str r10, [r0, #164]
	str r10, [r0, #168]
	str r10, [r0, #172]
	str r10, [r0, #176]
	str r10, [r0, #180]
	str r10, [r0, #184]
	str r10, [r0, #188]
	str r10, [r0, #192]
	str r10, [r0, #196]
	str r10, [r0, #200]
	str r10, [r0, #204]
	str r10, [r0, #208]
	str r10, [r0, #212]
	str r10, [r0, #216]
	str r10, [r0, #220]
	str r10, [r0, #224]
	str r10, [r0, #228]
	str r10, [r0, #232]
	str r10, [r0, #236]
	str r10, [r0, #240]
	str r10, [r0, #244]
	str r10, [r0, #248]
	str r10, [r0, #252]
	blt label2
	str r10, [sp, #16]
	mov r0, r10
label4:
	ldr r10, [sp, #16]
	cmp r10, #2
	bge label56
	ldr r10, [sp, #20]
	str r10, [sp, #12]
	b label7
label56:
	movw r8, #:lower16:array
	movt r8, #:upper16:array
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
	ldr r10, [sp, #20]
	add sp, sp, #28
	mov r0, r10
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label7:
	ldr r10, [sp, #12]
	cmp r10, #2
	blt label135
	b label134
label138:
	ldr r10, [sp, #12]
	add r10, r10, #1
	str r10, [sp, #12]
	b label7
label135:
	ldr r10, [sp, #20]
	str r10, [sp, #8]
label10:
	ldr r10, [sp, #8]
	cmp r10, #2
	bge label138
	ldr r10, [sp, #20]
	str r10, [sp, #4]
.p2align 4
label13:
	ldr r10, [sp, #4]
	cmp r10, #2
	blt label143
	b label142
.p2align 4
label146:
	ldr r10, [sp, #4]
	add r10, r10, #1
	str r10, [sp, #4]
	b label13
.p2align 4
label143:
	ldr r10, [sp, #20]
	str r10, [sp, #0]
.p2align 4
label16:
	ldr r10, [sp, #0]
	cmp r10, #2
	bge label146
	ldr r10, [sp, #20]
	mov r1, r10
.p2align 4
label19:
	cmp r1, #2
	blt label151
	b label150
.p2align 4
label154:
	add r1, r1, #1
	b label19
.p2align 4
label151:
	ldr r10, [sp, #20]
	mov r2, r10
.p2align 4
label22:
	cmp r2, #2
	bge label154
	ldr r10, [sp, #20]
	mov r3, r10
.p2align 4
label25:
	cmp r3, #2
	blt label159
	b label158
.p2align 4
label162:
	add r3, r3, #1
	b label25
.p2align 4
label159:
	ldr r10, [sp, #20]
	mov r4, r10
.p2align 4
label28:
	cmp r4, #2
	bge label162
	ldr r10, [sp, #20]
	mov r5, r10
.p2align 4
label31:
	cmp r5, #2
	blt label167
	b label166
.p2align 4
label170:
	add r5, r5, #1
	b label31
.p2align 4
label167:
	ldr r10, [sp, #20]
	mov r6, r10
.p2align 4
label34:
	cmp r6, #2
	bge label170
	ldr r10, [sp, #20]
	mov r7, r10
	cmp r10, #2
	blt label40
.p2align 4
label174:
	add r6, r6, #1
	b label34
.p2align 4
label40:
	movw r8, #:lower16:array
	movt r8, #:upper16:array
	ldr r10, [sp, #16]
	add r8, r8, r10, lsl #20
	ldr r10, [sp, #12]
	add r8, r8, r10, lsl #19
	ldr r10, [sp, #8]
	add r8, r8, r10, lsl #18
	ldr r10, [sp, #4]
	add r8, r8, r10, lsl #17
	ldr r10, [sp, #0]
	add r8, r8, r10, lsl #16
	ldr r10, [sp, #20]
	add r8, r8, r1, lsl #15
	add r8, r8, r2, lsl #14
	add r8, r8, r3, lsl #13
	add r8, r8, r4, lsl #12
	add r8, r8, r5, lsl #11
	add r8, r8, r6, lsl #10
	add r9, r8, r7, lsl #9
.p2align 4
label41:
	add r8, r9, r10, lsl #8
	add r11, r0, #1
	add r10, r10, #1
	str r0, [r8, #0]
	cmp r10, #2
	str r11, [r8, #4]
	add r11, r0, #2
	str r11, [r8, #8]
	add r11, r0, #3
	str r11, [r8, #12]
	add r11, r0, #4
	str r11, [r8, #16]
	add r11, r0, #5
	str r11, [r8, #20]
	add r11, r0, #6
	str r11, [r8, #24]
	add r11, r0, #7
	str r11, [r8, #28]
	add r11, r0, #8
	str r11, [r8, #32]
	add r11, r0, #9
	str r11, [r8, #36]
	add r11, r0, #10
	str r11, [r8, #40]
	add r11, r0, #11
	str r11, [r8, #44]
	add r11, r0, #12
	str r11, [r8, #48]
	add r11, r0, #13
	str r11, [r8, #52]
	add r11, r0, #14
	str r11, [r8, #56]
	add r11, r0, #15
	str r11, [r8, #60]
	add r11, r0, #16
	str r11, [r8, #64]
	add r11, r0, #17
	str r11, [r8, #68]
	add r11, r0, #18
	str r11, [r8, #72]
	add r11, r0, #19
	str r11, [r8, #76]
	add r11, r0, #20
	str r11, [r8, #80]
	add r11, r0, #21
	str r11, [r8, #84]
	add r11, r0, #22
	str r11, [r8, #88]
	add r11, r0, #23
	str r11, [r8, #92]
	add r11, r0, #24
	str r11, [r8, #96]
	add r11, r0, #25
	str r11, [r8, #100]
	add r11, r0, #26
	str r11, [r8, #104]
	add r11, r0, #27
	str r11, [r8, #108]
	add r11, r0, #28
	str r11, [r8, #112]
	add r11, r0, #29
	str r11, [r8, #116]
	add r11, r0, #30
	str r11, [r8, #120]
	add r11, r0, #31
	str r11, [r8, #124]
	add r11, r0, #32
	str r11, [r8, #128]
	add r11, r0, #33
	str r11, [r8, #132]
	add r11, r0, #34
	str r11, [r8, #136]
	add r11, r0, #35
	str r11, [r8, #140]
	add r11, r0, #36
	str r11, [r8, #144]
	add r11, r0, #37
	str r11, [r8, #148]
	add r11, r0, #38
	str r11, [r8, #152]
	add r11, r0, #39
	str r11, [r8, #156]
	add r11, r0, #40
	str r11, [r8, #160]
	add r11, r0, #41
	str r11, [r8, #164]
	add r11, r0, #42
	str r11, [r8, #168]
	add r11, r0, #43
	str r11, [r8, #172]
	add r11, r0, #44
	str r11, [r8, #176]
	add r11, r0, #45
	str r11, [r8, #180]
	add r11, r0, #46
	str r11, [r8, #184]
	add r11, r0, #47
	str r11, [r8, #188]
	add r11, r0, #48
	str r11, [r8, #192]
	add r11, r0, #49
	str r11, [r8, #196]
	add r11, r0, #50
	str r11, [r8, #200]
	add r11, r0, #51
	str r11, [r8, #204]
	add r11, r0, #52
	str r11, [r8, #208]
	add r11, r0, #53
	str r11, [r8, #212]
	add r11, r0, #54
	str r11, [r8, #216]
	add r11, r0, #55
	str r11, [r8, #220]
	add r11, r0, #56
	str r11, [r8, #224]
	add r11, r0, #57
	str r11, [r8, #228]
	add r11, r0, #58
	str r11, [r8, #232]
	add r11, r0, #59
	str r11, [r8, #236]
	add r11, r0, #60
	str r11, [r8, #240]
	add r11, r0, #61
	str r11, [r8, #244]
	add r11, r0, #62
	str r11, [r8, #248]
	add r11, r0, #63
	add r0, r0, #64
	str r11, [r8, #252]
	blt label41
	add r7, r7, #1
	cmp r7, #2
	blt label40
	b label174
.p2align 4
label150:
	ldr r10, [sp, #0]
	add r10, r10, #1
	str r10, [sp, #0]
	b label16
.p2align 4
label166:
	add r4, r4, #1
	b label28
label134:
	ldr r10, [sp, #16]
	add r10, r10, #1
	str r10, [sp, #16]
	b label4
.p2align 4
label158:
	add r2, r2, #1
	b label22
label142:
	ldr r10, [sp, #8]
	add r10, r10, #1
	str r10, [sp, #8]
	b label10
