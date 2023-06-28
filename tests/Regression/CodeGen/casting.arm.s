.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl u8_to_u8
u8_to_u8:
	bx lr
.globl u8_to_u16
u8_to_u16:
	uxtb r0, r0
	bx lr
.globl u8_to_u32
u8_to_u32:
	uxtb r0, r0
	bx lr
.globl u16_to_u8
u16_to_u8:
	uxtb r0, r0
	bx lr
.globl u16_to_u16
u16_to_u16:
	bx lr
.globl u16_to_u32
u16_to_u32:
	uxth r0, r0
	bx lr
.globl u32_to_u8
u32_to_u8:
	uxtb r0, r0
	bx lr
.globl u32_to_u16
u32_to_u16:
	uxth r0, r0
	bx lr
.globl u32_to_u32
u32_to_u32:
	bx lr
.globl i8_to_u8
i8_to_u8:
	uxtb r0, r0
	bx lr
.globl i8_to_u16
i8_to_u16:
	bx lr
.globl i8_to_u32
i8_to_u32:
	bx lr
.globl i16_to_u8
i16_to_u8:
	uxtb r0, r0
	bx lr
.globl i16_to_u16
i16_to_u16:
	uxth r0, r0
	bx lr
.globl i16_to_u32
i16_to_u32:
	bx lr
.globl i32_to_u8
i32_to_u8:
	uxtb r0, r0
	bx lr
.globl i32_to_u16
i32_to_u16:
	uxth r0, r0
	bx lr
.globl i32_to_u32
i32_to_u32:
	bx lr
.globl u8_to_i8
u8_to_i8:
	sxtb r0, r0
	bx lr
.globl u8_to_i16
u8_to_i16:
	uxtb r0, r0
	bx lr
.globl u8_to_i32
u8_to_i32:
	uxtb r0, r0
	bx lr
.globl u16_to_i8
u16_to_i8:
	sxtb r0, r0
	bx lr
.globl u16_to_i16
u16_to_i16:
	sxth r0, r0
	bx lr
.globl u16_to_i32
u16_to_i32:
	uxth r0, r0
	bx lr
.globl u32_to_i8
u32_to_i8:
	sxtb r0, r0
	bx lr
.globl u32_to_i16
u32_to_i16:
	sxth r0, r0
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
	sxtb r0, r0
	bx lr
.globl i16_to_i16
i16_to_i16:
	bx lr
.globl i16_to_i32
i16_to_i32:
	bx lr
.globl i32_to_i8
i32_to_i8:
	sxtb r0, r0
	bx lr
.globl i32_to_i16
i32_to_i16:
	sxth r0, r0
	bx lr
.globl i32_to_i32
i32_to_i32:
	bx lr
