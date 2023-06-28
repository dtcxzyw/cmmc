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
	str r3, [sp, #284]
	add r3, sp, #324
	str r3, [sp, #292]
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
	ldr r3, [sp, #284]
	add r2, r3, #4
	ldr r3, [sp, #284]
	str r1, [r3, #4]
	ldr r3, [sp, #284]
	add r3, r3, #8
	str r3, [sp, #260]
	ldr r3, [sp, #284]
	str r1, [r3, #8]
	ldr r3, [sp, #284]
	add r3, r3, #12
	str r3, [sp, #244]
	ldr r3, [sp, #284]
	str r1, [r3, #12]
	ldr r3, [sp, #284]
	add r3, r3, #16
	str r3, [sp, #240]
	ldr r3, [sp, #284]
	str r1, [r3, #16]
	ldr r3, [sp, #284]
	add r3, r3, #20
	str r3, [sp, #232]
	ldr r3, [sp, #284]
	str r1, [r3, #20]
	ldr r3, [sp, #284]
	add r3, r3, #24
	str r3, [sp, #220]
	ldr r3, [sp, #284]
	str r1, [r3, #24]
	ldr r3, [sp, #284]
	add r3, r3, #28
	str r3, [sp, #128]
	ldr r3, [sp, #284]
	str r1, [r3, #28]
	ldr r3, [sp, #284]
	add r3, r3, #32
	str r3, [sp, #276]
	ldr r3, [sp, #284]
	str r1, [r3, #32]
	ldr r3, [sp, #284]
	add r3, r3, #36
	str r3, [sp, #304]
	ldr r3, [sp, #284]
	str r1, [r3, #36]
	ldr r3, [sp, #284]
	add r3, r3, #40
	str r3, [sp, #320]
	ldr r3, [sp, #284]
	str r1, [r3, #40]
	ldr r3, [sp, #284]
	add r3, r3, #44
	str r3, [sp, #8]
	ldr r3, [sp, #284]
	str r1, [r3, #44]
	ldr r3, [sp, #284]
	add r3, r3, #48
	str r3, [sp, #16]
	ldr r3, [sp, #284]
	str r1, [r3, #48]
	ldr r3, [sp, #284]
	add r3, r3, #52
	str r3, [sp, #32]
	ldr r3, [sp, #284]
	str r1, [r3, #52]
	ldr r3, [sp, #284]
	add r3, r3, #56
	str r3, [sp, #44]
	ldr r3, [sp, #284]
	str r1, [r3, #56]
	ldr r3, [sp, #284]
	add r3, r3, #60
	str r3, [sp, #268]
	ldr r3, [sp, #284]
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
	b label2
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
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #308]
	ldr r10, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label256
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	b label1308
label256:
	mov r0, r10
label6:
	mov r4, #16
	asr r10, r0, #31
	add r10, r0, r10, lsr #28
	asr r10, r10, #4
	mls r0, r10, r4, r0
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
	bge label13
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	b label1312
label263:
	mov r0, r9
	b label8
label1312:
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label13
	b label1312
label37:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	b label1321
label1309:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	b label1320
label8:
	mov r4, #16
	asr r9, r0, #31
	add r9, r0, r9, lsr #28
	asr r9, r9, #4
	mls r0, r9, r4, r0
	ldr r4, [sp, #300]
	ldr r0, [r4, r0, lsl #2]
	add r0, r0, #1
	str r0, [r10, #0]
	add r1, r1, #1
	ldr r0, [sp, #212]
	cmp r1, r0
	bge label58
	ldr r4, [sp, #308]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #308]
	ldr r10, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label256
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	b label1309
label13:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
label1313:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label16
	b label1313
label16:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	b label1314
label19:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	b label1315
label22:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	b label1316
label25:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	b label1317
label28:
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
	b label1318
label308:
	mov r4, r9
	add r9, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
label1319:
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label8
	b label1319
label1317:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label28
	b label1317
label1316:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label25
	b label1316
label1315:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label22
	b label1315
label1314:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label19
	b label1314
label1320:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	b label1320
label1318:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label308
	b label1318
label40:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	b label1322
label43:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	b label1323
label1322:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	b label1322
label1323:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	b label1323
label46:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	b label1324
label49:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	b label1325
label52:
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
	b label1326
label349:
	mov r4, r10
	add r10, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
label1327:
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label6
	b label1327
label1326:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	b label1326
label1325:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	b label1325
label1324:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	b label1324
label1321:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	b label1321
label1308:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label37
	b label1309
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
	bge label178
	b label61
label178:
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
	ble label183
	b label182
label183:
	ldr r3, [sp, #292]
	ldr r2, [r3, r5, lsl #2]
	ldr r3, [sp, #284]
	ldr r3, [r3, r5, lsl #2]
	ldr r0, [sp, #132]
	ldr r4, [sp, #308]
	mov r1, r4
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	bge label2
	cmp r5, #0
	ble label183
	b label182
label61:
	ldr r3, [sp, #292]
	ldr r2, [sp, #216]
	add r2, r3, r2, lsl #2
	str r2, [sp, #56]
	ldr r3, [sp, #292]
	ldr r2, [sp, #216]
	ldr r0, [r3, r2, lsl #2]
	ldr r3, [sp, #284]
	ldr r2, [sp, #216]
	add r1, r3, r2, lsl #2
	str r1, [sp, #52]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label177
	ldr r2, [sp, #56]
	ldr r1, [r2, #0]
	ldr r4, [sp, #308]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label408
	mov r2, r0
	mov r5, #0
	add r3, r5, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	b label1328
label408:
	mov r2, r0
label65:
	mov r3, #16
	asr r4, r2, #31
	add r4, r2, r4, lsr #28
	asr r4, r4, #4
	mls r5, r4, r3, r2
	ldr r2, [sp, #216]
	cmp r5, r2
	beq label413
	ldr r3, [sp, #292]
	ldr r2, [r3, r5, lsl #2]
	ldr r4, [sp, #308]
	ldr r1, [r4, r2, lsl #2]
	ldr r4, [sp, #308]
	str r0, [r4, r2, lsl #2]
	ldr r3, [sp, #292]
	ldr r0, [r3, r5, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #292]
	str r0, [r3, r5, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label428
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	b label1333
label428:
	mov r0, r1
	mov r2, #16
	asr r3, r1, #31
	add r3, r1, r3, lsr #28
	asr r3, r3, #4
	mls r0, r3, r2, r1
	ldr r2, [sp, #216]
	cmp r0, r2
	beq label97
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label478
	mov r0, r1
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	b label1341
label1333:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label74
	b label1333
label1341:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
label1342:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
label1343:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	b label1343
label177:
	ldr r2, [sp, #216]
	add r2, r2, #1
	str r2, [sp, #216]
	cmp r2, #16
	bge label178
	b label61
label95:
	mov r2, #16
	asr r3, r0, #31
	add r3, r0, r3, lsr #28
	asr r3, r3, #4
	mls r0, r3, r2, r0
	ldr r2, [sp, #216]
	cmp r0, r2
	beq label97
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label478
	mov r0, r1
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	b label1341
label478:
	mov r2, r1
	b label125
label483:
	mov r2, r0
	mov r0, r3
	add r3, r3, #256
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
	b label1344
label125:
	mov r0, #16
	asr r3, r2, #31
	add r3, r2, r3, lsr #28
	asr r3, r3, #4
	mls r2, r3, r0, r2
	ldr r3, [sp, #292]
	ldr r3, [r3, r2, lsl #2]
	ldr r4, [sp, #308]
	ldr r0, [r4, r3, lsl #2]
	ldr r4, [sp, #308]
	str r1, [r4, r3, lsl #2]
	ldr r3, [sp, #292]
	ldr r1, [r3, r2, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #292]
	str r1, [r3, r2, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label531
	mov r1, r0
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r1, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	b label1353
label531:
	mov r2, r0
	mov r1, #16
	asr r3, r0, #31
	add r3, r0, r3, lsr #28
	asr r3, r3, #4
	mls r1, r3, r1, r0
	ldr r2, [sp, #216]
	cmp r1, r2
	beq label577
	mov r1, r0
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label478
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	b label1361
label1353:
	mov r1, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label536
	b label1353
label536:
	mov r2, r1
	mov r1, r3
	add r3, r3, #256
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
	b label1354
label1361:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	b label1342
label577:
	mov r1, r0
	ldr r2, [sp, #56]
	ldr r2, [r2, #0]
	b label67
label1344:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label107
	b label1344
label1354:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label133
	b label1354
label133:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
label1355:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label136
	b label1355
label136:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
label1356:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label139
	b label1356
label139:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	b label1357
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
label1358:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label145
	b label1358
label1357:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label142
	b label1357
label107:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	b label1345
label110:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	b label1346
label113:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
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
	b label1348
label119:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	b label1349
label122:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
label1350:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label125
	b label1350
label1348:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label119
	b label1348
label1349:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label122
	b label1349
label1347:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label116
	b label1347
label1346:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label113
	b label1346
label1345:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label110
	b label1345
label145:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	b label1359
label148:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
label1360:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label151
	b label1360
label1359:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label148
	b label1359
label151:
	mov r1, #16
	asr r3, r2, #31
	add r3, r2, r3, lsr #28
	asr r3, r3, #4
	mls r1, r3, r1, r2
	ldr r2, [sp, #216]
	cmp r1, r2
	beq label577
	mov r1, r0
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label478
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label483
	b label1361
label1328:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	b label1362
label413:
	mov r2, r1
label67:
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
	bge label177
	ldr r2, [sp, #56]
	ldr r1, [r2, #0]
	ldr r4, [sp, #308]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label408
	mov r2, r0
	mov r5, #0
	add r3, r5, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	b label1328
label582:
	mov r3, r2
	mov r2, r5
	add r5, r5, #256
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
label1363:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label159
	b label1363
label1362:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label582
	b label1362
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
label1364:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label162
	b label1364
label162:
	add r5, r2, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	b label1365
label165:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	b label1366
label602:
	mov r5, r3
	add r3, r2, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r5, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	b label1367
label607:
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	b label1368
label612:
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
label1369:
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label65
	b label1369
label1365:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label165
	b label1365
label1368:
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label612
	b label1368
label1366:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label602
	b label1366
label1367:
	mov r5, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label607
	b label1367
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
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	b label1335
label80:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	b label1336
label83:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	b label1337
label453:
	mov r3, r2
	add r2, r0, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r3, #0
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	b label1338
label458:
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	b label1339
label463:
	mov r0, r3
	add r2, r2, #1
	asr r3, r3, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
label1340:
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label95
	b label1340
label1339:
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label463
	b label1339
label1337:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label453
	b label1337
label1338:
	mov r3, #0
	mov r0, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label458
	b label1338
label1336:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label83
	b label1336
label1335:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label80
	b label1335
label97:
	ldr r2, [sp, #56]
	ldr r2, [r2, #0]
	mov r0, r1
	b label67
label182:
	sub r0, r5, #1
	ldr r3, [sp, #284]
	ldr r0, [r3, r0, lsl #2]
	ldr r3, [sp, #292]
	str r0, [r3, r5, lsl #2]
	ldr r4, [sp, #300]
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	ldr r3, [sp, #284]
	str r0, [r3, r5, lsl #2]
	b label183
label2:
	add sp, sp, #396
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
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
	ble label1489
	mov r0, #0
	mov r1, r0
	add r2, r0, #16
	cmp r2, r5
	bge label1476
	b label1483
label1489:
	mov r4, #0
	cmp r4, #0
	bge label1471
label1492:
	rsb r4, r4, #0
	b label1471
label1476:
	add r2, r0, #16
	cmp r2, r5
	bge label1480
	b label1479
label1480:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	b label1766
label1613:
	mov r4, r1
	cmp r1, #0
	bge label1471
	b label1492
label1766:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1613
	b label1766
label1479:
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
	mla r8, r10, r9, r1
	ldr r9, [r3, #8]
	add r1, r0, #4
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #12]
	add r7, r0, #5
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #16]
	add r4, r0, #6
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #20]
	add r1, r0, #7
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #24]
	add r7, r0, #8
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #28]
	add r4, r0, #9
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r8
	ldr r9, [r3, #32]
	add r8, r0, #10
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r1, r7, r9, r1
	ldr r9, [r3, #36]
	add r7, r0, #11
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #40]
	add r1, r0, #12
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #44]
	add r4, r0, #13
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #48]
	add r7, r0, #14
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #52]
	add r1, r0, #15
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r4, r4, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r4, r7, r8, r4
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r1, r0, r4
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1480
	b label1479
label1483:
	add r3, r6, r0, lsl #2
	ldr r7, [r6, r0, lsl #2]
	ldr r8, [r3, #4]
	add r4, r0, #3
	sdiv r9, r8, r4
	mls r9, r9, r4, r8
	add r10, r0, #1
	add r8, r0, #2
	sdiv r11, r7, r8
	mls r7, r11, r8, r7
	mla r1, r0, r7, r1
	mla r1, r10, r9, r1
	ldr r9, [r3, #8]
	add r7, r0, #4
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r8, r9, r1
	ldr r9, [r3, #12]
	add r1, r0, #5
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #16]
	add r4, r0, #6
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #20]
	add r7, r0, #7
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #24]
	add r1, r0, #8
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #28]
	add r4, r0, #9
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #32]
	add r7, r0, #10
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r1, r1, r9, r8
	ldr r9, [r3, #36]
	add r8, r0, #11
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r1, r4, r9, r1
	ldr r9, [r3, #40]
	add r4, r0, #12
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r7, r7, r9, r1
	ldr r9, [r3, #44]
	add r1, r0, #13
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r8, r9, r7
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
	bge label1476
	b label1483
label1471:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
