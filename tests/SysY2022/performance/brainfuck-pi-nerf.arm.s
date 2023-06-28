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
	beq label125
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	b label912
label122:
	mov r1, #0
	cmp r1, #0
	beq label125
	cmp r0, #43
	movwne r1, #1
	cmp r1, #0
	beq label128
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	bl getch
	cmp r0, #62
	beq label122
	b label992
label125:
	mov r1, #0
	cmp r1, #0
	beq label128
	cmp r0, #45
	movwne r1, #1
	cmp r1, #0
	beq label132
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	b label993
label128:
	mov r1, #0
	cmp r1, #0
	beq label132
	cmp r0, #91
	movwne r1, #1
	cmp r1, #0
	beq label136
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
	b label997
label25:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	str r9, [sp, #2052]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #2056]
	cmp r0, #35
	beq label159
	mov r4, #0
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	beq label329
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	b label1047
label333:
	mov r1, #0
	cmp r1, #0
	beq label336
	cmp r0, #45
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	bl getch
	cmp r0, #62
	beq label329
	b label971
label336:
	mov r1, #0
	cmp r1, #0
	beq label339
	cmp r0, #91
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	bl getch
	cmp r0, #62
	beq label329
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	b label1051
label339:
	mov r1, #0
	cmp r1, #0
	beq label342
	cmp r0, #93
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	bl getch
	cmp r0, #62
	beq label329
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	b label1052
label342:
	mov r1, #0
	cmp r1, #0
	beq label345
	cmp r0, #46
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	bl getch
	cmp r0, #62
	beq label329
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	b label1053
label345:
	mov r1, #0
	cmp r1, #0
	beq label348
	cmp r0, #44
	movwne r1, #1
	cmp r1, #0
	beq label352
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	bl getch
	cmp r0, #62
	beq label329
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	b label1054
label348:
	mov r1, #0
	cmp r1, #0
	beq label352
	cmp r0, #35
	movwne r1, #1
	cmp r1, #0
	beq label106
	bl getch
	cmp r0, #62
	beq label329
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	b label1058
label163:
	mov r6, #0
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label34
label28:
	bl getint
	mov r6, r0
	bl getch
	mov r4, #0
	cmp r4, r6
	bge label170
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	b label1007
label106:
	add r4, r4, #1
	cmp r0, #35
	beq label361
	ldr r9, [sp, #2052]
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	beq label329
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	b label1047
label361:
	mov r5, r4
	bl getch
	cmp r0, #105
	beq label28
	b label163
label1047:
	bl getch
	cmp r0, #62
	beq label329
	b label1049
label1056:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
label1058:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	b label1047
label352:
	mov r1, #0
	cmp r1, #0
	beq label106
	bl getch
	cmp r0, #62
	beq label329
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	b label968
label159:
	mov r5, #0
	bl getch
	cmp r0, #105
	beq label28
	b label163
label968:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	b label1047
label1049:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
label1050:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
label1051:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
label1052:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
label1053:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
label1054:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	b label1056
label329:
	mov r1, #0
	cmp r1, #0
	beq label333
	cmp r0, #43
	movwne r1, #1
	cmp r1, #0
	beq label336
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	bl getch
	cmp r0, #62
	beq label329
label971:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	b label1050
label912:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	b label991
label132:
	mov r1, #0
	cmp r1, #0
	beq label136
	cmp r0, #93
	movwne r1, #1
	cmp r1, #0
	beq label139
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
	b label919
label136:
	mov r1, #0
	cmp r1, #0
	beq label139
	cmp r0, #46
	movwne r1, #1
	cmp r1, #0
	beq label142
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
label919:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
	b label998
label139:
	mov r1, #0
	cmp r1, #0
	beq label142
	cmp r0, #44
	movwne r1, #1
	cmp r1, #0
	beq label146
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	b label999
label142:
	mov r1, #0
	cmp r1, #0
	beq label146
	cmp r0, #35
	movwne r1, #1
	cmp r1, #0
	beq label25
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	b label924
label146:
	mov r1, #0
	cmp r1, #0
	beq label25
	bl getch
	cmp r0, #62
	beq label122
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	b label912
label924:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	b label1003
label991:
	bl getch
	cmp r0, #62
	beq label122
label992:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	b label993
label1001:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
label1003:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	b label991
label34:
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
	bge label36
	b label34
label36:
	movw r7, #:lower16:tape
	movt r7, #:upper16:tape
	mov r4, #0
	mov r1, r4
	mov r3, r4
	mov r2, r4
	mov r0, r4
	cmp r4, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r4, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r4, #1
	add r0, r4, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
label1009:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label967
label49:
	cmp r8, #60
	bne label51
	sub r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	b label1046
label51:
	cmp r8, #43
	bne label52
	ldr r8, [r7, r2, lsl #2]
	add r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	b label1046
label967:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
label1046:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label967
label43:
	mov r0, #118
	bl _sysy_stoptime
	movw r5, #:lower16:output
	movt r5, #:upper16:output
	cmp r4, #0
	ble label44
	mov r6, #0
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
label1011:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	b label1011
label999:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	b label1001
label995:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
label997:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
label998:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	b label999
label993:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	b label995
label52:
	cmp r8, #45
	bne label54
	ldr r8, [r7, r2, lsl #2]
	sub r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	b label1046
label54:
	cmp r8, #91
	bne label65
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	beq label252
	ldr r8, [sp, #2048]
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label967
label65:
	cmp r8, #93
	bne label69
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	bne label68
	sub r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label967
label68:
	sub r0, r1, #1
	ldr r8, [sp, #2048]
	ldr r0, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	b label1009
label69:
	cmp r8, #46
	bne label70
	movw r8, #:lower16:output
	movt r8, #:upper16:output
	ldr r9, [r7, r2, lsl #2]
	str r9, [r8, r4, lsl #2]
	add r4, r4, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	b label1046
label888:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label967
label252:
	mov r8, #1
label56:
	cmp r8, #0
	ble label76
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label61
	sub r8, r8, #1
	cmp r9, #91
	bne label56
	add r8, r8, #1
	cmp r8, #0
	ble label76
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label61
	sub r8, r8, #1
	cmp r9, #91
	bne label56
	add r8, r8, #1
	cmp r8, #0
	ble label76
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label61
	sub r8, r8, #1
	cmp r9, #91
	bne label56
	b label1025
label76:
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	b label888
label1025:
	add r8, r8, #1
	cmp r8, #0
	ble label76
	b label950
label61:
	cmp r9, #91
	bne label56
	add r8, r8, #1
	cmp r8, #0
	ble label76
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label61
	sub r8, r8, #1
	cmp r9, #91
	bne label56
	add r8, r8, #1
	cmp r8, #0
	ble label76
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label61
	sub r8, r8, #1
	cmp r9, #91
	bne label56
	add r8, r8, #1
	cmp r8, #0
	ble label76
label950:
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label61
	sub r8, r8, #1
	cmp r9, #91
	bne label56
	b label1025
label70:
	cmp r8, #44
	bne label76
	cmp r3, r6
	blt label72
	mov r8, #0
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label967
label72:
	ldr r8, [sp, #2056]
	ldr r8, [r8, r3, lsl #2]
	str r8, [r7, r2, lsl #2]
	add r3, r3, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
	b label1009
label1007:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	b label1007
label44:
	mov r0, #0
	movw r12, #2068
	add sp, sp, r12
	pop { r4, r5, r6, r7, r8, r9, pc }
label170:
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label34
