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
	b label885
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
	b label965
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
	b label966
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
	b label970
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
	b label1020
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
	b label944
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
	b label1024
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
	b label1025
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
	b label1026
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
	b label1027
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
	b label1031
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
	b label980
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
	b label1020
label361:
	mov r5, r4
	bl getch
	cmp r0, #105
	beq label28
	b label163
label1020:
	bl getch
	cmp r0, #62
	beq label329
	b label1022
label1029:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label352
label1031:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	b label1020
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
	b label941
label159:
	mov r5, #0
	bl getch
	cmp r0, #105
	beq label28
	b label163
label941:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label106
	b label1020
label1022:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
label1023:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label336
label1024:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label339
label1025:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label342
label1026:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label345
label1027:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label348
	b label1029
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
label944:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label333
	b label1023
label885:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	b label964
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
	b label892
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
label892:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
	b label971
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
	b label972
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
	b label897
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
	b label885
label897:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
	b label976
label964:
	bl getch
	cmp r0, #62
	beq label122
label965:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label125
	b label966
label974:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label146
label976:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label25
	b label964
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
	mov r3, r4
	mov r1, r4
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
label982:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label940
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
	b label1019
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
	b label1019
label940:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label43
label1019:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label940
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
label984:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label44
	b label984
label972:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label142
	b label974
label968:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label132
label970:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label136
label971:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label139
	b label972
label966:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label128
	b label968
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
	b label1019
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
	b label940
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
	b label940
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
	b label982
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
	b label1019
label861:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label49
	b label940
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
	b label998
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
	b label861
label998:
	add r8, r8, #1
	cmp r8, #0
	ble label76
	b label923
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
label923:
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label61
	sub r8, r8, #1
	cmp r9, #91
	bne label56
	b label998
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
	b label940
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
	b label982
label980:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label170
	b label980
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
