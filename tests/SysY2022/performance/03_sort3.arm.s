.arch armv7ve
.data
.bss
.align 4
a:
	.zero	120000040
.text
.syntax unified
.arm
.fpu vfpv4
radixSort:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #204
	mov r4, r1
	mov r8, r3
	mov r10, sp
	str r10, [sp, #192]
	add r6, sp, #64
	add r7, sp, #128
	add r1, r2, #1
	cmp r1, r3
	mov r1, #0
	movwge r1, #1
	add r3, r0, #1
	clz r3, r3
	lsr r3, r3, #5
	orr r1, r3, r1
	mov r3, #0
	str r3, [sp, #128]
	str r3, [r7, #4]
	str r3, [r7, #8]
	str r3, [r7, #12]
	str r3, [r7, #16]
	str r3, [r7, #20]
	str r3, [r7, #24]
	str r3, [r7, #28]
	str r3, [r7, #32]
	str r3, [r7, #36]
	str r3, [r7, #40]
	str r3, [r7, #44]
	str r3, [r7, #48]
	str r3, [r7, #52]
	str r3, [r7, #56]
	str r3, [r7, #60]
	str r3, [sp, #64]
	str r3, [r6, #4]
	str r3, [r6, #8]
	str r3, [r6, #12]
	str r3, [r6, #16]
	str r3, [r6, #20]
	str r3, [r6, #24]
	str r3, [r6, #28]
	str r3, [r6, #32]
	str r3, [r6, #36]
	str r3, [r6, #40]
	str r3, [r6, #44]
	str r3, [r6, #48]
	str r3, [r6, #52]
	str r3, [r6, #56]
	str r3, [r6, #60]
	str r3, [sp, #0]
	str r3, [r10, #4]
	str r3, [r10, #8]
	str r3, [r10, #12]
	str r3, [r10, #16]
	str r3, [r10, #20]
	str r3, [r10, #24]
	str r3, [r10, #28]
	str r3, [r10, #32]
	str r3, [r10, #36]
	str r3, [r10, #40]
	str r3, [r10, #44]
	str r3, [r10, #48]
	str r3, [r10, #52]
	str r3, [r10, #56]
	str r3, [r10, #60]
	cmp r1, #0
	beq label3
label2:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
	sub r5, r0, #1
	cmp r2, r8
	bge label4
	mov r3, r2
	ldr r9, [r4, r2, lsl #2]
	cmp r0, #0
	ble label156
	mov r1, #0
	add r10, r1, #512
	cmp r10, r0
	bge label135
	mov r9, #0
	mov r1, r10
	add r10, r10, #512
	cmp r10, r0
	bge label135
	mov r1, r10
	add r10, r10, #512
	cmp r10, r0
	bge label135
	b label971
label4:
	str r2, [sp, #128]
	ldr r1, [sp, #0]
	add r1, r2, r1
	str r1, [sp, #64]
	str r1, [r7, #4]
	ldr r10, [sp, #192]
	ldr r3, [r10, #4]
	add r1, r1, r3
	str r1, [r6, #4]
	str r1, [r7, #8]
	ldr r10, [sp, #192]
	ldr r3, [r10, #8]
	add r1, r1, r3
	str r1, [r6, #8]
	str r1, [r7, #12]
	ldr r10, [sp, #192]
	ldr r3, [r10, #12]
	add r1, r1, r3
	str r1, [r6, #12]
	str r1, [r7, #16]
	ldr r10, [sp, #192]
	ldr r3, [r10, #16]
	add r1, r1, r3
	str r1, [r6, #16]
	str r1, [r7, #20]
	ldr r10, [sp, #192]
	ldr r3, [r10, #20]
	add r1, r1, r3
	str r1, [r6, #20]
	str r1, [r7, #24]
	ldr r10, [sp, #192]
	ldr r3, [r10, #24]
	add r1, r1, r3
	str r1, [r6, #24]
	str r1, [r7, #28]
	ldr r10, [sp, #192]
	ldr r3, [r10, #28]
	add r1, r1, r3
	str r1, [r6, #28]
	str r1, [r7, #32]
	ldr r10, [sp, #192]
	ldr r3, [r10, #32]
	add r1, r1, r3
	str r1, [r6, #32]
	str r1, [r7, #36]
	ldr r10, [sp, #192]
	ldr r3, [r10, #36]
	add r1, r1, r3
	str r1, [r6, #36]
	str r1, [r7, #40]
	ldr r10, [sp, #192]
	ldr r3, [r10, #40]
	add r1, r1, r3
	str r1, [r6, #40]
	str r1, [r7, #44]
	ldr r10, [sp, #192]
	ldr r3, [r10, #44]
	add r1, r1, r3
	str r1, [r6, #44]
	str r1, [r7, #48]
	ldr r10, [sp, #192]
	ldr r3, [r10, #48]
	add r1, r1, r3
	str r1, [r6, #48]
	str r1, [r7, #52]
	ldr r10, [sp, #192]
	ldr r3, [r10, #52]
	add r1, r1, r3
	str r1, [r6, #52]
	str r1, [r7, #56]
	ldr r10, [sp, #192]
	ldr r3, [r10, #56]
	add r1, r1, r3
	str r1, [r6, #56]
	str r1, [r7, #60]
	ldr r10, [sp, #192]
	ldr r3, [r10, #60]
	add r1, r1, r3
	str r1, [r6, #60]
	mov r1, #0
	cmp r1, #16
	bge label7
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label16
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label380
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label21
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label21
	b label916
label7:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label12
label11:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r7, r8, lsl #2]
	ldr r10, [sp, #192]
	ldr r1, [r10, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
	b label12
label973:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label21
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label21
	b label976
label380:
	mov r9, r3
label42:
	mov r10, #16
	asr r11, r9, #31
	add r11, r9, r11, lsr #28
	asr r11, r11, #4
	mls r9, r11, r10, r9
	cmp r9, r1
	beq label426
	b label47
label426:
	mov r9, r8
label44:
	str r3, [r4, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label16
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label380
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label21
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label21
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label21
	b label973
label47:
	ldr r10, [r7, r9, lsl #2]
	ldr r8, [r4, r10, lsl #2]
	str r3, [r4, r10, lsl #2]
	ldr r3, [r7, r9, lsl #2]
	add r3, r3, #1
	str r3, [r7, r9, lsl #2]
	cmp r0, #0
	ble label443
	mov r10, r8
	mov r3, #0
	add r9, r3, #512
	cmp r9, r0
	bge label109
	mov r10, #0
	mov r3, r9
	add r9, r9, #512
	cmp r9, r0
	bge label109
	mov r3, r9
	add r9, r9, #512
	cmp r9, r0
	bge label109
	mov r3, r9
	add r9, r9, #512
	cmp r9, r0
	bge label109
	mov r3, r9
	add r9, r9, #512
	cmp r9, r0
	bge label109
	b label1003
label443:
	mov r3, r8
label48:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label50
	cmp r0, #0
	ble label454
	mov r3, r8
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label57
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	b label986
label1003:
	mov r10, #0
	mov r3, r9
	add r9, r9, #512
	cmp r9, r0
	bge label109
	b label1003
label986:
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	b label987
label454:
	mov r3, r8
label78:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r9, r3
	ldr r10, [r7, r9, lsl #2]
	ldr r3, [r4, r10, lsl #2]
	str r8, [r4, r10, lsl #2]
	ldr r8, [r7, r9, lsl #2]
	add r8, r8, #1
	str r8, [r7, r9, lsl #2]
	cmp r0, #0
	ble label507
	mov r8, r3
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label83
	mov r8, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	b label995
label507:
	mov r8, r3
	b label104
label995:
	mov r8, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	b label995
label104:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label553
	mov r8, r3
	cmp r0, #0
	ble label454
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label57
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	b label986
label553:
	mov r8, r3
	ldr r9, [r7, r1, lsl #2]
	b label44
label83:
	add r10, r9, #64
	cmp r10, r0
	bge label86
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	b label996
label86:
	add r10, r9, #64
	cmp r10, r0
	bge label89
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	b label997
label996:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	b label996
label57:
	add r10, r9, #64
	cmp r10, r0
	bge label60
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label60
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label60
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label60
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label60
label988:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label60
	b label988
label987:
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	b label987
label89:
	add r10, r9, #8
	cmp r10, r0
	bge label92
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
label998:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	b label998
label92:
	add r10, r9, #64
	cmp r10, r0
	bge label95
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label95
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label95
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label95
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label95
label999:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label95
	b label999
label95:
	add r10, r9, #8
	cmp r10, r0
	bge label98
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label98
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label98
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label98
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label98
label1000:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label98
	b label1000
label997:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	b label997
label60:
	add r10, r9, #64
	cmp r10, r0
	bge label63
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label63
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label63
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label63
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label63
label989:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label63
	b label989
label98:
	add r10, r9, #8
	cmp r10, r0
	bge label101
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label101
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label101
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label101
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label101
	b label1001
label101:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label104
	b label101
label63:
	add r10, r9, #8
	cmp r10, r0
	bge label66
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label66
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label66
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label66
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label66
	b label990
label66:
	add r10, r9, #64
	cmp r10, r0
	bge label69
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label69
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label69
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label69
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label69
	b label991
label69:
	add r10, r9, #8
	cmp r10, r0
	bge label72
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label72
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label72
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label72
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label72
	b label992
label72:
	add r10, r9, #8
	cmp r10, r0
	bge label75
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label75
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label75
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label75
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label75
	b label993
label75:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label78
	b label75
label993:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label75
	b label993
label991:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label69
	b label991
label992:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label72
	b label992
label990:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label66
	b label990
label1001:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label101
	b label1001
label916:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label21
	b label973
label16:
	add r1, r1, #1
	cmp r1, #16
	bge label7
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label16
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label380
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label21
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label21
	b label916
label976:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label21
	b label976
label21:
	add r11, r9, #64
	cmp r11, r0
	bge label24
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label24
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label24
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label24
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label24
	b label977
label24:
	add r11, r9, #64
	cmp r11, r0
	bge label27
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label27
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label27
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label27
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label27
label978:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label27
	b label978
label977:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label24
	b label977
label27:
	add r11, r9, #8
	cmp r11, r0
	bge label30
	mov r10, #0
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label30
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label30
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label30
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label30
	b label979
label30:
	add r11, r9, #64
	cmp r11, r0
	bge label405
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label405
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label405
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label405
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label405
	b label980
label405:
	mov r11, r10
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label410
	mov r11, #0
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label410
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label410
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label410
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label410
	b label981
label980:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label405
	b label980
label981:
	mov r11, #0
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label410
	b label981
label410:
	mov r9, r11
	add r11, r10, #8
	cmp r11, r0
	bge label39
	mov r9, #0
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label39
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label39
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label39
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label39
	b label982
label39:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label42
	b label39
label982:
	mov r9, #0
	mov r10, r11
	add r11, r11, #8
	cmp r11, r0
	bge label39
	b label982
label979:
	mov r10, #0
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label30
	b label979
label109:
	add r9, r3, #64
	cmp r9, r0
	bge label112
	mov r10, #0
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label112
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label112
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label112
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label112
	b label1004
label112:
	add r9, r3, #64
	cmp r9, r0
	bge label115
	mov r10, #0
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label115
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label115
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label115
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label115
label1005:
	mov r10, #0
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label115
	b label1005
label115:
	add r9, r3, #8
	cmp r9, r0
	bge label118
	mov r10, #0
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label118
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label118
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label118
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label118
	b label1006
label118:
	add r9, r3, #64
	cmp r9, r0
	bge label121
	mov r10, #0
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label121
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label121
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label121
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label121
	b label1007
label121:
	add r9, r3, #8
	cmp r9, r0
	bge label583
	mov r10, #0
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label583
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label583
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label583
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label583
	b label1008
label583:
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label588
	mov r10, #0
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label588
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label588
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label588
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label588
	b label1009
label588:
	mov r3, r10
label127:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label48
	b label127
label1008:
	mov r10, #0
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label583
	b label1008
label1009:
	mov r10, #0
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label588
	b label1009
label1007:
	mov r10, #0
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label121
	b label1007
label1004:
	mov r10, #0
	mov r3, r9
	add r9, r9, #64
	cmp r9, r0
	bge label112
	b label1004
label1006:
	mov r10, #0
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label118
	b label1006
label50:
	ldr r9, [r7, r1, lsl #2]
	mov r3, r8
	b label44
label135:
	add r10, r1, #64
	cmp r10, r0
	bge label138
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label138
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label138
label1012:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label138
	b label1012
label971:
	mov r9, #0
	mov r1, r10
	add r10, r10, #512
	cmp r10, r0
	bge label135
label1010:
	mov r9, #0
	mov r1, r10
	add r10, r10, #512
	cmp r10, r0
	bge label135
label1011:
	mov r9, #0
	mov r1, r10
	add r10, r10, #512
	cmp r10, r0
	bge label135
	b label1011
label138:
	add r10, r1, #64
	cmp r10, r0
	bge label141
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label141
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label141
	b label1013
label141:
	add r10, r1, #8
	cmp r10, r0
	bge label144
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label144
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label144
	b label1014
label1013:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label141
	b label1013
label1014:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label144
	b label1014
label144:
	add r10, r1, #64
	cmp r10, r0
	bge label147
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label147
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label147
label1015:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label147
	b label1015
label147:
	add r10, r1, #8
	cmp r10, r0
	bge label150
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label150
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label150
label1016:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label150
	b label1016
label150:
	add r10, r1, #8
	cmp r10, r0
	bge label153
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label153
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label153
	b label1017
label153:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label156
	b label153
label1017:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label153
	b label1017
label156:
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r3, lsl #2]
	cmp r0, #0
	ble label158
	mov r1, #0
	add r11, r1, #512
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label163
	b label1020
label163:
	add r11, r1, #64
	cmp r11, r0
	bge label166
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label166
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label166
	b label1021
label166:
	add r11, r1, #64
	cmp r11, r0
	bge label169
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label169
	b label1022
label1021:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label166
	b label1021
label1020:
	mov r10, #0
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label163
	b label1020
label1022:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label169
	b label1022
label169:
	add r11, r1, #8
	cmp r11, r0
	bge label172
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label172
label1023:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label172
	b label1023
label172:
	add r11, r1, #64
	cmp r11, r0
	bge label175
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label175
	b label1024
label175:
	add r11, r1, #8
	cmp r11, r0
	bge label178
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label178
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label178
label1025:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label178
	b label1025
label178:
	add r11, r1, #8
	cmp r11, r0
	bge label181
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label181
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label181
	b label1026
label181:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label158
	b label181
label1026:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label181
	b label1026
label1024:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label175
	b label1024
label158:
	mov r1, #16
	asr r11, r10, #31
	add r11, r10, r11, lsr #28
	asr r11, r11, #4
	mls r1, r11, r1, r10
	ldr r10, [sp, #192]
	ldr r1, [r10, r1, lsl #2]
	add r1, r1, #1
	ldr r10, [sp, #192]
	str r1, [r10, r9, lsl #2]
	add r3, r3, #1
	cmp r3, r8
	bge label4
	ldr r9, [r4, r3, lsl #2]
	cmp r0, #0
	ble label156
	mov r1, #0
	add r10, r1, #512
	cmp r10, r0
	bge label135
	mov r9, #0
	mov r1, r10
	add r10, r10, #512
	cmp r10, r0
	bge label135
	mov r1, r10
	add r10, r10, #512
	cmp r10, r0
	bge label135
	mov r1, r10
	add r10, r10, #512
	cmp r10, r0
	bge label135
	b label1010
label12:
	ldr r2, [r7, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label2
	cmp r8, #0
	ble label12
	b label11
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
	ble label1129
	mov r1, #0
	mov r0, r1
	add r2, r1, #8
	cmp r2, r5
	bge label1115
	b label1114
label1129:
	mov r4, #0
	b label1122
label1114:
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
	mla r4, r4, r9, r8
	ldr r9, [r3, #16]
	add r8, r0, #6
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r7
	ldr r7, [r3, #24]
	sdiv r9, r7, r2
	mls r7, r9, r2, r7
	mla r1, r8, r7, r1
	ldr r3, [r3, #28]
	add r0, r0, #9
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r4, r0, r1
	mov r0, r2
	add r2, r2, #8
	cmp r2, r5
	bge label1115
	b label1114
label1119:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1249
	b label1119
label1249:
	mov r4, r1
label1122:
	mov r0, #102
	bl _sysy_stoptime
	cmp r4, #0
	rsb r1, r4, #0
	mov r0, r4
	movlt r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label1115:
	add r2, r0, #8
	cmp r2, r5
	bge label1119
label1118:
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
	mla r4, r4, r9, r8
	ldr r9, [r3, #16]
	add r8, r0, #6
	sdiv r10, r9, r8
	mls r9, r10, r8, r9
	mla r7, r7, r9, r4
	ldr r9, [r3, #20]
	add r4, r0, #7
	sdiv r10, r9, r4
	mls r9, r10, r4, r9
	mla r1, r1, r9, r7
	ldr r7, [r3, #24]
	sdiv r9, r7, r2
	mls r7, r9, r2, r7
	mla r1, r8, r7, r1
	ldr r3, [r3, #28]
	add r0, r0, #9
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r4, r0, r1
	mov r0, r2
	add r2, r2, #8
	cmp r2, r5
	bge label1119
	b label1118
