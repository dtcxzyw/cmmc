.arch armv7ve
.data
.align 4
program:
	.zero	262144
.align 4
tape:
	.zero	262144
.align 4
input:
	.zero	262144
.align 4
output:
	.zero	262144
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	movw r12, #2068
	sub sp, sp, r12
	add r8, sp, #0
	str r8, [sp, #2048]
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	b label963
label122:
	mov r1, #0
	cmp r1, #0
	beq label126
	cmp r0, #43
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	b label967
label137:
	mov r1, #0
	cmp r1, #0
	beq label140
	cmp r0, #46
	movwne r1, #1
	cmp r1, #0
	beq label144
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	b label892
label140:
	mov r1, #0
	cmp r1, #0
	beq label144
	cmp r0, #44
	movwne r1, #1
	cmp r1, #0
	beq label148
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	b label896
label144:
	mov r1, #0
	cmp r1, #0
	beq label148
	cmp r0, #35
	movwne r1, #1
	cmp r1, #0
	beq label26
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
	b label897
label896:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
	b label975
label148:
	mov r1, #0
	cmp r1, #0
	beq label26
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
label897:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
	b label976
label26:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	str r9, [sp, #2052]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #2056]
	cmp r0, #35
	beq label160
	mov r4, #0
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	beq label330
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	b label1020
label941:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	b label1020
label334:
	mov r1, #0
	cmp r1, #0
	beq label337
	cmp r0, #45
	movwne r1, #1
	cmp r1, #0
	beq label340
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	bl getch
	cmp r0, #62
	beq label330
	b label944
label337:
	mov r1, #0
	cmp r1, #0
	beq label340
	cmp r0, #91
	movwne r1, #1
	cmp r1, #0
	beq label343
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	bl getch
	cmp r0, #62
	beq label330
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
	b label1024
label340:
	mov r1, #0
	cmp r1, #0
	beq label343
	cmp r0, #93
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	bl getch
	cmp r0, #62
	beq label330
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
	b label1025
label343:
	mov r1, #0
	cmp r1, #0
	beq label346
	cmp r0, #46
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	bl getch
	cmp r0, #62
	beq label330
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
	b label1026
label346:
	mov r1, #0
	cmp r1, #0
	beq label349
	cmp r0, #44
	movwne r1, #1
	cmp r1, #0
	beq label353
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	bl getch
	cmp r0, #62
	beq label330
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	b label1027
label349:
	mov r1, #0
	cmp r1, #0
	beq label353
	cmp r0, #35
	movwne r1, #1
	cmp r1, #0
	beq label107
	bl getch
	cmp r0, #62
	beq label330
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	b label952
label353:
	mov r1, #0
	cmp r1, #0
	beq label107
	bl getch
	cmp r0, #62
	beq label330
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	b label941
label952:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	b label1031
label164:
	mov r6, #0
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label35
label29:
	bl getint
	mov r6, r0
	bl getch
	mov r4, #0
	cmp r4, r6
	bge label171
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	b label980
label1020:
	bl getch
	cmp r0, #62
	beq label330
	b label1022
label107:
	add r4, r4, #1
	cmp r0, #35
	beq label362
	ldr r9, [sp, #2052]
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	beq label330
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	b label1020
label362:
	mov r5, r4
	bl getch
	cmp r0, #105
	beq label29
	b label164
label330:
	mov r1, #0
	cmp r1, #0
	beq label334
	cmp r0, #43
	movwne r1, #1
	cmp r1, #0
	beq label337
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	bl getch
	cmp r0, #62
	beq label330
label944:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	b label1023
label1027:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label349
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label353
label1031:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label107
	b label1020
label1022:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
label1023:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
label1024:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
label1025:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
label1026:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	b label1027
label160:
	mov r5, #0
	bl getch
	cmp r0, #105
	beq label29
	b label164
label130:
	mov r1, #0
	cmp r1, #0
	beq label133
	cmp r0, #91
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	b label889
label133:
	mov r1, #0
	cmp r1, #0
	beq label137
	cmp r0, #93
	movwne r1, #1
	cmp r1, #0
	beq label140
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
label892:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	b label971
label35:
	ldr r8, [sp, #2048]
	add r1, r8, r0, lsl #2
	mov r2, #0
	ldr r8, [sp, #2048]
	str r2, [r8, r0, lsl #2]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	str r2, [r1, #16]
	str r2, [r1, #20]
	str r2, [r1, #24]
	str r2, [r1, #28]
	str r2, [r1, #32]
	str r2, [r1, #36]
	str r2, [r1, #40]
	str r2, [r1, #44]
	str r2, [r1, #48]
	str r2, [r1, #52]
	str r2, [r1, #56]
	str r2, [r1, #60]
	add r0, r0, #16
	cmp r0, #512
	bge label37
	b label35
label37:
	movw r7, #:lower16:tape
	movt r7, #:upper16:tape
	mov r4, #0
	mov r3, r4
	mov r1, r4
	mov r2, r4
	mov r0, r4
	cmp r4, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r4, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r4, #1
	add r0, r4, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label982
label44:
	mov r0, #118
	bl _sysy_stoptime
	movw r5, #:lower16:output
	movt r5, #:upper16:output
	cmp r4, #0
	ble label45
	mov r6, #0
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
label984:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	b label984
label982:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label940
label963:
	bl getch
	cmp r0, #62
	beq label122
	b label965
label973:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
label975:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
label976:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	b label963
label970:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
label971:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	b label973
label126:
	mov r1, #0
	cmp r1, #0
	beq label130
	cmp r0, #45
	movwne r1, #1
	cmp r1, #0
	beq label133
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
label889:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
	b label968
label965:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
label967:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
label968:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	b label970
label50:
	cmp r8, #60
	bne label52
	sub r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label1019
label71:
	cmp r8, #44
	bne label77
	cmp r3, r6
	blt label73
	mov r8, #0
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label940
label73:
	ldr r8, [sp, #2056]
	ldr r8, [r8, r3, lsl #2]
	str r8, [r7, r2, lsl #2]
	add r3, r3, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label982
label940:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label1019
label69:
	sub r0, r1, #1
	ldr r8, [sp, #2048]
	ldr r0, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label982
label70:
	cmp r8, #46
	bne label71
	movw r8, #:lower16:output
	movt r8, #:upper16:output
	ldr r9, [r7, r2, lsl #2]
	str r9, [r8, r4, lsl #2]
	add r4, r4, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label1019
label861:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label940
label1019:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label940
label77:
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label861
label52:
	cmp r8, #43
	bne label53
	ldr r8, [r7, r2, lsl #2]
	add r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label1019
label53:
	cmp r8, #45
	bne label55
	ldr r8, [r7, r2, lsl #2]
	sub r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label1019
label55:
	cmp r8, #91
	bne label66
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	beq label253
	ldr r8, [sp, #2048]
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label940
label253:
	mov r8, #1
label57:
	cmp r8, #0
	ble label77
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label62
	sub r8, r8, #1
	cmp r9, #91
	bne label57
	add r8, r8, #1
	cmp r8, #0
	ble label77
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label62
	sub r8, r8, #1
	cmp r9, #91
	bne label57
	add r8, r8, #1
	cmp r8, #0
	ble label77
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label62
	b label919
label66:
	cmp r8, #93
	bne label70
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	bne label69
	sub r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label940
label980:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	b label980
label919:
	sub r8, r8, #1
	cmp r9, #91
	bne label57
	b label998
label62:
	cmp r9, #91
	bne label57
	add r8, r8, #1
	cmp r8, #0
	ble label77
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label62
	sub r8, r8, #1
	cmp r9, #91
	bne label57
	add r8, r8, #1
	cmp r8, #0
	ble label77
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label62
	sub r8, r8, #1
	cmp r9, #91
	bne label57
	add r8, r8, #1
	cmp r8, #0
	ble label77
	b label923
label998:
	add r8, r8, #1
	cmp r8, #0
	ble label77
label923:
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label62
	sub r8, r8, #1
	cmp r9, #91
	bne label57
	b label998
label45:
	mov r0, #0
	movw r12, #2068
	add sp, sp, r12
	pop { r4, r5, r6, r7, r8, r9, pc }
label171:
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label35
