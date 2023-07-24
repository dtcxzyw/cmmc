.arch armv7ve
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	movw r5, #:lower16:B
	movw r4, #:lower16:A
	str r0, [sp, #0]
	mov r6, r0
	movt r5, #:upper16:B
	movt r4, #:upper16:A
	str r4, [sp, #8]
	str r5, [sp, #4]
	mov r5, #0
label2:
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label4
label91:
	mov r4, #0
	b label9
label4:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label8
	ldr r4, [sp, #8]
	mov r6, #0
	add r4, r4, r5, lsl #12
label6:
	bl getint
	str r0, [r4, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label105
	add r5, r5, #1
	cmp r6, r5
	bgt label4
	b label91
label105:
	mov r6, r0
	b label6
label8:
	add r5, r5, #1
	b label2
label9:
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label78
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
	b label12
label78:
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label82
	ldr r5, [sp, #4]
	mov r6, #0
	add r5, r5, r4, lsl #12
label80:
	bl getint
	str r0, [r5, r6, lsl #2]
	add r0, r6, #1
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label369
	add r4, r4, #1
	cmp r6, r4
	bgt label78
	b label11
label369:
	mov r6, r0
	b label80
label82:
	add r4, r4, #1
	b label9
label12:
	mov r1, #0
	b label14
label222:
	add r0, r0, #1
	cmp r0, #5
	blt label12
	b label227
label223:
	mov r3, #0
	b label58
label227:
	mov r7, #0
	mov r0, r7
	b label43
label268:
	add r2, r2, #1
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	b label222
label60:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	beq label68
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label68
	ldr r5, [sp, #4]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	bgt label286
	mov r7, #0
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	bgt label66
	b label330
label286:
	mov r7, #4
	mov r9, #0
label63:
	add r6, r5, r9, lsl #2
	ldr r10, [r5, r9, lsl #2]
	add r8, r1, r9, lsl #2
	ldr r11, [r1, r9, lsl #2]
	mla r10, r4, r11, r10
	str r10, [r5, r9, lsl #2]
	ldr r9, [r6, #4]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r6, #4]
	ldr r9, [r6, #8]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r6, #8]
	ldr r9, [r6, #12]
	ldr r8, [r8, #12]
	mla r8, r4, r8, r9
	str r8, [r6, #12]
	ldr r6, [sp, #0]
	add r8, r7, #4
	cmp r6, r8
	bgt label317
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	bgt label66
	b label330
label317:
	mov r9, r7
	mov r7, r8
	b label63
label66:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	bgt label66
label330:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label60
	b label268
label58:
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label60
	b label268
label68:
	add r3, r3, #1
	b label58
label14:
	ldr r6, [sp, #0]
	cmp r6, r1
	bgt label16
label115:
	mov r2, #0
	b label24
label16:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label119
	add r1, r1, #1
	b label14
label19:
	add r3, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label21
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	add r4, r4, #1
	cmp r6, r4
	bgt label22
	b label138
label21:
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	b label19
label22:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	bgt label22
label138:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	bgt label16
	b label115
label43:
	ldr r6, [sp, #0]
	cmp r6, r0
	ble label57
label46:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label47
	mov r2, r7
	b label55
label48:
	add r2, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r2
	bgt label51
	ldr r2, [r1, r4, lsl #2]
	add r4, r4, #1
	add r2, r3, r2
	cmp r6, r4
	bgt label264
	b label263
label51:
	add r5, r1, r4, lsl #2
	ldr r4, [r1, r4, lsl #2]
	add r3, r3, r4
	ldr r4, [r5, #4]
	add r3, r3, r4
	ldr r4, [r5, #8]
	add r3, r3, r4
	ldr r4, [r5, #12]
	add r3, r3, r4
	mov r4, r2
	b label48
label52:
	ldr r2, [r1, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	add r2, r3, r2
	cmp r6, r4
	bgt label264
label263:
	add r0, r0, #1
	mov r7, r2
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label46
	b label57
label264:
	mov r3, r2
	b label52
label55:
	add r0, r0, #1
	mov r7, r2
	b label43
label57:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label24:
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
label144:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	bgt label70
	b label216
label145:
	mov r3, #0
	b label26
label148:
	add r2, r2, #1
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	b label144
label28:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	beq label36
	ldr r6, [sp, #0]
	cmp r6, #0
	ble label36
	ldr r5, [sp, #12]
	add r5, r5, r3, lsl #12
	cmp r6, #4
	bgt label166
	mov r7, #0
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	bgt label34
	b label210
label166:
	mov r7, #4
	mov r9, #0
label31:
	add r6, r5, r9, lsl #2
	ldr r10, [r5, r9, lsl #2]
	add r8, r1, r9, lsl #2
	ldr r11, [r1, r9, lsl #2]
	mla r10, r4, r11, r10
	str r10, [r5, r9, lsl #2]
	ldr r9, [r6, #4]
	ldr r10, [r8, #4]
	mla r9, r4, r10, r9
	str r9, [r6, #4]
	ldr r9, [r6, #8]
	ldr r10, [r8, #8]
	mla r9, r4, r10, r9
	str r9, [r6, #8]
	ldr r9, [r6, #12]
	ldr r8, [r8, #12]
	mla r8, r4, r8, r9
	str r8, [r6, #12]
	ldr r6, [sp, #0]
	add r8, r7, #4
	cmp r6, r8
	bgt label197
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	bgt label34
	b label210
label197:
	mov r9, r7
	mov r7, r8
	b label31
label34:
	ldr r6, [r5, r7, lsl #2]
	ldr r8, [r1, r7, lsl #2]
	mla r6, r4, r8, r6
	str r6, [r5, r7, lsl #2]
	ldr r6, [sp, #0]
	add r7, r7, #1
	cmp r6, r7
	bgt label34
label210:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label28
	b label148
label38:
	ldr r6, [sp, #0]
	cmp r6, r1
	bgt label70
label216:
	mov r2, #0
	b label40
label70:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label336
	add r1, r1, #1
	b label38
label26:
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label28
	b label148
label36:
	add r3, r3, #1
	b label26
label40:
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	b label222
label336:
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
label73:
	add r3, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label77
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	add r4, r4, #1
	cmp r6, r4
	ble label350
label75:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	bgt label75
label350:
	add r1, r1, #1
	ldr r6, [sp, #0]
	cmp r6, r1
	bgt label70
	b label216
label77:
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	b label73
label119:
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
	b label19
label47:
	ldr r5, [sp, #4]
	mov r4, #0
	mov r3, r7
	add r1, r5, r0, lsl #12
	b label48
