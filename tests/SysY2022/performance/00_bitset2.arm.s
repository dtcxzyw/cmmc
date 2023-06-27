.arch armv7ve
.data
.align 4
a:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #252
	add r8, sp, #16
	str r8, [sp, #180]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #56
	bl _sysy_starttime
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	str r1, [sp, #184]
	ldr r8, [sp, #180]
	add r7, r8, #4
	str r7, [sp, #208]
	ldr r8, [sp, #180]
	add r7, r8, #8
	str r7, [sp, #204]
	ldr r8, [sp, #180]
	add r7, r8, #12
	str r7, [sp, #200]
	ldr r8, [sp, #180]
	add r7, r8, #16
	str r7, [sp, #196]
	ldr r8, [sp, #180]
	add r7, r8, #20
	str r7, [sp, #192]
	ldr r8, [sp, #180]
	add r7, r8, #24
	str r7, [sp, #188]
	ldr r8, [sp, #180]
	add r7, r8, #28
	str r7, [sp, #160]
	ldr r8, [sp, #180]
	add r7, r8, #32
	str r7, [sp, #212]
	ldr r8, [sp, #180]
	add r7, r8, #36
	str r7, [sp, #220]
	ldr r8, [sp, #180]
	add r7, r8, #40
	str r7, [sp, #224]
	ldr r8, [sp, #180]
	add r7, r8, #44
	str r7, [sp, #228]
	ldr r8, [sp, #180]
	add r7, r8, #48
	str r7, [sp, #232]
	ldr r8, [sp, #180]
	add r7, r8, #52
	str r7, [sp, #236]
	ldr r8, [sp, #180]
	add r7, r8, #56
	str r7, [sp, #240]
	ldr r8, [sp, #180]
	add r7, r8, #60
	str r7, [sp, #4]
	ldr r8, [sp, #180]
	add r7, r8, #64
	str r7, [sp, #0]
	ldr r8, [sp, #180]
	add r7, r8, #68
	str r7, [sp, #168]
	ldr r8, [sp, #180]
	add r7, r8, #72
	str r7, [sp, #176]
	ldr r8, [sp, #180]
	add r3, r8, #76
	ldr r8, [sp, #180]
	add r6, r8, #80
	ldr r8, [sp, #180]
	add r7, r8, #84
	str r7, [sp, #140]
	ldr r8, [sp, #180]
	add r7, r8, #88
	str r7, [sp, #172]
	ldr r8, [sp, #180]
	add r7, r8, #92
	str r7, [sp, #8]
	ldr r8, [sp, #180]
	add r7, r8, #96
	str r7, [sp, #216]
	ldr r8, [sp, #180]
	add r7, r8, #100
	str r7, [sp, #12]
	ldr r8, [sp, #180]
	add r7, r8, #104
	str r7, [sp, #156]
	ldr r8, [sp, #180]
	add r7, r8, #108
	str r7, [sp, #164]
	ldr r8, [sp, #180]
	add r7, r8, #112
	str r7, [sp, #148]
	ldr r8, [sp, #180]
	add r7, r8, #116
	str r7, [sp, #144]
	ldr r8, [sp, #180]
	add r7, r8, #120
	str r7, [sp, #152]
	cmp r4, #0
	ble label18
	mov r1, r5
	mov r0, r4
label2:
	movw r2, #58069
	movt r2, #304
	movw r4, #48287
	movt r4, #304
	mla r1, r1, r4, r2
	movw r2, #51719
	movt r2, #15258
	movw r4, #12185
	movt r4, #17592
	smmul r4, r1, r4
	asr r5, r4, #28
	add r4, r5, r4, lsr #31
	mls r1, r4, r2, r1
	sub r2, r0, #1
	cmp r1, #0
	bge label65
	movw r0, #51719
	movt r0, #15258
	add r0, r1, r0
	b label5
label65:
	mov r0, r1
label5:
	movw r1, #58069
	movt r1, #304
	movw r4, #48287
	movt r4, #304
	mla r1, r0, r4, r1
	movw r4, #51719
	movt r4, #15258
	movw r5, #12185
	movt r5, #17592
	smmul r5, r1, r5
	asr r7, r5, #28
	add r5, r7, r5, lsr #31
	mls r1, r5, r4, r1
	movw r4, #37856
	movt r4, #4
	movw r5, #7557
	movt r5, #28633
	smmul r5, r0, r5
	asr r7, r5, #17
	add r5, r7, r5, lsr #31
	mls r4, r5, r4, r0
	cmp r1, #0
	bge label73
	b label72
label73:
	mov r0, r1
label7:
	movw r1, #34953
	movt r1, #34952
	smmla r1, r4, r1, r4
	asr r5, r1, #4
	add r5, r5, r1, lsr #31
	mov r1, #1
	str r1, [sp, #16]
	mov r1, #2
	ldr r7, [sp, #208]
	str r1, [r7, #0]
	mov r1, #4
	ldr r7, [sp, #204]
	str r1, [r7, #0]
	mov r1, #8
	ldr r7, [sp, #200]
	str r1, [r7, #0]
	mov r1, #16
	ldr r7, [sp, #196]
	str r1, [r7, #0]
	mov r1, #32
	ldr r7, [sp, #192]
	str r1, [r7, #0]
	mov r1, #64
	ldr r7, [sp, #188]
	str r1, [r7, #0]
	mov r1, #128
	ldr r7, [sp, #160]
	str r1, [r7, #0]
	mov r1, #256
	ldr r7, [sp, #212]
	str r1, [r7, #0]
	mov r1, #512
	ldr r7, [sp, #220]
	str r1, [r7, #0]
	mov r1, #1024
	ldr r7, [sp, #224]
	str r1, [r7, #0]
	mov r1, #2048
	ldr r7, [sp, #228]
	str r1, [r7, #0]
	mov r1, #4096
	ldr r7, [sp, #232]
	str r1, [r7, #0]
	mov r1, #8192
	ldr r7, [sp, #236]
	str r1, [r7, #0]
	mov r1, #16384
	ldr r7, [sp, #240]
	str r1, [r7, #0]
	mov r1, #32768
	ldr r7, [sp, #4]
	str r1, [r7, #0]
	mov r1, #65536
	ldr r7, [sp, #0]
	str r1, [r7, #0]
	mov r1, #131072
	ldr r7, [sp, #168]
	str r1, [r7, #0]
	mov r1, #262144
	ldr r7, [sp, #176]
	str r1, [r7, #0]
	mov r1, #524288
	str r1, [r3, #0]
	mov r1, #1048576
	str r1, [r6, #0]
	mov r1, #2097152
	ldr r7, [sp, #140]
	str r1, [r7, #0]
	mov r1, #4194304
	ldr r7, [sp, #172]
	str r1, [r7, #0]
	mov r1, #8388608
	ldr r7, [sp, #8]
	str r1, [r7, #0]
	mov r1, #16777216
	ldr r7, [sp, #216]
	str r1, [r7, #0]
	mov r1, #33554432
	ldr r7, [sp, #12]
	str r1, [r7, #0]
	mov r1, #67108864
	ldr r7, [sp, #156]
	str r1, [r7, #0]
	mov r1, #134217728
	ldr r7, [sp, #164]
	str r1, [r7, #0]
	mov r1, #268435456
	ldr r7, [sp, #148]
	str r1, [r7, #0]
	mov r1, #536870912
	ldr r7, [sp, #144]
	str r1, [r7, #0]
	mov r1, #1073741824
	ldr r7, [sp, #152]
	str r1, [r7, #0]
	movw r1, #9999
	cmp r5, r1
	ble label9
	cmp r2, #0
	ble label18
	b label218
label9:
	ldr r1, [sp, #184]
	add r7, r1, r5, lsl #2
	ldr r1, [sp, #184]
	ldr r1, [r1, r5, lsl #2]
	mov r5, #30
	movw r8, #34953
	movt r8, #34952
	smmla r8, r4, r8, r4
	asr r9, r8, #4
	add r8, r9, r8, lsr #31
	mls r5, r8, r5, r4
	ldr r8, [sp, #180]
	add r4, r8, r5, lsl #2
	ldr r8, [sp, #180]
	ldr r5, [r8, r5, lsl #2]
	sdiv r8, r1, r5
	mov r9, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r10, r10, r9, r8
	add r11, r0, r0, lsr #31
	asr r11, r11, #1
	mls r9, r11, r9, r0
	cmp r10, r9
	beq label14
	mov r1, #2
	add r10, r8, r8, lsr #31
	asr r10, r10, #1
	mls r8, r10, r1, r8
	cmp r8, #0
	mov r1, #0
	movweq r1, #1
	cmp r9, #1
	mov r10, #0
	movweq r10, #1
	and r1, r1, r10
	rsb r1, r1, #0
	and r1, r5, r1
	cmp r8, #1
	mov r5, #0
	movweq r5, #1
	cmp r9, #0
	mov r8, #0
	movweq r8, #1
	and r5, r5, r8
	cmp r5, #0
	beq label12
	ldr r4, [r4, #0]
	sub r1, r1, r4
	ldr r4, [r7, #0]
	add r1, r1, r4
	str r1, [r7, #0]
	cmp r2, #0
	ble label18
	b label218
label12:
	ldr r4, [r7, #0]
	add r1, r1, r4
	str r1, [r7, #0]
	cmp r2, #0
	ble label18
	b label218
label14:
	str r1, [r7, #0]
	cmp r2, #0
	ble label18
label218:
	mov r1, r0
	mov r0, r2
	b label2
label72:
	movw r0, #51719
	movt r0, #15258
	add r0, r1, r0
	b label7
label18:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	ldr r1, [sp, #184]
	bl putarray
	mov r0, #0
	add sp, sp, #252
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
