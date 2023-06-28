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
	str r1, [sp, #308]
	mov r1, r2
	str r2, [sp, #204]
	mov r0, r3
	str r3, [sp, #212]
	add r4, sp, #64
	str r4, [sp, #300]
	add r3, sp, #136
	str r3, [sp, #292]
	add r3, sp, #324
	str r3, [sp, #284]
	add r1, r2, #1
	cmp r1, r0
	mov r0, #0
	movwge r0, #1
	ldr r4, [sp, #252]
	add r1, r4, #1
	clz r1, r1
	lsr r1, r1, #5
	orr r0, r1, r0
	mov r1, #0
	str r1, [sp, #324]
	add r4, r3, #4
	str r4, [sp, #228]
	str r1, [r3, #4]
	add r2, r3, #8
	str r2, [sp, #388]
	str r1, [r3, #8]
	add r2, r3, #12
	str r2, [sp, #200]
	str r1, [r3, #12]
	add r2, r3, #16
	str r2, [sp, #248]
	str r1, [r3, #16]
	add r2, r3, #20
	str r2, [sp, #280]
	str r1, [r3, #20]
	add r2, r3, #24
	str r2, [sp, #296]
	str r1, [r3, #24]
	add r2, r3, #28
	str r2, [sp, #312]
	str r1, [r3, #28]
	add r2, r3, #32
	str r2, [sp, #60]
	str r1, [r3, #32]
	add r2, r3, #36
	str r2, [sp, #0]
	str r1, [r3, #36]
	add r2, r3, #40
	str r2, [sp, #12]
	str r1, [r3, #40]
	add r2, r3, #44
	str r2, [sp, #20]
	str r1, [r3, #44]
	add r2, r3, #48
	str r2, [sp, #28]
	str r1, [r3, #48]
	add r2, r3, #52
	str r2, [sp, #36]
	str r1, [r3, #52]
	add r2, r3, #56
	str r2, [sp, #48]
	str r1, [r3, #56]
	add r2, r3, #60
	str r2, [sp, #208]
	str r1, [r3, #60]
	str r1, [sp, #136]
	ldr r3, [sp, #292]
	add r2, r3, #4
	ldr r3, [sp, #292]
	str r1, [r3, #4]
	ldr r3, [sp, #292]
	add r3, r3, #8
	str r3, [sp, #260]
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
	str r3, [sp, #220]
	ldr r3, [sp, #292]
	str r1, [r3, #24]
	ldr r3, [sp, #292]
	add r3, r3, #28
	str r3, [sp, #128]
	ldr r3, [sp, #292]
	str r1, [r3, #28]
	ldr r3, [sp, #292]
	add r3, r3, #32
	str r3, [sp, #276]
	ldr r3, [sp, #292]
	str r1, [r3, #32]
	ldr r3, [sp, #292]
	add r3, r3, #36
	str r3, [sp, #304]
	ldr r3, [sp, #292]
	str r1, [r3, #36]
	ldr r3, [sp, #292]
	add r3, r3, #40
	str r3, [sp, #320]
	ldr r3, [sp, #292]
	str r1, [r3, #40]
	ldr r3, [sp, #292]
	add r3, r3, #44
	str r3, [sp, #8]
	ldr r3, [sp, #292]
	str r1, [r3, #44]
	ldr r3, [sp, #292]
	add r3, r3, #48
	str r3, [sp, #16]
	ldr r3, [sp, #292]
	str r1, [r3, #48]
	ldr r3, [sp, #292]
	add r3, r3, #52
	str r3, [sp, #32]
	ldr r3, [sp, #292]
	str r1, [r3, #52]
	ldr r3, [sp, #292]
	add r3, r3, #56
	str r3, [sp, #44]
	ldr r3, [sp, #292]
	str r1, [r3, #56]
	ldr r3, [sp, #292]
	add r3, r3, #60
	str r3, [sp, #268]
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
	str r4, [sp, #272]
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
	str r4, [sp, #224]
	ldr r4, [sp, #300]
	str r1, [r4, #36]
	ldr r4, [sp, #300]
	add r4, r4, #40
	str r4, [sp, #264]
	ldr r4, [sp, #300]
	str r1, [r4, #40]
	ldr r4, [sp, #300]
	add r4, r4, #44
	str r4, [sp, #288]
	ldr r4, [sp, #300]
	str r1, [r4, #44]
	ldr r4, [sp, #300]
	add r4, r4, #48
	str r4, [sp, #316]
	ldr r4, [sp, #300]
	str r1, [r4, #48]
	ldr r4, [sp, #300]
	add r4, r4, #52
	str r4, [sp, #4]
	ldr r4, [sp, #300]
	str r1, [r4, #52]
	ldr r4, [sp, #300]
	add r4, r4, #56
	str r4, [sp, #24]
	ldr r4, [sp, #300]
	str r1, [r4, #56]
	ldr r4, [sp, #300]
	add r4, r4, #60
	str r4, [sp, #40]
	ldr r4, [sp, #300]
	str r1, [r4, #60]
	cmp r0, #0
	beq label3
label2:
	add sp, sp, #396
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	ldr r4, [sp, #252]
	sub r0, r4, #1
	str r0, [sp, #132]
	ldr r1, [sp, #204]
	ldr r0, [sp, #212]
	cmp r1, r0
	bge label58
	ldr r1, [sp, #204]
	ldr r4, [sp, #308]
	add r10, r4, r1, lsl #2
	ldr r4, [sp, #308]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label30
	mov r11, #0
	add r9, r11, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r0, #0
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	b label1310
label261:
	mov r9, r0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	b label1313
label58:
	ldr r1, [sp, #204]
	str r1, [sp, #324]
	ldr r0, [sp, #64]
	ldr r1, [sp, #204]
	add r0, r1, r0
	str r0, [sp, #136]
	ldr r4, [sp, #228]
	str r0, [r4, #0]
	ldr r1, [r3, #0]
	add r0, r0, r1
	str r0, [r2, #0]
	ldr r2, [sp, #388]
	str r0, [r2, #0]
	ldr r1, [r5, #0]
	add r0, r0, r1
	ldr r3, [sp, #260]
	str r0, [r3, #0]
	ldr r2, [sp, #200]
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
	ldr r2, [sp, #280]
	str r0, [r2, #0]
	ldr r1, [r8, #0]
	add r0, r0, r1
	ldr r3, [sp, #232]
	str r0, [r3, #0]
	ldr r2, [sp, #296]
	str r0, [r2, #0]
	ldr r4, [sp, #272]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #220]
	str r0, [r3, #0]
	ldr r2, [sp, #312]
	str r0, [r2, #0]
	ldr r4, [sp, #256]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #128]
	str r0, [r3, #0]
	ldr r2, [sp, #60]
	str r0, [r2, #0]
	ldr r4, [sp, #236]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #276]
	str r0, [r3, #0]
	ldr r2, [sp, #0]
	str r0, [r2, #0]
	ldr r4, [sp, #224]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #304]
	str r0, [r3, #0]
	ldr r2, [sp, #12]
	str r0, [r2, #0]
	ldr r4, [sp, #264]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #320]
	str r0, [r3, #0]
	ldr r2, [sp, #20]
	str r0, [r2, #0]
	ldr r4, [sp, #288]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #8]
	str r0, [r3, #0]
	ldr r2, [sp, #28]
	str r0, [r2, #0]
	ldr r4, [sp, #316]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #16]
	str r0, [r3, #0]
	ldr r2, [sp, #36]
	str r0, [r2, #0]
	ldr r4, [sp, #4]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #32]
	str r0, [r3, #0]
	ldr r2, [sp, #48]
	str r0, [r2, #0]
	ldr r4, [sp, #24]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #44]
	str r0, [r3, #0]
	ldr r2, [sp, #208]
	str r0, [r2, #0]
	ldr r4, [sp, #40]
	ldr r1, [r4, #0]
	add r0, r0, r1
	ldr r3, [sp, #268]
	str r0, [r3, #0]
	mov r2, #0
	str r2, [sp, #216]
	cmp r2, #16
	bge label61
	b label67
label61:
	ldr r1, [sp, #204]
	str r1, [sp, #324]
	ldr r0, [sp, #64]
	ldr r1, [sp, #204]
	add r0, r1, r0
	str r0, [sp, #136]
	mov r5, #0
	cmp r5, #16
	bge label2
	cmp r5, #0
	ble label65
label66:
	sub r0, r5, #1
	ldr r3, [sp, #292]
	ldr r0, [r3, r0, lsl #2]
	ldr r3, [sp, #284]
	str r0, [r3, r5, lsl #2]
	ldr r4, [sp, #300]
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	ldr r3, [sp, #292]
	str r0, [r3, r5, lsl #2]
	b label65
label67:
	ldr r3, [sp, #284]
	ldr r2, [sp, #216]
	add r2, r3, r2, lsl #2
	str r2, [sp, #56]
	ldr r3, [sp, #284]
	ldr r2, [sp, #216]
	ldr r0, [r3, r2, lsl #2]
	ldr r3, [sp, #292]
	ldr r2, [sp, #216]
	add r1, r3, r2, lsl #2
	str r1, [sp, #52]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label70
	ldr r2, [sp, #56]
	ldr r1, [r2, #0]
	ldr r4, [sp, #308]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label438
	mov r2, r0
	mov r5, #0
	add r3, r5, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
label1266:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	b label1330
label438:
	mov r2, r0
label72:
	mov r3, #16
	asr r4, r2, #31
	add r4, r2, r4, lsr #28
	asr r4, r4, #4
	mls r5, r4, r3, r2
	ldr r2, [sp, #216]
	cmp r5, r2
	beq label443
	b label74
label443:
	mov r2, r1
	ldr r4, [sp, #308]
	str r0, [r4, r1, lsl #2]
	ldr r2, [sp, #56]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #56]
	str r0, [r2, #0]
	ldr r1, [sp, #52]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label70
	ldr r2, [sp, #56]
	ldr r1, [r2, #0]
	ldr r4, [sp, #308]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label438
	mov r2, r0
	mov r5, #0
	add r3, r5, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	b label1266
label74:
	ldr r3, [sp, #284]
	ldr r2, [r3, r5, lsl #2]
	ldr r4, [sp, #308]
	ldr r1, [r4, r2, lsl #2]
	ldr r4, [sp, #308]
	str r0, [r4, r2, lsl #2]
	ldr r3, [sp, #284]
	ldr r0, [r3, r5, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #284]
	str r0, [r3, r5, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label454
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	b label1335
label454:
	mov r0, r1
	mov r2, #16
	asr r3, r1, #31
	add r3, r1, r3, lsr #28
	asr r3, r3, #4
	mls r0, r3, r2, r1
	ldr r2, [sp, #216]
	cmp r0, r2
	beq label500
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label503
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
label1343:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	b label1344
label612:
	mov r3, r2
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	b label1366
label1330:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	b label1365
label1344:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	b label1356
label503:
	mov r2, r1
label103:
	mov r0, #16
	asr r3, r2, #31
	add r3, r2, r3, lsr #28
	asr r3, r3, #4
	mls r2, r3, r0, r2
	ldr r3, [sp, #284]
	ldr r3, [r3, r2, lsl #2]
	ldr r4, [sp, #308]
	ldr r0, [r4, r3, lsl #2]
	ldr r4, [sp, #308]
	str r1, [r4, r3, lsl #2]
	ldr r3, [sp, #284]
	ldr r1, [r3, r2, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #284]
	str r1, [r3, r2, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label515
	mov r2, r0
	mov r1, #0
	add r3, r1, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r2, #0
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	b label1347
label515:
	mov r2, r0
label105:
	mov r1, #16
	asr r3, r2, #31
	add r3, r2, r3, lsr #28
	asr r3, r3, #4
	mls r1, r3, r1, r2
	ldr r2, [sp, #216]
	cmp r1, r2
	beq label520
	mov r1, r0
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label503
	mov r2, r0
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	b label1344
label520:
	mov r1, r0
	ldr r2, [sp, #56]
	ldr r2, [r2, #0]
	b label157
label1347:
	mov r2, #0
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	b label1347
label1356:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	b label1356
label157:
	ldr r4, [sp, #308]
	str r0, [r4, r2, lsl #2]
	ldr r2, [sp, #56]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #56]
	str r0, [r2, #0]
	ldr r1, [sp, #52]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label70
	ldr r2, [sp, #56]
	ldr r1, [r2, #0]
	ldr r4, [sp, #308]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label438
	mov r2, r0
	mov r5, #0
	add r3, r5, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	b label1330
label1365:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label612
	b label1365
label110:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	b label1348
label113:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
label1349:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	b label1349
label116:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	b label1350
label119:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	b label1351
label1350:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	b label1350
label1348:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	b label1348
label134:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
label1357:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	b label1357
label1351:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	b label1351
label122:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
label1352:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label125
	b label1352
label137:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
label1358:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	b label1358
label140:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	b label1359
label143:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
label1360:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	b label1360
label146:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	b label1361
label149:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	b label1362
label152:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
label1363:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label103
	b label1363
label1361:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	b label1361
label1362:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	b label1362
label1359:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	b label1359
label125:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	b label1353
label128:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
label1354:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label105
	b label1354
label1353:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label128
	b label1353
label1366:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label166
	b label1366
label166:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
label1367:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label169
	b label1367
label169:
	add r5, r2, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	b label1368
label627:
	mov r5, r3
	add r3, r2, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r5, #0
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	b label1369
label175:
	add r3, r2, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r5, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	b label1370
label637:
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	b label1371
label642:
	mov r2, r5
	add r3, r3, #1
	asr r4, r5, #31
	add r2, r5, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
label1372:
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label72
	b label1372
label1368:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label627
	b label1368
label1369:
	mov r5, #0
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label175
	b label1369
label1370:
	mov r5, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label637
	b label1370
label1371:
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label642
	b label1371
label1335:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label78
	b label1335
label78:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
label1336:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label81
	b label1336
label81:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
label1337:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label469
	b label1337
label469:
	mov r3, r2
	add r2, r0, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r3, #0
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	b label1338
label87:
	add r2, r0, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r3, #0
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	b label1339
label90:
	add r2, r0, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r3, #0
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	b label1340
label484:
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	b label1341
label489:
	mov r0, r3
	add r2, r2, #1
	asr r3, r3, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	b label1342
label99:
	mov r2, #16
	asr r3, r0, #31
	add r3, r0, r3, lsr #28
	asr r3, r3, #4
	mls r0, r3, r2, r0
	ldr r2, [sp, #216]
	cmp r0, r2
	beq label500
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label503
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label134
	b label1343
label1342:
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	b label1342
label1340:
	mov r3, #0
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label484
	b label1340
label1339:
	mov r3, #0
	mov r0, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label90
	b label1339
label1341:
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label489
	b label1341
label1338:
	mov r3, #0
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label87
	b label1338
label500:
	ldr r2, [sp, #56]
	ldr r2, [r2, #0]
	mov r0, r1
	b label157
label1311:
	mov r0, #0
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
label1312:
	mov r0, #0
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	b label1312
label30:
	mov r4, #16
	asr r9, r0, #31
	add r9, r0, r9, lsr #28
	asr r9, r9, #4
	mls r0, r9, r4, r0
	ldr r4, [sp, #300]
	add r9, r4, r0, lsl #2
	ldr r10, [r10, #0]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label304
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	b label1321
label304:
	mov r0, r10
label56:
	mov r4, #16
	asr r10, r0, #31
	add r10, r0, r10, lsr #28
	asr r10, r10, #4
	mls r0, r10, r4, r0
	ldr r4, [sp, #300]
	ldr r0, [r4, r0, lsl #2]
	add r0, r0, #1
	str r0, [r9, #0]
	add r1, r1, #1
	ldr r0, [sp, #212]
	cmp r1, r0
	bge label58
	ldr r4, [sp, #308]
	add r10, r4, r1, lsl #2
	ldr r4, [sp, #308]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label30
	mov r11, #0
	add r9, r11, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r0, #0
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	b label1311
label35:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	b label1322
label1321:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label35
	b label1321
label1313:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	b label1313
label1310:
	mov r0, #0
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label261
	b label1311
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
label1314:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	b label1314
label15:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
label1315:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	b label1315
label18:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
label1316:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	b label1316
label38:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
label1323:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label41
	b label1323
label41:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	b label1324
label44:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	b label1325
label47:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	b label1326
label50:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	b label1327
label339:
	mov r4, r10
	add r10, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
label1328:
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label56
	b label1328
label1324:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label44
	b label1324
label1327:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label339
	b label1327
label1326:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label50
	b label1326
label1322:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label38
	b label1322
label21:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	b label1317
label24:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	b label1318
label291:
	mov r4, r9
	add r9, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
label1319:
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label30
	b label1319
label1317:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	b label1317
label1318:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	b label1318
label1325:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label47
	b label1325
label65:
	ldr r3, [sp, #284]
	ldr r2, [r3, r5, lsl #2]
	ldr r3, [sp, #292]
	ldr r3, [r3, r5, lsl #2]
	ldr r0, [sp, #132]
	ldr r4, [sp, #308]
	mov r1, r4
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	bge label2
	cmp r5, #0
	ble label65
	b label66
label70:
	ldr r2, [sp, #216]
	add r2, r2, #1
	str r2, [sp, #216]
	cmp r2, #16
	bge label61
	b label67
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
	ble label1487
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1475
	b label1474
label1487:
	mov r4, #0
	cmp r4, #0
	bge label1469
	b label1490
label1475:
	add r2, r0, #16
	cmp r2, r5
	bge label1479
label1478:
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
	bge label1479
	b label1478
label1479:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	b label1765
label1708:
	mov r4, r1
	cmp r1, #0
	bge label1469
	b label1490
label1765:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1708
	b label1765
label1474:
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
	bge label1475
	b label1474
label1469:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1490:
	rsb r4, r4, #0
	b label1469
