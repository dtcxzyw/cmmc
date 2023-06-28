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
.section .rodata
.bss
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
	beq label129
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
	b label897
label122:
	mov r1, #0
	cmp r1, #0
	beq label126
	cmp r0, #43
	movwne r1, #1
	cmp r1, #0
	beq label129
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
	b label900
label126:
	mov r1, #0
	cmp r1, #0
	beq label129
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
label900:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	b label977
label129:
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
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label129
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	b label981
label897:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	b label974
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
	beq label129
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
	b label897
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
	beq label350
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	b label1029
label160:
	mov r5, #0
	bl getch
	cmp r0, #105
	beq label29
	b label164
label1029:
	bl getch
	cmp r0, #62
	beq label330
	b label1031
label952:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	b label1029
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
	beq label350
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	bl getch
	cmp r0, #62
	beq label330
	b label955
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
	beq label350
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
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
	b label1033
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
	beq label350
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
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
	b label1034
label343:
	mov r1, #0
	cmp r1, #0
	beq label346
	cmp r0, #46
	movwne r1, #1
	cmp r1, #0
	beq label350
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
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
	b label1035
label346:
	mov r1, #0
	cmp r1, #0
	beq label350
	cmp r0, #44
	movwne r1, #1
	cmp r1, #0
	beq label354
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
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
	b label962
label350:
	mov r1, #0
	cmp r1, #0
	beq label354
	cmp r0, #35
	movwne r1, #1
	cmp r1, #0
	beq label108
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
	beq label350
	b label964
label962:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label350
	b label1039
label354:
	mov r1, #0
	cmp r1, #0
	beq label108
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
	beq label350
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	b label952
label964:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	b label1041
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
	b label990
label108:
	add r4, r4, #1
	cmp r0, #35
	beq label363
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
	beq label350
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	b label1029
label363:
	mov r5, r4
	bl getch
	cmp r0, #105
	beq label29
	b label164
label1031:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
label1032:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label337
label1033:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label340
label1034:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label343
label1035:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label346
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label350
label1039:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
label1041:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	b label1029
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
	beq label350
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	bl getch
	cmp r0, #62
	beq label330
label955:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label334
	b label1032
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
	beq label129
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	b label905
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
	beq label129
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
label905:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	b label982
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
	beq label129
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
	b label986
label974:
	bl getch
	cmp r0, #62
	beq label122
	b label976
label984:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
label986:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
label988:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label26
	b label974
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
	b label992
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
	b label1028
label66:
	cmp r8, #93
	bne label70
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	bne label68
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
	b label951
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
label1028:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label951
label992:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label951
label874:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label50
	b label951
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
label994:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label45
	b label994
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
	sub r8, r8, #1
	cmp r9, #91
	bne label57
	b label1008
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
	b label874
label976:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
label977:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label129
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
label981:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
label982:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	b label984
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
	beq label129
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
	b label988
label1008:
	add r8, r8, #1
	cmp r8, #0
	ble label77
label935:
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label62
	sub r8, r8, #1
	cmp r9, #91
	bne label57
	b label1008
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
	b label951
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
	b label1028
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
label951:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label44
	b label1028
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
	b label992
label68:
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
	b label992
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
	b label1028
label990:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label171
	b label990
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
	b label935
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
