.arch armv7ve
.data
.bss
.align 4
array:
	.zero	2097152
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #0
	movw r8, #:lower16:array
	sub sp, sp, #36
	movt r8, #:upper16:array
	str r8, [sp, #0]
label2:
	ldr r8, [sp, #0]
	mov r2, #0
	add r1, r8, r0, lsl #2
	str r2, [r8, r0, lsl #2]
	add r0, r0, #16
	str r2, [r1, #4]
	cmp r0, #524288
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
	blt label2
	mov r0, #0
	str r0, [sp, #4]
	mov r9, r0
label4:
	ldr r9, [sp, #4]
	cmp r9, #2
	bge label64
	mov r8, #0
	str r8, [sp, #8]
label7:
	ldr r8, [sp, #8]
	cmp r8, #2
	bge label94
	mov r8, #0
	str r8, [sp, #12]
label11:
	ldr r8, [sp, #12]
	cmp r8, #2
	bge label99
	mov r8, #0
	str r8, [sp, #16]
	b label15
label64:
	ldr r8, [sp, #0]
	ldr r0, [r8, #0]
	ldr r1, [r8, #8]
	add r0, r0, r1
	ldr r1, [r8, #4]
	add r0, r0, r1
	ldr r1, [r8, #40]
	add r0, r0, r1
	ldr r1, [r8, #24]
	add r0, r0, r1
	ldr r1, [r8, #228]
	add r0, r0, r1
	ldr r1, [r8, #56]
	add r0, r0, r1
	ldr r1, [r8, #964]
	add r0, r0, r1
	ldr r1, [r8, #224]
	add r0, r0, r1
	ldr r1, [r8, #804]
	add r0, r0, r1
	ldr r1, [r8, #1996]
	add r0, r0, r1
	ldr r1, [r8, #3224]
	add r0, r0, r1
	movw r1, #26400
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	ldr r1, [r8, #508]
	add r0, r0, r1
	ldr r1, [r8, #124]
	add r0, r0, r1
	movw r1, #50064
	movt r1, #3
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #15956
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #41932
	movt r1, #12
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	movw r1, #19456
	movt r1, #4
	add r1, r8, r1
	ldr r1, [r1, #0]
	add r0, r0, r1
	bl putint
	add sp, sp, #36
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label15:
	ldr r8, [sp, #16]
	cmp r8, #2
	bge label104
	mov r8, #0
	str r8, [sp, #20]
	b label19
label109:
	ldr r8, [sp, #16]
	add r8, r8, #1
	str r8, [sp, #16]
	b label15
label19:
	ldr r8, [sp, #20]
	cmp r8, #2
	bge label109
	mov r8, #0
	str r8, [sp, #24]
label23:
	ldr r8, [sp, #24]
	cmp r8, #2
	blt label115
	ldr r8, [sp, #20]
	add r8, r8, #1
	str r8, [sp, #20]
	b label19
label115:
	mov r8, #0
	str r8, [sp, #28]
label27:
	ldr r8, [sp, #28]
	cmp r8, #2
	bge label119
	mov r1, r0
	mov r0, #0
label31:
	cmp r0, #2
	bge label124
	mov r3, r1
	mov r1, #0
label35:
	cmp r1, #2
	bge label129
	mov r2, #0
label39:
	cmp r2, #2
	bge label134
	mov r5, r3
	mov r3, #0
	b label43
label139:
	add r2, r2, #1
	mov r3, r5
	b label39
label43:
	cmp r3, #2
	bge label139
	mov r4, #0
label47:
	cmp r4, #2
	blt label145
	add r3, r3, #1
	b label43
label145:
	mov r6, #0
label51:
	cmp r6, #2
	bge label149
	mov r7, #0
	b label55
label119:
	ldr r8, [sp, #24]
	add r8, r8, #1
	str r8, [sp, #24]
	b label23
label134:
	add r1, r1, #1
	b label35
label124:
	ldr r8, [sp, #28]
	mov r0, r1
	add r8, r8, #1
	str r8, [sp, #28]
	b label27
label129:
	add r0, r0, #1
	mov r1, r3
	b label31
label55:
	cmp r7, #2
	blt label59
	b label154
label221:
	add r7, r7, #1
	b label55
label154:
	add r6, r6, #1
	b label51
label94:
	ldr r9, [sp, #4]
	add r9, r9, #1
	str r9, [sp, #4]
	b label4
label59:
	ldr r8, [sp, #0]
	ldr r9, [sp, #4]
	add r9, r8, r9, lsl #20
	ldr r8, [sp, #8]
	add r9, r9, r8, lsl #19
	ldr r8, [sp, #12]
	add r9, r9, r8, lsl #18
	ldr r8, [sp, #16]
	add r9, r9, r8, lsl #17
	ldr r8, [sp, #20]
	add r9, r9, r8, lsl #16
	ldr r8, [sp, #24]
	add r9, r9, r8, lsl #15
	ldr r8, [sp, #28]
	add r8, r9, r8, lsl #14
	add r8, r8, r0, lsl #13
	add r8, r8, r1, lsl #12
	add r8, r8, r2, lsl #11
	add r8, r8, r3, lsl #10
	add r8, r8, r4, lsl #9
	add r8, r8, r6, lsl #8
	add r9, r8, r7, lsl #7
	mov r8, #0
label60:
	lsl r11, r8, #6
	add r10, r9, r8, lsl #6
	str r5, [r9, r11]
	add r8, r8, #1
	add r11, r5, #1
	cmp r8, #2
	str r11, [r10, #4]
	add r11, r5, #2
	str r11, [r10, #8]
	add r11, r5, #3
	str r11, [r10, #12]
	add r11, r5, #4
	str r11, [r10, #16]
	add r11, r5, #5
	str r11, [r10, #20]
	add r11, r5, #6
	str r11, [r10, #24]
	add r11, r5, #7
	str r11, [r10, #28]
	add r11, r5, #8
	str r11, [r10, #32]
	add r11, r5, #9
	str r11, [r10, #36]
	add r11, r5, #10
	str r11, [r10, #40]
	add r11, r5, #11
	str r11, [r10, #44]
	add r11, r5, #12
	str r11, [r10, #48]
	add r11, r5, #13
	str r11, [r10, #52]
	add r11, r5, #14
	str r11, [r10, #56]
	add r11, r5, #15
	add r5, r5, #16
	str r11, [r10, #60]
	blt label60
	b label221
label99:
	ldr r8, [sp, #8]
	add r8, r8, #1
	str r8, [sp, #8]
	b label7
label149:
	add r4, r4, #1
	b label47
label104:
	ldr r8, [sp, #12]
	add r8, r8, #1
	str r8, [sp, #12]
	b label11
