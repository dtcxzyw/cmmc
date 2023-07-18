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
	mov r2, r1
	str r1, [sp, #0]
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
label203:
	mov r1, #0
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	mov r2, r3
	add r1, r1, #1
	b label69
label1280:
	mov r2, r3
	add r1, r1, #1
	b label2
label221:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label16:
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label245
	add r3, r2, #5
	cmp r1, #5
	bge label18
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label245:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label69:
	cmp r1, #20
	bge label431
label430:
	add r3, r2, #2
	cmp r1, #1
	bge label73
	b label968
label431:
	mov r3, #1
	cmp r3, #20
	bge label146
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label140
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label148
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label148
label1250:
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label153
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label736
	b label1259
label146:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label148
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label148
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label153
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label736
label1259:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label161
	add r4, r1, #3
	cmp r3, #0
	beq label774
	b label1263
label968:
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label101:
	add r3, r2, #24
	cmp r1, #12
	bge label132
	mov r4, #1
	cmp r4, #0
	beq label104
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label104:
	add r3, r2, #26
	cmp r1, #13
	bge label131
	mov r4, #1
	cmp r4, #0
	beq label107
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label107:
	add r3, r2, #28
	cmp r1, #14
	bge label108
	mov r4, #1
	cmp r4, #0
	beq label111
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label131:
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label107
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label132:
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label104
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
label1075:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label927:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label12:
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label233
	add r3, r2, #4
	cmp r1, #4
	bge label16
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label233:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label65:
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label12
	mov r4, #0
	cmp r4, #0
	beq label233
	add r3, r2, #4
	cmp r1, #4
	bge label16
	b label1280
label202:
	add r3, r2, #1
	cmp r1, #1
	bge label68
	b label927
label1015:
	add r3, r2, #2
	cmp r1, #2
	bge label65
	b label1138
label1141:
	mov r4, #0
	cmp r4, #0
	beq label233
	b label1143
label212:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label1143:
	add r3, r2, #4
	cmp r1, #4
	bge label16
	b label1280
label1187:
	add r4, r2, #19
	cmp r1, #19
	bge label55
label1324:
	mov r3, #0
	cmp r3, #0
	add r3, r2, #20
	mov r2, r4
	movne r2, r3
	b label66
label383:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label392:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label58:
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label392
	add r4, r2, #19
	cmp r1, #19
	bge label55
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
	bge label68
	b label1073
label59:
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label383
	add r3, r2, #18
	cmp r1, #18
	bge label58
	mov r4, #0
	cmp r4, #0
	beq label392
	add r4, r2, #19
	cmp r1, #19
	bge label55
	b label1324
label66:
	add r1, r1, #1
	cmp r1, #20
	bge label203
	b label966
label1073:
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1202
label68:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	beq label212
	add r3, r2, #2
	cmp r1, #2
	bge label65
	mov r4, #0
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label12
	b label1141
label966:
	add r3, r2, #1
	cmp r1, #1
	bge label68
	b label1073
label114:
	add r3, r2, #32
	cmp r1, #16
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label118
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label118:
	add r3, r2, #34
	cmp r1, #17
	bge label119
	mov r4, #1
	cmp r4, #0
	beq label122
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label119:
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label122
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label122:
	add r3, r2, #36
	cmp r1, #18
	bge label129
	mov r4, #1
	cmp r4, #0
	beq label125
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label125:
	add r4, r2, #38
	cmp r1, #19
	bge label128
	mov r3, #1
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1249
label128:
	mov r3, #0
	str r3, [r0, #72]
	ldr r3, [r0, #68]
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r2, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label129:
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label125
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label1249:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	b label430
label73:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	beq label76
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label115:
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label118
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label108:
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label111
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label111:
	add r3, r2, #30
	cmp r1, #15
	bge label130
	mov r4, #1
	cmp r4, #0
	beq label114
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label130:
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label114
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label76:
	add r3, r2, #4
	cmp r1, #2
	bge label77
	mov r4, #1
	cmp r4, #0
	beq label80
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label77:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label80
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label80:
	add r3, r2, #6
	cmp r1, #3
	bge label81
	mov r4, #1
	cmp r4, #0
	beq label84
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label84:
	add r3, r2, #8
	cmp r1, #4
	bge label85
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label85:
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label86
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label86:
	add r3, r2, #10
	cmp r1, #5
	bge label87
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label87:
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label88
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label88:
	add r3, r2, #12
	cmp r1, #6
	bge label89
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label89:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label90
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label90:
	add r3, r2, #14
	cmp r1, #7
	bge label91
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label91:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label92
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label92:
	add r3, r2, #16
	cmp r1, #8
	bge label93
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label93:
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label94
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label94:
	add r3, r2, #18
	cmp r1, #9
	bge label95
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label95:
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label96
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label96:
	add r3, r2, #20
	cmp r1, #10
	bge label97
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label97:
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label98
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label98:
	add r3, r2, #22
	cmp r1, #11
	bge label133
	mov r4, #1
	cmp r4, #0
	beq label101
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	b label968
label133:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label101
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label81:
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label84
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label431
	add r3, r3, #2
	cmp r1, #1
	bge label73
	mov r4, #1
	cmp r4, #0
	beq label76
	b label1075
label18:
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label257
	add r3, r2, #6
	cmp r1, #6
	bge label20
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label257:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label20:
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label269
	add r3, r2, #7
	cmp r1, #7
	bge label22
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label269:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label22:
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label281
	add r3, r2, #8
	cmp r1, #8
	bge label24
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label281:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label24:
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label293
	add r3, r2, #9
	cmp r1, #9
	bge label26
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label293:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label26:
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label305
	add r3, r2, #10
	cmp r1, #10
	bge label28
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	b label927
label305:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label28:
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label317
	add r3, r2, #11
	cmp r1, #11
	bge label30
	mov r4, #0
	cmp r4, #0
	beq label329
	add r3, r2, #12
	cmp r1, #12
	bge label64
	cmp r4, #0
	beq label338
	b label1169
label317:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label30:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label329
	add r3, r2, #12
	cmp r1, #12
	bge label64
	mov r4, #0
	cmp r4, #0
	beq label338
	add r3, r2, #13
	cmp r1, #13
	bge label63
	b label1170
label1176:
	mov r4, #0
	cmp r4, #0
	beq label365
	add r3, r2, #16
	cmp r1, #16
	bge label60
label1179:
	mov r4, #0
	cmp r4, #0
	beq label374
	b label1181
label356:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label365:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label63:
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label347
	add r3, r2, #14
	cmp r1, #14
	bge label62
	mov r4, #0
	cmp r4, #0
	beq label356
	add r3, r2, #15
	cmp r1, #15
	bge label61
	b label1176
label347:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label338:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label1169:
	add r3, r2, #13
	cmp r1, #13
	bge label63
label1170:
	mov r4, #0
	cmp r4, #0
	beq label347
	b label1172
label329:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label1181:
	add r3, r2, #17
	cmp r1, #17
	bge label59
label1182:
	mov r4, #0
	cmp r4, #0
	beq label383
	add r3, r2, #18
	cmp r1, #18
	bge label58
label1185:
	mov r4, #0
	cmp r4, #0
	beq label392
	b label1187
label374:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label60:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label374
	add r3, r2, #17
	cmp r1, #17
	bge label59
	mov r4, #0
	cmp r4, #0
	beq label383
	add r3, r2, #18
	cmp r1, #18
	bge label58
	b label1185
label1138:
	mov r4, #0
	cmp r4, #0
	beq label221
	add r3, r2, #3
	cmp r1, #3
	bge label12
	b label1141
label55:
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
	bge label68
	mov r4, #0
	cmp r4, #0
	beq label212
	b label1015
label1202:
	add r3, r2, #2
	cmp r1, #2
	bge label65
	b label1138
label1111:
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label148
	b label1250
label140:
	mov r4, #1
	cmp r1, #0
	str r4, [r0, r1, lsl #2]
	bne label144
	ldr r1, [sp, #0]
	cmp r1, #0
	beq label146
	add r3, r3, #1
	cmp r3, #20
	bge label146
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label140
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label148
	b label1111
label144:
	sub r1, r3, #2
	ldr r1, [r0, r1, lsl #2]
	cmp r1, #0
	beq label146
	add r3, r3, #1
	cmp r3, #20
	bge label146
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label140
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label148
	b label1111
label153:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	beq label714
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	bne label721
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	beq label156
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label736
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label161
	b label1266
label714:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label736
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label161
	add r4, r1, #3
	cmp r3, #0
	beq label774
	b label1130
label1266:
	add r4, r1, #3
	cmp r3, #0
	beq label774
	b label1268
label721:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label736
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label161
	add r4, r1, #3
	cmp r3, #0
	beq label774
label1130:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label781
	b label1269
label1009:
	mov r0, r2
	mov r1, #1
	b label177
label781:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label173
	b label1009
label1409:
	mov r0, r1
	mov r1, #1
label177:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label148:
	ldr r4, [r0, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r2
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label153
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label736
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label161
	add r4, r1, #3
	cmp r3, #0
	beq label774
	b label1263
label161:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label163
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label774
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label781
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label788
	b label1272
label1268:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label781
	b label1269
label736:
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	bne label163
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label774
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label781
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label788
label1272:
	add r1, r1, #12
	cmp r2, #0
	bne label171
	b label1409
label163:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	bne label164
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label774
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label781
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label788
	add r1, r1, #12
	cmp r2, #0
	bne label171
	b label1409
label164:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	bne label165
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label774
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label781
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label788
	add r1, r1, #12
	cmp r2, #0
	bne label171
	b label1409
label774:
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	beq label173
	b label1009
label171:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label173
	b label1009
label156:
	add r1, r1, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label736
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label161
	add r4, r1, #3
	cmp r3, #0
	beq label774
	b label1130
label1263:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label781
label1269:
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label788
	add r1, r1, #12
	cmp r2, #0
	bne label171
	b label1409
label788:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label173
	b label1009
label165:
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
	add r4, r1, #3
	cmp r3, #0
	beq label774
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label781
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label788
	add r1, r1, #12
	cmp r2, #0
	bne label171
	b label1409
label173:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label806
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	bne label174
	b label1409
label806:
	mov r1, r2
label174:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label177
label1172:
	add r3, r2, #14
	cmp r1, #14
	bge label62
label1173:
	mov r4, #0
	cmp r4, #0
	beq label356
	add r3, r2, #15
	cmp r1, #15
	bge label61
	b label1176
label62:
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label356
	add r3, r2, #15
	cmp r1, #15
	bge label61
	mov r4, #0
	cmp r4, #0
	beq label365
	add r3, r2, #16
	cmp r1, #16
	bge label60
	b label1179
label64:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label338
	add r3, r2, #13
	cmp r1, #13
	bge label63
	mov r4, #0
	cmp r4, #0
	beq label347
	add r3, r2, #14
	cmp r1, #14
	bge label62
	b label1173
label61:
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label365
	add r3, r2, #16
	cmp r1, #16
	bge label60
	mov r4, #0
	cmp r4, #0
	beq label374
	add r3, r2, #17
	cmp r1, #17
	bge label59
	b label1182
