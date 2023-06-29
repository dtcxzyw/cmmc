.arch armv7ve
.data
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
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #2064
	mov r8, sp
	str r8, [sp, #2048]
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label3
	b label2
label359:
	mov r4, #0
	b label58
label3:
	movw r9, #:lower16:program
	movt r9, #:upper16:program
	str r9, [sp, #2052]
	movw r8, #:lower16:input
	movt r8, #:upper16:input
	str r8, [sp, #2056]
	cmp r0, #35
	beq label114
	b label359
label114:
	mov r4, #0
label5:
	bl getch
	cmp r0, #105
	beq label7
	b label118
label7:
	bl getint
	mov r5, r0
	bl getch
	mov r6, #0
	cmp r6, r5
	bge label125
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	b label653
label58:
	ldr r9, [sp, #2052]
	str r0, [r9, r4, lsl #2]
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label62
label61:
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label62
	b label61
label62:
	add r4, r4, #1
	cmp r0, #35
	beq label5
	b label58
label2:
	bl getch
	cmp r0, #62
	mov r1, #0
	movwne r1, #1
	cmp r0, #60
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #43
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #45
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #91
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #93
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #46
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #44
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r0, #35
	mov r2, #0
	movwne r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq label3
	b label2
label653:
	bl getch
	ldr r8, [sp, #2056]
	str r0, [r8, r6, lsl #2]
	add r6, r6, #1
	cmp r6, r5
	bge label125
	b label653
label118:
	mov r5, #0
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
label13:
	ldr r8, [sp, #2048]
	add r1, r8, r0, lsl #2
	mov r2, #0
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
	bge label15
	b label13
label15:
	movw r0, #:lower16:tape
	movt r0, #:upper16:tape
	mov r6, #0
	mov r3, r6
	mov r1, r6
	mov r2, r6
	mov r7, r6
	cmp r6, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r6, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r6, #1
	add r7, r6, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	b label620
label54:
	mov r0, #118
	bl _sysy_stoptime
	movw r4, #:lower16:output
	movt r4, #:upper16:output
	cmp r6, #0
	ble label55
	mov r5, #0
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	b label690
label620:
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
label659:
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	b label620
label30:
	cmp r8, #60
	bne label32
	sub r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	b label659
label32:
	cmp r8, #43
	bne label34
	ldr r8, [r0, r2, lsl #2]
	add r8, r8, #1
	str r8, [r0, r2, lsl #2]
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	b label659
label34:
	cmp r8, #45
	bne label36
	ldr r8, [r0, r2, lsl #2]
	sub r8, r8, #1
	str r8, [r0, r2, lsl #2]
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	b label659
label36:
	cmp r8, #91
	bne label37
	ldr r8, [r0, r2, lsl #2]
	cmp r8, #0
	beq label242
	ldr r8, [sp, #2048]
	str r7, [r8, r1, lsl #2]
	add r1, r1, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	b label620
label242:
	mov r8, #1
	cmp r8, #0
	ble label24
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	add r8, r8, #1
	cmp r8, #0
	ble label24
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	add r8, r8, #1
	cmp r8, #0
	ble label24
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	add r8, r8, #1
	cmp r8, #0
	ble label24
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	add r8, r8, #1
	cmp r8, #0
	ble label24
label607:
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	b label646
label690:
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
label691:
	ldr r0, [r4, r5, lsl #2]
	bl putch
	add r5, r5, #1
	cmp r5, r6
	bge label55
	b label691
label24:
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	b label620
label37:
	cmp r8, #93
	bne label38
	ldr r8, [r0, r2, lsl #2]
	cmp r8, #0
	bne label45
	sub r1, r1, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	b label620
label38:
	cmp r8, #46
	bne label39
	movw r8, #:lower16:output
	movt r8, #:upper16:output
	ldr r9, [r0, r2, lsl #2]
	str r9, [r8, r6, lsl #2]
	add r6, r6, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	b label659
label39:
	cmp r8, #44
	bne label24
	cmp r3, r5
	blt label42
	mov r8, #0
	str r8, [r0, r2, lsl #2]
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	b label620
label42:
	ldr r8, [sp, #2056]
	ldr r8, [r8, r3, lsl #2]
	str r8, [r0, r2, lsl #2]
	add r3, r3, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	b label620
label45:
	sub r7, r1, #1
	ldr r8, [sp, #2048]
	ldr r7, [r8, r7, lsl #2]
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	add r2, r2, #1
	add r7, r7, #1
	cmp r7, r4
	bge label54
	ldr r9, [sp, #2052]
	ldr r8, [r9, r7, lsl #2]
	cmp r8, #62
	bne label30
	b label620
label646:
	add r8, r8, #1
	cmp r8, #0
	ble label24
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	b label646
label49:
	cmp r8, #0
	ble label24
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	add r8, r8, #1
	cmp r8, #0
	ble label24
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	add r8, r8, #1
	cmp r8, #0
	ble label24
	add r7, r7, #1
	ldr r9, [sp, #2052]
	ldr r9, [r9, r7, lsl #2]
	sub r10, r8, #1
	cmp r9, #93
	moveq r8, r10
	cmp r9, #91
	bne label49
	add r8, r8, #1
	cmp r8, #0
	ble label24
	b label607
label125:
	mov r0, #116
	bl _sysy_starttime
	mov r0, #0
	b label13
label55:
	mov r0, #0
	add sp, sp, #2064
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
