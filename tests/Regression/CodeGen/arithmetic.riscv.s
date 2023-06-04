.data
.text
.globl add_imm
add_imm:
	addi sp, sp, -32
	sd s0, 16(sp)
	sd s1, 24(sp)
	mv s0, a0
	addiw s1, s0, 1
	mv a0, s1
	ld s1, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
.globl add_large_imm
add_large_imm:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	li s1, 262144
	addw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl add_reg
add_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	addw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl and_imm
and_imm:
	addi sp, sp, -32
	sd s0, 16(sp)
	sd s1, 24(sp)
	mv s0, a0
	andi s1, s0, 1
	mv a0, s1
	ld s1, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
.globl and_large_imm
and_large_imm:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	li s1, 262144
	and t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl and_reg
and_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	and t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl or_imm
or_imm:
	addi sp, sp, -32
	sd s0, 16(sp)
	sd s1, 24(sp)
	mv s0, a0
	ori s1, s0, 1
	mv a0, s1
	ld s1, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
.globl or_large_imm
or_large_imm:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	li s1, 262144
	or t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl or_reg
or_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	or t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl xor_imm
xor_imm:
	addi sp, sp, -32
	sd s0, 16(sp)
	sd s1, 24(sp)
	mv s0, a0
	xori s1, s0, 1
	mv a0, s1
	ld s1, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
.globl xor_large_imm
xor_large_imm:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	li s1, 262144
	xor t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl xor_reg
xor_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	xor t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl sub_imm
sub_imm:
	addi sp, sp, -32
	sd s0, 16(sp)
	sd s1, 24(sp)
	mv s0, a0
	addiw s1, s0, -1
	mv a0, s1
	ld s1, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
.globl sub_reg
sub_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	subw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl mul_imm
mul_imm:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	li s1, 3
	mulw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl mul_reg
mul_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	mulw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl div_imm
div_imm:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	li s1, 3
	divw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl div_reg
div_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	divw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl mod_imm
mod_imm:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	li s1, 3
	remw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl mod_reg
mod_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	remw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl shl_imm
shl_imm:
	addi sp, sp, -32
	sd s0, 16(sp)
	sd s1, 24(sp)
	mv s0, a0
	slliw s1, s0, 3
	mv a0, s1
	ld s1, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
.globl shl_reg
shl_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	sllw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
.globl ashr_imm
ashr_imm:
	addi sp, sp, -32
	sd s0, 16(sp)
	sd s1, 24(sp)
	mv s0, a0
	sraiw s1, s0, 3
	mv a0, s1
	ld s1, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	jr ra
.globl ashr_reg
ashr_reg:
	addi sp, sp, -40
	sd s0, 24(sp)
	sd s1, 32(sp)
	mv s0, a0
	mv s1, a1
	sraw t1, s0, s1
	mv a0, t1
	ld s1, 32(sp)
	ld s0, 24(sp)
	addi sp, sp, 40
	jr ra
