.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl u8_to_u8
u8_to_u8:
	ret
.p2align 2
.globl u8_to_u16
u8_to_u16:
	andi a0, a0, 255
	ret
.p2align 2
.globl u8_to_u32
u8_to_u32:
	andi a0, a0, 255
	ret
.p2align 2
.globl u16_to_u8
u16_to_u8:
	andi a0, a0, 255
	ret
.p2align 2
.globl u16_to_u16
u16_to_u16:
	ret
.p2align 2
.globl u16_to_u32
u16_to_u32:
	zext.h a0, a0
	ret
.p2align 2
.globl u32_to_u8
u32_to_u8:
	andi a0, a0, 255
	ret
.p2align 2
.globl u32_to_u16
u32_to_u16:
	zext.h a0, a0
	ret
.p2align 2
.globl u32_to_u32
u32_to_u32:
	ret
.p2align 2
.globl i8_to_u8
i8_to_u8:
	andi a0, a0, 255
	ret
.p2align 2
.globl i8_to_u16
i8_to_u16:
	ret
.p2align 2
.globl i8_to_u32
i8_to_u32:
	ret
.p2align 2
.globl i16_to_u8
i16_to_u8:
	andi a0, a0, 255
	ret
.p2align 2
.globl i16_to_u16
i16_to_u16:
	zext.h a0, a0
	ret
.p2align 2
.globl i16_to_u32
i16_to_u32:
	ret
.p2align 2
.globl i32_to_u8
i32_to_u8:
	andi a0, a0, 255
	ret
.p2align 2
.globl i32_to_u16
i32_to_u16:
	zext.h a0, a0
	ret
.p2align 2
.globl i32_to_u32
i32_to_u32:
	zext.w a0, a0
	ret
.p2align 2
.globl u8_to_i8
u8_to_i8:
	sext.b a0, a0
	ret
.p2align 2
.globl u8_to_i16
u8_to_i16:
	andi a0, a0, 255
	ret
.p2align 2
.globl u8_to_i32
u8_to_i32:
	andi a0, a0, 255
	ret
.p2align 2
.globl u16_to_i8
u16_to_i8:
	sext.b a0, a0
	ret
.p2align 2
.globl u16_to_i16
u16_to_i16:
	sext.h a0, a0
	ret
.p2align 2
.globl u16_to_i32
u16_to_i32:
	zext.h a0, a0
	ret
.p2align 2
.globl u32_to_i8
u32_to_i8:
	sext.b a0, a0
	ret
.p2align 2
.globl u32_to_i16
u32_to_i16:
	sext.h a0, a0
	ret
.p2align 2
.globl u32_to_i32
u32_to_i32:
	ret
.p2align 2
.globl i8_to_i8
i8_to_i8:
	ret
.p2align 2
.globl i8_to_i16
i8_to_i16:
	ret
.p2align 2
.globl i8_to_i32
i8_to_i32:
	ret
.p2align 2
.globl i16_to_i8
i16_to_i8:
	sext.b a0, a0
	ret
.p2align 2
.globl i16_to_i16
i16_to_i16:
	ret
.p2align 2
.globl i16_to_i32
i16_to_i32:
	ret
.p2align 2
.globl i32_to_i8
i32_to_i8:
	sext.b a0, a0
	ret
.p2align 2
.globl i32_to_i16
i32_to_i16:
	sext.h a0, a0
	ret
.p2align 2
.globl i32_to_i32
i32_to_i32:
	ret
