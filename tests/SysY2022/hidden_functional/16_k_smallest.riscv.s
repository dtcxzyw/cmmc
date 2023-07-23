.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
array:
	.zero	4000
.text
.globl main
main:
	addi sp, sp, -40
	sd s1, 32(sp)
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
	jal getint
	mv s0, a0
	bgt s1, zero, label31
	addiw a1, s1, -1
	mv a0, zero
	beq zero, a1, label23
pcrel219:
	auipc a3, %pcrel_hi(array)
	mv s2, zero
	addi a2, a3, %pcrel_lo(pcrel219)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, zero
	bgt a1, zero, label12
	mv a3, s1
	sh2add a4, a1, s1
	lw a2, 0(s1)
	lw a5, 0(a4)
	sw a5, 0(s1)
	sw a2, 0(a4)
	beq s0, zero, label69
	blt s0, zero, label22
	li a0, 1
	beq a0, a1, label23
pcrel220:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel220)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	sh2add a3, a0, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, a0, label69
	blt s0, a0, label22
	addiw a0, a0, 1
	beq a0, a1, label23
	j label195
label13:
	sh2add a5, s2, s1
	sh2add t1, a2, s1
	addiw s2, s2, 1
	lw t0, 0(a5)
	sw t0, 0(t1)
	sw a4, 0(a5)
	addiw a2, a2, 1
	bgt a1, a2, label12
	sh2add a3, s2, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, s2, label69
	blt s0, s2, label22
	addiw a0, s2, 1
	beq a0, a1, label23
pcrel221:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel221)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	sh2add a3, a0, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, a0, label69
	blt s0, a0, label22
	addiw a0, a0, 1
	beq a0, a1, label23
pcrel222:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel222)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	sh2add a3, a0, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	bne s0, a0, label171
label69:
	mv s0, zero
	j label17
label171:
	blt s0, s2, label22
	addiw a0, s2, 1
	beq a0, a1, label23
	j label195
label196:
	sh2add a3, s2, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, s2, label69
	j label171
label22:
	addiw a1, s2, -1
	beq a0, a1, label23
pcrel223:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel223)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	sh2add a3, a0, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, a0, label69
	blt s0, a0, label22
	addiw a0, a0, 1
	beq a0, a1, label23
pcrel224:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel224)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	sh2add a3, a0, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, a0, label69
	blt s0, a0, label22
	addiw a0, a0, 1
	beq a0, a1, label23
pcrel225:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel225)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	ble a1, a0, label196
label12:
	sh2add a5, a2, s1
	lw a4, 0(a5)
	bge a3, a4, label13
	addiw a2, a2, 1
	bgt a1, a2, label12
	sh2add a3, s2, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, s2, label69
	blt s0, s2, label22
	addiw a0, s2, 1
	beq a0, a1, label23
pcrel226:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel226)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	sh2add a3, a0, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, a0, label69
	blt s0, a0, label22
	addiw a0, a0, 1
	beq a0, a1, label23
pcrel227:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel227)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	j label196
label31:
	auipc a1, %pcrel_hi(array)
	mv s3, zero
	addi s2, a1, %pcrel_lo(label31)
	j label25
label23:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label25:
	jal getint
	sh2add a1, s3, s2
	addiw s3, s3, 1
	sw a0, 0(a1)
	bgt s1, s3, label25
	addiw a1, s1, -1
	mv a0, zero
	beq zero, a1, label23
pcrel228:
	auipc a3, %pcrel_hi(array)
	mv s2, zero
	addi a2, a3, %pcrel_lo(pcrel228)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, zero
	bgt a1, zero, label12
	mv a3, s1
	sh2add a4, a1, s1
	lw a2, 0(s1)
	lw a5, 0(a4)
	sw a5, 0(s1)
	sw a2, 0(a4)
	beq s0, zero, label69
	blt s0, zero, label22
	li a0, 1
	beq a0, a1, label23
pcrel229:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel229)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	sh2add a3, a0, s1
	sh2add a4, a1, s1
	lw a2, 0(a3)
	lw a5, 0(a4)
	sw a5, 0(a3)
	sw a2, 0(a4)
	beq s0, a0, label69
	blt s0, a0, label22
	addiw a0, a0, 1
	beq a0, a1, label23
pcrel230:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(pcrel230)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	j label196
label17:
	ble s2, s0, label23
	sh2add a1, s0, s1
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s0, s0, 1
	j label17
label195:
	auipc a3, %pcrel_hi(array)
	mv s2, a0
	addi a2, a3, %pcrel_lo(label195)
	sh2add a4, a1, a2
	mv s1, a2
	lw a3, 0(a4)
	mv a2, a0
	bgt a1, a0, label12
	j label196
