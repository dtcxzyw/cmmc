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
	cmp r0, r5
	bgt label4
	mov r4, #0
	cmp r0, r4
	bgt label78
	b label11
label4:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label5
	add r5, r5, #1
	cmp r6, r5
	bgt label4
	mov r4, #0
	cmp r6, r4
	bgt label78
	b label11
label5:
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
	mov r4, #0
	cmp r6, r4
	bgt label78
	b label11
label105:
	mov r6, r0
	b label6
label78:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label79
	add r4, r4, #1
	cmp r6, r4
	bgt label78
	b label11
label79:
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
label11:
	mov r0, #65
	bl _sysy_starttime
	mov r0, #0
	movw r5, #:lower16:C
	movt r5, #:upper16:C
	str r5, [sp, #12]
label12:
	mov r1, #0
	ldr r6, [sp, #0]
	cmp r6, r1
	bgt label16
	mov r2, #0
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label70:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label72
	add r1, r1, #1
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label223:
	mov r3, #0
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label60
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label60:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	beq label68
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label62
	add r3, r3, #1
	cmp r6, r3
	bgt label60
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label68:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label60
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label62:
	ldr r5, [sp, #4]
	ldr r6, [sp, #0]
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
	add r3, r3, #1
	cmp r6, r3
	bgt label60
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
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
	add r3, r3, #1
	cmp r6, r3
	bgt label60
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
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
	add r3, r3, #1
	cmp r6, r3
	bgt label60
	add r2, r2, #1
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label145:
	mov r3, #0
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label28
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label28:
	ldr r4, [sp, #8]
	add r4, r4, r3, lsl #12
	ldr r4, [r4, r2, lsl #2]
	cmp r4, #0
	beq label36
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label30
	add r3, r3, #1
	cmp r6, r3
	bgt label28
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label36:
	add r3, r3, #1
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label28
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label30:
	ldr r5, [sp, #12]
	ldr r6, [sp, #0]
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
	add r3, r3, #1
	cmp r6, r3
	bgt label28
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
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
	add r3, r3, #1
	cmp r6, r3
	bgt label28
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
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
	add r3, r3, #1
	cmp r6, r3
	bgt label28
	add r2, r2, #1
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
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
label73:
	add r3, r4, #4
	ldr r6, [sp, #0]
	cmp r6, r3
	bgt label77
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	add r4, r4, #1
	cmp r6, r4
	bgt label75
	add r1, r1, #1
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label75:
	mov r3, #0
	str r3, [r2, r4, lsl #2]
	ldr r6, [sp, #0]
	add r4, r4, #1
	cmp r6, r4
	bgt label75
	add r1, r1, #1
	cmp r6, r1
	bgt label70
	mov r2, #0
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label77:
	add r5, r2, r4, lsl #2
	mov r6, #0
	str r6, [r2, r4, lsl #2]
	mov r4, r3
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r6, [r5, #12]
	b label73
label16:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label18
	add r1, r1, #1
	cmp r6, r1
	bgt label16
	mov r2, #0
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label18:
	ldr r5, [sp, #12]
	mov r4, #0
	add r2, r5, r1, lsl #12
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
	add r1, r1, #1
	cmp r6, r1
	bgt label16
	mov r2, #0
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
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
	add r1, r1, #1
	cmp r6, r1
	bgt label16
	mov r2, #0
	ldr r5, [sp, #4]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label145
	mov r1, #0
	cmp r6, r1
	bgt label70
	ldr r5, [sp, #12]
	add r1, r5, r2, lsl #12
	cmp r6, r2
	bgt label223
	add r0, r0, #1
	cmp r0, #5
	blt label12
	mov r7, #0
	mov r0, r7
	cmp r6, r7
	bgt label46
	b label57
label72:
	ldr r5, [sp, #4]
	mov r4, #0
	add r2, r5, r1, lsl #12
	b label73
label46:
	ldr r6, [sp, #0]
	cmp r6, #0
	bgt label47
	mov r2, r7
	add r0, r0, #1
	cmp r6, r0
	bgt label46
	b label57
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
	add r0, r0, #1
	mov r7, r2
	cmp r6, r0
	bgt label46
	b label57
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
	add r0, r0, #1
	mov r7, r2
	cmp r6, r0
	bgt label46
	b label57
label264:
	mov r3, r2
	b label52
label47:
	ldr r5, [sp, #4]
	mov r4, #0
	mov r3, r7
	add r1, r5, r0, lsl #12
	b label48
