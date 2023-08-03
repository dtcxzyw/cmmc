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
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	mov r4, r0
	mov r0, r2
	bl getarray
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	mov r0, r5
	bl getarray
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r0, r2
	bl getarray
	mov r0, #39
	bl _sysy_starttime
	sub r1, r4, #5
	sub r0, r4, #1
	str r0, [sp, #28]
	sub r0, r4, #21
	str r1, [sp, #24]
	str r0, [sp, #20]
	mov r0, #0
	str r0, [sp, #16]
	ldr r0, [sp, #28]
	cmp r0, #0
	bgt label4
label129:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, #0
	str r0, [sp, #4]
	b label25
.p2align 4
label4:
	ldr r0, [sp, #28]
	cmp r0, #4
	bgt label10
	b label132
label25:
	ldr r0, [sp, #28]
	cmp r0, r4
	bgt label28
	b label179
.p2align 4
label60:
	add r1, r4, #1
	str r1, [sp, #8]
	ldr r0, [sp, #0]
	ldr r3, [r0, #0]
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, r1, lsl #2]
	cmp r3, r0
	bge label340
	add r6, r3, #4
	sub r1, r0, #4
	cmp r0, r6
	bgt label79
	b label346
.p2align 4
label429:
	ldr r0, [sp, #0]
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #28]
	mov r4, r1
	cmp r0, r1
	bgt label60
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	bge label88
.p2align 4
label482:
	str r0, [sp, #16]
	ldr r0, [sp, #28]
	cmp r0, #0
	bgt label4
	b label129
.p2align 4
label79:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	mov r8, r3
	add r7, r2, r3, lsl #2
.p2align 4
label80:
	ldr r5, [r7, #0]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r9, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r1, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r2, r2, r9, lsl #2
	ldr r9, [r2, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r2, #0]
	ble label470
	add r7, r7, #16
	b label80
.p2align 4
label62:
	ldr r5, [r7, #0]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r2, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r9, [r2, #0]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	add r5, r9, r5
	str r5, [r2, #0]
	ble label359
	add r7, r7, #4
	b label62
.p2align 4
label470:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r7, r2, r8, lsl #2
	b label62
.p2align 4
label359:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	cmp r0, r6
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	ble label638
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r6, r2, r3, lsl #2
.p2align 4
label68:
	ldr r5, [r6, #0]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r7, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	add r5, r5, r3, lsl #2
	add r3, r3, #4
	ldr r9, [r5, #0]
	cmp r1, r3
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #12]
	add r2, r2, r7, lsl #2
	ldr r7, [r2, #0]
	ldr r5, [r5, #12]
	mla r5, r4, r5, r7
	str r5, [r2, #0]
	ble label638
	add r6, r6, #16
	b label68
.p2align 4
label638:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r1, r2, r3, lsl #2
.p2align 4
label74:
	ldr r5, [r1, #0]
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r2, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r6, [r2, #0]
	ldr r5, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r3
	mla r5, r4, r5, r6
	str r5, [r2, #0]
	ble label429
	add r1, r1, #4
	b label74
.p2align 4
label28:
	add r1, r4, #1
	str r1, [sp, #12]
	ldr r0, [sp, #4]
	ldr r3, [r0, #0]
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	ldr r0, [r0, r1, lsl #2]
	cmp r3, r0
	bge label188
	add r6, r3, #4
	sub r1, r0, #4
	cmp r0, r6
	bgt label48
	b label194
.p2align 4
label231:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r1, [sp, #12]
	ldr r0, [sp, #28]
	mov r4, r1
	cmp r0, r1
	bgt label28
	cmp r0, #0
	ble label633
.p2align 4
label89:
	ldr r0, [sp, #28]
	cmp r0, #4
	ble label90
	ldr r1, [sp, #24]
	cmp r1, #16
	ble label97
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r1, #0
.p2align 4
label99:
	mov r0, #0
	add r1, r1, #16
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #12]
	str r0, [r2, #16]
	str r0, [r2, #20]
	str r0, [r2, #24]
	str r0, [r2, #28]
	str r0, [r2, #32]
	str r0, [r2, #36]
	str r0, [r2, #40]
	str r0, [r2, #44]
	str r0, [r2, #48]
	str r0, [r2, #52]
	str r0, [r2, #56]
	str r0, [r2, #60]
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label513
	add r2, r2, #64
	b label99
.p2align 4
label10:
	ldr r1, [sp, #24]
	cmp r1, #16
	ble label141
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	mov r1, #0
.p2align 4
label18:
	mov r0, #0
	add r1, r1, #16
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #12]
	str r0, [r2, #16]
	str r0, [r2, #20]
	str r0, [r2, #24]
	str r0, [r2, #28]
	str r0, [r2, #32]
	str r0, [r2, #36]
	str r0, [r2, #40]
	str r0, [r2, #44]
	str r0, [r2, #48]
	str r0, [r2, #52]
	str r0, [r2, #56]
	str r0, [r2, #60]
	ldr r0, [sp, #20]
	cmp r0, r1
	ble label172
	add r2, r2, #64
	b label18
.p2align 4
label513:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r2, r2, r1, lsl #2
	add r0, r1, #4
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label108
	b label651
.p2align 4
label104:
	mov r1, #0
	add r0, r0, #4
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	ldr r1, [sp, #24]
	cmp r1, r0
	ble label107
.p2align 4
label108:
	add r2, r2, #16
	b label104
.p2align 4
label91:
	mov r0, #0
	add r1, r1, #1
	str r0, [r2, #0]
	ldr r0, [sp, #28]
	cmp r0, r1
	ble label94
.p2align 4
label95:
	add r2, r2, #4
	b label91
.p2align 4
label107:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r2, r2, r0, lsl #2
	add r1, r0, #1
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [sp, #28]
	cmp r0, r1
	bgt label95
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r4
	bgt label60
	b label331
.p2align 4
label11:
	mov r1, #0
	add r0, r0, #4
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	ldr r1, [sp, #24]
	cmp r1, r0
	ble label149
.p2align 4
label14:
	add r2, r2, #16
	b label11
.p2align 4
label172:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r1, lsl #2
	add r0, r1, #4
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label14
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r0, lsl #2
	add r1, r0, #1
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [sp, #28]
	cmp r0, r1
	bgt label9
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r4
	bgt label28
	b label179
.p2align 4
label5:
	mov r0, #0
	add r1, r1, #1
	str r0, [r2, #0]
	ldr r0, [sp, #28]
	cmp r0, r1
	ble label8
.p2align 4
label9:
	add r2, r2, #4
	b label5
.p2align 4
label149:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r0, lsl #2
	add r1, r0, #1
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [sp, #28]
	cmp r0, r1
	bgt label9
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r4
	bgt label28
	b label179
.p2align 4
label94:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r4
	bgt label60
	b label331
.p2align 4
label8:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #28]
	cmp r0, r4
	bgt label28
	b label179
.p2align 4
label90:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r1, #0
	b label91
.p2align 4
label97:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	mov r0, #0
	mov r1, #0
	add r0, r0, #4
	str r1, [r2, #0]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #12]
	ldr r1, [sp, #24]
	cmp r1, r0
	bgt label108
	b label107
.p2align 4
label651:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	add r2, r2, r0, lsl #2
	add r1, r0, #1
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [sp, #28]
	cmp r0, r1
	bgt label95
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r4
	bgt label60
	b label331
label633:
	movw r0, #:lower16:x
	movt r0, #:upper16:x
	mov r4, #0
	str r0, [sp, #0]
	ldr r0, [sp, #28]
	cmp r0, r4
	bgt label60
label331:
	ldr r0, [sp, #16]
	add r0, r0, #1
	cmp r0, #100
	blt label482
	b label88
.p2align 4
label340:
	ldr r0, [sp, #0]
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #28]
	mov r4, r1
	cmp r0, r1
	bgt label60
	b label331
label179:
	ldr r0, [sp, #28]
	cmp r0, #0
	bgt label89
	b label633
.p2align 4
label188:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r1, [sp, #12]
	ldr r0, [sp, #28]
	mov r4, r1
	cmp r0, r1
	bgt label28
	b label179
label88:
	mov r0, #47
	bl _sysy_stoptime
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	ldr r0, [sp, #28]
	mov r1, r2
	bl putarray
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label48:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	mov r8, r3
	add r7, r2, r3, lsl #2
.p2align 4
label49:
	ldr r5, [r7, #0]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r9, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r10, [r9, #0]
	add r5, r5, r8, lsl #2
	add r8, r8, #4
	ldr r11, [r5, #0]
	cmp r1, r8
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #4]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #4]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #8]
	add r9, r2, r9, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r5, #8]
	add r10, r10, r11
	str r10, [r9, #0]
	ldr r9, [r7, #12]
	add r2, r2, r9, lsl #2
	ldr r9, [r2, #0]
	ldr r5, [r5, #12]
	add r5, r9, r5
	str r5, [r2, #0]
	ble label52
	add r7, r7, #16
	b label49
.p2align 4
label30:
	ldr r5, [r7, #0]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r9, [r2, #0]
	ldr r5, [r5, r8, lsl #2]
	add r8, r8, #1
	cmp r0, r8
	add r5, r9, r5
	str r5, [r2, #0]
	ble label207
	add r7, r7, #4
	b label30
.p2align 4
label52:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r7, r2, r8, lsl #2
	b label30
.p2align 4
label207:
	movw r2, #:lower16:a
	movt r2, #:upper16:a
	cmp r0, r6
	ldr r2, [r2, r4, lsl #2]
	sub r4, r2, #1
	ble label634
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r6, r2, r3, lsl #2
.p2align 4
label42:
	ldr r5, [r6, #0]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r7, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r8, [r7, #0]
	add r5, r5, r3, lsl #2
	add r3, r3, #4
	ldr r9, [r5, #0]
	cmp r1, r3
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #4]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #4]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #8]
	add r7, r2, r7, lsl #2
	ldr r8, [r7, #0]
	ldr r9, [r5, #8]
	mla r8, r4, r9, r8
	str r8, [r7, #0]
	ldr r7, [r6, #12]
	add r2, r2, r7, lsl #2
	ldr r7, [r2, #0]
	ldr r5, [r5, #12]
	mla r5, r4, r5, r7
	str r5, [r2, #0]
	ble label634
	add r6, r6, #16
	b label42
.p2align 4
label634:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	add r1, r2, r3, lsl #2
.p2align 4
label36:
	ldr r5, [r1, #0]
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	add r2, r2, r5, lsl #2
	movw r5, #:lower16:v
	movt r5, #:upper16:v
	ldr r6, [r2, #0]
	ldr r5, [r5, r3, lsl #2]
	add r3, r3, #1
	cmp r0, r3
	mla r5, r4, r5, r6
	str r5, [r2, #0]
	ble label231
	add r1, r1, #4
	b label36
.p2align 4
label346:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	mov r8, r3
	add r7, r2, r3, lsl #2
	b label62
.p2align 4
label132:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	mov r1, #0
	b label5
.p2align 4
label141:
	movw r2, #:lower16:b
	movt r2, #:upper16:b
	mov r0, #0
	b label11
.p2align 4
label194:
	movw r2, #:lower16:y
	movt r2, #:upper16:y
	mov r8, r3
	add r7, r2, r3, lsl #2
	b label30
