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
	bge label207
	b label206
label207:
	mov r1, #0
	cmp r1, #20
	bge label211
	b label210
label211:
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
	b label1062
label1404:
	mov r2, r3
	add r1, r1, #1
	b label2
label210:
	add r3, r2, #2
	cmp r1, #1
	bge label53
	b label948
label69:
	mov r4, #0
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label70
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label70:
	add r3, r2, #12
	cmp r1, #6
	bge label71
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
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
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	b label1221
label62:
	add r3, r2, #6
	cmp r1, #3
	bge label63
	mov r4, #1
	cmp r4, #0
	beq label66
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
	b label1224
label63:
	mov r4, #0
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label66
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
label1224:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label94:
	add r3, r2, #30
	cmp r1, #15
	bge label95
	mov r4, #1
	cmp r4, #0
	beq label98
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
	b label1248
label95:
	mov r4, #0
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label98
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
label1248:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label98:
	add r3, r2, #32
	cmp r1, #16
	bge label115
	mov r4, #1
	cmp r4, #0
	beq label101
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1250:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label115:
	mov r4, #0
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label101
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1250
label1221:
	mov r4, #1
	cmp r4, #0
	beq label58
label1222:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label101:
	add r3, r2, #34
	cmp r1, #17
	bge label114
	mov r4, #1
	cmp r4, #0
	beq label104
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1252:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label114:
	mov r4, #0
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label104
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1252
label104:
	add r3, r2, #36
	cmp r1, #18
	bge label113
	mov r4, #1
	cmp r4, #0
	beq label107
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1254:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label107:
	add r3, r2, #38
	cmp r1, #19
	bge label108
	mov r4, #1
	cmp r4, #0
	beq label111
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
	b label1256
