.arch armv7ve
.data
.section .rodata
.bss
.align 4
temp:
	.zero	8388608
.align 4
w:
	.zero	8388608
.align 4
dst:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #4
	bl getint
	mov r5, r0
	movw r0, #:lower16:w
	movt r0, #:upper16:w
	mov r6, r0
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r4, #:lower16:dst
	movt r4, #:upper16:dst
	movw r0, #:lower16:temp
	movt r0, #:upper16:temp
	mov r1, #0
	cmp r1, r5
	bge label99
	cmp r5, #0
	ble label13
	mov r2, #0
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	b label964
label99:
	mov r1, #0
	mul r3, r5, r1
	cmp r1, r5
	bge label16
	mov r2, #0
	mul r6, r5, r2
	mla r7, r5, r2, r1
	cmp r2, r5
	bge label34
	mov r8, #0
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
label619:
	add r9, r8, r6
	cmp r2, #0
	bge label64
	b label678
label47:
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	b label799
label39:
	cmp r2, r5
	blt label40
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	b label924
label406:
	mov r9, #0
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	b label619
label1073:
	cmp r2, #0
	bge label49
	b label1075
label924:
	mvn r9, #0
	cmn r9, #1
	ble label406
label988:
	cmp r1, #0
	bge label82
	b label1052
label16:
	mul r5, r5, r5
	cmp r5, #0
	ble label31
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label19
	b label30
label678:
	mvn r10, #0
	cmp r1, #0
	bge label60
	b label740
label37:
	add r2, r2, #1
	mul r6, r5, r2
	mla r7, r5, r2, r1
	cmp r2, r5
	bge label34
	mov r8, #0
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
label740:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
label861:
	cmp r2, #0
	bge label39
	b label924
