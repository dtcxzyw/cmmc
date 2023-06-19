.arch armv7-a
.data
.text
.syntax unified
.arm
.fpu neon
.globl u8_to_u8
u8_to_u8:
	bx lr
.globl u8_to_u16
u8_to_u16:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #255
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u8_to_u32
u8_to_u32:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #255
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u16_to_u8
u16_to_u8:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #255
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u16_to_u16
u16_to_u16:
	bx lr
.globl u16_to_u32
u16_to_u32:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	movw r4, #65535
	and r5, r0, r4
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u32_to_u8
u32_to_u8:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #255
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u32_to_u16
u32_to_u16:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	movw r4, #65535
	and r5, r0, r4
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u32_to_u32
u32_to_u32:
	bx lr
.globl i8_to_u8
i8_to_u8:
	bx lr
.globl i8_to_u16
i8_to_u16:
	bx lr
.globl i8_to_u32
i8_to_u32:
	bx lr
.globl i16_to_u8
i16_to_u8:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #255
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl i16_to_u16
i16_to_u16:
	bx lr
.globl i16_to_u32
i16_to_u32:
	bx lr
.globl i32_to_u8
i32_to_u8:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #255
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl i32_to_u16
i32_to_u16:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	movw r4, #65535
	and r5, r0, r4
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl i32_to_u32
i32_to_u32:
	bx lr
.globl u8_to_i8
u8_to_i8:
	bx lr
.globl u8_to_i16
u8_to_i16:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #255
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u8_to_i32
u8_to_i32:
	sub sp, sp, #8
	str r4, [sp, #0]
	and r4, r0, #255
	mov r0, r4
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u16_to_i8
u16_to_i8:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	lsl r4, r0, #24
	asr r5, r4, #24
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u16_to_i16
u16_to_i16:
	bx lr
.globl u16_to_i32
u16_to_i32:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	movw r4, #65535
	and r5, r0, r4
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u32_to_i8
u32_to_i8:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	lsl r4, r0, #24
	asr r5, r4, #24
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u32_to_i16
u32_to_i16:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	lsl r4, r0, #16
	asr r5, r4, #16
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl u32_to_i32
u32_to_i32:
	bx lr
.globl i8_to_i8
i8_to_i8:
	bx lr
.globl i8_to_i16
i8_to_i16:
	bx lr
.globl i8_to_i32
i8_to_i32:
	bx lr
.globl i16_to_i8
i16_to_i8:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	lsl r4, r0, #24
	asr r5, r4, #24
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl i16_to_i16
i16_to_i16:
	bx lr
.globl i16_to_i32
i16_to_i32:
	bx lr
.globl i32_to_i8
i32_to_i8:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	lsl r4, r0, #24
	asr r5, r4, #24
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl i32_to_i16
i32_to_i16:
	sub sp, sp, #8
	str r4, [sp, #0]
	str r5, [sp, #4]
	lsl r4, r0, #16
	asr r5, r4, #16
	mov r0, r5
	ldr r5, [sp, #4]
	ldr r4, [sp, #0]
	add sp, sp, #8
	bx lr
.globl i32_to_i32
i32_to_i32:
	bx lr
