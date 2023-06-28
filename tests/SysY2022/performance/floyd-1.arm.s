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
	ble label5
	mov r2, #0
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	b label1022
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
	b label625
label10:
	cmp r2, r5
	blt label11
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	b label1030
label625:
	add r9, r8, r6
	cmp r2, #0
	bge label71
	b label683
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
	b label745
label16:
	mul r5, r5, r5
	cmp r5, #0
	ble label31
	mov r1, #0
	add r2, r1, #16
	cmp r2, r5
	bge label19
	b label30
label683:
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label744
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
	b label683
label744:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
label862:
	cmp r2, #0
	bge label39
label924:
	mvn r9, #0
	cmn r9, #1
	ble label406
	b label987
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
	b label744
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
label745:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
	b label802
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
	b label862
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
	b label1067
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
label987:
	cmp r1, #0
	bge label46
	b label1050
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
	b label924
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
	b label924
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
	b label924
label1051:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label862
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
	b label1051
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
	b label1051
label863:
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label925
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
	b label863
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
	b label863
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
	b label863
label75:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r2, #0
	bge label84
	mvn r10, #0
	cmp r1, #0
	bge label80
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
	b label1071
label84:
	cmp r2, r5
	blt label85
	mvn r10, #0
	cmp r1, #0
	bge label80
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
	b label1081
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
	b label862
label1081:
	cmp r2, #0
	bge label56
	b label1073
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
	b label1050
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
	b label1050
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
	b label1050
label1071:
	cmp r2, #0
	bge label56
label1073:
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label1075
label1050:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label54
label802:
	cmp r2, #0
	bge label56
	b label863
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
	b label1051
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
	b label1063
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
	b label862
label1067:
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label1051
label925:
	add r9, r8, r6
	cmp r2, #0
	bge label71
	b label988
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
	b label925
label988:
	mvn r10, #0
	cmp r1, #0
	bge label67
	b label1051
label1063:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label37
	b label862
label80:
	cmp r1, r5
	blt label81
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
	b label1077
label85:
	cmp r1, #0
	bge label86
	mvn r10, #0
	bge label80
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
	b label1073
label86:
	cmp r1, r5
	blt label87
	mvn r10, #0
	cmp r1, #0
	bge label80
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
	b label1073
label1077:
	mvn r9, #0
	cmp r9, #0
	bge label75
	b label1075
label81:
	cmp r8, #0
	bge label82
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
	b label1075
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
	b label625
label1075:
	add r9, r8, r6
	cmp r2, #0
	bge label71
	b label988
label82:
	cmp r8, r5
	blt label83
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
	b label1075
label83:
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
	b label1075
label87:
	ldr r10, [r0, r7, lsl #2]
	cmp r1, #0
	bge label80
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
	b label1073
label1022:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
label1026:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
label1028:
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	b label1026
label13:
	ldr r3, [r6, r7, lsl #2]
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	b label1028
label1030:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	b label1028
label11:
	cmp r1, #0
	bge label12
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	b label1028
label5:
	add r1, r1, #1
	cmp r1, r5
	bge label99
	cmp r5, #0
	ble label5
	mov r2, #0
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	b label1022
label12:
	cmp r1, r5
	blt label13
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label5
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label10
	b label1028
label19:
	add r2, r1, #16
	cmp r2, r5
	bge label22
	b label21
label22:
	add r2, r1, #16
	cmp r2, r5
	bge label25
label24:
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
	bge label25
	b label24
label25:
	add r2, r1, #16
	cmp r2, r5
	bge label27
	b label29
label27:
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
label1035:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	b label1035
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
	bge label27
	b label29
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
