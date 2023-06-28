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
	b label969
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
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	b label624
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
label624:
	add r9, r8, r6
	cmp r2, #0
	bge label70
	b label684
label87:
	add r2, r2, #1
	mul r6, r5, r2
	mla r7, r5, r2, r1
	cmp r2, r5
	bge label34
	mov r8, #0
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	b label747
label53:
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	b label748
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
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	b label684
label38:
	cmp r2, r5
	blt label39
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	b label933
label405:
	mov r9, #0
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	b label748
label684:
	mvn r10, #0
	cmp r1, #0
	bge label66
	b label747
label748:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	b label807
label933:
	mvn r9, #0
	cmn r9, #1
	ble label405
	b label998
label747:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
label869:
	cmp r2, #0
	bge label38
	b label933
label999:
	mvn r10, #0
	cmp r1, #0
	bge label66
	b label1064
label74:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r2, #0
	bge label83
	mvn r10, #0
	cmp r1, #0
	bge label79
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
label1086:
	mvn r9, #0
	cmp r9, #0
	bge label74
label1088:
	add r9, r8, r6
	cmp r2, #0
	bge label70
	b label999
label79:
	cmp r1, r5
	blt label80
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	b label1090
label80:
	cmp r8, #0
	bge label81
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	b label1088
label83:
	cmp r2, r5
	blt label84
	mvn r10, #0
	cmp r1, #0
	bge label79
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	b label1094
label870:
	mvn r9, #0
	cmp r9, #0
	bge label74
	b label934
label55:
	cmp r2, r5
	blt label56
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	b label870
label56:
	cmp r8, #0
	bge label57
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	b label870
label57:
	cmp r8, r5
	blt label58
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	b label870
label45:
	cmp r1, r5
	blt label46
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	b label1063
label46:
	cmp r8, #0
	bge label47
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	b label1063
label1090:
	mvn r9, #0
	cmp r9, #0
	bge label74
	b label1088
label70:
	cmp r2, r5
	blt label71
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	b label1080
label1094:
	cmp r2, #0
	bge label55
	b label1086
label1080:
	mvn r10, #0
	cmp r1, #0
	bge label66
label1064:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	b label869
label66:
	cmp r1, r5
	blt label67
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	b label1076
label67:
	cmp r8, #0
	bge label68
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	b label869
label68:
	cmp r8, r5
	blt label69
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	b label869
label69:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	b label869
label1076:
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	b label869
label71:
	cmp r1, #0
	bge label72
	mvn r10, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	b label1064
label72:
	cmp r1, r5
	blt label73
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	b label1064
label73:
	ldr r10, [r0, r7, lsl #2]
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	b label1064
label934:
	add r9, r8, r6
	cmp r2, #0
	bge label70
	b label999
label58:
	add r9, r8, r6
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	b label934
label1063:
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
label807:
	cmp r2, #0
	bge label55
	b label870
label84:
	cmp r1, #0
	bge label85
	mvn r10, #0
	bge label79
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	b label1086
label85:
	cmp r1, r5
	blt label86
	mvn r10, #0
	cmp r1, #0
	bge label79
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	b label1086
label39:
	cmp r1, #0
	bge label40
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	b label933
label40:
	cmp r1, r5
	blt label41
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	b label933
label41:
	ldr r9, [r0, r7, lsl #2]
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
label998:
	cmp r1, #0
	bge label45
	b label1063
label86:
	ldr r10, [r0, r7, lsl #2]
	cmp r1, #0
	bge label79
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	b label1086
label81:
	cmp r8, r5
	blt label82
	mvn r11, #0
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	b label1088
label82:
	add r11, r8, r3
	ldr r11, [r0, r11, lsl #2]
	add r10, r10, r11
	cmp r9, r10
	ble label53
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	b label1088
label47:
	cmp r8, r5
	blt label48
	mvn r9, #0
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	add r9, r8, r6
	cmp r2, #0
	bge label70
	mvn r10, #0
	cmp r1, #0
	bge label66
	mvn r11, #0
	add r10, r10, r11
	str r10, [r0, r9, lsl #2]
	add r8, r8, #1
	cmp r8, r5
	bge label87
	cmp r2, #0
	bge label38
	mvn r9, #0
	cmn r9, #1
	ble label405
	cmp r1, #0
	bge label45
	b label1063
label48:
	add r9, r8, r3
	ldr r9, [r0, r9, lsl #2]
	cmp r9, #0
	mov r9, #0
	movwge r9, #1
	cmp r9, #0
	beq label53
	cmp r2, #0
	bge label55
	mvn r9, #0
	cmp r9, #0
	bge label74
	b label624
label1034:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
label1038:
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
label1040:
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
	b label1038
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
	b label1040
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
	mla r7, r5, r2, r1
	cmp r2, #0
	bge label9
	b label1040
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
	b label1040
label969:
	mvn r3, #0
	str r3, [r0, r7, lsl #2]
	add r2, r2, #1
	cmp r2, r5
	bge label13
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
	b label1040
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
label1048:
	ldr r2, [r0, r1, lsl #2]
	str r2, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r5
	bge label31
	b label1048
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
