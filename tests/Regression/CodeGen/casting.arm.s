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
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u8_to_u32
u8_to_u32:
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u16_to_u8
u16_to_u8:
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u16_to_u16
u16_to_u16:
	bx lr
.globl u16_to_u32
u16_to_u32:
	push { r4 }
	uxth r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u32_to_u8
u32_to_u8:
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u32_to_u16
u32_to_u16:
	push { r4 }
	uxth r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u32_to_u32
u32_to_u32:
	bx lr
.globl i8_to_u8
i8_to_u8:
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl i8_to_u16
i8_to_u16:
	bx lr
.globl i8_to_u32
i8_to_u32:
	bx lr
.globl i16_to_u8
i16_to_u8:
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl i16_to_u16
i16_to_u16:
	push { r4 }
	uxth r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl i16_to_u32
i16_to_u32:
	bx lr
.globl i32_to_u8
i32_to_u8:
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl i32_to_u16
i32_to_u16:
	push { r4 }
	uxth r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl i32_to_u32
i32_to_u32:
	bx lr
.globl u8_to_i8
u8_to_i8:
	push { r4 }
	sxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u8_to_i16
u8_to_i16:
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u8_to_i32
u8_to_i32:
	push { r4 }
	uxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u16_to_i8
u16_to_i8:
	push { r4 }
	sxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u16_to_i16
u16_to_i16:
	push { r4 }
	sxth r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u16_to_i32
u16_to_i32:
	push { r4 }
	uxth r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u32_to_i8
u32_to_i8:
	push { r4 }
	sxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl u32_to_i16
u32_to_i16:
	push { r4 }
	sxth r4, r0
	mov r0, r4
	pop { r4 }
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
	push { r4 }
	sxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl i16_to_i16
i16_to_i16:
	bx lr
.globl i16_to_i32
i16_to_i32:
	bx lr
.globl i32_to_i8
i32_to_i8:
	push { r4 }
	sxtb r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl i32_to_i16
i32_to_i16:
	push { r4 }
	sxth r4, r0
	mov r0, r4
	pop { r4 }
	bx lr
.globl i32_to_i32
i32_to_i32:
	bx lr