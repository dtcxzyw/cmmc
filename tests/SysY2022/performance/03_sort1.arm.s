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
	beq label2
	b label183
label2:
	sub r5, r0, #1
	cmp r2, r8
	bge label3
	mov r3, r2
	ldr r1, [r4, r2, lsl #2]
	cmp r0, #0
	ble label600
	mov r10, #0
	add r9, r10, #512
	cmp r9, r0
	bge label605
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label605
	b label1009
label183:
	add sp, sp, #204
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label3:
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
	bge label6
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label128
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label379
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label107
	b label970
label6:
	str r2, [sp, #128]
	ldr r0, [sp, #0]
	add r0, r2, r0
	str r0, [sp, #64]
	mov r8, #0
	cmp r8, #16
	bge label183
	cmp r8, #0
	ble label10
label11:
	sub r0, r8, #1
	ldr r0, [r6, r0, lsl #2]
	str r0, [r7, r8, lsl #2]
	ldr r10, [sp, #192]
	ldr r1, [r10, r8, lsl #2]
	add r0, r0, r1
	str r0, [r6, r8, lsl #2]
	b label10
label107:
	add r11, r9, #64
	cmp r11, r0
	bge label110
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label110
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label110
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label110
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label110
	b label1002
label970:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label107
label914:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label107
	b label971
label379:
	mov r9, r3
	b label16
label971:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label107
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label107
	b label1001
label16:
	mov r10, #16
	asr r11, r9, #31
	add r11, r9, r11, lsr #28
	asr r11, r11, #4
	mls r9, r11, r10, r9
	cmp r9, r1
	beq label384
	b label21
label384:
	mov r9, r8
label18:
	str r3, [r4, r9, lsl #2]
	ldr r3, [r7, r1, lsl #2]
	add r3, r3, #1
	str r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label128
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label379
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label107
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label107
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label107
	b label971
label21:
	ldr r10, [r7, r9, lsl #2]
	ldr r8, [r4, r10, lsl #2]
	str r3, [r4, r10, lsl #2]
	ldr r3, [r7, r9, lsl #2]
	add r3, r3, #1
	str r3, [r7, r9, lsl #2]
	cmp r0, #0
	ble label401
	mov r9, r8
	mov r3, #0
	add r10, r3, #512
	cmp r10, r0
	bge label83
	mov r9, #0
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	b label994
label401:
	mov r3, r8
label22:
	mov r9, #16
	asr r10, r3, #31
	add r10, r3, r10, lsr #28
	asr r10, r10, #4
	mls r3, r10, r9, r3
	cmp r3, r1
	beq label24
	cmp r0, #0
	ble label412
	mov r3, r8
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label31
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label31
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label31
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label31
	b label977
label31:
	add r10, r9, #64
	cmp r10, r0
	bge label34
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label34
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label34
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label34
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label34
	b label979
label977:
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label31
	b label978
label78:
	mov r9, #16
	asr r10, r8, #31
	add r10, r8, r10, lsr #28
	asr r10, r10, #4
	mls r8, r10, r9, r8
	cmp r8, r1
	beq label511
	mov r8, r3
	cmp r0, #0
	ble label412
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label31
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label31
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label31
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label31
	b label977
label511:
	mov r8, r3
	ldr r9, [r7, r1, lsl #2]
	b label18
label978:
	mov r3, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label31
	b label978
label979:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label34
	b label979
label34:
	add r10, r9, #64
	cmp r10, r0
	bge label37
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label37
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label37
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label37
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label37
	b label980
label37:
	add r10, r9, #8
	cmp r10, r0
	bge label40
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label40
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label40
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label40
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label40
	b label981
label40:
	add r10, r9, #64
	cmp r10, r0
	bge label43
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label43
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label43
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label43
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label43
label982:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label43
	b label982
label43:
	add r10, r9, #8
	cmp r10, r0
	bge label46
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label46
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label46
label983:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label46
	b label983
label46:
	add r10, r9, #8
	cmp r10, r0
	bge label49
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label49
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label49
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label49
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label49
	b label984
label49:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label52
	b label49
label984:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label49
	b label984
label981:
	mov r3, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label40
	b label981
label980:
	mov r3, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label37
	b label980
label412:
	mov r3, r8
label52:
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
	ble label465
	mov r8, r3
	mov r9, #0
	add r10, r9, #512
	cmp r10, r0
	bge label57
	mov r8, #0
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
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	b label986
label465:
	mov r8, r3
	b label78
label57:
	add r10, r9, #64
	cmp r10, r0
	bge label60
	mov r8, #0
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
	b label987
label60:
	add r10, r9, #64
	cmp r10, r0
	bge label63
	mov r8, #0
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
	b label988
label63:
	add r10, r9, #8
	cmp r10, r0
	bge label66
	mov r8, #0
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
	b label989
label988:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label63
	b label988
label987:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label60
	b label987
label986:
	mov r8, #0
	mov r9, r10
	add r10, r10, #512
	cmp r10, r0
	bge label57
	b label986
label989:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label66
	b label989
label66:
	add r10, r9, #64
	cmp r10, r0
	bge label69
	mov r8, #0
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
label990:
	mov r8, #0
	mov r9, r10
	add r10, r10, #64
	cmp r10, r0
	bge label69
	b label990
label69:
	add r10, r9, #8
	cmp r10, r0
	bge label72
	mov r8, #0
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
label991:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label72
	b label991
label72:
	add r10, r9, #8
	cmp r10, r0
	bge label75
	mov r8, #0
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
	b label992
label75:
	add r9, r9, #1
	asr r10, r8, #31
	add r8, r8, r10, lsr #28
	asr r8, r8, #4
	cmp r9, r0
	bge label78
	b label75
label992:
	mov r8, #0
	mov r9, r10
	add r10, r10, #8
	cmp r10, r0
	bge label75
	b label992
label1001:
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label107
	b label1001
label1002:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label110
	b label1002
label110:
	add r11, r9, #64
	cmp r11, r0
	bge label113
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label113
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label113
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label113
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label113
label1003:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label113
	b label1003
label113:
	add r11, r9, #8
	cmp r11, r0
	bge label116
	mov r10, #0
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label116
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label116
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label116
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label116
	b label1004
label116:
	add r11, r9, #64
	cmp r11, r0
	bge label119
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label119
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label119
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label119
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label119
	b label1005
label119:
	add r11, r9, #8
	cmp r11, r0
	bge label582
	mov r10, #0
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label582
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label582
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label582
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label582
	b label1006
label1005:
	mov r10, #0
	mov r9, r11
	add r11, r11, #64
	cmp r11, r0
	bge label119
	b label1005
label1004:
	mov r10, #0
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label116
	b label1004
label1006:
	mov r10, #0
	mov r9, r11
	add r11, r11, #8
	cmp r11, r0
	bge label582
	b label1006
label582:
	mov r11, r10
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label587
	mov r11, #0
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label587
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label587
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label587
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label587
	b label1007
label587:
	mov r9, r11
label125:
	add r10, r10, #1
	asr r11, r9, #31
	add r9, r9, r11, lsr #28
	asr r9, r9, #4
	cmp r10, r0
	bge label16
	b label125
label1007:
	mov r11, #0
	mov r10, r9
	add r9, r9, #8
	cmp r9, r0
	bge label587
	b label1007
label994:
	mov r9, #0
	mov r3, r10
	add r10, r10, #512
	cmp r10, r0
	bge label83
	b label994
label83:
	add r10, r3, #64
	cmp r10, r0
	bge label86
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
label995:
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label86
	b label995
label86:
	add r10, r3, #64
	cmp r10, r0
	bge label89
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	b label996
label89:
	add r10, r3, #8
	cmp r10, r0
	bge label92
	mov r9, #0
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	b label997
label92:
	add r10, r3, #64
	cmp r10, r0
	bge label536
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label536
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label536
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label536
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label536
	b label998
label536:
	mov r10, r9
	add r9, r3, #8
	cmp r9, r0
	bge label541
	mov r10, #0
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label541
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label541
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label541
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label541
	b label999
label541:
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label546
	mov r10, #0
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label546
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label546
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label546
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label546
	b label1000
label546:
	mov r3, r10
label101:
	add r9, r9, #1
	asr r10, r3, #31
	add r3, r3, r10, lsr #28
	asr r3, r3, #4
	cmp r9, r0
	bge label22
	b label101
label998:
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label536
	b label998
label999:
	mov r10, #0
	mov r3, r9
	add r9, r9, #8
	cmp r9, r0
	bge label541
	b label999
label1000:
	mov r10, #0
	mov r9, r3
	add r3, r3, #8
	cmp r3, r0
	bge label546
	b label1000
label996:
	mov r9, #0
	mov r3, r10
	add r10, r10, #64
	cmp r10, r0
	bge label89
	b label996
label997:
	mov r9, #0
	mov r3, r10
	add r10, r10, #8
	cmp r10, r0
	bge label92
	b label997
label128:
	add r1, r1, #1
	cmp r1, #16
	bge label6
	ldr r3, [r7, r1, lsl #2]
	ldr r8, [r6, r1, lsl #2]
	cmp r3, r8
	bge label128
	ldr r8, [r7, r1, lsl #2]
	ldr r3, [r4, r8, lsl #2]
	cmp r0, #0
	ble label379
	mov r10, r3
	mov r9, #0
	add r11, r9, #512
	cmp r11, r0
	bge label107
	mov r10, #0
	mov r9, r11
	add r11, r11, #512
	cmp r11, r0
	bge label107
	b label914
label24:
	ldr r9, [r7, r1, lsl #2]
	mov r3, r8
	b label18
label1009:
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label605
	b label1010
label600:
	mov r9, r1
	b label155
label181:
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
	bge label3
	ldr r1, [r4, r3, lsl #2]
	cmp r0, #0
	ble label600
	mov r10, #0
	add r9, r10, #512
	cmp r9, r0
	bge label605
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label605
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label605
	b label1009
label155:
	mov r1, #16
	asr r10, r9, #31
	add r10, r9, r10, lsr #28
	asr r10, r10, #4
	mls r9, r10, r1, r9
	ldr r10, [r4, r3, lsl #2]
	cmp r0, #0
	ble label181
	mov r1, #0
	add r11, r1, #512
	cmp r11, r0
	bge label160
	mov r10, #0
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label160
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label160
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label160
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label160
label1018:
	mov r10, #0
	mov r1, r11
	add r11, r11, #512
	cmp r11, r0
	bge label160
	b label1018
label160:
	add r11, r1, #64
	cmp r11, r0
	bge label163
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label163
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label163
label1019:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label163
	b label1019
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
label1020:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label166
	b label1020
label166:
	add r11, r1, #8
	cmp r11, r0
	bge label169
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label169
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label169
label1021:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label169
	b label1021
label169:
	add r11, r1, #64
	cmp r11, r0
	bge label172
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label172
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label172
label1022:
	mov r10, #0
	mov r1, r11
	add r11, r11, #64
	cmp r11, r0
	bge label172
	b label1022
label172:
	add r11, r1, #8
	cmp r11, r0
	bge label175
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label175
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label175
label1023:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label175
	b label1023
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
	b label1024
label178:
	add r1, r1, #1
	asr r11, r10, #31
	add r10, r10, r11, lsr #28
	asr r10, r10, #4
	cmp r1, r0
	bge label181
	b label178
label605:
	mov r9, r1
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label137
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label137
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label137
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label137
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label137
	b label1011
label137:
	add r10, r1, #64
	cmp r10, r0
	bge label140
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label140
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label140
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label140
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label140
	b label1012
label140:
	add r10, r1, #8
	cmp r10, r0
	bge label143
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label143
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label143
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label143
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label143
	b label1013
label143:
	add r10, r1, #64
	cmp r10, r0
	bge label146
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label146
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label146
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label146
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label146
	b label1014
label146:
	add r10, r1, #8
	cmp r10, r0
	bge label149
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label149
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label149
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label149
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label149
	b label1015
label149:
	add r10, r1, #8
	cmp r10, r0
	bge label152
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label152
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label152
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label152
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label152
	b label1016
label152:
	add r1, r1, #1
	asr r10, r9, #31
	add r9, r9, r10, lsr #28
	asr r9, r9, #4
	cmp r1, r0
	bge label155
	b label152
label1016:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label152
	b label1016
label1015:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label149
	b label1015
label1014:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label146
	b label1014
label1013:
	mov r9, #0
	mov r1, r10
	add r10, r10, #8
	cmp r10, r0
	bge label143
	b label1013
label1012:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label140
	b label1012
label1011:
	mov r9, #0
	mov r1, r10
	add r10, r10, #64
	cmp r10, r0
	bge label137
	b label1011
label1010:
	mov r1, #0
	mov r10, r9
	add r9, r9, #512
	cmp r9, r0
	bge label605
	b label1010
label1024:
	mov r10, #0
	mov r1, r11
	add r11, r11, #8
	cmp r11, r0
	bge label178
	b label1024
label10:
	ldr r2, [r7, r8, lsl #2]
	ldr r3, [r6, r8, lsl #2]
	mov r0, r5
	mov r1, r4
	bl radixSort
	add r8, r8, #1
	cmp r8, #16
	bge label183
	cmp r8, #0
	ble label10
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
	ble label1132
	mov r1, #0
	mov r0, r1
	add r2, r1, #8
	cmp r2, r5
	bge label1120
	b label1119
label1132:
	mov r4, #0
	b label1114
label1119:
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
	mla r7, r7, r9, r8
	ldr r8, [r3, #24]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r4, r4, r8, r7
	ldr r3, [r3, #28]
	add r0, r0, #9
	sdiv r7, r3, r0
	mls r0, r7, r0, r3
	mla r1, r1, r0, r4
	mov r0, r2
	add r2, r2, #8
	cmp r2, r5
	bge label1120
	b label1119
label1114:
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
label1124:
	ldr r2, [r6, r0, lsl #2]
	add r3, r0, #2
	sdiv r4, r2, r3
	mls r2, r4, r3, r2
	mla r1, r0, r2, r1
	add r0, r0, #1
	cmp r0, r5
	bge label1255
	b label1124
label1255:
	mov r4, r1
	b label1114
label1120:
	add r2, r0, #8
	cmp r2, r5
	bge label1124
label1123:
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
	ldr r8, [r3, #24]
	sdiv r9, r8, r2
	mls r8, r9, r2, r8
	mla r1, r4, r8, r1
	ldr r3, [r3, #28]
	add r0, r0, #9
	sdiv r4, r3, r0
	mls r0, r4, r0, r3
	mla r1, r7, r0, r1
	mov r0, r2
	add r2, r2, #8
	cmp r2, r5
	bge label1124
	b label1123
