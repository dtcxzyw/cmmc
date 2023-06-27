.arch armv7ve
.data
.align 4
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #396
	mov r4, r0
	str r0, [sp, #252]
	mov r4, r1
	str r1, [sp, #140]
	mov r1, r2
	str r2, [sp, #264]
	mov r0, r3
	str r3, [sp, #208]
	add r4, sp, #64
	str r4, [sp, #300]
	add r3, sp, #144
	str r3, [sp, #292]
	add r3, sp, #324
	str r3, [sp, #212]
	add r1, r2, #1
	cmp r1, r0
	mov r0, #0
	movwge r0, #1
	ldr r4, [sp, #252]
	cmn r4, #1
	mov r1, #0
	movweq r1, #1
	orr r0, r1, r0
	mov r1, #0
	str r1, [sp, #324]
	add r4, r3, #4
	str r4, [sp, #388]
	str r1, [r3, #4]
	add r2, r3, #8
	str r2, [sp, #128]
	str r1, [r3, #8]
	add r2, r3, #12
	str r2, [sp, #216]
	str r1, [r3, #12]
	add r2, r3, #16
	str r2, [sp, #248]
	str r1, [r3, #16]
	add r2, r3, #20
	str r2, [sp, #288]
	str r1, [r3, #20]
	add r2, r3, #24
	str r2, [sp, #304]
	str r1, [r3, #24]
	add r2, r3, #28
	str r2, [sp, #312]
	str r1, [r3, #28]
	add r2, r3, #32
	str r2, [sp, #0]
	str r1, [r3, #32]
	add r2, r3, #36
	str r2, [sp, #4]
	str r1, [r3, #36]
	add r2, r3, #40
	str r2, [sp, #16]
	str r1, [r3, #40]
	add r2, r3, #44
	str r2, [sp, #24]
	str r1, [r3, #44]
	add r2, r3, #48
	str r2, [sp, #32]
	str r1, [r3, #48]
	add r2, r3, #52
	str r2, [sp, #40]
	str r1, [r3, #52]
	add r2, r3, #56
	str r2, [sp, #52]
	str r1, [r3, #56]
	add r2, r3, #60
	str r2, [sp, #56]
	str r1, [r3, #60]
	str r1, [sp, #144]
	ldr r3, [sp, #292]
	add r2, r3, #4
	ldr r3, [sp, #292]
	str r1, [r3, #4]
	ldr r3, [sp, #292]
	add r3, r3, #8
	str r3, [sp, #268]
	ldr r3, [sp, #292]
	str r1, [r3, #8]
	ldr r3, [sp, #292]
	add r3, r3, #12
	str r3, [sp, #244]
	ldr r3, [sp, #292]
	str r1, [r3, #12]
	ldr r3, [sp, #292]
	add r3, r3, #16
	str r3, [sp, #240]
	ldr r3, [sp, #292]
	str r1, [r3, #16]
	ldr r3, [sp, #292]
	add r3, r3, #20
	str r3, [sp, #232]
	ldr r3, [sp, #292]
	str r1, [r3, #20]
	ldr r3, [sp, #292]
	add r3, r3, #24
	str r3, [sp, #224]
	ldr r3, [sp, #292]
	str r1, [r3, #24]
	ldr r3, [sp, #292]
	add r3, r3, #28
	str r3, [sp, #260]
	ldr r3, [sp, #292]
	str r1, [r3, #28]
	ldr r3, [sp, #292]
	add r3, r3, #32
	str r3, [sp, #280]
	ldr r3, [sp, #292]
	str r1, [r3, #32]
	ldr r3, [sp, #292]
	add r3, r3, #36
	str r3, [sp, #308]
	ldr r3, [sp, #292]
	str r1, [r3, #36]
	ldr r3, [sp, #292]
	add r3, r3, #40
	str r3, [sp, #320]
	ldr r3, [sp, #292]
	str r1, [r3, #40]
	ldr r3, [sp, #292]
	add r3, r3, #44
	str r3, [sp, #12]
	ldr r3, [sp, #292]
	str r1, [r3, #44]
	ldr r3, [sp, #292]
	add r3, r3, #48
	str r3, [sp, #20]
	ldr r3, [sp, #292]
	str r1, [r3, #48]
	ldr r3, [sp, #292]
	add r3, r3, #52
	str r3, [sp, #36]
	ldr r3, [sp, #292]
	str r1, [r3, #52]
	ldr r3, [sp, #292]
	add r3, r3, #56
	str r3, [sp, #48]
	ldr r3, [sp, #292]
	str r1, [r3, #56]
	ldr r3, [sp, #292]
	add r3, r3, #60
	str r3, [sp, #136]
	ldr r3, [sp, #292]
	str r1, [r3, #60]
	str r1, [sp, #64]
	ldr r4, [sp, #300]
	add r3, r4, #4
	ldr r4, [sp, #300]
	str r1, [r4, #4]
	ldr r4, [sp, #300]
	add r5, r4, #8
	ldr r4, [sp, #300]
	str r1, [r4, #8]
	ldr r4, [sp, #300]
	add r6, r4, #12
	ldr r4, [sp, #300]
	str r1, [r4, #12]
	ldr r4, [sp, #300]
	add r7, r4, #16
	ldr r4, [sp, #300]
	str r1, [r4, #16]
	ldr r4, [sp, #300]
	add r8, r4, #20
	ldr r4, [sp, #300]
	str r1, [r4, #20]
	ldr r4, [sp, #300]
	add r4, r4, #24
	str r4, [sp, #276]
	ldr r4, [sp, #300]
	str r1, [r4, #24]
	ldr r4, [sp, #300]
	add r4, r4, #28
	str r4, [sp, #256]
	ldr r4, [sp, #300]
	str r1, [r4, #28]
	ldr r4, [sp, #300]
	add r4, r4, #32
	str r4, [sp, #236]
	ldr r4, [sp, #300]
	str r1, [r4, #32]
	ldr r4, [sp, #300]
	add r4, r4, #36
	str r4, [sp, #228]
	ldr r4, [sp, #300]
	str r1, [r4, #36]
	ldr r4, [sp, #300]
	add r4, r4, #40
	str r4, [sp, #272]
	ldr r4, [sp, #300]
	str r1, [r4, #40]
	ldr r4, [sp, #300]
	add r4, r4, #44
	str r4, [sp, #296]
	ldr r4, [sp, #300]
	str r1, [r4, #44]
	ldr r4, [sp, #300]
	add r4, r4, #48
	str r4, [sp, #316]
	ldr r4, [sp, #300]
	str r1, [r4, #48]
	ldr r4, [sp, #300]
	add r4, r4, #52
	str r4, [sp, #8]
	ldr r4, [sp, #300]
	str r1, [r4, #52]
	ldr r4, [sp, #300]
	add r4, r4, #56
	str r4, [sp, #28]
	ldr r4, [sp, #300]
	str r1, [r4, #56]
	ldr r4, [sp, #300]
	add r4, r4, #60
	str r4, [sp, #44]
	ldr r4, [sp, #300]
	str r1, [r4, #60]
	cmp r0, #0
	beq label2
	b label183
label2:
	ldr r4, [sp, #252]
	sub r0, r4, #1
	str r0, [sp, #284]
	ldr r1, [sp, #264]
	ldr r0, [sp, #208]
	cmp r1, r0
	bge label57
	ldr r1, [sp, #264]
	ldr r4, [sp, #140]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label5
	mov r11, #0
	add r10, r11, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
label1308:
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	b label1319
label319:
	mov r10, r0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	b label1320
label183:
	add sp, sp, #396
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label57:
	ldr r1, [sp, #264]
	str r1, [sp, #324]
	ldr r0, [sp, #64]
	ldr r1, [sp, #264]
	add r0, r1, r0
	str r0, [sp, #144]
	ldr r4, [sp, #388]
	str r0, [r4, #0]
	ldr r1, [r3, #0]
	add r0, r0, r1
	str r0, [r2, #0]
	ldr r2, [sp, #128]
	str r0, [r2, #0]
	ldr r1, [r5, #0]
	add r0, r0, r1
	ldr r3, [sp, #268]
	str r0, [r3, #0]
	ldr r2, [sp, #216]
	str r0, [r2, #0]
	ldr r1, [r6, #0]
	add r0, r0, r1
	ldr r3, [sp, #244]
	str r0, [r3, #0]
	ldr r2, [sp, #248]
	str r0, [r2, #0]
	ldr r1, [r7, #0]
	add r0, r0, r1
	ldr r3, [sp, #240]
	str r0, [r3, #0]
	ldr r2, [sp, #288]
	str r0, [r2, #0]
	ldr r1, [r8, #0]
	add r0, r0, r1
	ldr r3, [sp, #232]
	str r0, [r3, #0]
	ldr r2, [sp, #304]
	str r0, [r2, #0]
	ldr r4, [sp, #276]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #224]
	str r0, [r3, #0]
	ldr r2, [sp, #312]
	str r0, [r2, #0]
	ldr r4, [sp, #256]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #260]
	str r0, [r3, #0]
	ldr r2, [sp, #0]
	str r0, [r2, #0]
	ldr r4, [sp, #236]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #280]
	str r0, [r3, #0]
	ldr r2, [sp, #4]
	str r0, [r2, #0]
	ldr r4, [sp, #228]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #308]
	str r0, [r3, #0]
	ldr r2, [sp, #16]
	str r0, [r2, #0]
	ldr r4, [sp, #272]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #320]
	str r0, [r3, #0]
	ldr r2, [sp, #24]
	str r0, [r2, #0]
	ldr r4, [sp, #296]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #12]
	str r0, [r3, #0]
	ldr r2, [sp, #32]
	str r0, [r2, #0]
	ldr r4, [sp, #316]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #20]
	str r0, [r3, #0]
	ldr r2, [sp, #40]
	str r0, [r2, #0]
	ldr r4, [sp, #8]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #36]
	str r0, [r3, #0]
	ldr r2, [sp, #52]
	str r0, [r2, #0]
	ldr r4, [sp, #28]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #48]
	str r0, [r3, #0]
	ldr r2, [sp, #56]
	str r0, [r2, #0]
	ldr r4, [sp, #44]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #136]
	str r0, [r3, #0]
	mov r2, #0
	str r2, [sp, #132]
	cmp r2, #16
	bge label177
label60:
	ldr r3, [sp, #212]
	ldr r2, [sp, #132]
	add r2, r3, r2, lsl #2
	str r2, [sp, #220]
	ldr r3, [sp, #212]
	ldr r2, [sp, #132]
	ldr r0, [r3, r2, lsl #2]
	ldr r3, [sp, #292]
	ldr r2, [sp, #132]
	add r1, r3, r2, lsl #2
	str r1, [sp, #60]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label63
	ldr r2, [sp, #220]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label409
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	b label1263
label63:
	ldr r2, [sp, #132]
	add r2, r2, #1
	str r2, [sp, #132]
	cmp r2, #16
	bge label177
	b label60
label409:
	mov r2, r0
label65:
	asr r3, r2, #31
	add r3, r2, r3, lsr #28
	asr r3, r3, #4
	mov r4, #16
	mul r3, r3, r4
	sub r5, r2, r3
	ldr r2, [sp, #132]
	cmp r5, r2
	beq label414
	b label67
label177:
	ldr r1, [sp, #264]
	str r1, [sp, #324]
	ldr r0, [sp, #64]
	ldr r1, [sp, #264]
	add r0, r1, r0
	str r0, [sp, #144]
	mov r5, #0
	cmp r5, #16
	bge label183
	cmp r5, #0
	ble label181
	b label182
label414:
	mov r2, r1
	ldr r4, [sp, #140]
	str r0, [r4, r1, lsl #2]
	ldr r2, [sp, #220]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #220]
	str r0, [r2, #0]
	ldr r1, [sp, #60]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label63
	ldr r2, [sp, #220]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label409
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	b label1263
label67:
	ldr r3, [sp, #212]
	ldr r2, [r3, r5, lsl #2]
	ldr r4, [sp, #140]
	ldr r1, [r4, r2, lsl #2]
	ldr r4, [sp, #140]
	str r0, [r4, r2, lsl #2]
	ldr r3, [sp, #212]
	ldr r0, [r3, r5, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #212]
	str r0, [r3, r5, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label425
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	b label1332
label425:
	mov r0, r1
	asr r2, r1, #31
	add r2, r1, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r0, r1, r2
	ldr r2, [sp, #132]
	cmp r0, r2
	beq label94
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label475
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
label1340:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
label1342:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	b label1343
label101:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
label1344:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label104
	b label1344
label1343:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	b label1343
label1263:
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	b label1327
label94:
	ldr r2, [sp, #220]
	ldr r2, [r2, #0]
	mov r0, r1
	ldr r4, [sp, #140]
	str r1, [r4, r2, lsl #2]
	ldr r2, [sp, #220]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #220]
	str r0, [r2, #0]
	ldr r1, [sp, #60]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label63
	ldr r2, [sp, #220]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label409
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	b label1263
label122:
	asr r0, r2, #31
	add r0, r2, r0, lsr #28
	asr r0, r0, #4
	mov r3, #16
	mul r0, r0, r3
	sub r2, r2, r0
	ldr r3, [sp, #212]
	ldr r3, [r3, r2, lsl #2]
	ldr r4, [sp, #140]
	ldr r0, [r4, r3, lsl #2]
	ldr r4, [sp, #140]
	str r1, [r4, r3, lsl #2]
	ldr r3, [sp, #212]
	ldr r1, [r3, r2, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #212]
	str r1, [r3, r2, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label528
	mov r2, r0
	mov r1, #0
	add r3, r1, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r2, #0
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	b label1353
label528:
	mov r2, r0
	asr r1, r0, #31
	add r1, r0, r1, lsr #28
	asr r1, r1, #4
	mov r3, #16
	mul r1, r1, r3
	sub r1, r0, r1
	ldr r2, [sp, #132]
	cmp r1, r2
	beq label574
	mov r1, r0
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label475
	mov r2, r0
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
label1361:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	b label1342
label574:
	mov r1, r0
	b label94
label1353:
	mov r2, #0
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label127
	b label1353
label127:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
label1354:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label130
	b label1354
label130:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	b label1355
label133:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	b label1356
label1355:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	b label1355
label1356:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	b label1356
label136:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
label1357:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	b label1357
label139:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
label1358:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	b label1358
label104:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
label1345:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	b label1345
label107:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	b label1346
label110:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	b label1347
label113:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
label1348:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	b label1348
label1347:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	b label1347
label116:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	b label1349
label119:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
label1350:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label122
	b label1350
label1349:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	b label1349
label1346:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	b label1346
label142:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	b label1359
label145:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
label1360:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label148
	b label1360
label1359:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	b label1359
label475:
	mov r2, r1
	b label122
label148:
	asr r1, r2, #31
	add r1, r2, r1, lsr #28
	asr r1, r1, #4
	mov r3, #16
	mul r1, r1, r3
	sub r1, r2, r1
	ldr r2, [sp, #132]
	cmp r1, r2
	beq label574
	mov r1, r0
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label475
	mov r2, r0
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	b label1361
label1327:
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
label1363:
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label156
	b label1363
label156:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	b label1364
label159:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	b label1365
label1364:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	b label1364
label1365:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	b label1365
label162:
	add r5, r2, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	b label1366
label598:
	mov r5, r3
	add r3, r2, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r5, #0
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	b label1367
label168:
	add r3, r2, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r5, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	b label1368
label608:
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	b label1369
label613:
	mov r2, r5
	add r3, r3, #1
	asr r4, r5, #31
	add r2, r5, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
label1370:
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	b label1370
label1369:
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label613
	b label1369
label1366:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label598
	b label1366
label1367:
	mov r5, #0
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label168
	b label1367
label1368:
	mov r5, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label608
	b label1368
label1332:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label71
	b label1332
label71:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	b label1333
label74:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
label1334:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label77
	b label1334
label77:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	b label1335
label80:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	b label1336
label450:
	mov r3, r2
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	b label1337
label455:
	mov r0, r3
	add r3, r2, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r0, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	b label1338
label89:
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	b label1339
label92:
	asr r2, r0, #31
	add r2, r0, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r0, r0, r2
	ldr r2, [sp, #132]
	cmp r0, r2
	beq label94
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label475
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label101
	b label1340
label1339:
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label92
	b label1339
label1337:
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label455
	b label1337
label1336:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label450
	b label1336
label1338:
	mov r0, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label89
	b label1338
label1335:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	b label1335
label1333:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	b label1333
label39:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	b label1321
label1320:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label39
	b label1320
label1319:
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	b label1319
label42:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
label1322:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label45
	b label1322
label1321:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label42
	b label1321
label45:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	b label1323
label48:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	b label1324
label51:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	b label1325
label349:
	mov r4, r10
	add r10, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
label1326:
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label5
	b label1326
label1325:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	b label1325
label1324:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label51
	b label1324
label1323:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label48
	b label1323
label5:
	asr r4, r0, #31
	add r4, r0, r4, lsr #28
	asr r4, r4, #4
	mov r10, #16
	mul r4, r4, r10
	sub r0, r0, r4
	ldr r4, [sp, #300]
	add r10, r4, r0, lsl #2
	ldr r9, [r9, #0]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label263
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	b label1311
label263:
	mov r0, r9
	b label7
label12:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	b label1312
label15:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
label1313:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	b label1313
label18:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	b label1314
label21:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	b label1315
label24:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	b label1316
label27:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	b label1317
label308:
	mov r4, r9
	add r9, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
label1318:
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label7
	b label1318
label1316:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label27
	b label1316
label1315:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	b label1315
label1317:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	b label1317
label1314:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	b label1314
label1312:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	b label1312
label1311:
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	b label1311
label7:
	asr r4, r0, #31
	add r4, r0, r4, lsr #28
	asr r4, r4, #4
	mov r9, #16
	mul r4, r4, r9
	sub r0, r0, r4
	ldr r4, [sp, #300]
	ldr r0, [r4, r0, lsl #2]
	add r0, r0, #1
	str r0, [r10, #0]
	add r1, r1, #1
	ldr r0, [sp, #208]
	cmp r1, r0
	bge label57
	ldr r4, [sp, #140]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label5
	mov r11, #0
	add r10, r11, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label319
	b label1308
label181:
	ldr r3, [sp, #212]
	ldr r2, [r3, r5, lsl #2]
	ldr r3, [sp, #292]
	ldr r3, [r3, r5, lsl #2]
	ldr r0, [sp, #284]
	ldr r4, [sp, #140]
	mov r1, r4
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	bge label183
	cmp r5, #0
	ble label181
label182:
	sub r0, r5, #1
	ldr r3, [sp, #292]
	ldr r0, [r3, r0, lsl #2]
	ldr r3, [sp, #212]
	str r0, [r3, r5, lsl #2]
	ldr r4, [sp, #300]
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	ldr r3, [sp, #292]
	str r0, [r3, r5, lsl #2]
	b label181
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r6, r4
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r0, #90
	bl _sysy_starttime
	mov r0, #8
	mov r1, r4
	mov r2, #0
	mov r3, r5
	bl radixSort
	cmp r5, #0
	ble label1490
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1478
	b label1477
label1490:
	mov r4, #0
	cmp r4, #0
	bge label1472
	b label1493
label1478:
	add r2, r0, #16
	cmp r2, r5
	bge label1482
label1481:
	add r3, r6, r0, lsl #2
	ldr r8, [r6, r0, lsl #2]
	ldr r7, [r3, #4]
	add r4, r0, #3
	sdiv r9, r7, r4
	mls r9, r9, r4, r7
	add r10, r0, #1
	add r7, r0, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r1, r0, r8, r1
	mla r1, r10, r9, r1
	ldr r9, [r3, #8]
	add r8, r0, #4
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r7, r9, r1
	ldr r9, [r3, #12]
	add r1, r0, #5
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r7
	ldr r9, [r3, #16]
	add r7, r0, #6
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #24]
	add r1, r0, #8
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r7, r7, r9, r8
	ldr r9, [r3, #28]
	add r8, r0, #9
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r4, r9, r7
	ldr r9, [r3, #32]
	add r4, r0, #10
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r7
	ldr r9, [r3, #36]
	add r7, r0, #11
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r1, r8, r9, r1
	ldr r9, [r3, #40]
	add r8, r0, #12
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #44]
	add r1, r0, #13
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #48]
	add r4, r0, #14
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r8, r9, r7
	ldr r9, [r3, #52]
	add r7, r0, #15
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r1, r1, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r4, r8, r1
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r4, r3, r0
	mls r0, r4, r0, r3
	mla r1, r7, r0, r1
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1482
	b label1481
label1482:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	b label1768
label1711:
	mov r4, r1
	cmp r1, #0
	bge label1472
	b label1493
label1768:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1711
	b label1768
label1477:
	add r3, r6, r0, lsl #2
	ldr r8, [r6, r0, lsl #2]
	ldr r7, [r3, #4]
	add r4, r0, #3
	sdiv r9, r7, r4
	mls r9, r9, r4, r7
	add r10, r0, #1
	add r7, r0, #2
	sdiv r11, r8, r7
	mls r8, r11, r7, r8
	mla r1, r0, r8, r1
	mla r1, r10, r9, r1
	ldr r9, [r3, #8]
	add r8, r0, #4
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r1, r7, r9, r1
	ldr r9, [r3, #12]
	add r7, r0, #5
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #16]
	add r1, r0, #6
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #24]
	add r7, r0, #8
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #28]
	add r1, r0, #9
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r8
	ldr r9, [r3, #32]
	add r8, r0, #10
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r4, r7, r9, r4
	ldr r9, [r3, #36]
	add r7, r0, #11
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r1, r1, r9, r4
	ldr r9, [r3, #40]
	add r4, r0, #12
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r8, r9, r1
	ldr r9, [r3, #44]
	add r1, r0, #13
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #48]
	add r7, r0, #14
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #52]
	add r4, r0, #15
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r7, r8, r1
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r4, r0, r1
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1478
	b label1477
label1472:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1493:
	rsb r4, r4, #0
	b label1472
