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
	str r0, [sp, #256]
	mov r4, r1
	str r1, [sp, #268]
	mov r1, r2
	str r2, [sp, #340]
	mov r0, r3
	str r3, [sp, #320]
	add r4, sp, #192
	str r4, [sp, #272]
	add r1, sp, #120
	str r1, [sp, #368]
	add r3, sp, #48
	str r3, [sp, #360]
	mov r0, #0
	str r0, [sp, #48]
	add r1, r3, #4
	str r1, [sp, #312]
	str r0, [r3, #4]
	add r1, r3, #8
	str r1, [sp, #308]
	str r0, [r3, #8]
	add r1, r3, #12
	str r1, [sp, #296]
	str r0, [r3, #12]
	add r1, r3, #16
	str r1, [sp, #284]
	str r0, [r3, #16]
	add r1, r3, #20
	str r1, [sp, #332]
	str r0, [r3, #20]
	add r1, r3, #24
	str r1, [sp, #348]
	str r0, [r3, #24]
	add r1, r3, #28
	str r1, [sp, #372]
	str r0, [r3, #28]
	add r1, r3, #32
	str r1, [sp, #388]
	str r0, [r3, #32]
	add r1, r3, #36
	str r1, [sp, #8]
	str r0, [r3, #36]
	add r1, r3, #40
	str r1, [sp, #20]
	str r0, [r3, #40]
	add r1, r3, #44
	str r1, [sp, #28]
	str r0, [r3, #44]
	add r1, r3, #48
	str r1, [sp, #40]
	str r0, [r3, #48]
	add r1, r3, #52
	str r1, [sp, #112]
	str r0, [r3, #52]
	add r1, r3, #56
	str r1, [sp, #184]
	str r0, [r3, #56]
	add r1, r3, #60
	str r1, [sp, #280]
	str r0, [r3, #60]
	str r0, [sp, #120]
	ldr r1, [sp, #368]
	add r2, r1, #4
	ldr r1, [sp, #368]
	str r0, [r1, #4]
	ldr r1, [sp, #368]
	add r1, r1, #8
	str r1, [sp, #328]
	ldr r1, [sp, #368]
	str r0, [r1, #8]
	ldr r1, [sp, #368]
	add r1, r1, #12
	str r1, [sp, #316]
	ldr r1, [sp, #368]
	str r0, [r1, #12]
	ldr r1, [sp, #368]
	add r1, r1, #16
	str r1, [sp, #304]
	ldr r1, [sp, #368]
	str r0, [r1, #16]
	ldr r1, [sp, #368]
	add r1, r1, #20
	str r1, [sp, #292]
	ldr r1, [sp, #368]
	str r0, [r1, #20]
	ldr r1, [sp, #368]
	add r1, r1, #24
	str r1, [sp, #276]
	ldr r1, [sp, #368]
	str r0, [r1, #24]
	ldr r1, [sp, #368]
	add r1, r1, #28
	str r1, [sp, #344]
	ldr r1, [sp, #368]
	str r0, [r1, #28]
	ldr r1, [sp, #368]
	add r1, r1, #32
	str r1, [sp, #364]
	ldr r1, [sp, #368]
	str r0, [r1, #32]
	ldr r1, [sp, #368]
	add r1, r1, #36
	str r1, [sp, #0]
	ldr r1, [sp, #368]
	str r0, [r1, #36]
	ldr r1, [sp, #368]
	add r1, r1, #40
	str r1, [sp, #12]
	ldr r1, [sp, #368]
	str r0, [r1, #40]
	ldr r1, [sp, #368]
	add r1, r1, #44
	str r1, [sp, #24]
	ldr r1, [sp, #368]
	str r0, [r1, #44]
	ldr r1, [sp, #368]
	add r1, r1, #48
	str r1, [sp, #36]
	ldr r1, [sp, #368]
	str r0, [r1, #48]
	ldr r1, [sp, #368]
	add r1, r1, #52
	str r1, [sp, #116]
	ldr r1, [sp, #368]
	str r0, [r1, #52]
	ldr r1, [sp, #368]
	add r1, r1, #56
	str r1, [sp, #264]
	ldr r1, [sp, #368]
	str r0, [r1, #56]
	ldr r1, [sp, #368]
	add r1, r1, #60
	str r1, [sp, #260]
	ldr r1, [sp, #368]
	str r0, [r1, #60]
	str r0, [sp, #192]
	add r3, r4, #4
	str r0, [r4, #4]
	add r5, r4, #8
	str r0, [r4, #8]
	add r6, r4, #12
	str r0, [r4, #12]
	add r7, r4, #16
	str r0, [r4, #16]
	add r8, r4, #20
	str r0, [r4, #20]
	add r1, r4, #24
	str r1, [sp, #324]
	str r0, [r4, #24]
	add r1, r4, #28
	str r1, [sp, #300]
	str r0, [r4, #28]
	add r1, r4, #32
	str r1, [sp, #288]
	str r0, [r4, #32]
	add r1, r4, #36
	str r1, [sp, #336]
	str r0, [r4, #36]
	add r1, r4, #40
	str r1, [sp, #356]
	str r0, [r4, #40]
	add r1, r4, #44
	str r1, [sp, #4]
	str r0, [r4, #44]
	add r1, r4, #48
	str r1, [sp, #16]
	str r0, [r4, #48]
	add r1, r4, #52
	str r1, [sp, #32]
	str r0, [r4, #52]
	add r1, r4, #56
	str r1, [sp, #44]
	str r0, [r4, #56]
	add r1, r4, #60
	str r1, [sp, #188]
	str r0, [r4, #60]
	ldr r4, [sp, #256]
	cmn r4, #1
	mov r4, #0
	movweq r4, #1
	ldr r1, [sp, #340]
	add r1, r1, #1
	ldr r0, [sp, #320]
	cmp r1, r0
	mov r0, #0
	movwge r0, #1
	orr r0, r0, r4
	cmp r0, #0
	beq label2
	b label183
label2:
	ldr r4, [sp, #256]
	sub r0, r4, #1
	str r0, [sp, #352]
	ldr r1, [sp, #340]
	ldr r0, [sp, #320]
	cmp r1, r0
	bge label57
	ldr r1, [sp, #340]
	ldr r4, [sp, #268]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #268]
	ldr r10, [r4, r1, lsl #2]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label29
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
label1320:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	b label1321
label57:
	ldr r1, [sp, #340]
	str r1, [sp, #48]
	ldr r0, [sp, #192]
	ldr r1, [sp, #340]
	add r4, r0, r1
	str r4, [sp, #120]
	ldr r1, [sp, #312]
	str r4, [r1, #0]
	ldr r3, [r3, #0]
	add r4, r3, r0
	ldr r1, [sp, #340]
	add r4, r4, r1
	str r4, [r2, #0]
	ldr r1, [sp, #308]
	str r4, [r1, #0]
	ldr r1, [r5, #0]
	add r2, r3, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #328]
	str r3, [r1, #0]
	ldr r1, [sp, #296]
	str r3, [r1, #0]
	ldr r1, [r6, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #316]
	str r3, [r1, #0]
	ldr r1, [sp, #284]
	str r3, [r1, #0]
	ldr r1, [r7, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #304]
	str r3, [r1, #0]
	ldr r1, [sp, #332]
	str r3, [r1, #0]
	ldr r1, [r8, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #292]
	str r3, [r1, #0]
	ldr r1, [sp, #348]
	str r3, [r1, #0]
	ldr r1, [sp, #324]
	ldr r1, [r1, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #276]
	str r3, [r1, #0]
	ldr r1, [sp, #372]
	str r3, [r1, #0]
	ldr r1, [sp, #300]
	ldr r1, [r1, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #344]
	str r3, [r1, #0]
	ldr r1, [sp, #388]
	str r3, [r1, #0]
	ldr r1, [sp, #288]
	ldr r1, [r1, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #364]
	str r3, [r1, #0]
	ldr r1, [sp, #8]
	str r3, [r1, #0]
	ldr r1, [sp, #336]
	ldr r1, [r1, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #0]
	str r3, [r1, #0]
	ldr r1, [sp, #20]
	str r3, [r1, #0]
	ldr r1, [sp, #356]
	ldr r1, [r1, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #12]
	str r3, [r1, #0]
	ldr r1, [sp, #28]
	str r3, [r1, #0]
	ldr r1, [sp, #4]
	ldr r1, [r1, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #24]
	str r3, [r1, #0]
	ldr r1, [sp, #40]
	str r3, [r1, #0]
	ldr r1, [sp, #16]
	ldr r1, [r1, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #36]
	str r3, [r1, #0]
	ldr r1, [sp, #112]
	str r3, [r1, #0]
	ldr r1, [sp, #32]
	ldr r1, [r1, #0]
	add r2, r2, r1
	add r3, r2, r0
	ldr r1, [sp, #340]
	add r3, r3, r1
	ldr r1, [sp, #116]
	str r3, [r1, #0]
	ldr r1, [sp, #184]
	str r3, [r1, #0]
	ldr r1, [sp, #44]
	ldr r1, [r1, #0]
	add r1, r2, r1
	add r0, r1, r0
	ldr r1, [sp, #340]
	add r2, r0, r1
	ldr r1, [sp, #264]
	str r2, [r1, #0]
	ldr r1, [sp, #280]
	str r2, [r1, #0]
	ldr r1, [sp, #188]
	ldr r1, [r1, #0]
	add r0, r0, r1
	ldr r1, [sp, #340]
	add r0, r0, r1
	ldr r1, [sp, #260]
	str r0, [r1, #0]
	mov r2, #0
	str r2, [sp, #384]
	cmp r2, #16
	bge label60
	b label66
label60:
	ldr r1, [sp, #340]
	str r1, [sp, #48]
	ldr r0, [sp, #192]
	ldr r1, [sp, #340]
	add r0, r0, r1
	str r0, [sp, #120]
	mov r5, #0
	cmp r5, #16
	bge label183
	cmp r5, #0
	ble label64
	b label65
label66:
	ldr r1, [sp, #368]
	ldr r2, [sp, #384]
	add r1, r1, r2, lsl #2
	str r1, [sp, #380]
	ldr r3, [sp, #360]
	ldr r2, [sp, #384]
	add r2, r3, r2, lsl #2
	str r2, [sp, #376]
	ldr r3, [sp, #360]
	ldr r2, [sp, #384]
	ldr r0, [r3, r2, lsl #2]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label69
	ldr r2, [sp, #376]
	ldr r1, [r2, #0]
	ldr r4, [sp, #268]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label466
	mov r2, r0
	mov r5, #0
	add r3, r5, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
label1339:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	b label1341
label466:
	mov r2, r0
	asr r3, r0, #31
	add r3, r0, r3, lsr #28
	asr r3, r3, #4
	mov r4, #16
	mul r3, r3, r4
	sub r5, r0, r3
	ldr r2, [sp, #384]
	cmp r5, r2
	beq label512
	b label100
label1341:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	b label1341
label471:
	mov r3, r2
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	b label1342
label95:
	asr r3, r2, #31
	add r3, r2, r3, lsr #28
	asr r3, r3, #4
	mov r4, #16
	mul r3, r3, r4
	sub r5, r2, r3
	ldr r2, [sp, #384]
	cmp r5, r2
	beq label512
	b label100
label512:
	mov r2, r1
label97:
	ldr r4, [sp, #268]
	str r0, [r4, r2, lsl #2]
	ldr r2, [sp, #376]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #376]
	str r0, [r2, #0]
	ldr r1, [sp, #380]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label69
	ldr r2, [sp, #376]
	ldr r1, [r2, #0]
	ldr r4, [sp, #268]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label466
	mov r2, r0
	mov r5, #0
	add r3, r5, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	b label1339
label100:
	ldr r3, [sp, #360]
	ldr r2, [r3, r5, lsl #2]
	ldr r4, [sp, #268]
	ldr r1, [r4, r2, lsl #2]
	ldr r4, [sp, #268]
	str r0, [r4, r2, lsl #2]
	ldr r3, [sp, #360]
	ldr r0, [r3, r5, lsl #2]
	add r0, r0, #1
	ldr r3, [sp, #360]
	str r0, [r3, r5, lsl #2]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label527
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	b label1372
label527:
	mov r0, r1
label101:
	asr r2, r0, #31
	add r2, r0, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r0, r0, r2
	ldr r2, [sp, #384]
	cmp r0, r2
	beq label103
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label536
	mov r0, r1
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
label1352:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	b label1353
label541:
	mov r2, r0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	b label1354
label1353:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	b label1353
label1354:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label113
	b label1354
label113:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
label1355:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label116
	b label1355
label116:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	b label1356
label119:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	b label1357
label122:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	b label1358
label125:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	b label1359
label128:
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
label1360:
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label131
	b label1360
label1358:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label125
	b label1358
label1357:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label122
	b label1357
label1359:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label128
	b label1359
label131:
	asr r0, r2, #31
	add r0, r2, r0, lsr #28
	asr r0, r0, #4
	mov r3, #16
	mul r0, r0, r3
	sub r2, r2, r0
	ldr r3, [sp, #360]
	ldr r3, [r3, r2, lsl #2]
	ldr r4, [sp, #268]
	ldr r0, [r4, r3, lsl #2]
	ldr r4, [sp, #268]
	str r1, [r4, r3, lsl #2]
	ldr r3, [sp, #360]
	ldr r1, [r3, r2, lsl #2]
	add r1, r1, #1
	ldr r3, [sp, #360]
	str r1, [r3, r2, lsl #2]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label589
	mov r2, r0
	mov r1, #0
	add r3, r1, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r2, #0
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	b label1363
label589:
	mov r1, r0
	asr r2, r0, #31
	add r2, r0, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r1, r0, r2
	ldr r2, [sp, #384]
	cmp r1, r2
	beq label635
	mov r1, r0
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label536
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
label1371:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	b label1352
label1363:
	mov r2, #0
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label136
	b label1363
label136:
	add r3, r1, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
label1364:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label139
	b label1364
label139:
	add r3, r1, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
label1365:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label142
	b label1365
label142:
	add r3, r1, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	b label1366
label145:
	add r3, r1, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	b label1367
label614:
	mov r3, r2
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r3, #0
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	b label1368
label619:
	mov r1, r3
	add r3, r2, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r1, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	b label1369
label154:
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
label1370:
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label157
	b label1370
label1367:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	b label1367
label1366:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label145
	b label1366
label1368:
	mov r3, #0
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label619
	b label1368
label1369:
	mov r1, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label154
	b label1369
label1356:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label119
	b label1356
label536:
	mov r2, r1
	b label131
label157:
	asr r2, r1, #31
	add r2, r1, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r1, r1, r2
	ldr r2, [sp, #384]
	cmp r1, r2
	beq label635
	mov r1, r0
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label536
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label541
	b label1371
label635:
	mov r1, r0
	ldr r2, [sp, #376]
	ldr r2, [r2, #0]
	b label97
label1342:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label77
	b label1342
label77:
	add r5, r2, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
label1343:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label80
	b label1343
label80:
	add r5, r2, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	b label1344
label486:
	mov r5, r3
	add r3, r2, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r5, #0
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	b label1345
label491:
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	b label1346
label496:
	mov r2, r5
	add r5, r3, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r2, #0
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	b label1347
label92:
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
label1348:
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	add r3, r3, #1
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label95
	b label1348
label1344:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label486
	b label1344
label1345:
	mov r5, #0
	mov r2, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label491
	b label1345
label1347:
	mov r2, #0
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label92
	b label1347
label1346:
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label496
	b label1346
label1372:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label162
	b label1372
label162:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	b label1373
label165:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	b label1374
label1373:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label165
	b label1373
label1374:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label168
	b label1374
label168:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	b label1375
label171:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	b label1376
label174:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	b label1377
label665:
	mov r3, r2
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	b label1378
label670:
	mov r0, r3
	asr r3, r3, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
label1379:
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label101
	b label1379
label1377:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label665
	b label1377
label1378:
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label670
	b label1378
label1376:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label174
	b label1376
label1375:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label171
	b label1375
label103:
	ldr r2, [sp, #376]
	ldr r2, [r2, #0]
	mov r0, r1
	b label97
label8:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	b label1322
label1321:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	b label1321
label1322:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label11
	b label1322
label11:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	b label1323
label14:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
label1324:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label17
	b label1324
label17:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	b label1325
label1323:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label14
	b label1323
label1325:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label20
	b label1325
label20:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	b label1326
label23:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	b label1327
label291:
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
label1328:
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label29
	b label1328
label1326:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label23
	b label1326
label1327:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label291
	b label1327
label29:
	asr r0, r10, #31
	add r0, r10, r0, lsr #28
	asr r0, r0, #4
	mov r4, #16
	mul r0, r0, r4
	sub r0, r10, r0
	ldr r4, [sp, #272]
	add r10, r4, r0, lsl #2
	ldr r9, [r9, #0]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label31
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
label1331:
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label36
	b label1331
label36:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	b label1332
label39:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	b label1333
label42:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	b label1334
label45:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	b label1335
label1334:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label45
	b label1334
label1333:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label42
	b label1333
label1332:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label39
	b label1332
label48:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	b label1336
label51:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	b label1337
label349:
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
label1338:
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label31
	b label1338
label1337:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	b label1337
label1335:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label48
	b label1335
label1336:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label51
	b label1336
label31:
	asr r0, r9, #31
	add r0, r9, r0, lsr #28
	asr r0, r0, #4
	mov r4, #16
	mul r0, r0, r4
	sub r0, r9, r0
	ldr r4, [sp, #272]
	ldr r0, [r4, r0, lsl #2]
	add r0, r0, #1
	str r0, [r10, #0]
	add r1, r1, #1
	ldr r0, [sp, #320]
	cmp r1, r0
	bge label57
	ldr r4, [sp, #268]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #268]
	ldr r10, [r4, r1, lsl #2]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label29
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label8
	b label1320
label64:
	ldr r3, [sp, #360]
	ldr r2, [r3, r5, lsl #2]
	ldr r1, [sp, #368]
	ldr r3, [r1, r5, lsl #2]
	ldr r0, [sp, #352]
	ldr r4, [sp, #268]
	mov r1, r4
	bl radixSort
	add r5, r5, #1
	cmp r5, #16
	bge label183
	cmp r5, #0
	ble label64
label65:
	sub r0, r5, #1
	ldr r1, [sp, #368]
	ldr r0, [r1, r0, lsl #2]
	ldr r3, [sp, #360]
	str r0, [r3, r5, lsl #2]
	ldr r4, [sp, #272]
	ldr r1, [r4, r5, lsl #2]
	add r0, r0, r1
	ldr r1, [sp, #368]
	str r0, [r1, r5, lsl #2]
	b label64
label69:
	ldr r2, [sp, #384]
	add r2, r2, #1
	str r2, [sp, #384]
	cmp r2, #16
	bge label60
	b label66
label183:
	add sp, sp, #396
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #228
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	mov r2, r4
	str r4, [sp, #68]
	mov r0, r4
	bl getarray
	mov r3, r0
	str r0, [sp, #64]
	mov r0, #90
	bl _sysy_starttime
	mov r0, #8
	mov r1, r4
	mov r2, #0
	ldr r3, [sp, #64]
	bl radixSort
	ldr r3, [sp, #64]
	cmp r3, #0
	ble label1498
	mov r1, #0
	str r1, [sp, #92]
	mov r0, r1
	str r1, [sp, #88]
	add r0, r1, #16
	str r0, [sp, #72]
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1508
	b label1485
label1498:
	mov r4, #0
	cmp r4, #0
	bge label1480
	b label1501
label1508:
	ldr r1, [sp, #92]
	str r1, [sp, #84]
	ldr r0, [sp, #88]
	str r0, [sp, #80]
	add r0, r0, #16
	str r0, [sp, #76]
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1610
	b label1489
label1610:
	ldr r1, [sp, #84]
	ldr r0, [sp, #80]
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	b label1831
label1489:
	ldr r2, [sp, #68]
	ldr r0, [sp, #80]
	add r0, r2, r0, lsl #2
	str r0, [sp, #4]
	ldr r2, [sp, #68]
	ldr r0, [sp, #80]
	ldr r1, [r2, r0, lsl #2]
	ldr r0, [sp, #80]
	add r0, r0, #2
	str r0, [sp, #96]
	sdiv r2, r1, r0
	mls r10, r2, r0, r1
	str r10, [sp, #20]
	ldr r0, [sp, #80]
	add r0, r0, #1
	str r0, [sp, #40]
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	ldr r0, [sp, #80]
	add r0, r0, #3
	str r0, [sp, #176]
	sdiv r2, r1, r0
	mls r10, r2, r0, r1
	str r10, [sp, #216]
	ldr r0, [sp, #4]
	ldr r1, [r0, #8]
	ldr r0, [sp, #80]
	add r0, r0, #4
	str r0, [sp, #60]
	sdiv r2, r1, r0
	mls r10, r2, r0, r1
	str r10, [sp, #192]
	ldr r0, [sp, #4]
	ldr r1, [r0, #12]
	ldr r0, [sp, #80]
	add r0, r0, #5
	str r0, [sp, #56]
	sdiv r2, r1, r0
	mls r10, r2, r0, r1
	str r10, [sp, #184]
	ldr r0, [sp, #4]
	ldr r1, [r0, #16]
	ldr r0, [sp, #80]
	add r0, r0, #6
	str r0, [sp, #36]
	sdiv r2, r1, r0
	mls r10, r2, r0, r1
	str r10, [sp, #108]
	ldr r0, [sp, #4]
	ldr r1, [r0, #20]
	ldr r0, [sp, #80]
	add r0, r0, #7
	str r0, [sp, #24]
	sdiv r2, r1, r0
	mls r10, r2, r0, r1
	str r10, [sp, #124]
	ldr r0, [sp, #4]
	ldr r1, [r0, #24]
	ldr r0, [sp, #80]
	add r0, r0, #8
	str r0, [sp, #8]
	sdiv r2, r1, r0
	mls r10, r2, r0, r1
	str r10, [sp, #136]
	ldr r0, [sp, #4]
	ldr r1, [r0, #28]
	ldr r0, [sp, #80]
	add r0, r0, #9
	str r0, [sp, #212]
	sdiv r2, r1, r0
	mls r10, r2, r0, r1
	str r10, [sp, #148]
	ldr r0, [sp, #4]
	ldr r1, [r0, #32]
	ldr r0, [sp, #80]
	add r0, r0, #10
	str r0, [sp, #204]
	sdiv r2, r1, r0
	mls r2, r2, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #36]
	ldr r0, [sp, #80]
	add r0, r0, #11
	str r0, [sp, #188]
	sdiv r3, r1, r0
	mls r3, r3, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #40]
	ldr r0, [sp, #80]
	add r0, r0, #12
	str r0, [sp, #164]
	sdiv r4, r1, r0
	mls r4, r4, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #44]
	ldr r0, [sp, #80]
	add r0, r0, #13
	str r0, [sp, #112]
	sdiv r5, r1, r0
	mls r5, r5, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #48]
	ldr r0, [sp, #80]
	add r0, r0, #14
	str r0, [sp, #128]
	sdiv r6, r1, r0
	mls r6, r6, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #52]
	ldr r0, [sp, #80]
	add r0, r0, #15
	str r0, [sp, #144]
	sdiv r7, r1, r0
	mls r7, r7, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #56]
	ldr r0, [sp, #76]
	sdiv r8, r1, r0
	ldr r0, [sp, #76]
	mls r8, r8, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #60]
	ldr r0, [sp, #80]
	add r0, r0, #17
	sdiv r9, r1, r0
	mls r9, r9, r0, r1
	ldr r0, [sp, #80]
	ldr r1, [sp, #84]
	ldr r10, [sp, #20]
	mla r1, r0, r10, r1
	ldr r0, [sp, #40]
	ldr r10, [sp, #216]
	mla r1, r10, r0, r1
	ldr r0, [sp, #96]
	ldr r10, [sp, #192]
	mla r1, r10, r0, r1
	ldr r0, [sp, #176]
	ldr r10, [sp, #184]
	mla r1, r10, r0, r1
	ldr r0, [sp, #60]
	ldr r10, [sp, #108]
	mla r1, r10, r0, r1
	ldr r0, [sp, #56]
	ldr r10, [sp, #124]
	mla r1, r10, r0, r1
	ldr r0, [sp, #36]
	ldr r10, [sp, #136]
	mla r1, r10, r0, r1
	ldr r0, [sp, #24]
	ldr r10, [sp, #148]
	mla r1, r10, r0, r1
	ldr r0, [sp, #8]
	mla r1, r2, r0, r1
	ldr r0, [sp, #212]
	mla r1, r3, r0, r1
	ldr r0, [sp, #204]
	mla r1, r4, r0, r1
	ldr r0, [sp, #188]
	mla r1, r5, r0, r1
	ldr r0, [sp, #164]
	mla r1, r6, r0, r1
	ldr r0, [sp, #112]
	mla r1, r7, r0, r1
	ldr r0, [sp, #128]
	mla r1, r8, r0, r1
	ldr r0, [sp, #144]
	mla r1, r9, r0, r1
	str r1, [sp, #84]
	ldr r0, [sp, #76]
	str r0, [sp, #80]
	add r0, r0, #16
	str r0, [sp, #76]
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1610
	b label1489
label1831:
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1719
	b label1831
label1719:
	mov r4, r1
	cmp r1, #0
	bge label1480
	b label1501
label1485:
	ldr r2, [sp, #68]
	ldr r0, [sp, #88]
	add r0, r2, r0, lsl #2
	str r0, [sp, #12]
	ldr r2, [sp, #68]
	ldr r0, [sp, #88]
	ldr r1, [r2, r0, lsl #2]
	ldr r0, [sp, #88]
	add r0, r0, #2
	str r0, [sp, #100]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #28]
	ldr r0, [sp, #88]
	add r1, r0, #1
	str r1, [sp, #44]
	ldr r0, [sp, #12]
	ldr r1, [r0, #4]
	ldr r0, [sp, #88]
	add r0, r0, #3
	str r0, [sp, #168]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #208]
	ldr r0, [sp, #12]
	ldr r1, [r0, #8]
	ldr r0, [sp, #88]
	add r0, r0, #4
	str r0, [sp, #160]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #196]
	ldr r0, [sp, #12]
	ldr r1, [r0, #12]
	ldr r0, [sp, #88]
	add r0, r0, #5
	str r0, [sp, #52]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #172]
	ldr r0, [sp, #12]
	ldr r1, [r0, #16]
	ldr r0, [sp, #88]
	add r0, r0, #6
	str r0, [sp, #48]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #156]
	ldr r0, [sp, #12]
	ldr r1, [r0, #20]
	ldr r0, [sp, #88]
	add r0, r0, #7
	str r0, [sp, #32]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #120]
	ldr r0, [sp, #12]
	ldr r1, [r0, #24]
	ldr r0, [sp, #88]
	add r0, r0, #8
	str r0, [sp, #16]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #132]
	ldr r0, [sp, #12]
	ldr r1, [r0, #28]
	ldr r0, [sp, #88]
	add r0, r0, #9
	str r0, [sp, #0]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #152]
	ldr r0, [sp, #12]
	ldr r1, [r0, #32]
	ldr r0, [sp, #88]
	add r0, r0, #10
	str r0, [sp, #200]
	sdiv r2, r1, r0
	mls r2, r2, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #36]
	ldr r0, [sp, #88]
	add r0, r0, #11
	str r0, [sp, #180]
	sdiv r3, r1, r0
	mls r3, r3, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #40]
	ldr r0, [sp, #88]
	add r0, r0, #12
	str r0, [sp, #104]
	sdiv r4, r1, r0
	mls r4, r4, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #44]
	ldr r0, [sp, #88]
	add r0, r0, #13
	str r0, [sp, #116]
	sdiv r5, r1, r0
	mls r5, r5, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #48]
	ldr r0, [sp, #88]
	add r0, r0, #14
	str r0, [sp, #140]
	sdiv r6, r1, r0
	mls r7, r6, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #52]
	ldr r0, [sp, #88]
	add r6, r0, #15
	sdiv r0, r1, r6
	mls r8, r0, r6, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #56]
	ldr r0, [sp, #72]
	sdiv r9, r1, r0
	ldr r0, [sp, #72]
	mls r9, r9, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #60]
	ldr r0, [sp, #88]
	add r0, r0, #17
	sdiv r10, r1, r0
	mls r10, r10, r0, r1
	ldr r0, [sp, #88]
	ldr r1, [sp, #92]
	ldr r11, [sp, #28]
	mla r0, r0, r11, r1
	ldr r1, [sp, #44]
	ldr r11, [sp, #208]
	mla r1, r11, r1, r0
	ldr r0, [sp, #100]
	ldr r11, [sp, #196]
	mla r1, r11, r0, r1
	ldr r0, [sp, #168]
	ldr r11, [sp, #172]
	mla r1, r11, r0, r1
	ldr r0, [sp, #160]
	ldr r11, [sp, #156]
	mla r1, r11, r0, r1
	ldr r0, [sp, #52]
	ldr r11, [sp, #120]
	mla r1, r11, r0, r1
	ldr r0, [sp, #48]
	ldr r11, [sp, #132]
	mla r1, r11, r0, r1
	ldr r0, [sp, #32]
	ldr r11, [sp, #152]
	mla r1, r11, r0, r1
	ldr r0, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	mla r1, r3, r0, r1
	ldr r0, [sp, #200]
	mla r1, r4, r0, r1
	ldr r0, [sp, #180]
	mla r1, r5, r0, r1
	ldr r0, [sp, #104]
	mla r1, r7, r0, r1
	ldr r0, [sp, #116]
	mla r1, r8, r0, r1
	ldr r0, [sp, #140]
	mla r0, r9, r0, r1
	mla r1, r10, r6, r0
	str r1, [sp, #92]
	ldr r0, [sp, #72]
	str r0, [sp, #88]
	add r0, r0, #16
	str r0, [sp, #72]
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1508
	b label1485
label1480:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #228
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1501:
	rsb r4, r4, #0
	b label1480
