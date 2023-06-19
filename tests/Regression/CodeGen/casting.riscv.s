.data
.text
.globl u8_to_u8
u8_to_u8:
	ret
.globl u8_to_u16
u8_to_u16:
	andi t1, a0, 255
	mv a0, t1
	ret
.globl u8_to_u32
u8_to_u32:
	andi t1, a0, 255
	mv a0, t1
	ret
.globl u16_to_u8
u16_to_u8:
	andi t1, a0, 255
	mv a0, t1
	ret
.globl u16_to_u16
u16_to_u16:
	ret
.globl u16_to_u32
u16_to_u32:
	li t1, 65535
	and t2, a0, t1
	mv a0, t2
	ret
.globl u32_to_u8
u32_to_u8:
	andi t1, a0, 255
	mv a0, t1
	ret
.globl u32_to_u16
u32_to_u16:
	li t1, 65535
	and t2, a0, t1
	mv a0, t2
	ret
.globl u32_to_u32
u32_to_u32:
	ret
.globl i8_to_u8
i8_to_u8:
	ret
.globl i8_to_u16
i8_to_u16:
	ret
.globl i8_to_u32
i8_to_u32:
	ret
.globl i16_to_u8
i16_to_u8:
	andi t1, a0, 255
	mv a0, t1
	ret
.globl i16_to_u16
i16_to_u16:
	ret
.globl i16_to_u32
i16_to_u32:
	ret
.globl i32_to_u8
i32_to_u8:
	andi t1, a0, 255
	mv a0, t1
	ret
.globl i32_to_u16
i32_to_u16:
	li t1, 65535
	and t2, a0, t1
	mv a0, t2
	ret
.globl i32_to_u32
i32_to_u32:
	ret
.globl u8_to_i8
u8_to_i8:
	ret
.globl u8_to_i16
u8_to_i16:
	andi t1, a0, 255
	mv a0, t1
	ret
.globl u8_to_i32
u8_to_i32:
	andi t1, a0, 255
	mv a0, t1
	ret
.globl u16_to_i8
u16_to_i8:
	slli t1, a0, 24
	srai t2, t1, 24
	mv a0, t2
	ret
.globl u16_to_i16
u16_to_i16:
	ret
.globl u16_to_i32
u16_to_i32:
	li t1, 65535
	and t2, a0, t1
	mv a0, t2
	ret
.globl u32_to_i8
u32_to_i8:
	slli t1, a0, 24
	srai t2, t1, 24
	mv a0, t2
	ret
.globl u32_to_i16
u32_to_i16:
	slli t1, a0, 16
	srai t2, t1, 16
	mv a0, t2
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
	slli t1, a0, 24
	srai t2, t1, 24
	mv a0, t2
	ret
.globl i16_to_i16
i16_to_i16:
	ret
.globl i16_to_i32
i16_to_i32:
	ret
.globl i32_to_i8
i32_to_i8:
	slli t1, a0, 24
	srai t2, t1, 24
	mv a0, t2
	ret
.globl i32_to_i16
i32_to_i16:
	slli t1, a0, 16
	srai t2, t1, 16
	mv a0, t2
	ret
.globl i32_to_i32
i32_to_i32:
	ret
