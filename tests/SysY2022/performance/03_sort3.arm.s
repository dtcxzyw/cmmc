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
	str r3, [sp, #60]
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
	bge label3
	ldr r1, [sp, #264]
	ldr r4, [sp, #140]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label155
	mov r11, #0
	add r10, r11, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	b label1338
label3:
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
	ldr r3, [sp, #60]
	str r0, [r3, #0]
	mov r2, #0
	str r2, [sp, #220]
	cmp r2, #16
	bge label123
label6:
	ldr r3, [sp, #212]
	ldr r2, [sp, #220]
	add r2, r3, r2, lsl #2
	str r2, [sp, #132]
	ldr r3, [sp, #212]
	ldr r2, [sp, #220]
	ldr r0, [r3, r2, lsl #2]
	ldr r3, [sp, #292]
	ldr r2, [sp, #220]
	add r1, r3, r2, lsl #2
	str r1, [sp, #136]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label9
	ldr r2, [sp, #132]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label304
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	b label1296
label9:
	ldr r2, [sp, #220]
	add r2, r2, #1
	str r2, [sp, #220]
	cmp r2, #16
	bge label123
	b label6
label123:
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
	ble label128
	b label127
label1296:
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	b label1330
label304:
	mov r2, r0
label11:
	asr r3, r2, #31
	add r3, r2, r3, lsr #28
	asr r3, r3, #4
	mov r4, #16
	mul r3, r3, r4
	sub r5, r2, r3
	ldr r2, [sp, #220]
	cmp r5, r2
	beq label309
	b label16
label309:
	mov r2, r1
label13:
	ldr r4, [sp, #140]
	str r0, [r4, r2, lsl #2]
	ldr r2, [sp, #132]
	ldr r0, [r2, #0]
	add r0, r0, #1
	ldr r2, [sp, #132]
	str r0, [r2, #0]
	ldr r1, [sp, #136]
	ldr r1, [r1, #0]
	cmp r0, r1
	bge label9
	ldr r2, [sp, #132]
	ldr r1, [r2, #0]
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label304
	mov r3, r0
	mov r2, #0
	add r5, r2, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	b label1296
label16:
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
	ble label324
	mov r0, r1
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	b label1301
label324:
	mov r0, r1
	asr r2, r1, #31
	add r2, r1, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r0, r1, r2
	ldr r2, [sp, #220]
	cmp r0, r2
	beq label370
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label373
	mov r0, r1
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	b label1309
label1301:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label329
	b label1301
label329:
	mov r2, r0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	b label1302
label1309:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	b label1310
label1330:
	mov r3, #0
	mov r2, r5
	add r5, r5, #4096
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label102
	b label1330
label1310:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
label1311:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	b label1311
label1320:
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	b label1310
label431:
	mov r1, r0
	ldr r2, [sp, #132]
	ldr r2, [r2, #0]
	b label13
label378:
	mov r2, r0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
label1312:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label51
	b label1312
label51:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
label1313:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label54
	b label1313
label54:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	b label1314
label57:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	b label1315
label60:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	b label1316
label63:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	b label1317
label66:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
label1318:
	add r0, r0, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label69
	b label1318
label1317:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label66
	b label1317
label1316:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label63
	b label1316
label1315:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label60
	b label1315
label1314:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label57
	b label1314
label373:
	mov r2, r1
label69:
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
	ble label426
	mov r2, r0
	mov r1, #0
	add r3, r1, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r2, #0
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	b label1321
label426:
	mov r2, r0
label71:
	asr r1, r2, #31
	add r1, r2, r1, lsr #28
	asr r1, r1, #4
	mov r3, #16
	mul r1, r1, r3
	sub r1, r2, r1
	ldr r2, [sp, #220]
	cmp r1, r2
	beq label431
	mov r1, r0
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label373
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	b label1320
label76:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	b label1322
label79:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	b label1323
label82:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	b label1324
label1323:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label82
	b label1323
label1322:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label79
	b label1322
label1321:
	mov r2, #0
	mov r1, r3
	add r3, r3, #4096
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label76
	b label1321
label85:
	add r3, r1, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
label1325:
	mov r2, #0
	mov r1, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label88
	b label1325
label88:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
label1326:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label91
	b label1326
label1324:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label85
	b label1324
label91:
	add r3, r1, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	b label1327
label94:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
label1328:
	add r1, r1, #1
	asr r3, r2, #31
	add r2, r2, r3, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r1, r4
	bge label71
	b label1328
label1327:
	mov r2, #0
	mov r1, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label94
	b label1327
label102:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
label1331:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label105
	b label1331
label105:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
label1332:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label108
	b label1332
label108:
	add r5, r2, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	b label1333
label111:
	add r5, r2, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	b label1334
label114:
	add r5, r2, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	b label1335
label503:
	mov r5, r3
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	b label1336
label508:
	mov r2, r5
	add r3, r3, #1
	asr r4, r5, #31
	add r2, r5, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
label1337:
	add r3, r3, #1
	asr r4, r2, #31
	add r2, r2, r4, lsr #28
	asr r2, r2, #4
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label11
	b label1337
label1334:
	mov r3, #0
	mov r2, r5
	add r5, r5, #256
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label114
	b label1334
label1336:
	mov r5, #0
	mov r3, r2
	add r2, r2, #16
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label508
	b label1336
label1333:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label111
	b label1333
label1335:
	mov r3, #0
	mov r2, r5
	add r5, r5, #16
	ldr r4, [sp, #252]
	cmp r5, r4
	bge label503
	b label1335
label1302:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label23
	b label1302
label23:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	b label1303
label26:
	add r3, r0, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	b label1304
label29:
	add r3, r0, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	b label1305
label349:
	mov r3, r2
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	b label1306
label1305:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label349
	b label1305
label1306:
	mov r3, #0
	mov r2, r0
	add r0, r0, #16
	ldr r4, [sp, #252]
	cmp r0, r4
	bge label354
	b label1306
label354:
	mov r0, r3
	add r3, r2, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r0, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	b label1307
label38:
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	b label1308
label41:
	asr r2, r0, #31
	add r2, r0, r2, lsr #28
	asr r2, r2, #4
	mov r3, #16
	mul r2, r2, r3
	sub r0, r0, r2
	ldr r2, [sp, #220]
	cmp r0, r2
	beq label370
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label373
	mov r0, r1
	mov r3, #0
	add r2, r3, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r0, #0
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	mov r3, r2
	add r2, r2, #4096
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label378
	b label1309
label1308:
	add r2, r2, #1
	asr r3, r0, #31
	add r0, r0, r3, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r2, r4
	bge label41
	b label1308
label1307:
	mov r0, #0
	mov r2, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label38
	b label1307
label1303:
	mov r2, #0
	mov r0, r3
	add r3, r3, #256
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label26
	b label1303
label1304:
	mov r2, #0
	mov r0, r3
	add r3, r3, #16
	ldr r4, [sp, #252]
	cmp r3, r4
	bge label29
	b label1304
label370:
	ldr r2, [sp, #132]
	ldr r2, [r2, #0]
	mov r0, r1
	b label13
label1338:
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	b label1339
label155:
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
	ble label597
	mov r0, #0
	add r11, r0, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	b label1349
label597:
	mov r0, r9
label157:
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
	bge label3
	ldr r4, [sp, #140]
	add r9, r4, r1, lsl #2
	ldr r4, [sp, #140]
	ldr r0, [r4, r1, lsl #2]
	ldr r4, [sp, #252]
	cmp r4, #0
	ble label155
	mov r11, #0
	add r10, r11, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	b label1338
label1349:
	mov r9, #0
	mov r0, r11
	add r11, r11, #4096
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label162
	b label1349
label1339:
	mov r0, #0
	mov r11, r10
	add r10, r10, #4096
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label554
	b label1339
label162:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
label1350:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label165
	b label1350
label165:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	b label1351
label168:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	b label1352
label171:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	b label1353
label174:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	b label1354
label177:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	b label1355
label642:
	mov r4, r9
	add r9, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
label1356:
	mov r4, r0
	mov r0, r9
	add r9, r9, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r9, r4
	bge label157
	b label1356
label1355:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label642
	b label1355
label1353:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label174
	b label1353
label1352:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label171
	b label1352
label1351:
	mov r9, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label168
	b label1351
label1354:
	mov r9, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label177
	b label1354
label554:
	mov r10, r0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
label1340:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label137
	b label1340
label137:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
label1341:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label140
	b label1341
label140:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	b label1342
label143:
	add r11, r0, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	b label1343
label146:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	b label1344
label149:
	add r11, r0, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	b label1345
label584:
	mov r4, r10
	add r10, r0, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
label1346:
	mov r4, r0
	mov r0, r10
	add r10, r10, #1
	asr r0, r4, #31
	add r0, r4, r0, lsr #28
	asr r0, r0, #4
	ldr r4, [sp, #252]
	cmp r10, r4
	bge label155
	b label1346
label1343:
	mov r10, #0
	mov r0, r11
	add r11, r11, #256
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label146
	b label1343
label1342:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label143
	b label1342
label1345:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label584
	b label1345
label1344:
	mov r10, #0
	mov r0, r11
	add r11, r11, #16
	ldr r4, [sp, #252]
	cmp r11, r4
	bge label149
	b label1344
label127:
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
label128:
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
	ble label128
	b label127
label183:
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
	ble label1474
	mov r1, #0
	mov r0, r1
	add r2, r1, #16
	cmp r2, r5
	bge label1456
	b label1463
label1474:
	mov r1, #0
	cmp r1, #0
	bge label1694
	b label1731
label1456:
	add r2, r0, #16
	cmp r2, r5
	bge label1460
	b label1459
label1460:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	b label1752
label1464:
	cmp r1, #0
	bge label1694
	b label1731
label1752:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1464
	b label1752
label1459:
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
	mla r4, r8, r9, r4
	ldr r8, [r3, #20]
	add r9, r0, #7
	sdiv r10, r8, r9
	mls r8, r10, r9, r8
	mla r7, r7, r8, r4
	ldr r8, [r3, #24]
	add r4, r0, #8
	sdiv r10, r8, r4
	mls r8, r10, r4, r8
	mla r1, r1, r8, r7
	ldr r7, [r3, #28]
	add r8, r0, #9
	sdiv r10, r7, r8
	mls r7, r10, r8, r7
	mla r1, r9, r7, r1
	ldr r9, [r3, #32]
	add r7, r0, #10
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #36]
	add r1, r0, #11
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r8, r9, r4
	ldr r9, [r3, #40]
	add r4, r0, #12
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r7, r9, r8
	ldr r9, [r3, #44]
	add r7, r0, #13
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #48]
	add r1, r0, #14
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r4, r9, r8
	ldr r9, [r3, #52]
	add r4, r0, #15
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r7, r7, r9, r8
	ldr r8, [r3, #56]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r1, r8, r7
	ldr r3, [r3, #60]
	add r0, r0, #17
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r4, r0, r1
	mov r0, r2
	add r2, r2, #16
	cmp r2, r5
	bge label1460
	b label1459
label1463:
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
	mla r1, r1, r9, r8
	ldr r9, [r3, #24]
	add r8, r0, #8
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r4, r4, r9, r1
	ldr r9, [r3, #28]
	add r1, r0, #9
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #32]
	add r4, r0, #10
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r8, r8, r9, r7
	ldr r9, [r3, #36]
	add r7, r0, #11
	sdiv r10, r9, r7
	mls r9, r10, r7, r9
	mla r8, r1, r9, r8
	ldr r9, [r3, #40]
	add r1, r0, #12
	sdiv r10, r9, r1
	mls r9, r10, r1, r9
	mla r8, r4, r9, r8
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
	bge label1456
	b label1463
label1731:
	rsb r4, r1, #0
	b label1467
label1694:
	mov r4, r1
label1467:
	mov r0, #102
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