label108:
	mov r4, #0
	str r4, [r0, #72]
	ldr r4, [r0, #68]
	cmp r4, #0
	beq label111
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
label1256:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label111:
	add r2, r2, #40
	cmp r1, #20
	bge label112
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r2, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label112:
	mov r3, #0
	str r3, [r0, #76]
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r2, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label113:
	mov r4, #0
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label107
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1254
label1061:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label53:
	mov r4, #0
	str r4, [sp, #0]
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1061
label948:
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1061
label206:
	add r3, r2, #1
	cmp r1, #1
	bge label183
	b label947
label632:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label128:
	mov r4, #1
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label644
	add r3, r2, #5
	cmp r1, #5
	bge label130
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	b label947
label644:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label947:
	mov r4, #0
	cmp r4, #0
	beq label614
label1060:
	add r3, r2, #2
	cmp r1, #2
	bge label180
	b label1192
label136:
	mov r4, #1
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label692
	add r3, r2, #9
	cmp r1, #9
	bge label138
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	b label947
label692:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label180:
	mov r4, #1
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label623
	add r3, r2, #3
	cmp r1, #3
	bge label179
	mov r4, #0
	cmp r4, #0
	beq label632
	add r3, r2, #4
	cmp r1, #4
	bge label128
	b label1404
label66:
	add r3, r2, #8
	cmp r1, #4
	bge label67
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label67:
	mov r4, #0
	str r4, [r0, #12]
	ldr r4, [r0, #8]
	cmp r4, #0
	beq label68
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label68:
	add r3, r2, #10
	cmp r1, #5
	bge label69
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label59:
	mov r4, #0
	str r4, [r0, #4]
	ldr r4, [sp, #0]
	cmp r4, #0
	beq label62
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1222
label71:
	mov r4, #0
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label72
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label72:
	add r3, r2, #14
	cmp r1, #7
	bge label73
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label73:
	mov r4, #0
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label74
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label74:
	add r3, r2, #16
	cmp r1, #8
	bge label75
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label75:
	mov r4, #0
	str r4, [r0, #28]
	ldr r4, [r0, #24]
	cmp r4, #0
	beq label76
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label76:
	add r3, r2, #18
	cmp r1, #9
	bge label77
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label77:
	mov r4, #0
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label78
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label78:
	add r3, r2, #20
	cmp r1, #10
	bge label79
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label79:
	mov r4, #0
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label80
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label80:
	add r3, r2, #22
	cmp r1, #11
	bge label81
	mov r4, #1
	cmp r4, #0
	beq label84
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
	b label1240
label81:
	mov r4, #0
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label84
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
label1240:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label84:
	add r3, r2, #24
	cmp r1, #12
	bge label85
	mov r4, #1
	cmp r4, #0
	beq label88
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
	b label1242
label85:
	mov r4, #0
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label88
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
label1242:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label88:
	add r3, r2, #26
	cmp r1, #13
	bge label117
	mov r4, #1
	cmp r4, #0
	beq label91
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1244:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label91:
	add r3, r2, #28
	cmp r1, #14
	bge label116
	mov r4, #1
	cmp r4, #0
	beq label94
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	cmp r4, #0
	beq label58
label1246:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	b label210
label116:
	mov r4, #0
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label94
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1246
label117:
	mov r4, #0
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label91
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label211
	add r3, r3, #2
	cmp r1, #1
	bge label53
	mov r4, #1
	cmp r4, #0
	beq label58
	b label1244
label1192:
	mov r4, #0
	cmp r4, #0
	beq label623
	add r3, r2, #3
	cmp r1, #3
	bge label179
label1265:
	mov r4, #0
	cmp r4, #0
	beq label632
	add r3, r2, #4
	cmp r1, #4
	bge label128
	b label1404
label623:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label138:
	mov r4, #1
	str r4, [r0, #32]
	ldr r4, [r0, #28]
	cmp r4, #0
	beq label704
	add r3, r2, #10
	cmp r1, #10
	bge label140
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	b label947
label704:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label140:
	mov r4, #1
	str r4, [r0, #36]
	ldr r4, [r0, #32]
	cmp r4, #0
	beq label716
	add r3, r2, #11
	cmp r1, #11
	bge label178
	mov r4, #0
	cmp r4, #0
	beq label725
	add r3, r2, #12
	cmp r1, #12
	bge label177
	cmp r4, #0
	beq label734
	b label1293
label716:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label1294:
	mov r4, #0
	cmp r4, #0
	beq label746
	b label1296
label1297:
	mov r4, #0
	cmp r4, #0
	beq label758
	b label1299
label734:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label177:
	mov r4, #1
	str r4, [r0, #44]
	ldr r4, [r0, #40]
	cmp r4, #0
	beq label734
	add r3, r2, #13
	cmp r1, #13
	bge label148
	mov r4, #0
	cmp r4, #0
	beq label746
	add r3, r2, #14
	cmp r1, #14
	bge label152
	b label1297
label178:
	mov r4, #1
	str r4, [r0, #40]
	ldr r4, [r0, #36]
	cmp r4, #0
	beq label725
	add r3, r2, #12
	cmp r1, #12
	bge label177
	mov r4, #0
	cmp r4, #0
	beq label734
	add r3, r2, #13
	cmp r1, #13
	bge label148
	b label1294
label1293:
	add r3, r2, #13
	cmp r1, #13
	bge label148
	b label1294
label725:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label1299:
	add r3, r2, #15
	cmp r1, #15
	bge label176
	b label1300
label148:
	mov r4, #1
	str r4, [r0, #48]
	ldr r4, [r0, #44]
	cmp r4, #0
	beq label746
	add r3, r2, #14
	cmp r1, #14
	bge label152
	mov r4, #0
	cmp r4, #0
	beq label758
	add r3, r2, #15
	cmp r1, #15
	bge label176
label1300:
	mov r4, #0
	cmp r4, #0
	beq label767
	add r3, r2, #16
	cmp r1, #16
	bge label159
	b label1303
label152:
	mov r4, #1
	str r4, [r0, #52]
	ldr r4, [r0, #48]
	cmp r4, #0
	beq label758
	add r3, r2, #15
	cmp r1, #15
	bge label176
	mov r4, #0
	cmp r4, #0
	beq label767
	add r3, r2, #16
	cmp r1, #16
	bge label159
label1303:
	mov r4, #0
	cmp r4, #0
	beq label779
	b label1305
label758:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label767:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label1308:
	add r3, r2, #18
	cmp r1, #18
	bge label175
label1309:
	mov r4, #0
	cmp r4, #0
	beq label800
	b label1311
label779:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label174:
	mov r3, #1
	str r3, [r0, #76]
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r2, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label179:
	mov r4, #1
	str r4, [r0, #8]
	ldr r4, [r0, #4]
	cmp r4, #0
	beq label632
	add r3, r2, #4
	cmp r1, #4
	bge label128
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	b label947
label183:
	mov r4, #1
	str r4, [sp, #0]
	cmp r4, #0
	beq label614
	add r3, r2, #2
	cmp r1, #2
	bge label180
	mov r4, #0
	cmp r4, #0
	beq label623
	add r3, r2, #3
	cmp r1, #3
	bge label179
	b label1265
label1311:
	add r3, r2, #19
	cmp r1, #19
	bge label170
label1312:
	mov r4, #0
	cmp r4, #0
	beq label812
	add r2, r2, #20
	cmp r1, #20
	bge label174
	b label1451
label800:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label1451:
	add r1, r1, #1
	b label2
label614:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label170:
	mov r4, #1
	str r4, [r0, #72]
	ldr r4, [r0, #68]
	cmp r4, #0
	beq label812
	add r2, r2, #20
	cmp r1, #20
	bge label174
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r2, #1
	cmp r1, #1
	bge label183
	b label947
label812:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label175:
	mov r4, #1
	str r4, [r0, #68]
	ldr r4, [r0, #64]
	cmp r4, #0
	beq label800
	add r3, r2, #19
	cmp r1, #19
	bge label170
	mov r4, #0
	cmp r4, #0
	beq label812
	add r2, r2, #20
	cmp r1, #20
	bge label174
	b label1451
label746:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label130:
	mov r4, #1
	str r4, [r0, #16]
	ldr r4, [r0, #12]
	cmp r4, #0
	beq label656
	add r3, r2, #6
	cmp r1, #6
	bge label132
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	b label947
label656:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label132:
	mov r4, #1
	str r4, [r0, #20]
	ldr r4, [r0, #16]
	cmp r4, #0
	beq label668
	add r3, r2, #7
	cmp r1, #7
	bge label134
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	b label947
label668:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label134:
	mov r4, #1
	str r4, [r0, #24]
	ldr r4, [r0, #20]
	cmp r4, #0
	beq label680
	add r3, r2, #8
	cmp r1, #8
	bge label136
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	b label947
label680:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label1305:
	add r3, r2, #17
	cmp r1, #17
	bge label163
	b label1306
label159:
	mov r4, #1
	str r4, [r0, #60]
	ldr r4, [r0, #56]
	cmp r4, #0
	beq label779
	add r3, r2, #17
	cmp r1, #17
	bge label163
	mov r4, #0
	cmp r4, #0
	beq label791
	add r3, r2, #18
	cmp r1, #18
	bge label175
	b label1309
label791:
	mov r2, r3
	add r1, r1, #1
	cmp r1, #20
	bge label207
	add r3, r3, #1
	cmp r1, #1
	bge label183
	mov r4, #0
	cmp r4, #0
	beq label614
	b label1060
label13:
	ldr r4, [r0, #8]
	add r2, r1, #3
	add r1, r1, #6
	cmp r4, #0
	moveq r1, r2
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label17
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label263
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label24
	b label1064
label263:
	mov r1, r4
label24:
	ldr r5, [r0, #44]
	add r4, r1, #3
	cmp r5, #0
	bne label26
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label294
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label328
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label335
	b label1202
label1340:
	mov r0, r1
	mov r1, #1
	b label31
label26:
	ldr r5, [r0, #48]
	add r4, r1, #6
	cmp r5, #0
	bne label27
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label294
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label328
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label335
	add r1, r1, #12
	cmp r2, #0
	bne label34
	b label1340
label27:
	ldr r5, [r0, #52]
	add r4, r1, #9
	cmp r5, #0
	bne label28
	mov r1, r4
	add r4, r4, #3
	cmp r3, #0
	beq label294
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label328
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label335
	add r1, r1, #12
	cmp r2, #0
	bne label34
	b label1340
label28:
	ldr r4, [r0, #56]
	add r5, r1, #12
	cmp r4, #0
	add r4, r1, #15
	mov r1, r5
	movne r1, r4
	add r4, r1, #3
	cmp r3, #0
	beq label294
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label328
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label335
	add r1, r1, #12
	cmp r2, #0
	bne label34
	b label1340
label960:
	mov r0, r2
	mov r1, #1
label31:
	add r0, r0, r1
	bl putint
	add sp, sp, #84
	mov r0, #0
	pop { r4, r5, pc }
label34:
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label36
	b label960
label335:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label36
	b label960
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
	bne label17
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label263
label1194:
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label24
	b label1208
label1195:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label328
	b label1201
label1208:
	add r4, r1, #3
	cmp r3, #0
	beq label294
	b label1195
label1064:
	add r4, r1, #3
	cmp r3, #0
	beq label294
	b label1195
label1062:
	ldr r4, [r0, #4]
	add r1, r2, #6
	cmp r4, #0
	beq label13
	b label1193
label46:
	mov r4, #1
	cmp r1, #0
	str r4, [r0, r1, lsl #2]
	bne label50
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
	b label1062
label50:
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
	b label1062
label1193:
	ldr r2, [r0, #16]
	add r4, r1, #3
	cmp r2, #0
	bne label17
	mov r1, r4
	ldr r5, [r0, #36]
	add r4, r4, #3
	cmp r5, #0
	beq label263
	b label1194
label17:
	ldr r5, [r0, #20]
	add r4, r1, #6
	cmp r5, #0
	beq label241
	ldr r5, [r0, #24]
	add r4, r1, #9
	cmp r5, #0
	bne label248
	ldr r4, [r0, #28]
	add r1, r1, #12
	cmp r4, #0
	beq label20
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label263
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label24
	b label1198
label241:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label263
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label24
	add r4, r1, #3
	cmp r3, #0
	beq label294
	b label1070
label1198:
	add r4, r1, #3
	cmp r3, #0
	beq label294
	b label1200
label248:
	mov r1, r4
	add r1, r4, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label263
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label24
	add r4, r1, #3
	cmp r3, #0
	beq label294
	b label1070
label294:
	mov r1, r4
	ldr r3, [r0, #20]
	add r2, r4, #3
	cmp r3, #0
	beq label36
	b label960
label20:
	add r1, r1, #3
	ldr r5, [r0, #36]
	add r4, r1, #3
	cmp r5, #0
	beq label263
	ldr r4, [r0, #40]
	add r1, r1, #6
	cmp r4, #0
	bne label24
	add r4, r1, #3
	cmp r3, #0
	beq label294
label1070:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label328
	b label1201
label1200:
	ldr r4, [r0, #8]
	add r3, r1, #6
	cmp r4, #0
	beq label328
label1201:
	ldr r4, [r0, #12]
	add r3, r1, #9
	cmp r4, #0
	bne label335
	b label1206
label328:
	mov r1, r3
	ldr r3, [r0, #20]
	add r2, r1, #3
	cmp r3, #0
	beq label36
	b label960
label1206:
	add r1, r1, #12
	cmp r2, #0
	bne label34
	b label1340
label1202:
	add r1, r1, #12
	cmp r2, #0
	bne label34
	b label1340
label36:
	ldr r3, [r0, #24]
	add r2, r1, #6
	cmp r3, #0
	beq label310
	ldr r2, [r0, #28]
	add r1, r1, #9
	cmp r2, #0
	bne label38
	b label1340
label310:
	mov r1, r2
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label31
label38:
	ldr r0, [r0, #32]
	mov r2, #0
	cmp r0, #0
	add r0, r1, #3
	movwne r2, #1
	mov r1, r2
	b label31
label1296:
	add r3, r2, #14
	cmp r1, #14
	bge label152
	b label1297
label1306:
	mov r4, #0
	cmp r4, #0
	beq label791
	b label1308
label176:
	mov r4, #1
	str r4, [r0, #56]
	ldr r4, [r0, #52]
	cmp r4, #0
	beq label767
	add r3, r2, #16
	cmp r1, #16
	bge label159
	mov r4, #0
	cmp r4, #0
	beq label779
	add r3, r2, #17
	cmp r1, #17
	bge label163
	b label1306
label163:
	mov r4, #1
	str r4, [r0, #64]
	ldr r4, [r0, #60]
	cmp r4, #0
	beq label791
	add r3, r2, #18
	cmp r1, #18
	bge label175
	mov r4, #0
	cmp r4, #0
	beq label800
	add r3, r2, #19
	cmp r1, #19
	bge label170
	b label1312
