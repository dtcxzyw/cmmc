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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #20
	bl getint
	mov r4, #0
	movw r5, #:lower16:A
	str r0, [sp, #4]
	mov r7, r0
	movw r6, #:lower16:B
	movt r5, #:upper16:A
	sub r7, r0, #4
	movt r6, #:upper16:B
	str r7, [sp, #0]
	str r6, [sp, #8]
	str r5, [sp, #12]
	mov r7, r0
	cmp r0, r4
	bgt label73
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r1, #0
	movw r0, #:lower16:C
	movt r0, #:upper16:C
	b label12
.p2align 4
label73:
	ldr r7, [sp, #4]
	cmp r7, #0
	bgt label362
	add r4, r4, #1
	cmp r7, r4
	bgt label73
	mov r4, #0
	cmp r7, r4
	bgt label6
	b label11
.p2align 4
label362:
	ldr r5, [sp, #12]
	mov r6, #0
	add r5, r5, r4, lsl #12
.p2align 4
label76:
	bl getint
	str r0, [r5, r6, lsl #2]
	ldr r7, [sp, #4]
	add r6, r6, #1
	cmp r7, r6
	bgt label76
	add r4, r4, #1
	cmp r7, r4
	bgt label73
	mov r4, #0
	cmp r7, r4
	bgt label6
	b label11
label12:
	mov r2, #0
	ldr r7, [sp, #4]
	cmp r7, r2
	bgt label16
	mov r3, #0
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
label531:
	mov r4, #0
	mov r0, r4
	b label48
.p2align 4
label17:
	add r3, r0, r2, lsl #12
	ldr r7, [sp, #4]
	cmp r7, #4
	bgt label120
	mov r4, #0
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r7, r4
	bgt label20
	add r2, r2, #1
	cmp r7, r2
	bgt label16
	mov r3, #0
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label120:
	mov r4, #0
.p2align 4
label18:
	add r5, r3, r4, lsl #2
	mov r6, #0
	str r6, [r3, r4, lsl #2]
	add r4, r4, #4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #0]
	cmp r7, r4
	bgt label18
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #4]
	add r4, r4, #1
	cmp r7, r4
	bgt label20
	add r2, r2, #1
	cmp r7, r2
	bgt label16
	mov r3, #0
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label20:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #4]
	add r4, r4, #1
	cmp r7, r4
	bgt label20
	add r2, r2, #1
	cmp r7, r2
	bgt label16
	mov r3, #0
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label38:
	ldr r7, [sp, #4]
	cmp r7, #0
	bgt label40
	add r2, r2, #1
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label40:
	ldr r6, [sp, #8]
	ldr r7, [sp, #4]
	add r3, r6, r2, lsl #12
	cmp r7, #4
	bgt label224
	mov r4, #0
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	add r4, r4, #1
	cmp r7, r4
	bgt label43
	add r2, r2, #1
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label48:
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt label52
	b label51
.p2align 4
label144:
	mov r4, #0
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label27
	add r3, r3, #1
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label27:
	ldr r5, [sp, #12]
	add r5, r5, r4, lsl #12
	ldr r5, [r5, r3, lsl #2]
	cmp r5, #0
	beq label34
	ldr r7, [sp, #4]
	cmp r7, #0
	bgt label29
	add r4, r4, #1
	cmp r7, r4
	bgt label27
	add r3, r3, #1
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label29:
	add r6, r0, r4, lsl #12
	ldr r7, [sp, #4]
	cmp r7, #4
	bgt label165
	mov r7, #0
	ldr r8, [r6, r7, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label178
	add r4, r4, #1
	cmp r7, r4
	bgt label27
	add r3, r3, #1
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label165:
	mov r7, #0
	b label32
.p2align 4
label30:
	ldr r8, [r6, r7, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label178
	add r4, r4, #1
	cmp r7, r4
	bgt label27
	add r3, r3, #1
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label178:
	mov r7, r8
	b label30
.p2align 4
label32:
	add r8, r6, r7, lsl #2
	ldr r10, [r6, r7, lsl #2]
	add r9, r2, r7, lsl #2
	ldr r11, [r2, r7, lsl #2]
	mla r10, r5, r11, r10
	str r10, [r6, r7, lsl #2]
	ldr r10, [r8, #4]
	ldr r11, [r9, #4]
	mla r10, r5, r11, r10
	str r10, [r8, #4]
	ldr r10, [r8, #8]
	ldr r11, [r9, #8]
	mla r10, r5, r11, r10
	str r10, [r8, #8]
	ldr r10, [r8, #12]
	ldr r9, [r9, #12]
	mla r9, r5, r9, r10
	str r9, [r8, #12]
	add r8, r7, #4
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label209
	mov r7, r8
	ldr r8, [r6, r8, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label178
	add r4, r4, #1
	cmp r7, r4
	bgt label27
	add r3, r3, #1
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label209:
	mov r7, r8
	b label32
.p2align 4
label34:
	add r4, r4, #1
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label27
	add r3, r3, #1
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
label247:
	mov r4, #0
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label65
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label65:
	ldr r5, [sp, #12]
	add r5, r5, r4, lsl #12
	ldr r5, [r5, r3, lsl #2]
	cmp r5, #0
	beq label72
	ldr r7, [sp, #4]
	cmp r7, #0
	bgt label67
	add r4, r4, #1
	cmp r7, r4
	bgt label65
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label67:
	ldr r6, [sp, #8]
	ldr r7, [sp, #4]
	add r6, r6, r4, lsl #12
	cmp r7, #4
	bgt label314
	mov r7, #0
	ldr r8, [r6, r7, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label358
	add r4, r4, #1
	cmp r7, r4
	bgt label65
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label314:
	mov r7, #0
.p2align 4
label68:
	add r8, r6, r7, lsl #2
	ldr r10, [r6, r7, lsl #2]
	add r9, r2, r7, lsl #2
	ldr r11, [r2, r7, lsl #2]
	mla r10, r5, r11, r10
	str r10, [r6, r7, lsl #2]
	ldr r10, [r8, #4]
	ldr r11, [r9, #4]
	mla r10, r5, r11, r10
	str r10, [r8, #4]
	ldr r10, [r8, #8]
	ldr r11, [r9, #8]
	mla r10, r5, r11, r10
	str r10, [r8, #8]
	ldr r10, [r8, #12]
	ldr r9, [r9, #12]
	mla r9, r5, r9, r10
	str r9, [r8, #12]
	add r8, r7, #4
	ldr r7, [sp, #0]
	cmp r7, r8
	bgt label345
	mov r7, r8
	ldr r8, [r6, r8, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label358
	add r4, r4, #1
	cmp r7, r4
	bgt label65
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label345:
	mov r7, r8
	b label68
.p2align 4
label70:
	ldr r8, [r6, r7, lsl #2]
	ldr r9, [r2, r7, lsl #2]
	mla r8, r5, r9, r8
	str r8, [r6, r7, lsl #2]
	add r8, r7, #1
	ldr r7, [sp, #4]
	cmp r7, r8
	bgt label358
	add r4, r4, #1
	cmp r7, r4
	bgt label65
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label358:
	mov r7, r8
	b label70
.p2align 4
label72:
	add r4, r4, #1
	ldr r7, [sp, #4]
	cmp r7, r4
	bgt label65
	add r3, r3, #1
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label224:
	mov r4, #0
.p2align 4
label41:
	add r5, r3, r4, lsl #2
	mov r6, #0
	str r6, [r3, r4, lsl #2]
	add r4, r4, #4
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	ldr r7, [sp, #0]
	cmp r7, r4
	bgt label41
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #4]
	add r4, r4, #1
	cmp r7, r4
	bgt label43
	add r2, r2, #1
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label43:
	mov r5, #0
	str r5, [r3, r4, lsl #2]
	ldr r7, [sp, #4]
	add r4, r4, #1
	cmp r7, r4
	bgt label43
	add r2, r2, #1
	cmp r7, r2
	bgt label38
	mov r3, #0
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label16:
	ldr r7, [sp, #4]
	cmp r7, #0
	bgt label17
	add r2, r2, #1
	cmp r7, r2
	bgt label16
	mov r3, #0
	ldr r6, [sp, #8]
	add r2, r6, r3, lsl #12
	cmp r7, r3
	bgt label144
	mov r2, #0
	cmp r7, r2
	bgt label38
	add r2, r0, r3, lsl #12
	cmp r7, r3
	bgt label247
	add r1, r1, #1
	cmp r1, #5
	blt label12
	b label531
.p2align 4
label6:
	ldr r7, [sp, #4]
	cmp r7, #0
	bgt label95
	add r4, r4, #1
	cmp r7, r4
	bgt label6
	b label11
.p2align 4
label95:
	ldr r6, [sp, #8]
	add r5, r6, r4, lsl #12
	mov r6, #0
.p2align 4
label9:
	bl getint
	str r0, [r5, r6, lsl #2]
	ldr r7, [sp, #4]
	add r6, r6, #1
	cmp r7, r6
	bgt label9
	add r4, r4, #1
	cmp r7, r4
	bgt label6
	b label11
.p2align 4
label52:
	ldr r7, [sp, #4]
	cmp r7, #0
	bgt label53
	mov r3, r4
	add r0, r0, #1
	cmp r7, r0
	bgt label52
	b label51
.p2align 4
label53:
	ldr r6, [sp, #8]
	ldr r7, [sp, #4]
	add r1, r6, r0, lsl #12
	cmp r7, #4
	bgt label264
	mov r2, #0
	mov r3, r4
	ldr r4, [r1, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r4
	cmp r7, r2
	bgt label57
	add r0, r0, #1
	mov r4, r3
	cmp r7, r0
	bgt label52
	b label51
.p2align 4
label264:
	mov r2, #0
.p2align 4
label54:
	add r3, r1, r2, lsl #2
	ldr r5, [r1, r2, lsl #2]
	add r2, r2, #4
	add r4, r4, r5
	ldr r5, [r3, #4]
	add r4, r4, r5
	ldr r5, [r3, #8]
	ldr r3, [r3, #12]
	ldr r7, [sp, #0]
	add r4, r4, r5
	add r3, r4, r3
	cmp r7, r2
	bgt label282
	ldr r4, [r1, r2, lsl #2]
	ldr r7, [sp, #4]
	add r2, r2, #1
	add r3, r3, r4
	cmp r7, r2
	bgt label57
	add r0, r0, #1
	mov r4, r3
	cmp r7, r0
	bgt label52
	b label51
.p2align 4
label282:
	mov r4, r3
	b label54
.p2align 4
label57:
	ldr r4, [r1, r2, lsl #2]
	ldr r7, [sp, #4]
	add r2, r2, #1
	add r3, r3, r4
	cmp r7, r2
	bgt label57
	add r0, r0, #1
	mov r4, r3
	cmp r7, r0
	bgt label52
label51:
	mov r0, #84
	bl _sysy_stoptime
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
