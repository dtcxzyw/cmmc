.data
.text
.globl u8_to_u8
u8_to_u8:
	ret
.globl u8_to_u16
u8_to_u16:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl u8_to_u32
u8_to_u32:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl u16_to_u8
u16_to_u8:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl u16_to_u16
u16_to_u16:
	ret
.globl u16_to_u32
u16_to_u32:
	li a1, 65535
	and a2, a0, a1
	mv a0, a2
	ret
.globl u32_to_u8
u32_to_u8:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl u32_to_u16
u32_to_u16:
	li a1, 65535
	and a2, a0, a1
	mv a0, a2
	ret
.globl u32_to_u32
u32_to_u32:
	ret
.globl i8_to_u8
i8_to_u8:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl i8_to_u16
i8_to_u16:
	ret
.globl i8_to_u32
i8_to_u32:
	ret
.globl i16_to_u8
i16_to_u8:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl i16_to_u16
i16_to_u16:
	li a1, 65535
	and a2, a0, a1
	mv a0, a2
	ret
.globl i16_to_u32
i16_to_u32:
	ret
.globl i32_to_u8
i32_to_u8:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl i32_to_u16
i32_to_u16:
	li a1, 65535
	and a2, a0, a1
	mv a0, a2
	ret
.globl i32_to_u32
i32_to_u32:
	li a1, 4294967295
	and a2, a0, a1
	mv a0, a2
	ret
.globl u8_to_i8
u8_to_i8:
	slli a1, a0, 24
	srai a2, a1, 24
	mv a0, a2
	ret
.globl u8_to_i16
u8_to_i16:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl u8_to_i32
u8_to_i32:
	andi a1, a0, 255
	mv a0, a1
	ret
.globl u16_to_i8
u16_to_i8:
	slli a1, a0, 24
	srai a2, a1, 24
	mv a0, a2
	ret
.globl u16_to_i16
u16_to_i16:
	slli a1, a0, 16
	srai a2, a1, 16
	mv a0, a2
	ret
.globl u16_to_i32
u16_to_i32:
	li a1, 65535
	and a2, a0, a1
	mv a0, a2
	ret
.globl u32_to_i8
u32_to_i8:
	slli a1, a0, 24
	srai a2, a1, 24
	mv a0, a2
	ret
.globl u32_to_i16
u32_to_i16:
	slli a1, a0, 16
	srai a2, a1, 16
	mv a0, a2
	ret
.globl u32_to_i32
u32_to_i32:
	ret
.globl i8_to_i8
i8_to_i8:
	ret
.globl i8_to_i16
i8_to_i16:
	ret
.globl i8_to_i32
i8_to_i32:
	ret
.globl i16_to_i8
i16_to_i8:
	slli a1, a0, 24
	srai a2, a1, 24
	mv a0, a2
	ret
.globl i16_to_i16
i16_to_i16:
	ret
.globl i16_to_i32
i16_to_i32:
	ret
.globl i32_to_i8
i32_to_i8:
	slli a1, a0, 24
	srai a2, a1, 24
	mv a0, a2
	ret
.globl i32_to_i16
i32_to_i16:
	slli a1, a0, 16
	srai a2, a1, 16
	mv a0, a2
	ret
.globl i32_to_i32
i32_to_i32:
	ret
