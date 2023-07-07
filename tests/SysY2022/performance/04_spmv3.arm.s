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
	mov r1, #0
	add r3, r1, #4
	cmp r0, r3
	ble label364
label395:
	ldr r2, [sp, #20]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label364
	b label363
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
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label244
	b label34
label6:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label71
	mov r1, #0
	add r3, r1, #4
	cmp r0, r3
	ble label76
	ldr r2, [sp, #16]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label76
	b label75
label71:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label27
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label20
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label108
	b label17
label75:
	ldr r2, [sp, #16]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label76
	b label75
label76:
	mov r0, r1
	mov r1, #0
	ldr r2, [sp, #16]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
label469:
	mov r0, r1
	mov r1, #0
	ldr r2, [sp, #16]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label88
	b label469
label88:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label27
	add r1, r3, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label20
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label108
	b label17
label108:
	mov r6, r8
	b label18
label27:
	ldr r0, [sp, #24]
	add r0, r0, #1
	cmp r0, #100
	bge label28
	str r0, [sp, #24]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label64
	mov r1, #0
	add r3, r1, #4
	cmp r0, r3
	ble label364
	b label395
label18:
	ldr r2, [sp, #8]
	ldr r7, [r2, r6, lsl #2]
	ldr r2, [sp, #16]
	ldr r8, [r2, r7, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r0, r6
	add r5, r8, r5
	str r5, [r2, r7, lsl #2]
	ble label20
	b label18
label32:
	ldr r2, [sp, #8]
	ldr r7, [r2, r6, lsl #2]
	ldr r2, [sp, #20]
	ldr r8, [r2, r7, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r0, r6
	add r5, r8, r5
	str r5, [r2, r7, lsl #2]
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
	ble label305
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
	ble label305
	b label41
label20:
	cmp r4, r0
	bge label160
	ldr r2, [sp, #20]
	mov r8, r4
	ldr r2, [r2, r3, lsl #2]
	sub r3, r2, #1
	add r4, r4, #4
	cmp r0, r4
	ble label169
label26:
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
	ble label169
	b label26
label169:
	mov r4, r8
label24:
	ldr r2, [sp, #8]
	ldr r6, [r2, r4, lsl #2]
	ldr r2, [sp, #16]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r5, r3, r5, r7
	str r5, [r2, r6, lsl #2]
	ble label185
	b label24
label185:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label27
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label20
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label108
	b label17
label160:
	mov r3, r1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label27
	add r1, r1, #1
	ldr r0, [sp, #0]
	ldr r4, [r0, r3, lsl #2]
	ldr r0, [r0, r1, lsl #2]
	cmp r4, r0
	bge label20
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label108
label17:
	ldr r2, [sp, #8]
	ldr r10, [r2, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r2, [sp, #16]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #12]
	add r9, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r7, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r10, [r9, #4]
	add r8, r8, r10
	str r8, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r10, [r9, #8]
	add r8, r8, r10
	str r8, [r2, r5, lsl #2]
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r9, #12]
	add r7, r7, r8
	mov r8, r6
	str r7, [r2, r5, lsl #2]
	add r6, r6, #4
	cmp r0, r6
	ble label108
	b label17
label34:
	ldr r2, [sp, #8]
	ldr r10, [r2, r8, lsl #2]
	add r7, r2, r8, lsl #2
	ldr r2, [sp, #20]
	ldr r11, [r2, r10, lsl #2]
	ldr r5, [sp, #12]
	add r9, r5, r8, lsl #2
	ldr r5, [r5, r8, lsl #2]
	add r5, r11, r5
	str r5, [r2, r10, lsl #2]
	ldr r5, [r7, #4]
	ldr r8, [r2, r5, lsl #2]
	ldr r10, [r9, #4]
	add r8, r8, r10
	str r8, [r2, r5, lsl #2]
	ldr r5, [r7, #8]
	ldr r8, [r2, r5, lsl #2]
	ldr r10, [r9, #8]
	add r8, r8, r10
	str r8, [r2, r5, lsl #2]
	ldr r5, [r7, #12]
	ldr r7, [r2, r5, lsl #2]
	ldr r8, [r9, #12]
	add r7, r7, r8
	mov r8, r6
	str r7, [r2, r5, lsl #2]
	add r6, r6, #4
	cmp r0, r6
	ble label244
	b label34
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
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label244
	b label34
label244:
	mov r6, r8
	b label32
label364:
	mov r0, r1
	mov r1, #0
	ldr r2, [sp, #20]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	mov r0, r1
	mov r1, #0
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	b label470
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
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label244
	b label34
label305:
	mov r4, r8
label39:
	ldr r2, [sp, #8]
	ldr r6, [r2, r4, lsl #2]
	ldr r2, [sp, #20]
	ldr r7, [r2, r6, lsl #2]
	ldr r5, [sp, #12]
	ldr r5, [r5, r4, lsl #2]
	add r4, r4, #1
	cmp r0, r4
	mla r5, r3, r5, r7
	str r5, [r2, r6, lsl #2]
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
	mov r8, r4
	add r6, r4, #4
	cmp r0, r6
	ble label244
	b label34
label470:
	mov r0, r1
	mov r1, #0
	ldr r2, [sp, #20]
	str r1, [r2, r0, lsl #2]
	add r1, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r1
	ble label371
	b label470
label363:
	ldr r2, [sp, #20]
	mov r4, #0
	add r0, r2, r1, lsl #2
	str r4, [r2, r1, lsl #2]
	mov r1, r3
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #12]
	add r3, r3, #4
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label364
	b label363
label28:
	mov r0, #47
	bl _sysy_stoptime
	ldr r0, [sp, #4]
	ldr r2, [sp, #20]
	mov r1, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
