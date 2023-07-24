.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl u8_to_u8
u8_to_u8:
.p2align 2
	ret
.globl u8_to_u16
u8_to_u16:
.p2align 2
	andi a0, a0, 255
	ret
.globl u8_to_u32
u8_to_u32:
.p2align 2
	andi a0, a0, 255
	ret
.globl u16_to_u8
u16_to_u8:
.p2align 2
	andi a0, a0, 255
	ret
.globl u16_to_u16
u16_to_u16:
.p2align 2
	ret
.globl u16_to_u32
u16_to_u32:
.p2align 2
	li a1, 65535
	and a0, a0, a1
	ret
.globl u32_to_u8
u32_to_u8:
.p2align 2
	andi a0, a0, 255
	ret
.globl u32_to_u16
u32_to_u16:
.p2align 2
	li a1, 65535
	and a0, a0, a1
	ret
.globl u32_to_u32
u32_to_u32:
.p2align 2
	ret
.globl i8_to_u8
i8_to_u8:
.p2align 2
	andi a0, a0, 255
	ret
.globl i8_to_u16
i8_to_u16:
.p2align 2
	ret
.globl i8_to_u32
i8_to_u32:
.p2align 2
	ret
.globl i16_to_u8
i16_to_u8:
.p2align 2
	andi a0, a0, 255
	ret
.globl i16_to_u16
i16_to_u16:
.p2align 2
	li a1, 65535
	and a0, a0, a1
	ret
.globl i16_to_u32
i16_to_u32:
.p2align 2
	ret
.globl i32_to_u8
i32_to_u8:
.p2align 2
	andi a0, a0, 255
	ret
.globl i32_to_u16
i32_to_u16:
.p2align 2
	li a1, 65535
	and a0, a0, a1
	ret
.globl i32_to_u32
i32_to_u32:
.p2align 2
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl u8_to_i8
u8_to_i8:
.p2align 2
	sext.b a0, a0
	ret
.globl u8_to_i16
u8_to_i16:
.p2align 2
	andi a0, a0, 255
	ret
.globl u8_to_i32
u8_to_i32:
.p2align 2
	andi a0, a0, 255
	ret
.globl u16_to_i8
u16_to_i8:
.p2align 2
	sext.b a0, a0
	ret
.globl u16_to_i16
u16_to_i16:
.p2align 2
	sext.h a0, a0
	ret
.globl u16_to_i32
u16_to_i32:
.p2align 2
	li a1, 65535
	and a0, a0, a1
	ret
.globl u32_to_i8
u32_to_i8:
.p2align 2
	sext.b a0, a0
	ret
.globl u32_to_i16
u32_to_i16:
.p2align 2
	sext.h a0, a0
	ret
.globl u32_to_i32
u32_to_i32:
.p2align 2
	ret
.globl i8_to_i8
i8_to_i8:
.p2align 2
	ret
.globl i8_to_i16
i8_to_i16:
.p2align 2
	ret
.globl i8_to_i32
i8_to_i32:
.p2align 2
	ret
.globl i16_to_i8
i16_to_i8:
.p2align 2
	sext.b a0, a0
	ret
.globl i16_to_i16
i16_to_i16:
.p2align 2
	ret
.globl i16_to_i32
i16_to_i32:
.p2align 2
	ret
.globl i32_to_i8
i32_to_i8:
.p2align 2
	sext.b a0, a0
	ret
.globl i32_to_i16
i32_to_i16:
.p2align 2
	sext.h a0, a0
	ret
.globl i32_to_i32
i32_to_i32:
.p2align 2
	ret
