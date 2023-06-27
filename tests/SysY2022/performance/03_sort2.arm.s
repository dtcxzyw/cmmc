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
	beq label3
label2:
	add sp, sp, #396
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	ldr r4, [sp, #252]
	sub r0, r4, #1
	str r0, [sp, #284]
	ldr r1, [sp, #264]
	ldr r0, [sp, #208]
	cmp r1, r0
	bge label58
	ldr r1, [sp, #264]
	ldr r4, [sp, #140]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label30
	mov r11, #0
	add r10, r11, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	b label1314
label261:
	mov r10, r0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	mov r10, #0
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
	b label1317
label1315:
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
label1316:
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	b label1316
label32:
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
	bge label58
	ldr r4, [sp, #140]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label30
	mov r11, #0
	add r10, r11, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	b label1315
label12:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	mov r10, #0
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
	b label1318
label1317:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label12
	b label1317
label1314:
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label261
	b label1315
label1318:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label15
	b label1318
label15:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	mov r10, #0
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
label1319:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label18
	b label1319
label18:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	mov r10, #0
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
label1320:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label21
	b label1320
label21:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	mov r10, #0
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
	b label1321
label24:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	mov r10, #0
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
	b label1322
label291:
	mov r4, r10
	add r10, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
label1323:
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label30
	b label1323
label1322:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label291
	b label1322
label1321:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label24
	b label1321
label30:
	asr r4, r0, #31
	add r4, r0, r4, lsr #28
	asr r4, r4, #4
	mov r10, #16
	mul r4, r4, r10
	sub r0, r0, r4
	ldr r4, [sp, #300]
	add r10, r4, r0, lsl #2
	ldr r0, [r9, #0]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label32
	mov r11, #0
	add r9, r11, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r0, #0
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
label1326:
	mov r0, #0
	mov r11, r9
	add r9, r9, #4096
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label319
	b label1326
label319:
	mov r9, r0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	mov r9, #0
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
label1327:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label40
	b label1327
label40:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	mov r9, #0
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
label1328:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label43
	b label1328
label43:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	mov r9, #0
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
	b label1329
label46:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	mov r9, #0
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
	b label1330
label1329:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label46
	b label1329
label49:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	mov r9, #0
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
	b label1331
label52:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	mov r9, #0
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
	b label1332
label349:
	mov r4, r9
	add r9, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
label1333:
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label32
	b label1333
label1332:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label349
	b label1332
label1331:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label52
	b label1331
label1330:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label49
	b label1330
label58:
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
	bge label61
	b label67
label61:
	ldr r1, [sp, #264]
	str r1, [sp, #324]
	ldr r0, [sp, #64]
	ldr r1, [sp, #264]
	add r0, r1, r0
	str r0, [sp, #144]
	mov r5, #0
	cmp r5, #16
	bge label2
	cmp r5, #0
	ble label65
	b label66
label67:
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
	bge label70
	ldr r2, [sp, #220]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label438
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	b label1269
label70:
	ldr r2, [sp, #132]
	add r2, r2, #1
	str r2, [sp, #132]
	cmp r2, #16
	bge label61
	b label67
label1269:
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	b label1334
label438:
	mov r2, r0
	asr r3, r0, #31
	add r3, r0, r3, lsr #28
	asr r3, r3, #4
	mov r4, #16
	mul r3, r3, r4
	sub r5, r0, r3
	ldr r2, [sp, #132]
	cmp r5, r2
	beq label484
	b label98
label96:
	asr r3, r2, #31
	add r3, r2, r3, lsr #28
	asr r3, r3, #4
	mov r4, #16
	mul r3, r3, r4
	sub r5, r2, r3
	ldr r2, [sp, #132]
	cmp r5, r2
	beq label484
	b label98
label484:
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
	bge label70
	ldr r2, [sp, #220]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label438
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	b label1269
label98:
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
	ble label495
	mov r0, r1
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	b label1368
label495:
	mov r0, r1
label99:
	asr r2, r0, #31
	add r2, r0, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r0, r0, r2
	ldr r2, [sp, #132]
	cmp r0, r2
	beq label155
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label503
	mov r0, r1
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	b label1346
label503:
	mov r2, r1
label127:
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
	ble label556
	mov r1, r0
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r1, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	b label1358
label556:
	mov r2, r0
label129:
	asr r1, r2, #31
	add r1, r2, r1, lsr #28
	asr r1, r1, #4
	mov r3, #16
	mul r1, r1, r3
	sub r1, r2, r1
	ldr r2, [sp, #132]
	cmp r1, r2
	beq label561
	mov r1, r0
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label503
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	b label1357
label566:
	mov r2, r1
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	b label1359
label155:
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
	bge label70
	ldr r2, [sp, #220]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label438
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	b label1269
label1368:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label608
	b label1368
label1359:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label137
	b label1359
label137:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	b label1360
label1346:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
label1347:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
label1348:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	b label1348
label508:
	mov r2, r0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
label1349:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label109
	b label1349
label1360:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label140
	b label1360
label140:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
label1361:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label143
	b label1361
label1357:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	b label1347
label561:
	mov r1, r0
	ldr r2, [sp, #220]
	ldr r2, [r2, #0]
	b label181
label1358:
	mov r1, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label566
	b label1358
label143:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	b label1362
label146:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
label1363:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label149
	b label1363
label1362:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label146
	b label1362
label149:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	b label1364
label152:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
label1365:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label129
	b label1365
label1364:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label152
	b label1364
label109:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
label1350:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label112
	b label1350
label112:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	b label1351
label115:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	b label1352
label118:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	b label1353
label121:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	b label1354
label124:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
label1355:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label127
	b label1355
label1354:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label124
	b label1354
label1353:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label121
	b label1353
label1352:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label118
	b label1352
label1351:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label115
	b label1351
label1334:
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
label1336:
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	b label1336
label181:
	ldr r4, [sp, #140]
	str r0, [r4, r2, lsl #2]
	ldr r2, [sp, #220]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #220]
	str r0, [r2, #0]
	ldr r1, [sp, #60]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label70
	ldr r2, [sp, #220]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label438
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label75
	b label1334
label75:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
label1337:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label78
	b label1337
label78:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	b label1338
label453:
	mov r5, r3
	add r3, r2, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r5, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	b label1339
label1338:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label453
	b label1338
label1339:
	mov r5, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label458
	b label1339
label458:
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r5, #0
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	b label1340
label463:
	mov r2, r5
	add r5, r3, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r2, #0
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	b label1341
label90:
	add r5, r3, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r2, #0
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	b label1342
label93:
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
label1343:
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label96
	b label1343
label1342:
	mov r2, #0
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label93
	b label1342
label1341:
	mov r2, #0
	mov r3, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label90
	b label1341
label1340:
	mov r5, #0
	mov r3, r2
	add r2, r2, #256
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label463
	b label1340
label608:
	mov r2, r0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
label1369:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label163
	b label1369
label163:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
label1370:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label166
	b label1370
label166:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	b label1371
label169:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	b label1372
label628:
	mov r3, r2
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	b label1373
label1372:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label628
	b label1372
label1373:
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label633
	b label1373
label633:
	mov r0, r3
	add r3, r2, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r0, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	b label1374
label178:
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
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
label1375:
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label99
	b label1375
label1374:
	mov r0, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label178
	b label1374
label1371:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label169
	b label1371
label65:
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
	bge label2
	cmp r5, #0
	ble label65
label66:
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
	b label65
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
	ble label1499
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1487
	b label1486
label1499:
	mov r4, #0
	cmp r4, #0
	bge label1481
	b label1502
label1487:
	add r2, r0, #16
	cmp r2, r5
	bge label1491
label1490:
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
	bge label1491
	b label1490
label1491:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	b label1777
label1720:
	mov r4, r1
	cmp r1, #0
	bge label1481
	b label1502
label1777:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1720
	b label1777
label1486:
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
	bge label1487
	b label1486
label1481:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1502:
	rsb r4, r4, #0
	b label1481
