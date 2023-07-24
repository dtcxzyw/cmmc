.data
.text
.globl u8_to_u8
u8_to_u8:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl u8_to_u16
u8_to_u16:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl u8_to_u32
u8_to_u32:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl u16_to_u8
u16_to_u8:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl u16_to_u16
u16_to_u16:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl u16_to_u32
u16_to_u32:
.p2align 2
	andi $v0, $a0, 65535
	jr $ra
	nop
.globl u32_to_u8
u32_to_u8:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl u32_to_u16
u32_to_u16:
.p2align 2
	andi $v0, $a0, 65535
	jr $ra
	nop
.globl u32_to_u32
u32_to_u32:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i8_to_u8
i8_to_u8:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl i8_to_u16
i8_to_u16:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i8_to_u32
i8_to_u32:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i16_to_u8
i16_to_u8:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl i16_to_u16
i16_to_u16:
.p2align 2
	andi $v0, $a0, 65535
	jr $ra
	nop
.globl i16_to_u32
i16_to_u32:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i32_to_u8
i32_to_u8:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl i32_to_u16
i32_to_u16:
.p2align 2
	andi $v0, $a0, 65535
	jr $ra
	nop
.globl i32_to_u32
i32_to_u32:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl u8_to_i8
u8_to_i8:
.p2align 2
	sll $t0, $a0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
.globl u8_to_i16
u8_to_i16:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl u8_to_i32
u8_to_i32:
.p2align 2
	andi $v0, $a0, 255
	jr $ra
	nop
.globl u16_to_i8
u16_to_i8:
.p2align 2
	sll $t0, $a0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
.globl u16_to_i16
u16_to_i16:
.p2align 2
	sll $t0, $a0, 16
	sra $v0, $t0, 16
	jr $ra
	nop
.globl u16_to_i32
u16_to_i32:
.p2align 2
	andi $v0, $a0, 65535
	jr $ra
	nop
.globl u32_to_i8
u32_to_i8:
.p2align 2
	sll $t0, $a0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
.globl u32_to_i16
u32_to_i16:
.p2align 2
	sll $t0, $a0, 16
	sra $v0, $t0, 16
	jr $ra
	nop
.globl u32_to_i32
u32_to_i32:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i8_to_i8
i8_to_i8:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i8_to_i16
i8_to_i16:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i8_to_i32
i8_to_i32:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i16_to_i8
i16_to_i8:
.p2align 2
	sll $t0, $a0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
.globl i16_to_i16
i16_to_i16:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i16_to_i32
i16_to_i32:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl i32_to_i8
i32_to_i8:
.p2align 2
	sll $t0, $a0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
.globl i32_to_i16
i32_to_i16:
.p2align 2
	sll $t0, $a0, 16
	sra $v0, $t0, 16
	jr $ra
	nop
.globl i32_to_i32
i32_to_i32:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
