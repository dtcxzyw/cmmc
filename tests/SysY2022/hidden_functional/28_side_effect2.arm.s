.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #84
	mov r1, #0
	mov r0, sp
	str r1, [sp, #0]
	mov r2, r1
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r1, [r0, #20]
	str r1, [r0, #24]
	str r1, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r1, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r1, [r0, #52]
	str r1, [r0, #56]
	str r1, [r0, #60]
	str r1, [r0, #64]
	str r1, [r0, #68]
	str r1, [r0, #72]
	str r1, [r0, #76]
label2:
	cmp r1, #20
	bge label203
	b label202
label1131:
	mov r4, #0
	cmp r4, #0
	beq label613
	b label1205
label203:
	mov r1, #0
	cmp r1, #20
	bge label207
	b label206
label207:
	mov r3, #1
	cmp r3, #20
	bge label11
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label46
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label13
	b label1015
label1205:
	add r3, r2, #3
	cmp r1, #3
	bge label124
label1206:
	mov r4, #0
	cmp r4, #0
	beq label625
	add r3, r2, #4
	cmp r1, #4
	bge label128
label1341:
	mov r2, r3
	add r1, r1, #1
	b label2
label124:
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label625
	add r3, r2, #4
	cmp r1, #4
	bge label128
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	b label927
label625:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label128:
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label637
	add r3, r2, #5
	cmp r1, #5
	bge label130
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	b label927
label637:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label177:
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label613
	add r3, r2, #3
	cmp r1, #3
	bge label124
	mov r4, #0
	cmp r4, #0
	beq label625
	add r3, r2, #4
	cmp r1, #4
	bge label128
	b label1341
label1263:
	add r3, r2, #2
	cmp r1, #2
	bge label177
	b label1131
label206:
	add r3, r2, #2
	cmp r1, #1
	bge label115
	b label928
label103:
	add r4, r2, #38
	cmp r1, #19
	bge label106
	mov r3, #1
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r2, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1203
label106:
	mov r3, #0
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r2, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label1203:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label1014:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label928:
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label55:
	add r3, r2, #4
	cmp r1, #2
	bge label56
	mov r4, #1
	cmp r4, #0
	beq label59
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label56:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label59
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label59:
	add r3, r2, #6
	cmp r1, #3
	bge label60
	mov r4, #1
	cmp r4, #0
	beq label63
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label115:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	beq label55
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label171:
	mov r3, #1
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r2, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label1012:
	add r3, r2, #1
	cmp r1, #1
	bge label117
	b label1130
label927:
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label134:
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label673
	add r3, r2, #8
	cmp r1, #8
	bge label136
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	b label927
label673:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label202:
	add r3, r2, #1
	cmp r1, #1
	bge label117
	b label927
label1237:
	add r3, r2, #14
	cmp r1, #14
	bge label175
label1238:
	mov r4, #0
	cmp r4, #0
	beq label751
	add r3, r2, #15
	cmp r1, #15
	bge label174
	b label1241
label149:
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label742
	add r3, r2, #14
	cmp r1, #14
	bge label175
	mov r4, #0
	cmp r4, #0
	beq label751
	add r3, r2, #15
	cmp r1, #15
	bge label174
label1241:
	mov r4, #0
	cmp r4, #0
	beq label760
	b label1243
label742:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label1243:
	add r3, r2, #16
	cmp r1, #16
	bge label159
	b label1244
label1247:
	mov r4, #0
	cmp r4, #0
	beq label784
	b label1249
label760:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label1249:
	add r3, r2, #18
	cmp r1, #18
	bge label167
	b label1250
label159:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label772
	add r3, r2, #17
	cmp r1, #17
	bge label163
	mov r4, #0
	cmp r4, #0
	beq label784
	add r3, r2, #18
	cmp r1, #18
	bge label167
label1250:
	mov r4, #0
	cmp r4, #0
	beq label796
	b label1252
label772:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label1252:
	add r4, r2, #19
	cmp r1, #19
	bge label171
	b label1385
label784:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label167:
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label796
	add r4, r2, #19
	cmp r1, #19
	bge label171
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r2, #1
	cmp r1, #1
	bge label117
	b label1130
label796:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label174:
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label760
	add r3, r2, #16
	cmp r1, #16
	bge label159
	mov r4, #0
	cmp r4, #0
	beq label772
	add r3, r2, #17
	cmp r1, #17
	bge label163
	b label1247
label1130:
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1263
label63:
	add r3, r2, #8
	cmp r1, #4
	bge label64
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label64:
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label65
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label65:
	add r3, r2, #10
	cmp r1, #5
	bge label66
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label90:
	add r3, r2, #30
	cmp r1, #15
	bge label91
	mov r4, #1
	cmp r4, #0
	beq label94
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label91:
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label94
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label94:
	add r3, r2, #32
	cmp r1, #16
	bge label109
	mov r4, #1
	cmp r4, #0
	beq label97
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label97:
	add r3, r2, #34
	cmp r1, #17
	bge label108
	mov r4, #1
	cmp r4, #0
	beq label100
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label108:
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label100
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label109:
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label97
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label100:
	add r3, r2, #36
	cmp r1, #18
	bge label107
	mov r4, #1
	cmp r4, #0
	beq label103
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label107:
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label103
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label60:
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label63
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label66:
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label67
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label67:
	add r3, r2, #12
	cmp r1, #6
	bge label68
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label68:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label69
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label69:
	add r3, r2, #14
	cmp r1, #7
	bge label70
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label70:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label71
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label71:
	add r3, r2, #16
	cmp r1, #8
	bge label72
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label72:
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label73
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label73:
	add r3, r2, #18
	cmp r1, #9
	bge label74
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label74:
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label75
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label75:
	add r3, r2, #20
	cmp r1, #10
	bge label76
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label76:
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label77
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label77:
	add r3, r2, #22
	cmp r1, #11
	bge label112
	mov r4, #1
	cmp r4, #0
	beq label80
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label112:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label80
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label80:
	add r3, r2, #24
	cmp r1, #12
	bge label111
	mov r4, #1
	cmp r4, #0
	beq label83
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label83:
	add r3, r2, #26
	cmp r1, #13
	bge label84
	mov r4, #1
	cmp r4, #0
	beq label87
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label84:
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label87
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label87:
	add r3, r2, #28
	cmp r1, #14
	bge label110
	mov r4, #1
	cmp r4, #0
	beq label90
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	b label928
label110:
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label90
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label111:
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label83
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label55
	b label1014
label117:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	beq label604
	add r3, r2, #2
	cmp r1, #2
	bge label177
	mov r4, #0
	cmp r4, #0
	beq label613
	add r3, r2, #3
	cmp r1, #3
	bge label124
	b label1206
label136:
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label685
	add r3, r2, #9
	cmp r1, #9
	bge label138
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	b label927
label685:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label138:
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label697
	add r3, r2, #10
	cmp r1, #10
	bge label140
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	b label927
label697:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label140:
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label709
	add r3, r2, #11
	cmp r1, #11
	bge label176
	mov r4, #0
	cmp r4, #0
	beq label718
	add r3, r2, #12
	cmp r1, #12
	bge label145
	cmp r4, #0
	beq label730
	b label1234
label709:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label130:
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label649
	add r3, r2, #6
	cmp r1, #6
	bge label132
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	b label927
label649:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label132:
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label661
	add r3, r2, #7
	cmp r1, #7
	bge label134
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	b label927
label661:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label613:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
label1013:
	add r3, r2, #2
	cmp r1, #2
	bge label177
	b label1131
label604:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label730:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label751:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label1234:
	add r3, r2, #13
	cmp r1, #13
	bge label149
label1235:
	mov r4, #0
	cmp r4, #0
	beq label742
	b label1237
label718:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label117
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1013
label145:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label730
	add r3, r2, #13
	cmp r1, #13
	bge label149
	mov r4, #0
	cmp r4, #0
	beq label742
	add r3, r2, #14
	cmp r1, #14
	bge label175
	b label1238
label176:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label718
	add r3, r2, #12
	cmp r1, #12
	bge label145
	mov r4, #0
	cmp r4, #0
	beq label730
	add r3, r2, #13
	cmp r1, #13
	bge label149
	b label1235
label11:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label13
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label13
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label18
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label266
label1133:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label25
	add r4, r1, #3
	cmp r3, #0
	beq label297
label1137:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label304
	b label1144
label946:
	mov r0, r2
	mov r1, #1
	b label35
label304:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label40
	b label946
label35:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label18:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	beq label244
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	bne label252
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	beq label19
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label266
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label25
	b label1140
label244:
	mov r1, r4
label19:
	add r1, r1, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label266
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label25
	add r4, r1, #3
	cmp r3, #0
	beq label297
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label304
	b label1144
label1140:
	add r4, r1, #3
	cmp r3, #0
	beq label297
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label304
	b label1144
label1132:
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label18
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label266
	b label1133
label46:
	mov r4, #1
	cmp r1, #0
	str r4, [r0, r1, lsl #2]
	bne label51
	ldr r1, [sp, #0]
	cmp r1, #0
	beq label11
	add r3, r3, #1
	cmp r3, #20
	bge label11
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label46
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label13
	b label1015
label51:
	sub r1, r3, #2
	ldr r1, [r0, r1, lsl #2]
	cmp r1, #0
	beq label11
	add r3, r3, #1
	cmp r3, #20
	bge label11
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label46
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label13
	b label1015
label13:
	ldr r4, [r0, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r2
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label18
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label266
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label25
	add r4, r1, #3
	cmp r3, #0
	beq label297
	b label1137
label266:
	mov r1, r4
label25:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label27
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label297
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label304
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label311
	add r1, r1, #12
	cmp r2, #0
	bne label38
label1279:
	mov r0, r1
	mov r1, #1
	b label35
label27:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	bne label28
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label297
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label304
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label311
	add r1, r1, #12
	cmp r2, #0
	bne label38
	b label1279
label1015:
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label13
	b label1132
label252:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label266
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label25
	add r4, r1, #3
	cmp r3, #0
	beq label297
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label304
label1144:
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label311
	b label1149
label38:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label40
	b label946
label1149:
	add r1, r1, #12
	cmp r2, #0
	bne label38
	b label1279
label297:
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	beq label40
	b label946
label40:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label331
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	bne label41
	b label1279
label331:
	mov r1, r2
label41:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label35
label28:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	bne label29
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label297
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label304
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label311
	add r1, r1, #12
	cmp r2, #0
	bne label38
	b label1279
label29:
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
	add r4, r1, #3
	cmp r3, #0
	beq label297
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label304
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label311
	add r1, r1, #12
	cmp r2, #0
	bne label38
	b label1279
label311:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label40
	b label946
label1244:
	mov r4, #0
	cmp r4, #0
	beq label772
	b label1246
label175:
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label751
	add r3, r2, #15
	cmp r1, #15
	bge label174
	mov r4, #0
	cmp r4, #0
	beq label760
	add r3, r2, #16
	cmp r1, #16
	bge label159
	b label1244
label1246:
	add r3, r2, #17
	cmp r1, #17
	bge label163
	b label1247
label1385:
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label178
label163:
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label784
	add r3, r2, #18
	cmp r1, #18
	bge label167
	mov r4, #0
	cmp r4, #0
	beq label796
	add r4, r2, #19
	cmp r1, #19
	bge label171
	b label1385
label178:
	add r1, r1, #1
	cmp r1, #20
	bge label203
	b label1012
