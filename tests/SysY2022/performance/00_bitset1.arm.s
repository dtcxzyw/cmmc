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
	add r9, sp, #56
	str r9, [sp, #8]
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	mov r0, #56
	bl _sysy_starttime
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	str r1, [sp, #16]
	ldr r9, [sp, #8]
	add r6, r9, #4
	str r6, [sp, #212]
	ldr r9, [sp, #8]
	add r6, r9, #8
	str r6, [sp, #208]
	ldr r9, [sp, #8]
	add r6, r9, #12
	str r6, [sp, #204]
	ldr r9, [sp, #8]
	add r6, r9, #16
	str r6, [sp, #200]
	ldr r9, [sp, #8]
	add r6, r9, #20
	str r6, [sp, #196]
	ldr r9, [sp, #8]
	add r6, r9, #24
	str r6, [sp, #192]
	ldr r9, [sp, #8]
	add r6, r9, #28
	str r6, [sp, #188]
	ldr r9, [sp, #8]
	add r6, r9, #32
	str r6, [sp, #216]
	ldr r9, [sp, #8]
	add r6, r9, #36
	str r6, [sp, #224]
	ldr r9, [sp, #8]
	add r6, r9, #40
	str r6, [sp, #228]
	ldr r9, [sp, #8]
	add r6, r9, #44
	str r6, [sp, #232]
	ldr r9, [sp, #8]
	add r6, r9, #48
	str r6, [sp, #236]
	ldr r9, [sp, #8]
	add r6, r9, #52
	str r6, [sp, #240]
	ldr r9, [sp, #8]
	add r6, r9, #56
	str r6, [sp, #4]
	ldr r9, [sp, #8]
	add r6, r9, #60
	str r6, [sp, #0]
	ldr r9, [sp, #8]
	add r6, r9, #64
	str r6, [sp, #52]
	ldr r9, [sp, #8]
	add r6, r9, #68
	str r6, [sp, #12]
	ldr r9, [sp, #8]
	add r2, r9, #72
	ldr r9, [sp, #8]
	add r6, r9, #76
	str r6, [sp, #36]
	ldr r9, [sp, #8]
	add r6, r9, #80
	str r6, [sp, #184]
	ldr r9, [sp, #8]
	add r6, r9, #84
	str r6, [sp, #32]
	ldr r9, [sp, #8]
	add r6, r9, #88
	str r6, [sp, #180]
	ldr r9, [sp, #8]
	add r3, r9, #92
	ldr r9, [sp, #8]
	add r6, r9, #96
	str r6, [sp, #220]
	ldr r9, [sp, #8]
	add r6, r9, #100
	str r6, [sp, #44]
	ldr r9, [sp, #8]
	add r6, r9, #104
	str r6, [sp, #40]
	ldr r9, [sp, #8]
	add r6, r9, #108
	str r6, [sp, #20]
	ldr r9, [sp, #8]
	add r6, r9, #112
	str r6, [sp, #28]
	ldr r9, [sp, #8]
	add r6, r9, #116
	str r6, [sp, #24]
	ldr r9, [sp, #8]
	add r6, r9, #120
	str r6, [sp, #48]
	cmp r4, #0
	ble label18
	mov r0, r5
label2:
	sub r4, r4, #1
	movw r1, #48287
	movt r1, #304
	mul r0, r0, r1
	movw r1, #58069
	movt r1, #304
	add r0, r1, r0
	movw r1, #12185
	movt r1, #17592
	smmul r1, r0, r1
	asr r5, r1, #28
	add r1, r5, r1, lsr #31
	movw r5, #51719
	movt r5, #15258
	mul r1, r1, r5
	sub r0, r0, r1
	cmp r0, #0
	bge label5
	movw r1, #51719
	movt r1, #15258
	add r0, r0, r1
label5:
	movw r1, #7557
	movt r1, #28633
	smmul r1, r0, r1
	asr r5, r1, #17
	add r1, r5, r1, lsr #31
	movw r5, #37856
	movt r5, #4
	mul r1, r1, r5
	sub r5, r0, r1
	movw r1, #48287
	movt r1, #304
	mul r0, r0, r1
	movw r1, #58069
	movt r1, #304
	add r0, r1, r0
	movw r1, #12185
	movt r1, #17592
	smmul r1, r0, r1
	asr r6, r1, #28
	add r1, r6, r1, lsr #31
	movw r6, #51719
	movt r6, #15258
	mul r1, r1, r6
	sub r0, r0, r1
	cmp r0, #0
	bge label7
	b label72
label7:
	mov r1, #1
	str r1, [sp, #56]
	mov r1, #2
	ldr r6, [sp, #212]
	str r1, [r6, #0]
	mov r1, #4
	ldr r6, [sp, #208]
	str r1, [r6, #0]
	mov r1, #8
	ldr r6, [sp, #204]
	str r1, [r6, #0]
	mov r1, #16
	ldr r6, [sp, #200]
	str r1, [r6, #0]
	mov r1, #32
	ldr r6, [sp, #196]
	str r1, [r6, #0]
	mov r1, #64
	ldr r6, [sp, #192]
	str r1, [r6, #0]
	mov r1, #128
	ldr r6, [sp, #188]
	str r1, [r6, #0]
	mov r1, #256
	ldr r6, [sp, #216]
	str r1, [r6, #0]
	mov r1, #512
	ldr r6, [sp, #224]
	str r1, [r6, #0]
	mov r1, #1024
	ldr r6, [sp, #228]
	str r1, [r6, #0]
	mov r1, #2048
	ldr r6, [sp, #232]
	str r1, [r6, #0]
	mov r1, #4096
	ldr r6, [sp, #236]
	str r1, [r6, #0]
	mov r1, #8192
	ldr r6, [sp, #240]
	str r1, [r6, #0]
	mov r1, #16384
	ldr r6, [sp, #4]
	str r1, [r6, #0]
	mov r1, #32768
	ldr r6, [sp, #0]
	str r1, [r6, #0]
	mov r1, #65536
	ldr r6, [sp, #52]
	str r1, [r6, #0]
	mov r1, #131072
	ldr r6, [sp, #12]
	str r1, [r6, #0]
	mov r1, #262144
	str r1, [r2, #0]
	mov r1, #524288
	ldr r6, [sp, #36]
	str r1, [r6, #0]
	mov r1, #1048576
	ldr r6, [sp, #184]
	str r1, [r6, #0]
	mov r1, #2097152
	ldr r6, [sp, #32]
	str r1, [r6, #0]
	mov r1, #4194304
	ldr r6, [sp, #180]
	str r1, [r6, #0]
	mov r1, #8388608
	str r1, [r3, #0]
	mov r1, #16777216
	ldr r6, [sp, #220]
	str r1, [r6, #0]
	mov r1, #33554432
	ldr r6, [sp, #44]
	str r1, [r6, #0]
	mov r1, #67108864
	ldr r6, [sp, #40]
	str r1, [r6, #0]
	mov r1, #134217728
	ldr r6, [sp, #20]
	str r1, [r6, #0]
	mov r1, #268435456
	ldr r6, [sp, #28]
	str r1, [r6, #0]
	mov r1, #536870912
	ldr r6, [sp, #24]
	str r1, [r6, #0]
	mov r1, #1073741824
	ldr r6, [sp, #48]
	str r1, [r6, #0]
	movw r1, #34953
	movt r1, #34952
	smmla r1, r5, r1, r5
	asr r6, r1, #4
	add r9, r6, r1, lsr #31
	movw r1, #9999
	cmp r9, r1
	ble label9
	cmp r4, #0
	ble label18
	b label2
label9:
	add r1, r0, r0, lsr #31
	asr r1, r1, #1
	mov r8, #2
	mul r1, r1, r8
	sub r7, r0, r1
	ldr r1, [sp, #16]
	add r6, r1, r9, lsl #2
	ldr r1, [sp, #16]
	ldr r1, [r1, r9, lsl #2]
	movw r9, #34953
	movt r9, #34952
	smmla r9, r5, r9, r5
	asr r10, r9, #4
	add r9, r10, r9, lsr #31
	mov r10, #30
	mul r9, r9, r10
	sub r10, r5, r9
	ldr r9, [sp, #8]
	add r5, r9, r10, lsl #2
	ldr r9, [sp, #8]
	ldr r9, [r9, r10, lsl #2]
	sdiv r10, r1, r9
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	mul r8, r11, r8
	sub r8, r10, r8
	cmp r8, r7
	beq label14
	add r1, r10, r10, lsr #31
	asr r1, r1, #1
	mov r8, #2
	mul r1, r1, r8
	sub r8, r10, r1
	cmp r8, #0
	mov r1, #0
	movweq r1, #1
	cmp r7, #1
	mov r10, #0
	movweq r10, #1
	and r10, r1, r10
	mov r1, #0
	cmp r10, #0
	movne r1, r9
	cmp r8, #1
	mov r8, #0
	movweq r8, #1
	cmp r7, #0
	mov r7, #0
	movweq r7, #1
	and r7, r8, r7
	cmp r7, #0
	beq label12
	ldr r5, [r5, #0]
	sub r1, r1, r5
	ldr r5, [r6, #0]
	add r1, r1, r5
	str r1, [r6, #0]
	cmp r4, #0
	ble label18
	b label2
label12:
	ldr r5, [r6, #0]
	add r1, r1, r5
	str r1, [r6, #0]
	cmp r4, #0
	ble label18
	b label2
label14:
	str r1, [r6, #0]
	cmp r4, #0
	ble label18
	b label2
label72:
	movw r1, #51719
	movt r1, #15258
	add r0, r0, r1
	b label7
label18:
	mov r0, #64
	bl _sysy_stoptime
	movw r0, #10000
	ldr r1, [sp, #16]
	bl putarray
	mov r0, #0
	add sp, sp, #252
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
