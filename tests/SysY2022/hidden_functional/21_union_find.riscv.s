.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
parent:
	.zero	4020
.text
.p2align 2
find:
	addi sp, sp, -48
pcrel75:
	auipc a1, %pcrel_hi(parent)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s4, 16(sp)
	addi s4, a1, %pcrel_lo(pcrel75)
	sd s1, 24(sp)
	sh2add a0, a0, s4
	sd s2, 32(sp)
	sd s3, 40(sp)
	lw s1, 0(a0)
	beq s0, s1, label22
	sh2add a1, s1, s4
	lw s2, 0(a1)
	bne s1, s2, label7
	mv a0, s1
	sh2add a1, s0, s4
	sw s1, 0(a1)
	j label2
label22:
	mv a0, s0
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	addi sp, sp, 48
	ret
label7:
	sh2add a1, s2, s4
	lw s3, 0(a1)
	beq s2, s3, label38
	sh2add a1, s3, s4
	lw a0, 0(a1)
	bne s3, a0, label13
	mv a0, s3
	sh2add a1, s2, s4
	sw s3, 0(a1)
	sh2add a1, s1, s4
	sw s3, 0(a1)
	sh2add a1, s0, s4
	sw s3, 0(a1)
	j label2
label38:
	mv a0, s2
	sh2add a1, s1, s4
	sw s2, 0(a1)
	sh2add a1, s0, s4
	sw s2, 0(a1)
	j label2
label13:
	jal find
	sh2add a1, s3, s4
	sw a0, 0(a1)
	sh2add a1, s2, s4
	sw a0, 0(a1)
	sh2add a1, s1, s4
	sw a0, 0(a1)
	sh2add a1, s0, s4
	sw a0, 0(a1)
	j label2
.p2align 2
.globl main
main:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	jal getint
	mv s0, a0
	jal getint
pcrel256:
	auipc a1, %pcrel_hi(parent)
	mv s2, a0
	addi s1, a1, %pcrel_lo(pcrel256)
	ble s0, zero, label77
	li a0, 4
	ble s0, a0, label147
	addiw a1, s0, -4
	addiw a3, s0, -20
	li a0, 16
	ble a1, a0, label153
	mv a0, s1
	mv a2, zero
.p2align 2
label99:
	addiw a4, a2, 1
	addiw t2, a2, 7
	slli a5, a4, 32
	addiw a4, a2, 2
	add.uw t0, a2, a5
	addiw a5, a2, 3
	sd t0, 0(a0)
	slli t1, a5, 32
	addiw a5, a2, 4
	add.uw t0, a4, t1
	addiw a4, a2, 5
	sd t0, 8(a0)
	slli t1, a4, 32
	addiw a4, a2, 6
	add.uw t0, a5, t1
	slli a5, t2, 32
	sd t0, 16(a0)
	add.uw t1, a4, a5
	addiw t0, a2, 8
	addiw a5, a2, 9
	sd t1, 24(a0)
	slli t1, a5, 32
	addiw a5, a2, 10
	add.uw a4, t0, t1
	addiw t1, a2, 11
	sd a4, 32(a0)
	slli t2, t1, 32
	addiw a4, a2, 12
	add.uw t0, a5, t2
	addiw a5, a2, 13
	sd t0, 40(a0)
	slli t1, a5, 32
	addiw a5, a2, 14
	add.uw t0, a4, t1
	addiw a4, a2, 15
	sd t0, 48(a0)
	addiw a2, a2, 16
	slli t1, a4, 32
	add.uw t0, a5, t1
	sd t0, 56(a0)
	ble a3, a2, label202
	addi a0, a0, 64
	j label99
label77:
	ble s2, zero, label118
	mv s3, zero
	j label85
label118:
	mv a1, zero
	mv a0, zero
.p2align 2
label79:
	ble s0, a0, label83
	lw a4, 0(s1)
	addi s1, s1, 4
	xor a2, a0, a4
	addiw a0, a0, 1
	sltiu a3, a2, 1
	addw a1, a1, a3
	j label79
.p2align 2
label85:
	jal getint
	mv s4, a0
	jal getint
	mv a3, a0
	mv a0, s4
	jal find
	mv a2, a0
	mv a0, a3
	jal find
	bne a2, a0, label89
	addiw s3, s3, 1
	bgt s2, s3, label85
	j label118
.p2align 2
label89:
	sh2add a1, a0, s1
	addiw s3, s3, 1
	sw a2, 0(a1)
	bgt s2, s3, label85
	j label118
label83:
	mv a0, a1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label153:
	mv a0, s1
	mv a2, zero
label92:
	sw a2, 0(a0)
	addiw a3, a2, 1
	addiw a4, a2, 2
	sw a3, 4(a0)
	addiw a3, a2, 3
	sw a4, 8(a0)
	addiw a2, a2, 4
	sw a3, 12(a0)
	ble a1, a2, label95
	addi a0, a0, 16
	j label92
label95:
	sh2add a0, a2, s1
label105:
	sw a2, 0(a0)
	addiw a2, a2, 1
	ble s0, a2, label77
	addi a0, a0, 4
	j label105
label147:
	mv a0, s1
	mv a2, zero
	j label105
label202:
	sh2add a0, a2, s1
	j label92
