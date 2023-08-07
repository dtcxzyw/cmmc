.arch armv7ve
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	sub sp, sp, #36
	bl getarray
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r4, r0
	mov r0, r1
	bl getarray
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	mov r0, r5
	bl getarray
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r0, r1
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	sub r2, r4, #5
	sub r0, r4, #1
	str r0, [sp, #28]
	sub r0, r4, #21
	str r2, [sp, #24]
	str r0, [sp, #20]
	mov r0, #0
	str r0, [sp, #16]
	ldr r0, [sp, #28]
	cmp r0, #0
	bgt label85
	b label125
.p2align 4
label11:
	add r1, r2, #1
	str r1, [sp, #8]
	ldr r0, [sp, #0]
	ldr r3, [r0, #0]
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, r1, lsl #2]
	cmp r3, r0
	bge label145
	add r4, r3, #4
	sub r6, r0, #4
	cmp r0, r4
	bgt label14
	b label13
.p2align 4
label276:
	ldr r0, [sp, #0]
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #28]
	mov r2, r1
	cmp r0, r1
	bgt label11
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	bge label37
.p2align 4
label287:
	str r0, [sp, #16]
	ldr r0, [sp, #28]
	cmp r0, #0
	ble label125
.p2align 4
label85:
	ldr r0, [sp, #28]
	cmp r0, #4
	ble label480
	ldr r2, [sp, #24]
	cmp r2, #16
	ble label489
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mov r2, #0
.p2align 4
label99:
	mov r0, #0
	add r2, r2, #16
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	ldr r0, [sp, #20]
	cmp r0, r2
	ble label520
	add r1, r1, #64
	b label99
.p2align 4
label14:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r8, r3
	add r7, r1, r3, lsl #2
.p2align 4
label15:
	ldr r5, [r7, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r9, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r6, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r1, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r1, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r1, r1, r9, lsl #2
	ldr r9, [r1, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r1, #0]
	ble label18
	add r7, r7, #16
	b label15
.p2align 4
label18:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r6, r1, r8, lsl #2
.p2align 4
label20:
	ldr r5, [r6, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r1, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r7, [r1, #0]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	add r5, r7, r5
	str r5, [r1, #0]
	ble label208
	add r6, r6, #4
	b label20
.p2align 4
label208:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	cmp r0, r4
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ble label623
	mov r6, r3
.p2align 4
label25:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r3, r1, r6, lsl #2
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	ldr r5, [r3, #0]
	add r7, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	add r5, r5, r6, lsl #2
	ldr r6, [r5, #0]
	mla r6, r2, r6, r8
	str r6, [r7, #0]
	ldr r6, [r3, #4]
	add r6, r1, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #4]
	mla r7, r2, r8, r7
	str r7, [r6, #0]
	ldr r6, [r3, #8]
	add r6, r1, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #8]
	mla r7, r2, r8, r7
	str r7, [r6, #0]
	ldr r3, [r3, #12]
	add r1, r1, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r5, #12]
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	add r1, r4, #4
	cmp r0, r1
	ble label259
	mov r6, r4
	mov r4, r1
	b label25
.p2align 4
label259:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r6, r1, r4, lsl #2
.p2align 4
label29:
	ldr r3, [r6, #0]
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	add r1, r1, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	ble label276
	add r6, r6, #4
	b label29
.p2align 4
label13:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r8, r3
	add r6, r1, r3, lsl #2
	b label20
.p2align 4
label93:
	mov r2, #0
	add r0, r0, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label497
.p2align 4
label96:
	add r1, r1, #16
	b label93
.p2align 4
label520:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r1, r1, r2, lsl #2
	add r0, r2, #4
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #24]
	cmp r2, r0
	bgt label96
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r1, r1, r0, lsl #2
	add r2, r0, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label89
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label59
	b label7
label132:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label11
	b label136
.p2align 4
label39:
	ldr r0, [sp, #28]
	cmp r0, #4
	bgt label41
	b label40
.p2align 4
label59:
	add r1, r2, #1
	str r1, [sp, #12]
	ldr r0, [sp, #4]
	ldr r3, [r0, #0]
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, r1, lsl #2]
	cmp r3, r0
	bge label60
	add r4, r3, #4
	sub r6, r0, #4
	cmp r0, r4
	bgt label78
	b label62
.p2align 4
label384:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r1, [sp, #12]
	ldr r0, [sp, #28]
	mov r2, r1
	cmp r0, r1
	bgt label59
	cmp r0, #0
	bgt label39
	b label132
.p2align 4
label78:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r8, r3
	add r7, r1, r3, lsl #2
.p2align 4
label79:
	ldr r5, [r7, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r9, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r6, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r1, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r1, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r1, r1, r9, lsl #2
	ldr r9, [r1, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r1, #0]
	ble label474
	add r7, r7, #16
	b label79
.p2align 4
label41:
	ldr r2, [sp, #24]
	cmp r2, #16
	ble label42
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r2, #0
.p2align 4
label49:
	mov r0, #0
	add r2, r2, #16
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	str r0, [r1, #20]
	str r0, [r1, #24]
	str r0, [r1, #28]
	str r0, [r1, #32]
	str r0, [r1, #36]
	str r0, [r1, #40]
	str r0, [r1, #44]
	str r0, [r1, #48]
	str r0, [r1, #52]
	str r0, [r1, #56]
	str r0, [r1, #60]
	ldr r0, [sp, #20]
	cmp r0, r2
	ble label52
	add r1, r1, #64
	b label49
.p2align 4
label62:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r8, r3
	add r6, r1, r3, lsl #2
.p2align 4
label63:
	ldr r5, [r6, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r1, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r7, [r1, #0]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	add r5, r7, r5
	str r5, [r1, #0]
	ble label66
	add r6, r6, #4
	b label63
.p2align 4
label66:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	cmp r0, r4
	ldr r1, [r1, r2, lsl #2]
	sub r2, r1, #1
	ble label370
	mov r6, r3
.p2align 4
label73:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r3, r1, r6, lsl #2
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r5, [r3, #0]
	add r7, r1, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	add r5, r5, r6, lsl #2
	ldr r6, [r5, #0]
	mla r6, r2, r6, r8
	str r6, [r7, #0]
	ldr r6, [r3, #4]
	add r6, r1, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #4]
	mla r7, r2, r8, r7
	str r7, [r6, #0]
	ldr r6, [r3, #8]
	add r6, r1, r6, lsl #2
	ldr r7, [r6, #0]
	ldr r8, [r5, #8]
	mla r7, r2, r8, r7
	str r7, [r6, #0]
	ldr r3, [r3, #12]
	add r1, r1, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r5, #12]
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	add r1, r4, #4
	cmp r0, r1
	ble label431
	mov r6, r4
	mov r4, r1
	b label73
.p2align 4
label86:
	mov r0, #0
	add r2, r2, #1
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	ble label485
.p2align 4
label89:
	add r1, r1, #4
	b label86
.p2align 4
label497:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	add r1, r1, r0, lsl #2
	add r2, r0, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label89
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label59
	b label7
.p2align 4
label43:
	mov r2, #0
	add r0, r0, #4
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #24]
	cmp r2, r0
	ble label46
.p2align 4
label47:
	add r1, r1, #16
	b label43
.p2align 4
label52:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r1, r1, r2, lsl #2
	add r0, r2, #4
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #12]
	ldr r2, [sp, #24]
	cmp r2, r0
	bgt label47
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r1, r1, r0, lsl #2
	add r2, r0, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label57
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label11
	b label136
.p2align 4
label46:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	add r1, r1, r0, lsl #2
	add r2, r0, #1
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label57
	b label628
.p2align 4
label54:
	mov r0, #0
	add r2, r2, #1
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	ble label331
.p2align 4
label57:
	add r1, r1, #4
	b label54
label7:
	ldr r0, [sp, #28]
	cmp r0, #0
	bgt label39
	b label132
.p2align 4
label60:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r1, [sp, #12]
	ldr r0, [sp, #28]
	mov r2, r1
	cmp r0, r1
	bgt label59
	b label7
.p2align 4
label40:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r2, #0
	mov r0, #0
	add r2, r2, #1
	str r0, [r1, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label57
	b label132
.p2align 4
label42:
	movw r1, #:lower16:a
	movt r1, #:upper16:a
	mov r0, #0
	b label43
label125:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label59
	b label7
label136:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	blt label287
	b label37
.p2align 4
label145:
	ldr r0, [sp, #0]
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #28]
	mov r2, r1
	cmp r0, r1
	bgt label11
	b label136
.p2align 4
label485:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label59
	b label7
.p2align 4
label331:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label11
	b label136
label37:
	mov r0, #47
	bl _sysy_stoptime
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	ldr r0, [sp, #28]
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label628:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r2, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r2
	bgt label11
	b label136
.p2align 4
label474:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r6, r1, r8, lsl #2
	b label63
.p2align 4
label370:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r4, r3
	add r6, r1, r3, lsl #2
.p2align 4
label67:
	ldr r3, [r6, #0]
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	add r1, r1, r3, lsl #2
	ldr r3, [r1, #0]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r3, r2, r5, r3
	str r3, [r1, #0]
	ble label384
	add r6, r6, #4
	b label67
.p2align 4
label480:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mov r2, #0
	b label86
.p2align 4
label489:
	movw r1, #:lower16:b
	movt r1, #:upper16:b
	mov r0, #0
	b label93
.p2align 4
label623:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	mov r4, r3
	add r6, r1, r3, lsl #2
	b label29
.p2align 4
label431:
	movw r1, #:lower16:y
	movt r1, #:upper16:y
	add r6, r1, r4, lsl #2
	b label67
