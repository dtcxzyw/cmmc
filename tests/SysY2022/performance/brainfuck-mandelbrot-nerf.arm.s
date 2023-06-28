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
	b label910
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
	beq label27
	bl getch
	cmp r0, #62
	beq label122
	b label913
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
	beq label27
	bl getch
	cmp r0, #62
	beq label122
label913:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
	b label992
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
	beq label27
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
	b label917
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
	beq label27
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
	b label918
label917:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
	b label996
label918:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
	b label997
label27:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	str r9, [sp, #2052]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #2056]
	cmp r0, #35
	beq label161
	mov r4, #0
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	beq label331
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
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
	b label1047
label161:
	mov r5, #0
	bl getch
	cmp r0, #105
	beq label30
	b label165
label968:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	b label1047
label335:
	mov r1, #0
	cmp r1, #0
	beq label338
	cmp r0, #45
	movwne r1, #1
	cmp r1, #0
	beq label341
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
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
	beq label331
	b label971
label338:
	mov r1, #0
	cmp r1, #0
	beq label341
	cmp r0, #91
	movwne r1, #1
	cmp r1, #0
	beq label344
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
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
	beq label331
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
	b label1051
label341:
	mov r1, #0
	cmp r1, #0
	beq label344
	cmp r0, #93
	movwne r1, #1
	cmp r1, #0
	beq label347
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
	beq label331
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
	b label1052
label344:
	mov r1, #0
	cmp r1, #0
	beq label347
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
	beq label331
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
	b label1053
label347:
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
	beq label331
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
	b label1054
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
	beq label331
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label350
	b label979
label354:
	mov r1, #0
	cmp r1, #0
	beq label108
	bl getch
	cmp r0, #62
	beq label331
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
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
	b label968
label979:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	b label1058
label165:
	mov r6, #0
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label36
label30:
	bl getint
	mov r6, r0
	bl getch
	mov r4, #0
	cmp r4, r6
	bge label172
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	b label1007
label1047:
	bl getch
	cmp r0, #62
	beq label331
	b label1049
label108:
	add r4, r4, #1
	cmp r0, #35
	beq label363
	ldr r9, [sp, #2052]
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	beq label331
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
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
	b label1047
label363:
	mov r5, r4
	bl getch
	cmp r0, #105
	beq label30
	b label165
label331:
	mov r1, #0
	cmp r1, #0
	beq label335
	cmp r0, #43
	movwne r1, #1
	cmp r1, #0
	beq label338
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
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
	beq label331
label971:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	b label1050
label1049:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
label1050:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
label1051:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
label1052:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
label1053:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
	b label1054
label1056:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
label1058:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	b label1047
label1054:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label350
	b label1056
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
	beq label27
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
	b label918
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
	beq label27
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
	b label1001
label36:
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
	bge label38
	b label36
label38:
	movw r7, #:lower16:tape
	movt r7, #:upper16:tape
	mov r4, #0
	mov r3, r4
	mov r1, r4
	mov r2, r4
	mov r0, r4
	cmp r4, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r4, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r4, #1
	add r0, r4, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	b label1009
label45:
	mov r0, #118
	bl _sysy_stoptime
	movw r5, #:lower16:output
	movt r5, #:upper16:output
	cmp r4, #0
	ble label46
	mov r6, #0
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
label1011:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label46
	b label1011
label51:
	cmp r8, #60
	bne label53
	sub r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	b label1046
label53:
	cmp r8, #43
	bne label54
	ldr r8, [r7, r2, lsl #2]
	add r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	b label1046
label54:
	cmp r8, #45
	bne label56
	ldr r8, [r7, r2, lsl #2]
	sub r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	b label1046
label56:
	cmp r8, #91
	bne label67
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	beq label254
	ldr r8, [sp, #2048]
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	b label967
label67:
	cmp r8, #93
	bne label71
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	bne label70
	sub r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	b label967
label70:
	sub r0, r1, #1
	ldr r8, [sp, #2048]
	ldr r0, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	b label1009
label71:
	cmp r8, #46
	bne label72
	movw r8, #:lower16:output
	movt r8, #:upper16:output
	ldr r9, [r7, r2, lsl #2]
	str r9, [r8, r4, lsl #2]
	add r4, r4, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	b label1046
label967:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
label1046:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	b label967
label1009:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	b label967
label910:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label27
	b label989
label148:
	mov r1, #0
	cmp r1, #0
	beq label27
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
	b label910
label989:
	bl getch
	cmp r0, #62
	beq label122
	b label991
label999:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label144
label1001:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label148
label1003:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label27
	b label989
label254:
	mov r8, #1
label58:
	cmp r8, #0
	ble label78
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label63
	sub r8, r8, #1
	cmp r9, #91
	bne label58
	add r8, r8, #1
	cmp r8, #0
	ble label78
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label63
	sub r8, r8, #1
	cmp r9, #91
	bne label58
	add r8, r8, #1
	cmp r8, #0
	ble label78
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label63
	sub r8, r8, #1
	cmp r9, #91
	bne label58
	b label1025
label63:
	cmp r9, #91
	bne label58
	add r8, r8, #1
	cmp r8, #0
	ble label78
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label63
	sub r8, r8, #1
	cmp r9, #91
	bne label58
	add r8, r8, #1
	cmp r8, #0
	ble label78
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label63
	sub r8, r8, #1
	cmp r9, #91
	bne label58
	add r8, r8, #1
	cmp r8, #0
	ble label78
	b label950
label78:
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	b label967
label994:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label133
label996:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label137
label997:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label140
	b label999
label991:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
label992:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label129
	b label994
label144:
	mov r1, #0
	cmp r1, #0
	beq label148
	cmp r0, #35
	movwne r1, #1
	cmp r1, #0
	beq label27
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
	b label1003
label950:
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label63
	b label1029
label72:
	cmp r8, #44
	bne label78
	cmp r3, r6
	blt label74
	mov r8, #0
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	b label967
label74:
	ldr r8, [sp, #2056]
	ldr r8, [r8, r3, lsl #2]
	str r8, [r7, r2, lsl #2]
	add r3, r3, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label51
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label45
	b label1009
label1007:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label172
	b label1007
label1025:
	add r8, r8, #1
	cmp r8, #0
	ble label78
	b label950
label1029:
	sub r8, r8, #1
	cmp r9, #91
	bne label58
	b label1025
label46:
	mov r0, #0
	movw r12, #2068
	add sp, sp, r12
	pop { r4, r5, r6, r7, r8, r9, pc }
label172:
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label36
