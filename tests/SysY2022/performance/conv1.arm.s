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
	mov r3, r0
	str r0, [sp, #20]
	bl getint
	mov r7, r0
	str r0, [sp, #12]
	ldr r3, [sp, #20]
	mul r2, r3, r0
	str r2, [sp, #24]
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r6, r0
	str r0, [sp, #28]
	bl getarray
	movw r0, #:lower16:kernelid
	movt r0, #:upper16:kernelid
	mov r1, r0
	str r0, [sp, #32]
	bl getarray
	mov r1, r0
	str r0, [sp, #36]
	add r0, r4, r4, lsr #31
	asr r2, r0, #1
	str r2, [sp, #40]
	mov r0, #109
	bl _sysy_starttime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #44]
	ldr r1, [sp, #36]
	cmp r1, #0
	ble label75
	mov r0, #0
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	str r0, [sp, #16]
label4:
	ldr r2, [sp, #40]
	ldr r0, [sp, #16]
	sub r3, r0, r2
	str r3, [sp, #0]
	ldr r0, [sp, #16]
	add r3, r2, r0
	str r3, [sp, #4]
	ldr r7, [sp, #12]
	ldr r0, [sp, #16]
	mul r0, r7, r0
	str r0, [sp, #56]
	mov r1, #0
	str r1, [sp, #8]
	ldr r2, [sp, #40]
	sub r0, r1, r2
	add r1, r2, r1
	ldr r3, [sp, #0]
	mov r2, r3
	mov r5, #0
	ldr r3, [sp, #20]
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	mov r4, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label74
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label34
	add r5, r5, r6
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label589
label140:
	str r0, [sp, #16]
	b label4
label34:
	ldr r7, [sp, #52]
	cmp r7, #1
	bne label43
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	b label637
label43:
	ldr r7, [sp, #52]
	cmp r7, #2
	bne label44
	cmp r5, r6
	mov r8, r5
	movle r8, r6
	add r4, r4, #1
	cmp r1, r4
	bgt label122
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label127
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r8, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label135
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label140
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label33
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label25
	b label24
label659:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
label660:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label686
label122:
	mov r5, r8
	cmp r4, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r4
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label74
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label34
	add r5, r8, r6
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label659
label25:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label27
	b label32
label686:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label689
label74:
	ldr r7, [sp, #12]
	mla r7, r7, r2, r4
	ldr r6, [sp, #28]
	ldr r6, [r6, r7, lsl #2]
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label34
	add r5, r5, r6
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label660
label689:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label689
label625:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label659
label127:
	mov r5, r8
	ldr r3, [sp, #20]
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	mov r4, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label74
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label34
	add r5, r8, r6
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label625
label589:
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label625
label16:
	add r4, r4, #1
	cmp r1, r4
	bgt label122
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label127
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r8, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label135
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label140
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label33
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label25
	b label24
label135:
	str r1, [sp, #8]
	ldr r2, [sp, #40]
	sub r0, r1, r2
	add r1, r2, r1
	ldr r3, [sp, #0]
	mov r2, r3
	mov r5, #0
	ldr r3, [sp, #20]
	cmp r3, r2
	mov r3, #0
	movwle r3, #1
	cmp r2, #0
	mov r4, #0
	movwlt r4, #1
	orr r3, r3, r4
	mov r4, r0
	cmp r0, #0
	mov r6, #0
	movwlt r6, #1
	orr r6, r3, r6
	ldr r7, [sp, #12]
	cmp r7, r0
	mov r7, #0
	movwle r7, #1
	orrs r6, r6, r7
	beq label74
	mov r6, #0
	ldr r7, [sp, #52]
	cmp r7, #0
	bne label34
	add r5, r5, r6
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	add r5, r5, #-1073741824
	cmp r5, #1073741824
	ble label66
	b label589
label66:
	cmp r5, #0
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
	adds r5, r5, #1073741824
	bge label70
label688:
	adds r5, r5, #1073741824
	bge label70
	b label688
label667:
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	b label637
label39:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	b label667
label637:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	add r10, r9, r9, lsr #31
	asr r10, r10, #1
	sub r9, r9, r10, lsl #1
	sdiv r10, r6, r7
	add r11, r10, r10, lsr #31
	asr r11, r11, #1
	sub r10, r10, r11, lsl #1
	cmp r9, r10
	bne label39
	b label637
label44:
	ldr r7, [sp, #52]
	cmp r7, #3
	bne label45
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
label649:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
label682:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	b label649
label61:
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label62
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	b label682
label62:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label61
	b label649
label343:
	str r0, [sp, #48]
	ldr r1, [sp, #32]
	ldr r7, [r1, r0, lsl #2]
	str r7, [sp, #52]
	mov r0, #0
	str r0, [sp, #16]
	b label4
label27:
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label172
	b label31
label172:
	mov r0, r1
	ldr r2, [sp, #44]
	ldr r1, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	b label665
label31:
	ldr r2, [sp, #44]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	add r2, r6, r1, lsl #2
	str r4, [r6, r1, lsl #2]
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
	ble label172
	b label31
label33:
	ldr r0, [sp, #48]
	add r0, r0, #1
	ldr r1, [sp, #36]
	cmp r1, r0
	ble label75
	b label343
label665:
	ldr r2, [sp, #44]
	ldr r1, [r2, r0, lsl #2]
	ldr r6, [sp, #28]
	str r1, [r6, r0, lsl #2]
	add r0, r0, #1
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label33
	b label665
label45:
	ldr r7, [sp, #52]
	cmp r7, #4
	bne label244
	mov r7, #1
	mov r8, #0
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	b label568
label244:
	mov r8, #0
	add r4, r4, #1
	cmp r1, r4
	bgt label122
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label127
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r8, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label135
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label140
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label33
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label25
	b label24
label568:
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
label607:
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	b label607
label52:
	lsl r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	sdiv r9, r5, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	sdiv r9, r6, r7
	and r9, r9, #-2147483647
	cmp r9, #1
	bne label52
	lsl r8, r8, #1
	add r8, r8, #1
	lsl r7, r7, #1
	cmp r7, #1073741824
	bge label16
	b label607
label70:
	mov r8, r5
	add r4, r4, #1
	cmp r1, r4
	bgt label122
	add r2, r2, #1
	ldr r3, [sp, #4]
	cmp r3, r2
	bgt label127
	ldr r0, [sp, #56]
	ldr r1, [sp, #8]
	add r0, r0, r1
	ldr r2, [sp, #44]
	str r5, [r2, r0, lsl #2]
	ldr r1, [sp, #8]
	add r1, r1, #1
	ldr r7, [sp, #12]
	cmp r7, r1
	bgt label135
	ldr r0, [sp, #16]
	add r0, r0, #1
	ldr r3, [sp, #20]
	cmp r3, r0
	bgt label140
	ldr r2, [sp, #24]
	cmp r2, #0
	ble label33
	mov r1, #0
	add r0, r1, #4
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label25
label24:
	ldr r2, [sp, #44]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	add r2, r6, r1, lsl #2
	str r4, [r6, r1, lsl #2]
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
	ble label25
	b label24
label32:
	ldr r2, [sp, #44]
	add r3, r2, r1, lsl #2
	ldr r2, [sp, #44]
	ldr r4, [r2, r1, lsl #2]
	ldr r6, [sp, #28]
	add r2, r6, r1, lsl #2
	str r4, [r6, r1, lsl #2]
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
	ble label27
	b label32
label75:
	mov r0, #116
	bl _sysy_stoptime
	ldr r2, [sp, #24]
	ldr r6, [sp, #28]
	mov r0, r2
	mov r1, r6
	bl putarray
	mov r0, #0
	add sp, sp, #68
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
