.arch armv7ve
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r5, #:lower16:w
	mov r4, r0
	movt r5, #:upper16:w
	mov r0, r5
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	movw r0, #:lower16:temp
	mov r1, #0
	movw r6, #:lower16:dst
	movt r0, #:upper16:temp
	movt r6, #:upper16:dst
	str r6, [sp, #0]
label2:
	cmp r4, r1
	bgt label4
label42:
	mov r5, #0
	b label11
.p2align 4
label4:
	cmp r4, #0
	ble label45
	mov r2, #0
	b label5
.p2align 4
label184:
	add r1, r1, #1
	cmp r4, r1
	bgt label4
	b label42
label11:
	mul r2, r4, r5
	cmp r4, r5
	ble label25
.p2align 4
label68:
	mov r6, #0
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	ble label73
.p2align 4
label74:
	mov r7, #0
	cmp r4, r7
	bgt label18
	b label17
.p2align 4
label188:
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label74
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label68
label25:
	mul r5, r4, r4
	cmp r4, #0
	bne label27
label26:
	mov r0, #64
	bl _sysy_stoptime
	ldr r6, [sp, #0]
	mov r0, r5
	mov r1, r6
	bl putarray
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label27:
	sub r1, r5, #8
	cmp r5, #8
	ble label123
	mov r2, #0
.p2align 4
label28:
	add r3, r0, r2, lsl #2
	ldr r7, [r3, #0]
	ldr r6, [sp, #0]
	add r4, r6, r2, lsl #2
	add r2, r2, #8
	str r7, [r4, #0]
	cmp r1, r2
	ldr r6, [r3, #4]
	str r6, [r4, #4]
	ldr r6, [r3, #8]
	str r6, [r4, #8]
	ldr r6, [r3, #12]
	str r6, [r4, #12]
	ldr r6, [r3, #16]
	str r6, [r4, #16]
	ldr r6, [r3, #20]
	str r6, [r4, #20]
	ldr r6, [r3, #24]
	str r6, [r4, #24]
	ldr r3, [r3, #28]
	str r3, [r4, #28]
	bgt label28
label30:
	ldr r1, [r0, r2, lsl #2]
	ldr r6, [sp, #0]
	str r1, [r6, r2, lsl #2]
	add r2, r2, #1
	cmp r5, r2
	bgt label30
	b label26
.p2align 4
label18:
	ldr r8, [r0, r1, lsl #2]
	cmn r8, #1
	bgt label19
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	b label188
.p2align 4
label19:
	add r9, r2, r7
	ldr r9, [r0, r9, lsl #2]
	cmn r9, #1
	bgt label20
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label74
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label68
	b label25
.p2align 4
label20:
	add r10, r3, r7
	add r8, r8, r9
	ldr r11, [r0, r10, lsl #2]
	cmp r11, #0
	blt label22
	ldr r9, [r0, r10, lsl #2]
	cmp r8, r9
	bge label109
.p2align 4
label22:
	str r8, [r0, r10, lsl #2]
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label74
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label68
	b label25
.p2align 4
label5:
	mla r3, r4, r2, r1
	cmp r4, r2
	ble label52
	ldr r6, [r5, r3, lsl #2]
	add r2, r2, #1
	str r6, [r0, r3, lsl #2]
	cmp r4, r2
	bgt label5
	b label184
.p2align 4
label52:
	mvn r6, #0
	add r2, r2, #1
	str r6, [r0, r3, lsl #2]
	cmp r4, r2
	bgt label5
	add r1, r1, #1
	cmp r4, r1
	bgt label4
	b label42
.p2align 4
label109:
	add r7, r7, #1
	cmp r4, r7
	bgt label18
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label74
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label68
	b label25
.p2align 4
label17:
	add r6, r6, #1
	mul r3, r4, r6
	cmp r4, r6
	mla r1, r4, r6, r5
	bgt label74
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label68
	b label25
label73:
	add r5, r5, #1
	mul r2, r4, r5
	cmp r4, r5
	bgt label68
	b label25
label123:
	mov r2, #0
	b label30
label45:
	add r1, r1, #1
	b label2
