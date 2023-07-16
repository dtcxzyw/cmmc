.arch armv7ve
.data
.bss
.align 4
x:
	.zero	400040
.align 4
y:
	.zero	12000000
.align 4
v:
	.zero	12000000
.align 4
a:
	.zero	400040
.align 4
b:
	.zero	400040
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r1, #:lower16:x
	sub sp, sp, #36
	movt r1, #:upper16:x
	str r1, [sp, #0]
	mov r0, r1
	bl getarray
	sub r0, r0, #1
	str r0, [sp, #4]
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	str r0, [sp, #8]
	mov r2, r0
	bl getarray
	movw r0, #:lower16:v
	movt r0, #:upper16:v
	str r0, [sp, #12]
	mov r5, r0
	bl getarray
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	str r0, [sp, #16]
	mov r2, r0
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	mov r0, #0
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	str r2, [sp, #20]
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label64
	mov r3, #0
	add r1, r3, #4
	cmp r0, r1
	ble label44
	b label395
label64:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label6
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label35
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	ble label32
label34:
	ldr r2, [sp, #8]
	ldr r10, [r2, r9, lsl #2]
	add r7, r2, r9, lsl #2
	ldr r2, [sp, #20]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #12]
	add r8, r5, r9, lsl #2
	ldr r5, [r5, r9, lsl #2]
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r7, #4]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #4]
	add r9, r9, r10
	str r9, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #8]
	add r9, r9, r10
	str r9, [r2, r5, lsl #2]
	mov r9, r6
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r8, #12]
	add r7, r7, r8
	str r7, [r2, r5, lsl #2]
	add r6, r6, #4
	cmp r0, r6
	ble label32
	b label34
label6:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label71
	mov r3, #0
	add r1, r3, #4
	cmp r0, r1
	ble label26
	ldr r2, [sp, #16]
	mov r4, #0
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label26
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label26
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label26
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label26
	b label453
label71:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label22
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label15
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	ble label13
	b label12
label39:
	ldr r2, [sp, #8]
	ldr r4, [r2, r8, lsl #2]
	ldr r2, [sp, #20]
	ldr r6, [r2, r4, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	mla r5, r3, r5, r6
	str r5, [r2, r4, lsl #2]
	ble label321
	b label39
label321:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label6
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label35
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	ble label32
	b label34
label32:
	ldr r2, [sp, #8]
	ldr r6, [r2, r9, lsl #2]
	ldr r2, [sp, #20]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r9, lsl #2]
	add r9, r9, #1
	cmp r0, r9
	add r5, r7, r5
	str r5, [r2, r6, lsl #2]
	ble label35
	b label32
label35:
	cmp r4, r0
	bge label296
	ldr r2, [sp, #16]
	mov r8, r4
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	add r4, r4, #4
	cmp r0, r4
	ble label39
	b label41
label296:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label6
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label35
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	ble label32
	b label34
label41:
	ldr r2, [sp, #8]
	ldr r9, [r2, r8, lsl #2]
	add r6, r2, r8, lsl #2
	ldr r2, [sp, #20]
	ldr r10, [r2, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	mla r5, r3, r5, r10
	str r5, [r2, r9, lsl #2]
	ldr r5, [r6, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #4]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	ldr r5, [r6, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #8]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	mov r8, r4
	ldr r5, [r6, #12]
	ldr r6, [r2, r5, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r3, r7, r6
	str r6, [r2, r5, lsl #2]
	add r4, r4, #4
	cmp r0, r4
	ble label39
	b label41
label44:
	mov r0, #0
	ldr r2, [sp, #20]
	str r0, [r2, r3, lsl #2]
	ldr r0, [sp, #4]
	add r3, r3, #1
	cmp r0, r3
	ble label371
	b label44
label371:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label6
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label35
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	ble label32
	b label34
label395:
	ldr r2, [sp, #20]
	mov r4, #0
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label44
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label44
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label44
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label44
	b label452
label12:
	ldr r2, [sp, #8]
	ldr r10, [r2, r9, lsl #2]
	add r7, r2, r9, lsl #2
	ldr r2, [sp, #16]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #12]
	add r8, r5, r9, lsl #2
	ldr r5, [r5, r9, lsl #2]
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r7, #4]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #4]
	add r9, r9, r10
	str r9, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r9, [r2, r5, lsl #2]
	ldr r10, [r8, #8]
	add r9, r9, r10
	str r9, [r2, r5, lsl #2]
	mov r9, r6
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r8, #12]
	add r7, r7, r8
	str r7, [r2, r5, lsl #2]
	add r6, r6, #4
	cmp r0, r6
	ble label13
	b label12
label15:
	cmp r4, r0
	bge label143
	ldr r2, [sp, #20]
	mov r8, r4
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	add r4, r4, #4
	cmp r0, r4
	ble label19
	b label21
label143:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label22
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label15
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	ble label13
	b label12
label22:
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	bge label23
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label64
	mov r3, #0
	add r1, r3, #4
	cmp r0, r1
	ble label44
	b label395
label23:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #4]
	ldr r2, [sp, #20]
	mov r1, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label21:
	ldr r2, [sp, #8]
	ldr r9, [r2, r8, lsl #2]
	add r6, r2, r8, lsl #2
	ldr r2, [sp, #16]
	ldr r10, [r2, r9, lsl #2]
	ldr r5, [sp, #12]
	add r7, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	mla r5, r3, r5, r10
	str r5, [r2, r9, lsl #2]
	ldr r5, [r6, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #4]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	ldr r5, [r6, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r9, [r7, #8]
	mla r8, r3, r9, r8
	str r8, [r2, r5, lsl #2]
	mov r8, r4
	ldr r5, [r6, #12]
	ldr r6, [r2, r5, lsl #2]
	ldr r7, [r7, #12]
	mla r6, r3, r7, r6
	str r6, [r2, r5, lsl #2]
	add r4, r4, #4
	cmp r0, r4
	ble label19
	b label21
label26:
	mov r0, #0
	ldr r2, [sp, #16]
	str r0, [r2, r3, lsl #2]
	ldr r0, [sp, #4]
	add r3, r3, #1
	cmp r0, r3
	ble label223
	b label26
label223:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label22
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label15
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	ble label13
	b label12
label19:
	ldr r2, [sp, #8]
	ldr r4, [r2, r8, lsl #2]
	ldr r2, [sp, #16]
	ldr r6, [r2, r4, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	mla r5, r3, r5, r6
	str r5, [r2, r4, lsl #2]
	ble label168
	b label19
label168:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label22
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label15
	mov r9, r4
	add r6, r4, #4
	cmp r0, r6
	ble label13
	b label12
label13:
	ldr r2, [sp, #8]
	ldr r6, [r2, r9, lsl #2]
	ldr r2, [sp, #16]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r9, lsl #2]
	add r9, r9, #1
	cmp r0, r9
	add r5, r7, r5
	str r5, [r2, r6, lsl #2]
	ble label15
	b label13
label452:
	ldr r2, [sp, #20]
	mov r4, #0
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label44
	b label452
label453:
	ldr r2, [sp, #16]
	mov r4, #0
	add r0, r2, r3, lsl #2
	str r4, [r2, r3, lsl #2]
	mov r3, r1
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r1, r1, #4
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label26
	b label453
