.arch armv7ve
.data
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
	b label949
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
label622:
	add r9, r8, r6
	cmp r2, #0
	bge label71
	b label679
label54:
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label46
	b label740
label16:
	mul r5, r5, r5
	cmp r5, #0
	ble label31
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label19
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	b label679
label39:
	cmp r2, r5
	blt label40
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	b label916
label679:
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label739
label916:
	mvn r9, #0
	cmn r9, #1
	ble label406
	b label978
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
label739:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
label855:
	cmp r2, #0
	bge label39
	b label916
label1053:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label855
label68:
	cmp r8, #0
	bge label69
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label855
label69:
	cmp r8, r5
	blt label70
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label855
label71:
	cmp r2, r5
	blt label72
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	b label1057
label406:
	mov r9, #0
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
label740:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	b label796
label1041:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label855
label72:
	cmp r1, #0
	bge label73
	mvn r10, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label1041
label73:
	cmp r1, r5
	blt label74
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label1041
label74:
	ldr r10, [r0, r7, lsl #2]
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label1041
label56:
	cmp r2, r5
	blt label57
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	b label856
label57:
	cmp r8, #0
	bge label58
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	b label856
label58:
	cmp r8, r5
	blt label59
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
label856:
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label917
label75:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r2, #0
	bge label76
	mvn r10, #0
	cmp r1, #0
	bge label84
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	b label1065
label76:
	cmp r2, r5
	blt label77
	mvn r10, #0
	cmp r1, #0
	bge label84
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
label1065:
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label1067
label84:
	cmp r1, r5
	blt label85
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	b label1069
label1057:
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label1041
label979:
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label1041
label67:
	cmp r1, r5
	blt label68
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label1053
label1067:
	add r9, r8, r6
	cmp r2, #0
	bge label71
	b label979
label86:
	cmp r8, r5
	blt label87
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label1067
label87:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label1067
label917:
	add r9, r8, r6
	cmp r2, #0
	bge label71
	b label979
label59:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label917
label70:
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label855
label1040:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
label796:
	cmp r2, #0
	bge label56
	b label856
label40:
	cmp r1, #0
	bge label41
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	b label916
label41:
	cmp r1, r5
	blt label42
	mvn r9, #0
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	cmp r2, #0
	bge label39
	b label916
label1069:
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label1067
label85:
	cmp r8, #0
	bge label86
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label1067
label46:
	cmp r1, r5
	blt label47
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	b label1040
label47:
	cmp r8, #0
	bge label48
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	b label1040
label48:
	cmp r8, r5
	blt label49
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	b label1040
label42:
	ldr r9, [r0, r7, lsl #2]
	cmn r9, #1
	ble label406
	cmp r1, #0
	bge label46
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
label978:
	cmp r1, #0
	bge label46
	b label1040
label49:
	add r9, r8, r3
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label622
label77:
	cmp r1, #0
	bge label78
	mvn r10, #0
	bge label84
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	b label1065
label78:
	cmp r1, r5
	blt label79
	mvn r10, #0
	cmp r1, #0
	bge label84
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	b label1065
label79:
	ldr r10, [r0, r7, lsl #2]
	cmp r1, #0
	bge label84
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label54
	add r9, r8, r6
	cmp r2, #0
	bge label71
	mvn r10, #0
	cmp r1, #0
	bge label67
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
	bge label46
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	cmp r2, #0
	bge label56
	b label1065
label949:
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
label1011:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1015
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
	b label1011
label1015:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
label1017:
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1015
label1019:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	b label1017
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
	b label1019
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
	b label1017
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
	b label1017
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
	b label1017
label19:
	add r2, r1, #16
	cmp r2, r5
	bge label22
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
label22:
	add r2, r1, #16
	cmp r2, r5
	bge label24
	b label29
label24:
	add r2, r1, #16
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
label1025:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	b label1025
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
label31:
	mov r0, #64
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
