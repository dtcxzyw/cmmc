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
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label138
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label27
	b label996
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
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label138
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
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
	b label1000
label149:
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
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label138
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	b label930
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
	b label1055
label161:
	mov r5, #0
	bl getch
	cmp r0, #105
	beq label80
	b label165
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
	b label978
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
	b label1059
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
	b label1060
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
	b label1061
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
	b label1062
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
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
	b label1066
label165:
	mov r6, #0
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label32
label80:
	bl getint
	mov r6, r0
	bl getch
	mov r4, #0
	cmp r4, r6
	bge label30
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	b label1053
label1055:
	bl getch
	cmp r0, #62
	beq label331
	b label1057
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
	b label975
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
	b label1055
label363:
	mov r5, r4
	bl getch
	cmp r0, #105
	beq label80
	b label165
label1057:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
label1058:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label338
label1059:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label341
label1060:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label344
label1061:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label347
	b label1062
label1064:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label354
label1066:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	b label1055
label975:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label108
	b label1055
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
label978:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label335
	b label1058
label1062:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label350
	b label1064
label138:
	mov r1, #0
	cmp r1, #0
	beq label141
	cmp r0, #46
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
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
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	b label925
label141:
	mov r1, #0
	cmp r1, #0
	beq label145
	cmp r0, #44
	movwne r1, #1
	cmp r1, #0
	beq label149
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
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label138
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	b label1009
label996:
	bl getch
	cmp r0, #62
	beq label122
	b label998
label1007:
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
label1009:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
label1010:
	cmp r0, #35
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label27
	b label996
label32:
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
	bge label34
	b label32
label34:
	movw r7, #:lower16:tape
	movt r7, #:upper16:tape
	mov r4, #0
	mov r3, r4
	mov r1, r4
	mov r2, r4
	mov r0, r4
	cmp r4, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r4, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r4, #1
	add r0, r4, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	b label1015
label41:
	mov r0, #118
	bl _sysy_stoptime
	movw r5, #:lower16:output
	movt r5, #:upper16:output
	cmp r4, #0
	ble label42
	mov r6, #0
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
label1017:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r6, r6, #1
	cmp r6, r4
	bge label42
	b label1017
label1015:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
label972:
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
label1052:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	b label972
label126:
	mov r1, #0
	cmp r1, #0
	beq label130
	cmp r0, #45
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label138
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
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
	beq label130
	b label1002
label145:
	mov r1, #0
	cmp r1, #0
	beq label149
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
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label138
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
label930:
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
	b label1010
label130:
	mov r1, #0
	cmp r1, #0
	beq label134
	cmp r0, #91
	movwne r1, #1
	cmp r1, #0
	beq label138
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
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
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
	b label1004
label134:
	mov r1, #0
	cmp r1, #0
	beq label138
	cmp r0, #93
	movwne r1, #1
	cmp r1, #0
	beq label141
	cmp r0, #46
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label145
	cmp r0, #44
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label149
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
	beq label130
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
label925:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label138
	b label1005
label998:
	cmp r0, #60
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label126
label1000:
	cmp r0, #43
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label130
label1002:
	cmp r0, #45
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label134
label1004:
	cmp r0, #91
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label138
label1005:
	cmp r0, #93
	mov r1, #0
	movwne r1, #1
	cmp r1, #0
	beq label141
	b label1007
label47:
	cmp r8, #60
	bne label49
	sub r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	b label1052
label49:
	cmp r8, #43
	bne label50
	ldr r8, [r7, r2, lsl #2]
	add r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	b label1052
label50:
	cmp r8, #45
	bne label52
	ldr r8, [r7, r2, lsl #2]
	sub r8, r8, #1
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	b label1052
label52:
	cmp r8, #91
	bne label63
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	beq label244
	ldr r8, [sp, #2048]
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	b label972
label63:
	cmp r8, #93
	bne label67
	ldr r8, [r7, r2, lsl #2]
	cmp r8, #0
	bne label66
	sub r1, r1, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	b label972
label67:
	cmp r8, #46
	bne label68
	movw r8, #:lower16:output
	movt r8, #:upper16:output
	ldr r9, [r7, r2, lsl #2]
	str r9, [r8, r4, lsl #2]
	add r4, r4, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	b label1052
label892:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	b label972
label244:
	mov r8, #1
label54:
	cmp r8, #0
	ble label74
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label59
	sub r8, r8, #1
	cmp r9, #91
	bne label54
	add r8, r8, #1
	cmp r8, #0
	ble label74
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label59
	sub r8, r8, #1
	cmp r9, #91
	bne label54
	add r8, r8, #1
	cmp r8, #0
	ble label74
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label59
	sub r8, r8, #1
	cmp r9, #91
	bne label54
	b label1031
label59:
	cmp r9, #91
	bne label54
	add r8, r8, #1
	cmp r8, #0
	ble label74
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label59
	sub r8, r8, #1
	cmp r9, #91
	bne label54
	add r8, r8, #1
	cmp r8, #0
	ble label74
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label59
	sub r8, r8, #1
	cmp r9, #91
	bne label54
	add r8, r8, #1
	cmp r8, #0
	ble label74
	b label955
label74:
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	b label892
label1031:
	add r8, r8, #1
	cmp r8, #0
	ble label74
label955:
	add r0, r0, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r0, lsl #2]
	cmp r9, #93
	bne label59
	sub r8, r8, #1
	cmp r9, #91
	bne label54
	b label1031
label66:
	sub r0, r1, #1
	ldr r8, [sp, #2048]
	ldr r0, [r8, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	b label1015
label68:
	cmp r8, #44
	bne label74
	cmp r3, r6
	blt label70
	mov r8, #0
	str r8, [r7, r2, lsl #2]
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	b label972
label70:
	ldr r8, [sp, #2056]
	ldr r8, [r8, r3, lsl #2]
	str r8, [r7, r2, lsl #2]
	add r3, r3, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	ldr r9, [sp, #2052]
	ldr r8, [r9, r0, lsl #2]
	cmp r8, #62
	bne label47
	add r2, r2, #1
	add r0, r0, #1
	cmp r0, r5
	bge label41
	b label1015
label1053:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, r6
	bge label30
	b label1053
label42:
	mov r0, #0
	movw r12, #2068
	add sp, sp, r12
	pop { r4, r5, r6, r7, r8, r9, pc }
label30:
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label32
