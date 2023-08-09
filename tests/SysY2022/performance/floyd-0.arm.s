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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #44
	bl getint
	movw r6, #:lower16:w
	movt r6, #:upper16:w
	str r0, [sp, #36]
	mov r8, r0
	mov r0, r6
	bl getarray
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
	ldr r8, [sp, #36]
	add r5, r8, r8, lsl #1
	lsl r3, r8, #1
	sub r10, r8, #3
	str r10, [sp, #28]
	lsl r10, r8, #2
	str r3, [sp, #24]
	str r5, [sp, #20]
	str r10, [sp, #16]
	str r6, [sp, #12]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	str r6, [sp, #4]
	mov r10, r6
	str r0, [sp, #0]
	cmp r8, r0
	bgt label6
	b label80
.p2align 4
label24:
	ldr r8, [sp, #36]
	add r0, r0, r8, lsl #2
.p2align 4
label20:
	ldr r3, [r0, #0]
	add r1, r1, #1
	ldr r10, [sp, #4]
	str r3, [r10, r2, lsl #2]
	ldr r8, [sp, #36]
	cmp r8, r1
	add r2, r8, r2
	bgt label24
.p2align 4
label18:
	ldr r0, [sp, #0]
	ldr r10, [sp, #4]
	ldr r6, [sp, #12]
	add r0, r0, #1
	add r10, r10, #4
	add r6, r6, #4
	str r6, [sp, #12]
	str r10, [sp, #4]
	str r0, [sp, #0]
	ldr r8, [sp, #36]
	cmp r8, r0
	ble label80
.p2align 4
label6:
	ldr r8, [sp, #36]
	cmp r8, #3
	ble label84
	mov r9, #0
	ldr r10, [sp, #4]
	ldr r6, [sp, #12]
	ldr r3, [sp, #24]
	ldr r5, [sp, #20]
	add r0, r10, r8, lsl #2
	mov r7, r9
	add r1, r6, r8, lsl #2
	add r2, r10, r3, lsl #2
	mov r8, r9
	add r4, r10, r5, lsl #2
	add r3, r6, r3, lsl #2
	add r5, r6, r5, lsl #2
.p2align 4
label8:
	ldr r11, [r6, #0]
	add r9, r9, #4
	ldr r10, [sp, #4]
	str r11, [r10, r8, lsl #2]
	ldr r10, [r1, r7, lsl #2]
	str r10, [r0, r8, lsl #2]
	ldr r10, [r3, r7, lsl #2]
	str r10, [r2, r8, lsl #2]
	ldr r10, [r5, r7, lsl #2]
	str r10, [r4, r8, lsl #2]
	ldr r10, [sp, #16]
	add r7, r10, r7
	add r8, r10, r8
	ldr r10, [sp, #28]
	cmp r10, r9
	ble label121
	ldr r10, [sp, #16]
	add r6, r6, r10, lsl #2
	b label8
.p2align 4
label121:
	mov r2, r8
	ldr r8, [sp, #36]
	cmp r8, r9
	ble label18
.p2align 4
label19:
	ldr r6, [sp, #12]
	mov r1, r9
	add r0, r6, r7, lsl #2
	b label20
label80:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r3, #0
	mov r1, r6
	ldr r8, [sp, #36]
	cmp r8, r3
	mul r2, r8, r3
	bgt label149
	b label29
.p2align 4
label358:
	add r3, r3, #1
	add r1, r1, #4
	ldr r8, [sp, #36]
	cmp r8, r3
	mul r2, r8, r3
	ble label29
.p2align 4
label149:
	mov r4, #0
	ldr r8, [sp, #36]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label56
label55:
	add r3, r3, #1
	add r1, r1, #4
	ldr r8, [sp, #36]
	cmp r8, r3
	mul r2, r8, r3
	bgt label149
	b label29
.p2align 4
label60:
	ldr r9, [r6, r2, lsl #2]
	cmn r9, #1
	bgt label61
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	ble label348
.p2align 4
label65:
	add r6, r6, #4
	ldr r8, [r1, r0, lsl #2]
	cmn r8, #1
	bgt label60
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	bgt label65
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	ble label358
.p2align 4
label56:
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r7, #0
	ldr r8, [r1, r0, lsl #2]
	cmn r8, #1
	bgt label60
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	bgt label65
	add r4, r4, #1
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label56
	b label55
.p2align 4
label61:
	ldr r10, [r6, r0, lsl #2]
	add r8, r8, r9
	cmp r10, #0
	blt label63
	ldr r9, [r5, r7, lsl #2]
	cmp r8, r9
	bge label294
.p2align 4
label63:
	str r8, [r5, r7, lsl #2]
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	bgt label65
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label56
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label149
	b label29
.p2align 4
label294:
	add r7, r7, #1
	ldr r8, [sp, #36]
	cmp r8, r7
	bgt label65
	add r4, r4, #1
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label56
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label149
	b label29
.p2align 4
label348:
	add r4, r4, #1
	ldr r8, [sp, #36]
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	cmp r8, r4
	mul r0, r8, r4
	add r5, r6, r0, lsl #2
	bgt label56
	add r3, r3, #1
	add r1, r1, #4
	cmp r8, r3
	mul r2, r8, r3
	bgt label149
label29:
	ldr r8, [sp, #36]
	cmp r8, #0
	mul r3, r8, r8
	str r3, [sp, #32]
	beq label30
	cmp r3, #3
	ble label157
	sub r0, r3, #18
	sub r4, r3, #3
	cmp r4, #15
	str r4, [sp, #8]
	ble label163
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r1, #0
	b label34
.p2align 4
label37:
	add r6, r6, #64
.p2align 4
label34:
	ldr r3, [r6, #0]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	add r2, r2, r1, lsl #2
	add r1, r1, #16
	cmp r0, r1
	str r3, [r2, #0]
	ldr r3, [r6, #4]
	str r3, [r2, #4]
	ldr r3, [r6, #8]
	str r3, [r2, #8]
	ldr r3, [r6, #12]
	str r3, [r2, #12]
	ldr r3, [r6, #16]
	str r3, [r2, #16]
	ldr r3, [r6, #20]
	str r3, [r2, #20]
	ldr r3, [r6, #24]
	str r3, [r2, #24]
	ldr r3, [r6, #28]
	str r3, [r2, #28]
	ldr r3, [r6, #32]
	str r3, [r2, #32]
	ldr r3, [r6, #36]
	str r3, [r2, #36]
	ldr r3, [r6, #40]
	str r3, [r2, #40]
	ldr r3, [r6, #44]
	str r3, [r2, #44]
	ldr r3, [r6, #48]
	str r3, [r2, #48]
	ldr r3, [r6, #52]
	str r3, [r2, #52]
	ldr r3, [r6, #56]
	str r3, [r2, #56]
	ldr r3, [r6, #60]
	str r3, [r2, #60]
	bgt label37
	mov r2, r1
label38:
	ldr r4, [sp, #8]
	cmp r4, r2
	ble label221
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	mov r1, r2
	add r0, r6, r2, lsl #2
label42:
	ldr r3, [r0, #0]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	add r2, r2, r1, lsl #2
	add r1, r1, #4
	str r3, [r2, #0]
	ldr r3, [r0, #4]
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	str r3, [r2, #8]
	ldr r3, [r0, #12]
	str r3, [r2, #12]
	ldr r4, [sp, #8]
	cmp r4, r1
	ble label221
	add r0, r0, #16
	b label42
label84:
	mov r9, #0
	mov r7, r9
	mov r2, r9
	ldr r8, [sp, #36]
	cmp r8, r9
	bgt label19
	b label18
label221:
	mov r0, r1
label46:
	ldr r3, [sp, #32]
	cmp r3, r0
	ble label30
	movw r6, #:lower16:temp
	movt r6, #:upper16:temp
	add r1, r6, r0, lsl #2
	b label49
label52:
	add r1, r1, #4
label49:
	ldr r3, [r1, #0]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	str r3, [r2, r0, lsl #2]
	ldr r3, [sp, #32]
	add r0, r0, #1
	cmp r3, r0
	bgt label52
label30:
	mov r0, #64
	bl _sysy_stoptime
	ldr r3, [sp, #32]
	movw r2, #:lower16:dst
	movt r2, #:upper16:dst
	mov r0, r3
	mov r1, r2
	bl putarray
	add sp, sp, #44
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label163:
	mov r2, #0
	mov r1, r2
	b label38
label157:
	mov r0, #0
	b label46
