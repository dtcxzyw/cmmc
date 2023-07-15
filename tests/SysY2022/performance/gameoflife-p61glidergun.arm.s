.arch armv7ve
.data
.bss
.align 4
sheet1:
	.zero	1000000
.align 4
sheet2:
	.zero	1000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #28
	bl getint
	str r0, [sp, #4]
	mov r8, r0
	bl getint
	str r0, [sp, #0]
	mov r8, r0
	bl getint
	mov r4, r0
	bl getch
	mov r5, #1
	movw r3, #:lower16:sheet1
	movt r3, #:upper16:sheet1
	str r3, [sp, #8]
	ldr r8, [sp, #0]
	cmp r8, r5
	blt label8
	mov r0, #2000
	ldr r8, [sp, #4]
	mla r6, r5, r0, r3
	cmp r8, #0
	ble label5
label218:
	mov r7, #1
label6:
	bl getch
	sub r0, r0, #35
	clz r0, r0
	lsr r0, r0, #5
	str r0, [r6, r7, lsl #2]
	ldr r8, [sp, #4]
	add r7, r7, #1
	cmp r8, r7
	blt label5
	b label6
label5:
	bl getch
	add r5, r5, #1
	ldr r8, [sp, #0]
	cmp r8, r5
	blt label8
	mov r0, #2000
	ldr r3, [sp, #8]
	ldr r8, [sp, #4]
	mla r6, r5, r0, r3
	cmp r8, #0
	ble label5
	b label218
label8:
	mov r0, #95
	bl _sysy_starttime
	cmp r4, #0
	movw r1, #:lower16:sheet2
	movt r1, #:upper16:sheet2
	str r1, [sp, #12]
	ble label67
	str r4, [sp, #16]
	mov r5, #1
	b label9
label67:
	mov r5, #1
	b label20
label9:
	sub r0, r5, #1
	cmp r5, #1
	ldr r1, [sp, #12]
	clz r0, r0
	lsr r0, r0, #5
	add r5, r0, #1
	str r1, [sp, #20]
	mov r2, r1
	mov r0, #1
	ldr r3, [sp, #8]
	mov r4, r3
	moveq r2, r3
	moveq r4, r1
	str r2, [sp, #20]
label12:
	sub r1, r0, #1
	mov r6, #2000
	ldr r2, [sp, #20]
	add r7, r0, #1
	ldr r8, [sp, #0]
	mla r1, r1, r6, r2
	mla r2, r0, r6, r2
	mla r6, r0, r6, r4
	cmp r8, r0
	add r3, r2, #2000
	blt label19
	mov r0, #1
	ldr r8, [sp, #4]
	cmp r8, r0
	blt label89
	b label16
label221:
	str r4, [sp, #16]
	b label9
label89:
	mov r0, r7
	b label12
label19:
	ldr r4, [sp, #16]
	subs r4, r4, #1
	ble label20
	b label221
label16:
	sub r8, r0, #1
	add r9, r1, r0, lsl #2
	ldr r10, [r1, r8, lsl #2]
	ldr r11, [r1, r0, lsl #2]
	ldr r9, [r9, #4]
	add r10, r10, r11
	ldr r11, [r2, r8, lsl #2]
	add r9, r10, r9
	add r10, r2, r8, lsl #2
	ldr r10, [r10, #8]
	add r9, r9, r11
	ldr r8, [r3, r8, lsl #2]
	add r9, r9, r10
	ldr r10, [r3, r0, lsl #2]
	add r9, r9, r8
	add r8, r3, r0, lsl #2
	ldr r8, [r8, #4]
	add r9, r9, r10
	ldr r10, [r2, r0, lsl #2]
	add r8, r9, r8
	eor r9, r8, #2
	eor r10, r10, #1
	orrs r9, r9, r10
	add r9, r0, #1
	bne label18
	mov r8, #1
	str r8, [r6, r0, lsl #2]
	mov r0, r9
	ldr r8, [sp, #4]
	cmp r8, r9
	blt label89
	b label16
label18:
	sub r8, r8, #3
	clz r8, r8
	lsr r8, r8, #5
	str r8, [r6, r0, lsl #2]
	mov r0, r9
	ldr r8, [sp, #4]
	cmp r8, r9
	blt label89
	b label16
label20:
	mov r0, #106
	bl _sysy_stoptime
	cmp r5, #2
	bne label144
	mov r0, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	blt label168
	mov r2, #2000
	ldr r1, [sp, #12]
	ldr r3, [sp, #8]
	mla r1, r0, r2, r1
	ldr r8, [sp, #4]
	mla r2, r0, r2, r3
	cmp r8, #0
	ble label34
	mov r3, #1
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	b label272
label144:
	mov r4, #1
	ldr r8, [sp, #0]
	cmp r8, r4
	blt label28
	mov r0, #2000
	ldr r3, [sp, #8]
	ldr r8, [sp, #4]
	mla r5, r4, r0, r3
	cmp r8, #0
	ble label27
	b label225
label272:
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
label32:
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	ldr r8, [sp, #4]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	b label32
label225:
	mov r6, #1
label25:
	ldr r1, [r5, r6, lsl #2]
	mov r0, #35
	cmp r1, #1
	mov r1, #46
	moveq r1, r0
	mov r0, r1
	bl putch
	ldr r8, [sp, #4]
	add r6, r6, #1
	cmp r8, r6
	blt label27
	b label25
label27:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r8, [sp, #0]
	cmp r8, r4
	blt label28
	mov r0, #2000
	ldr r3, [sp, #8]
	ldr r8, [sp, #4]
	mla r5, r4, r0, r3
	cmp r8, #0
	ble label27
	b label225
label34:
	add r0, r0, #1
	ldr r8, [sp, #0]
	cmp r8, r0
	blt label168
	mov r2, #2000
	ldr r1, [sp, #12]
	ldr r3, [sp, #8]
	mla r1, r0, r2, r1
	ldr r8, [sp, #4]
	mla r2, r0, r2, r3
	cmp r8, #0
	ble label34
	mov r3, #1
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	ldr r4, [r1, r3, lsl #2]
	str r4, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r8, r3
	blt label34
	b label272
label168:
	mov r4, #1
	ldr r8, [sp, #0]
	cmp r8, r4
	blt label28
	mov r0, #2000
	ldr r3, [sp, #8]
	ldr r8, [sp, #4]
	mla r5, r4, r0, r3
	cmp r8, #0
	ble label27
	b label225
label28:
	mov r0, #0
	add sp, sp, #28
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
