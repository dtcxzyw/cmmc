.arch armv7ve
.data
.bss
.align 4
a:
	.zero	40000000
.align 4
b:
	.zero	40000000
.align 4
kernelid:
	.zero	40000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #68
	bl getint
	mov r4, r0
	bl getint
	str r0, [sp, #20]
	mov r3, r0
	bl getint
	str r0, [sp, #12]
	mov r7, r0
	ldr r3, [sp, #20]
	mul r2, r3, r0
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	str r2, [sp, #24]
	mov r6, r0
	str r0, [sp, #28]
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	str r0, [sp, #32]
	mov r1, r0
	bl getarray
	str r0, [sp, #36]
	mov r1, r0
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	mov r0, #109
	str r2, [sp, #40]
	bl _sysy_starttime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #44]
	ldr r1, [sp, #36]
	cmp r1, #0
	ble label2
	mov r0, #0
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	str r0, [sp, #16]
label5:
	ldr r2, [sp, #40]
	mov r1, #0
	ldr r0, [sp, #16]
	sub r3, r0, r2
	str r3, [sp, #0]
	add r3, r2, r0
	str r3, [sp, #4]
	ldr r7, [sp, #12]
	mul r0, r7, r0
	str r0, [sp, #56]
	str r1, [sp, #8]
	mov r5, #0
	ldr r3, [sp, #0]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #20]
	mov r4, #0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label67
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label42
	add r5, r5, r6
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label589
label661:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label666
label151:
	str r0, [sp, #16]
	b label5
label67:
	ldr r7, [sp, #12]
	ldr r6, [sp, #28]
	mla r7, r7, r2, r4
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label42
	add r5, r5, r6
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label661
label666:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label666
label589:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label625
label146:
	str r1, [sp, #8]
	ldr r2, [sp, #40]
	mov r5, #0
	ldr r3, [sp, #0]
	sub r0, r1, r2
	add r1, r2, r1
	mov r2, r3
	ldr r3, [sp, #20]
	mov r4, #0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	ldr r7, [sp, #12]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label67
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label42
	add r5, r5, r6
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label589
label625:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label660
label138:
	mov r5, r8
	ldr r3, [sp, #20]
	mov r4, #0
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	ldr r7, [sp, #12]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label67
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label42
	add r5, r8, r6
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label625
label51:
	ldr r7, [sp, #52]
	cmp r7, #4
	bne label256
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	b label572
label256:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	bgt label133
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label138
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label146
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label151
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label41
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label32
	b label40
label660:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label661
label133:
	mov r5, r8
	cmp r4, #0
	mov r6, #0
	ldr r7, [sp, #12]
	movwlt r6, #1
	orr r6, r3, r6
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label67
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label42
	add r5, r8, r6
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label18
	b label660
label42:
	ldr r7, [sp, #52]
	cmp r7, #1
	bne label49
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
label639:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	b label673
label48:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	b label639
label49:
	ldr r7, [sp, #52]
	cmp r7, #2
	bne label50
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	add r4, r4, #1
	cmp r1, r4
	bgt label133
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label138
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label146
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label151
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label41
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label32
	b label40
label18:
	cmp r5, #0
	bge label118
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	adds r5, r5, #1073741824
	bge label123
	b label665
label118:
	mov r8, r5
	add r4, r4, #1
	cmp r1, r4
	bgt label133
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label138
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r5, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label146
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label151
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label41
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label32
	b label40
label123:
	mov r8, r5
	add r4, r4, #1
	cmp r1, r4
	bgt label133
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label138
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r5, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label146
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label151
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label41
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label32
	b label40
label665:
	adds r5, r5, #1073741824
	bge label123
	b label665
label673:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label48
	b label639
label24:
	add r4, r4, #1
	cmp r1, r4
	bgt label133
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label138
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	ldr r2, [sp, #44]
	add r0, r0, r1
	add r1, r1, #1
	str r8, [r2, r0, lsl #2]
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label146
	ldr r0, [sp, #16]
	ldr r3, [sp, #20]
	add r0, r0, #1
	cmp r3, r0
	bgt label151
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label41
	mov r1, #0
	add r0, r1, #4
	cmp r2, r0
	ble label32
label40:
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	add r3, r2, r1, lsl #2
	ldr r6, [sp, #28]
	str r4, [r6, r1, lsl #2]
	add r2, r6, r1, lsl #2
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label32
	b label40
label50:
	ldr r7, [sp, #52]
	cmp r7, #3
	bne label51
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	b label653
label345:
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	mov r0, #0
	str r7, [sp, #52]
	str r0, [sp, #16]
	b label5
label183:
	mov r0, r1
	ldr r2, [sp, #44]
	ldr r1, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	b label671
label41:
	ldr r0, [sp, #48]
	ldr r1, [sp, #36]
	add r0, r0, #1
	cmp r1, r0
	ble label2
	b label345
label671:
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	ldr r2, [sp, #24]
	add r0, r0, #1
	cmp r2, r0
	ble label41
	b label671
label653:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	b label653
label64:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label65
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	b label691
label65:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	b label653
label691:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label64
	b label653
label572:
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	b label611
label58:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
label611:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label58
	lsl r8, r8, #1
	lsl r7, r7, #1
	add r8, r8, #1
	cmp r7, #1073741824
	bge label24
	b label611
label32:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label35
	b label34
label35:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label183
label39:
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	add r3, r2, r1, lsl #2
	ldr r6, [sp, #28]
	str r4, [r6, r1, lsl #2]
	add r2, r6, r1, lsl #2
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label183
	b label39
label34:
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	add r3, r2, r1, lsl #2
	ldr r6, [sp, #28]
	str r4, [r6, r1, lsl #2]
	add r2, r6, r1, lsl #2
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r1, [r3, #8]
	str r1, [r2, #8]
	ldr r1, [r3, #12]
	str r1, [r2, #12]
	mov r1, r0
	add r0, r0, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label35
	b label34
label2:
	mov r0, #116
	bl _sysy_stoptime
	ldr r2, [sp, #24]
	ldr r6, [sp, #28]
	mov r0, r2
	mov r1, r6
	bl putarray
	add sp, sp, #68
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