label34:
	add r1, r1, #1
	mul r3, r5, r1
	cmp r1, r5
	bge label16
	mov r2, #0
	mul r6, r5, r2
	mla r7, r5, r2, r1
	cmp r2, r5
	bge label34
	mov r8, #0
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	b label678
label60:
	cmp r1, r5
	blt label61
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	b label1065
label80:
	ldr r10, [r0, r7, lsl #2]
	cmp r1, #0
	bge label73
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	b label1075
label61:
	cmp r8, #0
	bge label62
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label861
label62:
	cmp r8, r5
	blt label63
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label861
label63:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label861
label64:
	cmp r2, r5
	blt label65
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
label1053:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label861
label1065:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label861
label49:
	cmp r2, r5
	blt label50
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
label862:
	mvn r9, #0
	cmp r9, #0
	bge label68
	b label925
label50:
	cmp r8, #0
	bge label51
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	b label862
label51:
	cmp r8, r5
	blt label52
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	b label862
label925:
	add r9, r8, r6
	cmp r2, #0
	bge label64
	b label989
label52:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	b label925
label989:
	mvn r10, #0
	cmp r1, #0
	bge label60
	b label1053
label40:
	cmp r1, #0
	bge label41
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	b label924
label41:
	cmp r1, r5
	blt label42
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	b label924
label42:
	ldr r9, [r0, r7, lsl #2]
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	b label988
label1075:
	mvn r9, #0
	cmp r9, #0
	bge label68
	b label1077
label78:
	cmp r1, #0
	bge label79
	mvn r10, #0
	bge label73
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	b label1075
label79:
	cmp r1, r5
	blt label80
	mvn r10, #0
	cmp r1, #0
	bge label73
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	b label1075
label1052:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	b label799
label68:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r2, #0
	bge label77
	mvn r10, #0
	cmp r1, #0
	bge label73
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	b label1073
label73:
	cmp r1, r5
	blt label74
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	b label1079
label77:
	cmp r2, r5
	blt label78
	mvn r10, #0
	cmp r1, #0
	bge label73
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	b label1083
label82:
	cmp r1, r5
	blt label83
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	b label1052
label83:
	cmp r8, #0
	bge label84
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	b label1052
label84:
	cmp r8, r5
	blt label85
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	b label1052
label1077:
	add r9, r8, r6
	cmp r2, #0
	bge label64
	b label989
label1079:
	mvn r9, #0
	cmp r9, #0
	bge label68
	b label1077
label74:
	cmp r8, #0
	bge label75
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	b label1077
label75:
	cmp r8, r5
	blt label76
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	b label1077
label76:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	cmp r9, r10
	ble label47
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	b label1077
label65:
	cmp r1, #0
	bge label66
	mvn r10, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	b label1053
label66:
	cmp r1, r5
	blt label67
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	b label1053
label67:
	ldr r10, [r0, r7, lsl #2]
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	b label1053
label799:
	cmp r2, #0
	bge label49
	b label862
label85:
	add r9, r8, r3
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	cmp r2, #0
	bge label49
	mvn r9, #0
	cmp r9, #0
	bge label68
	add r9, r8, r6
	cmp r2, #0
	bge label64
	mvn r10, #0
	cmp r1, #0
	bge label60
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label82
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label47
	b label799
label1083:
	cmp r2, #0
	bge label49
	b label1075
label964:
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
label1028:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
label1032:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	b label1034
label9:
	cmp r2, r5
	blt label10
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1036
label13:
	add r1, r1, #1
	cmp r1, r5
	bge label99
	cmp r5, #0
	ble label13
	mov r2, #0
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1028
label1034:
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1032
label1036:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	b label1034
label10:
	cmp r1, #0
	bge label11
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	b label1034
label11:
	cmp r1, r5
	blt label12
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	b label1034
label12:
	ldr r3, [r6, r7, lsl #2]
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	b label1034
label19:
	add r2, r1, #16
	cmp r2, r5
	bge label22
	b label21
label22:
	add r2, r1, #16
	cmp r2, r5
	bge label24
label29:
	add r3, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	add r6, r4, r1, lsl #2
	str r7, [r4, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r6, #4]
	ldr r1, [r3, #8]
	str r1, [r6, #8]
	ldr r1, [r3, #12]
	str r1, [r6, #12]
	ldr r1, [r3, #16]
	str r1, [r6, #16]
	ldr r1, [r3, #20]
	str r1, [r6, #20]
	ldr r1, [r3, #24]
	str r1, [r6, #24]
	ldr r1, [r3, #28]
	str r1, [r6, #28]
	ldr r1, [r3, #32]
	str r1, [r6, #32]
	ldr r1, [r3, #36]
	str r1, [r6, #36]
	ldr r1, [r3, #40]
	str r1, [r6, #40]
	ldr r1, [r3, #44]
	str r1, [r6, #44]
	ldr r1, [r3, #48]
	str r1, [r6, #48]
	ldr r1, [r3, #52]
	str r1, [r6, #52]
	ldr r1, [r3, #56]
	str r1, [r6, #56]
	ldr r1, [r3, #60]
	str r1, [r6, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label24
	b label29
label24:
	add r2, r1, #16
	cmp r2, r5
	bge label26
label28:
	add r3, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	add r6, r4, r1, lsl #2
	str r7, [r4, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r6, #4]
	ldr r1, [r3, #8]
	str r1, [r6, #8]
	ldr r1, [r3, #12]
	str r1, [r6, #12]
	ldr r1, [r3, #16]
	str r1, [r6, #16]
	ldr r1, [r3, #20]
	str r1, [r6, #20]
	ldr r1, [r3, #24]
	str r1, [r6, #24]
	ldr r1, [r3, #28]
	str r1, [r6, #28]
	ldr r1, [r3, #32]
	str r1, [r6, #32]
	ldr r1, [r3, #36]
	str r1, [r6, #36]
	ldr r1, [r3, #40]
	str r1, [r6, #40]
	ldr r1, [r3, #44]
	str r1, [r6, #44]
	ldr r1, [r3, #48]
	str r1, [r6, #48]
	ldr r1, [r3, #52]
	str r1, [r6, #52]
	ldr r1, [r3, #56]
	str r1, [r6, #56]
	ldr r1, [r3, #60]
	str r1, [r6, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label26
	b label28
label26:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
label1042:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	b label1042
label21:
	add r3, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	add r6, r4, r1, lsl #2
	str r7, [r4, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r6, #4]
	ldr r1, [r3, #8]
	str r1, [r6, #8]
	ldr r1, [r3, #12]
	str r1, [r6, #12]
	ldr r1, [r3, #16]
	str r1, [r6, #16]
	ldr r1, [r3, #20]
	str r1, [r6, #20]
	ldr r1, [r3, #24]
	str r1, [r6, #24]
	ldr r1, [r3, #28]
	str r1, [r6, #28]
	ldr r1, [r3, #32]
	str r1, [r6, #32]
	ldr r1, [r3, #36]
	str r1, [r6, #36]
	ldr r1, [r3, #40]
	str r1, [r6, #40]
	ldr r1, [r3, #44]
	str r1, [r6, #44]
	ldr r1, [r3, #48]
	str r1, [r6, #48]
	ldr r1, [r3, #52]
	str r1, [r6, #52]
	ldr r1, [r3, #56]
	str r1, [r6, #56]
	ldr r1, [r3, #60]
	str r1, [r6, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label22
	b label21
label30:
	add r3, r0, r1, lsl #2
	ldr r7, [r0, r1, lsl #2]
	add r6, r4, r1, lsl #2
	str r7, [r4, r1, lsl #2]
	ldr r1, [r3, #4]
	str r1, [r6, #4]
	ldr r1, [r3, #8]
	str r1, [r6, #8]
	ldr r1, [r3, #12]
	str r1, [r6, #12]
	ldr r1, [r3, #16]
	str r1, [r6, #16]
	ldr r1, [r3, #20]
	str r1, [r6, #20]
	ldr r1, [r3, #24]
	str r1, [r6, #24]
	ldr r1, [r3, #28]
	str r1, [r6, #28]
	ldr r1, [r3, #32]
	str r1, [r6, #32]
	ldr r1, [r3, #36]
	str r1, [r6, #36]
	ldr r1, [r3, #40]
	str r1, [r6, #40]
	ldr r1, [r3, #44]
	str r1, [r6, #44]
	ldr r1, [r3, #48]
	str r1, [r6, #48]
	ldr r1, [r3, #52]
	str r1, [r6, #52]
	ldr r1, [r3, #56]
	str r1, [r6, #56]
	ldr r1, [r3, #60]
	str r1, [r6, #60]
	mov r1, r2
	add r2, r2, #16
	cmp r2, r5
	bge label19
	b label30
label31:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
