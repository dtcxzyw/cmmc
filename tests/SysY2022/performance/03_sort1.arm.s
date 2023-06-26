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
	beq label3
label2:
	add sp, sp, #396
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	ldr r4, [sp, #256]
	sub r0, r4, #1
	str r0, [sp, #352]
	ldr r1, [sp, #340]
	ldr r0, [sp, #320]
	cmp r1, r0
	bge label58
	ldr r1, [sp, #340]
	ldr r4, [sp, #268]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #268]
	ldr r10, [r4, r1, lsl #2]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label6
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	b label1342
label58:
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
	bge label61
	b label67
label61:
	ldr r1, [sp, #340]
	str r1, [sp, #48]
	ldr r0, [sp, #192]
	ldr r1, [sp, #340]
	add r0, r0, r1
	str r0, [sp, #120]
	mov r5, #0
	cmp r5, #16
	bge label2
	cmp r5, #0
	ble label65
	b label66
label67:
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
	bge label70
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
label1297:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	b label1362
label466:
	mov r3, r0
	asr r2, r0, #31
	add r2, r0, r2, lsr #28
	asr r2, r2, #4
	mov r4, #16
	mul r2, r2, r4
	sub r5, r0, r2
	ldr r2, [sp, #384]
	cmp r5, r2
	beq label512
	b label98
label96:
	asr r2, r3, #31
	add r2, r3, r2, lsr #28
	asr r2, r2, #4
	mov r4, #16
	mul r2, r2, r4
	sub r5, r3, r2
	ldr r2, [sp, #384]
	cmp r5, r2
	beq label512
	b label98
label512:
	mov r2, r1
	ldr r4, [sp, #268]
	str r0, [r4, r1, lsl #2]
	ldr r2, [sp, #376]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #376]
	str r0, [r2, #0]
	ldr r1, [sp, #380]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label70
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
	b label1297
label98:
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
	ble label523
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	b label1396
label523:
	mov r2, r1
label99:
	asr r0, r2, #31
	add r0, r2, r0, lsr #28
	asr r0, r0, #4
	mov r3, #16
	mul r0, r0, r3
	sub r0, r2, r0
	ldr r2, [sp, #384]
	cmp r0, r2
	beq label155
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label531
	mov r2, r1
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	b label1374
label155:
	ldr r2, [sp, #376]
	ldr r2, [r2, #0]
	mov r0, r1
	ldr r4, [sp, #268]
	str r1, [r4, r2, lsl #2]
	ldr r2, [sp, #376]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #376]
	str r0, [r2, #0]
	ldr r1, [sp, #380]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label70
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
	b label1297
label1374:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
label1375:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	b label1387
label134:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	b label1388
label1387:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	b label1387
label1388:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label137
	b label1388
label137:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
label1389:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label140
	b label1389
label140:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	b label1390
label143:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	b label1391
label614:
	mov r3, r2
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	b label1392
label619:
	mov r0, r3
	add r3, r2, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r0, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	b label1393
label152:
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
label1394:
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label103
	b label1394
label103:
	asr r2, r0, #31
	add r2, r0, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r2, r0, r2
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
	ble label543
	mov r1, r0
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r1, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	b label1378
label543:
	mov r1, r0
	asr r2, r0, #31
	add r2, r0, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r1, r0, r2
	ldr r2, [sp, #384]
	cmp r1, r2
	beq label589
	mov r1, r0
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label531
	mov r2, r0
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	b label1386
label1378:
	mov r1, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label548
	b label1378
label548:
	mov r2, r1
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	b label1379
label1386:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	b label1375
label1391:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label614
	b label1391
label1379:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label111
	b label1379
label111:
	add r3, r1, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	b label1380
label1393:
	mov r0, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label152
	b label1393
label1392:
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label619
	b label1392
label1380:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label114
	b label1380
label114:
	add r3, r1, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
label1381:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label117
	b label1381
label117:
	add r3, r1, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	b label1382
label568:
	mov r3, r2
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r3, #0
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	b label1383
label573:
	mov r1, r3
	add r3, r2, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r1, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	b label1384
label126:
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
label1385:
	asr r3, r1, #31
	add r1, r1, r3, lsr #28
	asr r1, r1, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label129
	b label1385
label1383:
	mov r3, #0
	mov r2, r1
	add r1, r1, #16
	ldr r4, [sp, #256]
	cmp r1, r4
	bge label573
	b label1383
label1382:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label568
	b label1382
label1390:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label143
	b label1390
label1384:
	mov r1, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label126
	b label1384
label531:
	mov r0, r1
	b label103
label129:
	asr r2, r1, #31
	add r2, r1, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r1, r1, r2
	ldr r2, [sp, #384]
	cmp r1, r2
	beq label589
	mov r1, r0
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label531
	mov r2, r0
	mov r0, #0
	add r3, r0, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label134
	b label1386
label589:
	mov r1, r0
	ldr r2, [sp, #376]
	ldr r2, [r2, #0]
	b label181
label1362:
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
label1364:
	mov r2, #0
	mov r5, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label471
	b label1364
label471:
	mov r3, r2
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	b label1365
label181:
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
	bge label70
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
	b label1362
label78:
	add r5, r2, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	b label1366
label1365:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label78
	b label1365
label1366:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label81
	b label1366
label81:
	add r5, r2, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	b label1367
label84:
	add r5, r2, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	b label1368
label87:
	add r5, r2, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	b label1369
label1368:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label87
	b label1368
label90:
	add r5, r2, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	b label1370
label93:
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
label1371:
	asr r4, r3, #31
	add r3, r3, r4, lsr #28
	asr r3, r3, #4
	add r2, r2, #1
	ldr r4, [sp, #256]
	cmp r2, r4
	bge label96
	b label1371
label1369:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label90
	b label1369
label1370:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label93
	b label1370
label1367:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #256]
	cmp r5, r4
	bge label84
	b label1367
label1396:
	mov r2, #0
	mov r0, r3
	add r3, r3, #4096
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label160
	b label1396
label160:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
label1397:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label163
	b label1397
label163:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	b label1398
label166:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	b label1399
label169:
	add r3, r0, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
label1400:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label172
	b label1400
label172:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
label1401:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label175
	b label1401
label175:
	add r3, r0, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	b label1402
label178:
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
label1403:
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label99
	b label1403
label1402:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label178
	b label1402
label1398:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label166
	b label1398
label1399:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #256]
	cmp r3, r4
	bge label169
	b label1399
label1342:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
label1343:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
label1354:
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	b label1354
label37:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
label1355:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label40
	b label1355
label40:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
label1356:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label43
	b label1356
label43:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	b label1357
label46:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	b label1358
label1357:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label46
	b label1357
label49:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	b label1359
label52:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	mov r10, #0
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
	b label1360
label349:
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
label1361:
	mov r4, r10
	asr r10, r10, #31
	add r4, r4, r10, lsr #28
	asr r10, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label6
	b label1361
label1360:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label349
	b label1360
label1359:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label52
	b label1359
label1358:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label49
	b label1358
label6:
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
	ble label8
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
label1346:
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label13
	b label1346
label13:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	b label1347
label16:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	b label1348
label19:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
label1349:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label22
	b label1349
label1348:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label19
	b label1348
label1347:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label16
	b label1347
label22:
	add r11, r0, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
label1350:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label25
	b label1350
label25:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	b label1351
label28:
	add r11, r0, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	b label1352
label308:
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
label1353:
	mov r4, r9
	asr r9, r9, #31
	add r4, r4, r9, lsr #28
	asr r9, r4, #4
	add r0, r0, #1
	ldr r4, [sp, #256]
	cmp r0, r4
	bge label8
	b label1353
label1352:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label308
	b label1352
label1351:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label28
	b label1351
label8:
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
	bge label58
	ldr r4, [sp, #268]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #268]
	ldr r10, [r4, r1, lsl #2]
	ldr r4, [sp, #256]
	cmp r4, #0
	ble label6
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r10, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #256]
	cmp r11, r4
	bge label37
	b label1343
label65:
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
	bge label2
	cmp r5, #0
	ble label65
label66:
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
	b label65
label70:
	ldr r2, [sp, #384]
	add r2, r2, #1
	str r2, [sp, #384]
	cmp r2, #16
	bge label61
	b label67
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #220
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
	ble label1524
	mov r0, #0
	str r0, [sp, #92]
	mov r1, r0
	str r0, [sp, #88]
	add r0, r0, #16
	str r0, [sp, #72]
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1529
	b label1506
label1524:
	mov r1, #0
	cmp r1, #0
	bge label1744
label1835:
	rsb r4, r1, #0
	b label1517
label1529:
	ldr r0, [sp, #92]
	str r0, [sp, #80]
	ldr r1, [sp, #88]
	str r1, [sp, #84]
	add r0, r0, #16
	str r0, [sp, #76]
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1631
	b label1510
label1506:
	ldr r2, [sp, #68]
	ldr r0, [sp, #92]
	add r0, r2, r0, lsl #2
	str r0, [sp, #12]
	ldr r2, [sp, #68]
	ldr r0, [sp, #92]
	ldr r1, [r2, r0, lsl #2]
	ldr r0, [sp, #92]
	add r0, r0, #2
	str r0, [sp, #176]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #28]
	ldr r0, [sp, #92]
	add r0, r0, #1
	str r0, [sp, #44]
	ldr r0, [sp, #12]
	ldr r1, [r0, #4]
	ldr r0, [sp, #92]
	add r0, r0, #3
	str r0, [sp, #160]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #212]
	ldr r0, [sp, #12]
	ldr r1, [r0, #8]
	ldr r0, [sp, #92]
	add r0, r0, #4
	str r0, [sp, #60]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #188]
	ldr r0, [sp, #12]
	ldr r1, [r0, #12]
	ldr r0, [sp, #92]
	add r0, r0, #5
	str r0, [sp, #56]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #164]
	ldr r0, [sp, #12]
	ldr r1, [r0, #16]
	ldr r0, [sp, #92]
	add r0, r0, #6
	str r0, [sp, #48]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #100]
	ldr r0, [sp, #12]
	ldr r1, [r0, #20]
	ldr r0, [sp, #92]
	add r0, r0, #7
	str r0, [sp, #32]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #124]
	ldr r0, [sp, #12]
	ldr r1, [r0, #24]
	ldr r0, [sp, #92]
	add r0, r0, #8
	str r0, [sp, #16]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #136]
	ldr r0, [sp, #12]
	ldr r1, [r0, #28]
	ldr r0, [sp, #92]
	add r0, r0, #9
	str r0, [sp, #0]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #152]
	ldr r0, [sp, #12]
	ldr r1, [r0, #32]
	ldr r0, [sp, #92]
	add r0, r0, #10
	str r0, [sp, #196]
	sdiv r2, r1, r0
	mls r2, r2, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #36]
	ldr r0, [sp, #92]
	add r0, r0, #11
	str r0, [sp, #172]
	sdiv r3, r1, r0
	mls r3, r3, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #40]
	ldr r0, [sp, #92]
	add r0, r0, #12
	str r0, [sp, #108]
	sdiv r4, r1, r0
	mls r4, r4, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #44]
	ldr r0, [sp, #92]
	add r0, r0, #13
	str r0, [sp, #120]
	sdiv r5, r1, r0
	mls r5, r5, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #48]
	ldr r0, [sp, #92]
	add r0, r0, #14
	str r0, [sp, #144]
	sdiv r6, r1, r0
	mls r7, r6, r0, r1
	ldr r0, [sp, #12]
	ldr r1, [r0, #52]
	ldr r0, [sp, #92]
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
	ldr r0, [sp, #92]
	add r0, r0, #17
	sdiv r10, r1, r0
	mls r10, r10, r0, r1
	ldr r1, [sp, #88]
	ldr r0, [sp, #92]
	ldr r11, [sp, #28]
	mla r1, r0, r11, r1
	ldr r0, [sp, #44]
	ldr r11, [sp, #212]
	mla r1, r11, r0, r1
	ldr r0, [sp, #176]
	ldr r11, [sp, #188]
	mla r1, r11, r0, r1
	ldr r0, [sp, #160]
	ldr r11, [sp, #164]
	mla r1, r11, r0, r1
	ldr r0, [sp, #60]
	ldr r11, [sp, #100]
	mla r1, r11, r0, r1
	ldr r0, [sp, #56]
	ldr r11, [sp, #124]
	mla r1, r11, r0, r1
	ldr r0, [sp, #48]
	ldr r11, [sp, #136]
	mla r1, r11, r0, r1
	ldr r0, [sp, #32]
	ldr r11, [sp, #152]
	mla r1, r11, r0, r1
	ldr r0, [sp, #16]
	mla r1, r2, r0, r1
	ldr r0, [sp, #0]
	mla r1, r3, r0, r1
	ldr r0, [sp, #196]
	mla r1, r4, r0, r1
	ldr r0, [sp, #172]
	mla r1, r5, r0, r1
	ldr r0, [sp, #108]
	mla r1, r7, r0, r1
	ldr r0, [sp, #120]
	mla r1, r8, r0, r1
	ldr r0, [sp, #144]
	mla r0, r9, r0, r1
	mla r1, r10, r6, r0
	ldr r0, [sp, #72]
	str r0, [sp, #92]
	str r1, [sp, #88]
	add r0, r0, #16
	str r0, [sp, #72]
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1529
	b label1506
label1744:
	mov r4, r1
label1517:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #220
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1631:
	ldr r0, [sp, #80]
	ldr r1, [sp, #84]
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
label1856:
	ldr r2, [sp, #68]
	ldr r2, [r2, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1514
	b label1856
label1510:
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
	mls r11, r2, r0, r1
	str r11, [sp, #20]
	ldr r0, [sp, #80]
	add r1, r0, #1
	str r1, [sp, #40]
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	ldr r0, [sp, #80]
	add r0, r0, #3
	str r0, [sp, #168]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #204]
	ldr r0, [sp, #4]
	ldr r1, [r0, #8]
	ldr r0, [sp, #80]
	add r0, r0, #4
	str r0, [sp, #104]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #192]
	ldr r0, [sp, #4]
	ldr r1, [r0, #12]
	ldr r0, [sp, #80]
	add r0, r0, #5
	str r0, [sp, #52]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #180]
	ldr r0, [sp, #4]
	ldr r1, [r0, #16]
	ldr r0, [sp, #80]
	add r0, r0, #6
	str r0, [sp, #36]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #112]
	ldr r0, [sp, #4]
	ldr r1, [r0, #20]
	ldr r0, [sp, #80]
	add r0, r0, #7
	str r0, [sp, #24]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #128]
	ldr r0, [sp, #4]
	ldr r1, [r0, #24]
	ldr r0, [sp, #80]
	add r0, r0, #8
	str r0, [sp, #8]
	sdiv r2, r1, r0
	mls r11, r2, r0, r1
	str r11, [sp, #140]
	ldr r0, [sp, #4]
	ldr r1, [r0, #28]
	ldr r0, [sp, #80]
	add r0, r0, #9
	str r0, [sp, #208]
	sdiv r2, r1, r0
	mls r2, r2, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #32]
	ldr r0, [sp, #80]
	add r0, r0, #10
	str r0, [sp, #200]
	sdiv r3, r1, r0
	mls r3, r3, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #36]
	ldr r0, [sp, #80]
	add r0, r0, #11
	str r0, [sp, #184]
	sdiv r4, r1, r0
	mls r4, r4, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #40]
	ldr r0, [sp, #80]
	add r0, r0, #12
	str r0, [sp, #156]
	sdiv r5, r1, r0
	mls r5, r5, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #44]
	ldr r0, [sp, #80]
	add r0, r0, #13
	str r0, [sp, #116]
	sdiv r6, r1, r0
	mls r6, r6, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #48]
	ldr r0, [sp, #80]
	add r0, r0, #14
	str r0, [sp, #132]
	sdiv r7, r1, r0
	mls r7, r7, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #52]
	ldr r0, [sp, #80]
	add r0, r0, #15
	str r0, [sp, #148]
	sdiv r8, r1, r0
	mls r8, r8, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #56]
	ldr r0, [sp, #76]
	sdiv r9, r1, r0
	ldr r0, [sp, #76]
	mls r9, r9, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r0, #60]
	ldr r0, [sp, #80]
	add r0, r0, #17
	sdiv r10, r1, r0
	mls r10, r10, r0, r1
	ldr r0, [sp, #80]
	ldr r1, [sp, #84]
	ldr r11, [sp, #20]
	mla r0, r0, r11, r1
	ldr r1, [sp, #40]
	ldr r11, [sp, #204]
	mla r1, r11, r1, r0
	ldr r0, [sp, #96]
	ldr r11, [sp, #192]
	mla r1, r11, r0, r1
	ldr r0, [sp, #168]
	ldr r11, [sp, #180]
	mla r1, r11, r0, r1
	ldr r0, [sp, #104]
	ldr r11, [sp, #112]
	mla r1, r11, r0, r1
	ldr r0, [sp, #52]
	ldr r11, [sp, #128]
	mla r1, r11, r0, r1
	ldr r0, [sp, #36]
	ldr r11, [sp, #140]
	mla r1, r11, r0, r1
	ldr r0, [sp, #24]
	mla r1, r2, r0, r1
	ldr r0, [sp, #8]
	mla r1, r3, r0, r1
	ldr r0, [sp, #208]
	mla r1, r4, r0, r1
	ldr r0, [sp, #200]
	mla r1, r5, r0, r1
	ldr r0, [sp, #184]
	mla r1, r6, r0, r1
	ldr r0, [sp, #156]
	mla r1, r7, r0, r1
	ldr r0, [sp, #116]
	mla r1, r8, r0, r1
	ldr r0, [sp, #132]
	mla r1, r9, r0, r1
	ldr r0, [sp, #148]
	mla r1, r10, r0, r1
	ldr r0, [sp, #76]
	str r0, [sp, #80]
	str r1, [sp, #84]
	add r0, r0, #16
	str r0, [sp, #76]
	ldr r3, [sp, #64]
	cmp r0, r3
	bge label1631
	b label1510
label1514:
	cmp r1, #0
	bge label1744
	b label1835
