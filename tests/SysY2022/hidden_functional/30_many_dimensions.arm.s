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
	movw r0, #:lower16:array
	movt r0, #:upper16:array
	mov r1, #0
	sub sp, sp, #76
	mov r10, r1
	str r1, [sp, #16]
label2:
	ldr r10, [sp, #16]
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
	bge label152
	add r0, r0, #256
	b label2
label152:
	movw r0, #:lower16:array
	movt r0, #:upper16:array
	str r0, [sp, #20]
	mov r2, r0
	ldr r10, [sp, #16]
	str r10, [sp, #24]
	mov r1, r10
label7:
	ldr r10, [sp, #24]
	cmp r10, #2
	blt label11
	b label84
label161:
	ldr r10, [sp, #24]
	ldr r2, [sp, #20]
	add r10, r10, #1
	add r2, r2, #1048576
	str r2, [sp, #20]
	str r10, [sp, #24]
	b label7
label84:
	movw r0, #:lower16:array
	movt r0, #:upper16:array
	ldr r1, [r0, #0]
	ldr r2, [r0, #8]
	add r1, r1, r2
	ldr r2, [r0, #4]
	add r1, r1, r2
	ldr r2, [r0, #40]
	add r1, r1, r2
	ldr r2, [r0, #24]
	add r1, r1, r2
	ldr r2, [r0, #228]
	add r1, r1, r2
	ldr r2, [r0, #56]
	add r1, r1, r2
	ldr r2, [r0, #964]
	add r1, r1, r2
	ldr r2, [r0, #224]
	add r1, r1, r2
	ldr r2, [r0, #804]
	add r1, r1, r2
	ldr r2, [r0, #1996]
	add r1, r1, r2
	ldr r2, [r0, #3224]
	add r1, r1, r2
	movw r2, #26400
	add r2, r0, r2
	ldr r2, [r2, #0]
	add r1, r1, r2
	ldr r2, [r0, #508]
	add r1, r1, r2
	ldr r2, [r0, #124]
	add r1, r1, r2
	movw r2, #50064
	movt r2, #3
	add r2, r0, r2
	ldr r2, [r2, #0]
	add r1, r1, r2
	movw r2, #15956
	add r2, r0, r2
	ldr r2, [r2, #0]
	add r1, r1, r2
	movw r2, #41932
	movt r2, #12
	add r2, r0, r2
	ldr r2, [r2, #0]
	add r1, r1, r2
	movw r2, #19456
	movt r2, #4
	add r0, r0, r2
	ldr r0, [r0, #0]
	add r0, r1, r0
	bl putint
	ldr r10, [sp, #16]
	add sp, sp, #76
	mov r0, r10
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label11:
	ldr r2, [sp, #20]
	str r2, [sp, #28]
	ldr r10, [sp, #16]
	str r10, [sp, #32]
	mov r0, r10
label12:
	ldr r0, [sp, #32]
	cmp r0, #2
	blt label16
	b label161
label165:
	ldr r0, [sp, #32]
	ldr r2, [sp, #28]
	add r0, r0, #1
	add r2, r2, #524288
	str r2, [sp, #28]
	str r0, [sp, #32]
	b label12
label16:
	ldr r2, [sp, #28]
	str r2, [sp, #36]
	ldr r10, [sp, #16]
	str r10, [sp, #40]
	mov r0, r10
label17:
	ldr r0, [sp, #40]
	cmp r0, #2
	bge label165
	ldr r2, [sp, #36]
	str r2, [sp, #44]
	ldr r10, [sp, #16]
	str r10, [sp, #48]
	mov r0, r10
	cmp r10, #2
	blt label26
label169:
	ldr r0, [sp, #40]
	ldr r2, [sp, #36]
	add r0, r0, #1
	add r2, r2, #262144
	str r2, [sp, #36]
	str r0, [sp, #40]
	b label17
label26:
	ldr r2, [sp, #44]
	str r2, [sp, #52]
	ldr r10, [sp, #16]
	str r10, [sp, #56]
	mov r0, r10
label27:
	ldr r0, [sp, #56]
	cmp r0, #2
	blt label32
	ldr r0, [sp, #48]
	ldr r2, [sp, #44]
	add r0, r0, #1
	add r2, r2, #131072
	cmp r0, #2
	str r2, [sp, #44]
	str r0, [sp, #48]
	blt label26
	b label169
label32:
	ldr r2, [sp, #52]
	str r2, [sp, #60]
	ldr r10, [sp, #16]
	str r10, [sp, #64]
	mov r0, r10
	cmp r10, #2
	bge label179
label37:
	ldr r2, [sp, #60]
	str r2, [sp, #12]
	ldr r10, [sp, #16]
	str r10, [sp, #8]
	mov r0, r10
	cmp r10, #2
	blt label43
label42:
	ldr r0, [sp, #64]
	ldr r2, [sp, #60]
	add r0, r0, #1
	add r2, r2, #32768
	cmp r0, #2
	str r2, [sp, #60]
	str r0, [sp, #64]
	blt label37
	b label179
label43:
	ldr r2, [sp, #12]
	str r2, [sp, #4]
	ldr r10, [sp, #16]
	str r10, [sp, #0]
	mov r0, r10
label44:
	ldr r0, [sp, #0]
	cmp r0, #2
	bge label48
	ldr r2, [sp, #4]
	ldr r10, [sp, #16]
	mov r3, r10
	cmp r10, #2
	bge label195
label54:
	mov r4, r2
	ldr r10, [sp, #16]
	mov r5, r10
	b label55
label195:
	ldr r0, [sp, #0]
	ldr r2, [sp, #4]
	add r0, r0, #1
	add r2, r2, #8192
	str r2, [sp, #4]
	str r0, [sp, #0]
	b label44
label59:
	add r3, r3, #1
	add r2, r2, #4096
	cmp r3, #2
	blt label54
	b label195
label179:
	ldr r0, [sp, #56]
	ldr r2, [sp, #52]
	add r0, r0, #1
	add r2, r2, #65536
	str r2, [sp, #52]
	str r0, [sp, #56]
	b label27
label48:
	ldr r0, [sp, #8]
	ldr r2, [sp, #12]
	add r0, r0, #1
	add r2, r2, #16384
	cmp r0, #2
	str r2, [sp, #12]
	str r0, [sp, #8]
	blt label43
	b label42
label55:
	cmp r5, #2
	blt label60
	b label59
label205:
	add r5, r5, #1
	add r4, r4, #2048
	b label55
label60:
	mov r6, r4
	ldr r10, [sp, #16]
	mov r7, r10
label61:
	cmp r7, #2
	blt label65
	b label205
label209:
	add r7, r7, #1
	add r6, r6, #1024
	b label61
label65:
	mov r8, r6
	ldr r10, [sp, #16]
	mov r9, r10
label66:
	cmp r9, #2
	bge label209
	mov r0, r8
	ldr r10, [sp, #16]
label71:
	str r1, [r0, #0]
	add r11, r1, #1
	add r10, r10, #1
	str r11, [r0, #4]
	cmp r10, #2
	add r11, r1, #2
	str r11, [r0, #8]
	add r11, r1, #3
	str r11, [r0, #12]
	add r11, r1, #4
	str r11, [r0, #16]
	add r11, r1, #5
	str r11, [r0, #20]
	add r11, r1, #6
	str r11, [r0, #24]
	add r11, r1, #7
	str r11, [r0, #28]
	add r11, r1, #8
	str r11, [r0, #32]
	add r11, r1, #9
	str r11, [r0, #36]
	add r11, r1, #10
	str r11, [r0, #40]
	add r11, r1, #11
	str r11, [r0, #44]
	add r11, r1, #12
	str r11, [r0, #48]
	add r11, r1, #13
	str r11, [r0, #52]
	add r11, r1, #14
	str r11, [r0, #56]
	add r11, r1, #15
	str r11, [r0, #60]
	add r11, r1, #16
	str r11, [r0, #64]
	add r11, r1, #17
	str r11, [r0, #68]
	add r11, r1, #18
	str r11, [r0, #72]
	add r11, r1, #19
	str r11, [r0, #76]
	add r11, r1, #20
	str r11, [r0, #80]
	add r11, r1, #21
	str r11, [r0, #84]
	add r11, r1, #22
	str r11, [r0, #88]
	add r11, r1, #23
	str r11, [r0, #92]
	add r11, r1, #24
	str r11, [r0, #96]
	add r11, r1, #25
	str r11, [r0, #100]
	add r11, r1, #26
	str r11, [r0, #104]
	add r11, r1, #27
	str r11, [r0, #108]
	add r11, r1, #28
	str r11, [r0, #112]
	add r11, r1, #29
	str r11, [r0, #116]
	add r11, r1, #30
	str r11, [r0, #120]
	add r11, r1, #31
	str r11, [r0, #124]
	add r11, r1, #32
	str r11, [r0, #128]
	add r11, r1, #33
	str r11, [r0, #132]
	add r11, r1, #34
	str r11, [r0, #136]
	add r11, r1, #35
	str r11, [r0, #140]
	add r11, r1, #36
	str r11, [r0, #144]
	add r11, r1, #37
	str r11, [r0, #148]
	add r11, r1, #38
	str r11, [r0, #152]
	add r11, r1, #39
	str r11, [r0, #156]
	add r11, r1, #40
	str r11, [r0, #160]
	add r11, r1, #41
	str r11, [r0, #164]
	add r11, r1, #42
	str r11, [r0, #168]
	add r11, r1, #43
	str r11, [r0, #172]
	add r11, r1, #44
	str r11, [r0, #176]
	add r11, r1, #45
	str r11, [r0, #180]
	add r11, r1, #46
	str r11, [r0, #184]
	add r11, r1, #47
	str r11, [r0, #188]
	add r11, r1, #48
	str r11, [r0, #192]
	add r11, r1, #49
	str r11, [r0, #196]
	add r11, r1, #50
	str r11, [r0, #200]
	add r11, r1, #51
	str r11, [r0, #204]
	add r11, r1, #52
	str r11, [r0, #208]
	add r11, r1, #53
	str r11, [r0, #212]
	add r11, r1, #54
	str r11, [r0, #216]
	add r11, r1, #55
	str r11, [r0, #220]
	add r11, r1, #56
	str r11, [r0, #224]
	add r11, r1, #57
	str r11, [r0, #228]
	add r11, r1, #58
	str r11, [r0, #232]
	add r11, r1, #59
	str r11, [r0, #236]
	add r11, r1, #60
	str r11, [r0, #240]
	add r11, r1, #61
	str r11, [r0, #244]
	add r11, r1, #62
	str r11, [r0, #248]
	add r11, r1, #63
	add r1, r1, #64
	str r11, [r0, #252]
	blt label75
	add r9, r9, #1
	add r8, r8, #512
	b label66
label75:
	add r0, r0, #256
	b label71
