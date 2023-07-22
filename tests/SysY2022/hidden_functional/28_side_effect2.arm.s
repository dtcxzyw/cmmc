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
	mov r2, #0
	mov r0, sp
	mov r1, r2
	str r2, [sp, #0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #12]
	str r2, [r0, #16]
	str r2, [r0, #20]
	str r2, [r0, #24]
	str r2, [r0, #28]
	str r2, [r0, #32]
	str r2, [r0, #36]
	str r2, [r0, #40]
	str r2, [r0, #44]
	str r2, [r0, #48]
	str r2, [r0, #52]
	str r2, [r0, #56]
	str r2, [r0, #60]
	str r2, [r0, #64]
	str r2, [r0, #68]
	str r2, [r0, #72]
	str r2, [r0, #76]
label2:
	cmp r1, #20
	bge label203
	add r3, r2, #1
	cmp r1, #1
	bge label179
label927:
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label203:
	mov r1, #0
	cmp r1, #20
	bge label207
	b label206
label207:
	mov r3, #1
	cmp r3, #20
	bge label18
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label12
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label49
	b label1040
label18:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label49
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label49
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label22
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label275
label1177:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label30
	add r4, r1, #3
	cmp r3, #0
	beq label313
	b label1178
label1379:
	mov r2, r3
	add r1, r1, #1
	b label2
label123:
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label625
	add r3, r2, #4
	cmp r1, #4
	bge label127
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	b label927
label127:
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label637
	add r3, r2, #5
	cmp r1, #5
	bge label129
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	b label927
label637:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label129:
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label649
	add r3, r2, #6
	cmp r1, #6
	bge label131
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	b label927
label649:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label206:
	add r3, r2, #2
	cmp r1, #1
	bge label53
	b label928
label71:
	add r3, r2, #14
	cmp r1, #7
	bge label72
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label72:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label73
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label58:
	add r3, r2, #4
	cmp r1, #2
	bge label59
	mov r4, #1
	cmp r4, #0
	beq label62
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	b label1198
label82:
	add r3, r2, #24
	cmp r1, #12
	bge label113
	mov r4, #1
	cmp r4, #0
	beq label85
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1219:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label85:
	add r3, r2, #26
	cmp r1, #13
	bge label86
	mov r4, #1
	cmp r4, #0
	beq label89
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1221:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label89:
	add r3, r2, #28
	cmp r1, #14
	bge label90
	mov r4, #1
	cmp r4, #0
	beq label93
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1223:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label93:
	add r3, r2, #30
	cmp r1, #15
	bge label112
	mov r4, #1
	cmp r4, #0
	beq label96
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1225:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label112:
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label96
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1225
label113:
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label85
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1219
label62:
	add r3, r2, #6
	cmp r1, #3
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label65
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1201:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label115:
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label65
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1201
label96:
	add r3, r2, #32
	cmp r1, #16
	bge label111
	mov r4, #1
	cmp r4, #0
	beq label99
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1227:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label99:
	add r3, r2, #34
	cmp r1, #17
	bge label100
	mov r4, #1
	cmp r4, #0
	beq label103
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
	b label1229
label100:
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label103
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
label1229:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label111:
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label99
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1227
label1039:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label53:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1039
label1198:
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1199
label59:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label62
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
label1199:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label928:
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1039
label103:
	add r3, r2, #36
	cmp r1, #18
	bge label110
	mov r4, #1
	cmp r4, #0
	beq label106
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1231:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label110:
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label106
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1231
label1197:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label106:
	add r4, r2, #38
	cmp r1, #19
	bge label109
	mov r3, #1
	cmp r3, #0
	add r2, r2, #40
	movne r2, r4
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r2, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1197
label109:
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
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label90:
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label93
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1223
label73:
	add r3, r2, #16
	cmp r1, #8
	bge label74
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label74:
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label75
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label75:
	add r3, r2, #18
	cmp r1, #9
	bge label76
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label76:
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label77
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label77:
	add r3, r2, #20
	cmp r1, #10
	bge label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label78:
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label79
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label79:
	add r3, r2, #22
	cmp r1, #11
	bge label114
	mov r4, #1
	cmp r4, #0
	beq label82
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1217:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label114:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label82
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1217
label86:
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label89
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1221
label65:
	add r3, r2, #8
	cmp r1, #4
	bge label66
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label66:
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label67
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label67:
	add r3, r2, #10
	cmp r1, #5
	bge label68
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label68:
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label69
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label69:
	add r3, r2, #12
	cmp r1, #6
	bge label70
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label70:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label71
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	b label206
label1168:
	mov r4, #0
	cmp r4, #0
	beq label613
	add r3, r2, #3
	cmp r1, #3
	bge label123
	b label1242
label613:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label1301:
	add r3, r2, #2
	cmp r1, #2
	bge label176
	b label1168
label1242:
	mov r4, #0
	cmp r4, #0
	beq label625
	add r3, r2, #4
	cmp r1, #4
	bge label127
	b label1379
label179:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	beq label604
	add r3, r2, #2
	cmp r1, #2
	bge label176
	mov r4, #0
	cmp r4, #0
	beq label613
	add r3, r2, #3
	cmp r1, #3
	bge label123
	b label1242
label604:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
label1038:
	add r3, r2, #2
	cmp r1, #2
	bge label176
	b label1168
label133:
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label673
	add r3, r2, #8
	cmp r1, #8
	bge label135
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	b label927
label673:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label176:
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label613
	add r3, r2, #3
	cmp r1, #3
	bge label123
	mov r4, #0
	cmp r4, #0
	beq label625
	add r3, r2, #4
	cmp r1, #4
	bge label127
	b label1379
label625:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label131:
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label661
	add r3, r2, #7
	cmp r1, #7
	bge label133
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	b label927
label661:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label135:
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label685
	add r3, r2, #9
	cmp r1, #9
	bge label137
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	b label927
label685:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label137:
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label697
	add r3, r2, #10
	cmp r1, #10
	bge label139
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	b label927
label697:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label139:
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label709
	add r3, r2, #11
	cmp r1, #11
	bge label141
	mov r4, #0
	cmp r4, #0
	beq label721
	add r3, r2, #12
	cmp r1, #12
	bge label175
	cmp r4, #0
	beq label730
	b label1270
label709:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label141:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label721
	add r3, r2, #12
	cmp r1, #12
	bge label175
	mov r4, #0
	cmp r4, #0
	beq label730
	add r3, r2, #13
	cmp r1, #13
	bge label174
	b label1271
label721:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label1277:
	mov r4, #0
	cmp r4, #0
	beq label763
	add r3, r2, #16
	cmp r1, #16
	bge label173
label1280:
	mov r4, #0
	cmp r4, #0
	beq label772
	b label1282
label155:
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label763
	add r3, r2, #16
	cmp r1, #16
	bge label173
	mov r4, #0
	cmp r4, #0
	beq label772
	add r3, r2, #17
	cmp r1, #17
	bge label172
	b label1283
label772:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label172:
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label781
	add r3, r2, #18
	cmp r1, #18
	bge label171
	mov r4, #0
	cmp r4, #0
	beq label790
	add r4, r2, #19
	cmp r1, #19
	bge label168
	b label1423
label173:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label772
	add r3, r2, #17
	cmp r1, #17
	bge label172
	mov r4, #0
	cmp r4, #0
	beq label781
	add r3, r2, #18
	cmp r1, #18
	bge label171
	b label1286
label174:
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label739
	add r3, r2, #14
	cmp r1, #14
	bge label151
	mov r4, #0
	cmp r4, #0
	beq label751
	add r3, r2, #15
	cmp r1, #15
	bge label155
	b label1277
label175:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label730
	add r3, r2, #13
	cmp r1, #13
	bge label174
	mov r4, #0
	cmp r4, #0
	beq label739
	add r3, r2, #14
	cmp r1, #14
	bge label151
	b label1274
label751:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label1282:
	add r3, r2, #17
	cmp r1, #17
	bge label172
label1283:
	mov r4, #0
	cmp r4, #0
	beq label781
	b label1285
label763:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label1285:
	add r3, r2, #18
	cmp r1, #18
	bge label171
label1286:
	mov r4, #0
	cmp r4, #0
	beq label790
	add r4, r2, #19
	cmp r1, #19
	bge label168
	b label1423
label790:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label1276:
	add r3, r2, #15
	cmp r1, #15
	bge label155
	b label1277
label739:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label1273:
	add r3, r2, #14
	cmp r1, #14
	bge label151
label1274:
	mov r4, #0
	cmp r4, #0
	beq label751
	b label1276
label730:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label781:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label203
	add r3, r3, #1
	cmp r1, #1
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label168:
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
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1038
label171:
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label790
	add r4, r2, #19
	cmp r1, #19
	bge label168
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
	bge label179
label1166:
	mov r4, #0
	cmp r4, #0
	beq label604
	b label1301
label1169:
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label22
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label275
	b label1177
label22:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	beq label253
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	bne label260
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	beq label25
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label275
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label30
	b label1181
label253:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label275
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label30
	add r4, r1, #3
	cmp r3, #0
	beq label313
	b label1055
label1181:
	add r4, r1, #3
	cmp r3, #0
	beq label313
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label322
	b label1184
label947:
	mov r0, r2
	mov r1, #1
	b label37
label322:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label45
	b label947
label45:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label347
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	bne label47
	b label1322
label347:
	mov r1, r2
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label37
label1322:
	mov r0, r1
	mov r1, #1
label37:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label329:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label45
	b label947
label12:
	mov r4, #1
	cmp r1, #0
	str r4, [r0, r1, lsl #2]
	bne label13
	ldr r1, [sp, #0]
	cmp r1, #0
	beq label18
	add r3, r3, #1
	cmp r3, #20
	bge label18
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label12
	b label1173
label13:
	sub r1, r3, #2
	ldr r1, [r0, r1, lsl #2]
	cmp r1, #0
	beq label18
	add r3, r3, #1
	cmp r3, #20
	bge label18
	sub r1, r3, #1
	add r2, r2, #1
	cmp r3, r1
	bgt label12
label1173:
	ldr r3, [sp, #0]
	add r1, r2, #3
	cmp r3, #0
	beq label49
	b label1040
label43:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label45
	b label947
label275:
	mov r1, r4
	ldr r5, [r0, #44]
	add r4, r4, #3
	cmp r5, #0
	bne label32
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label313
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label322
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label329
	b label1187
label32:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	bne label33
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label313
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label322
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label329
	add r1, r1, #12
	cmp r2, #0
	bne label43
	b label1322
label30:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label32
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label313
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label322
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label329
label1187:
	add r1, r1, #12
	cmp r2, #0
	bne label43
	b label1322
label1040:
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label49
	b label1169
label25:
	add r1, r1, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label275
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label30
	add r4, r1, #3
	cmp r3, #0
	beq label313
	b label1055
label260:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label275
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label30
	add r4, r1, #3
	cmp r3, #0
	beq label313
label1055:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label322
	b label1184
label313:
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	beq label45
	b label947
label1178:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label322
label1184:
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label329
	add r1, r1, #12
	cmp r2, #0
	bne label43
	b label1322
label49:
	ldr r4, [r0, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r2
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label22
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label275
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label30
	add r4, r1, #3
	cmp r3, #0
	beq label313
	b label1178
label33:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	bne label34
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label313
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label322
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label329
	add r1, r1, #12
	cmp r2, #0
	bne label43
	b label1322
label34:
	ldr r4, [r0, #56]
	add r5, r1, #15
	cmp r4, #0
	add r4, r1, #12
	mov r1, r4
	movne r1, r5
	add r4, r1, #3
	cmp r3, #0
	beq label313
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label322
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label329
	add r1, r1, #12
	cmp r2, #0
	bne label43
	b label1322
label47:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label37
label1270:
	add r3, r2, #13
	cmp r1, #13
	bge label174
label1271:
	mov r4, #0
	cmp r4, #0
	beq label739
	b label1273
label151:
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label751
	add r3, r2, #15
	cmp r1, #15
	bge label155
	mov r4, #0
	cmp r4, #0
	beq label763
	add r3, r2, #16
	cmp r1, #16
	bge label173
	b label1280
label1423:
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
	bge label179
	b label1166
