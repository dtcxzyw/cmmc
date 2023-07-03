.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s2, 40(sp)
	sd s1, 32(sp)
	sd s6, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel648:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel648)
pcrel649:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel649)
pcrel650:
	auipc a0, %pcrel_hi(C)
	addi s3, a0, %pcrel_lo(pcrel650)
	mv s5, zero
label2:
	ble s0, s5, label126
	j label4
label126:
	mv s4, zero
	j label9
label4:
	ble s0, zero, label129
	j label128
label129:
	addiw s5, s5, 1
	j label2
label9:
	ble s0, s4, label16
	ble s0, zero, label12
	slli a0, s4, 12
	add s5, s1, a0
	mv s6, zero
	j label14
label16:
	li a0, 65
	jal _sysy_starttime
	mv a0, zero
label17:
	mv a2, zero
label19:
	ble s0, a2, label162
	j label21
label162:
	mv a2, zero
	j label34
label21:
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, zero, label167
	mv a4, zero
	j label22
label167:
	addiw a2, a2, 1
	j label19
label22:
	addiw a3, a4, 4
	ble s0, a3, label24
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label22
label34:
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, a2, label211
	mv a3, zero
	j label94
label211:
	mv a2, zero
label36:
	ble s0, a2, label215
	j label81
label215:
	mv a2, zero
label38:
	slliw a1, a2, 12
	add a1, s3, a1
	ble s0, a2, label40
	mv a3, zero
	j label60
label40:
	addiw a0, a0, 1
	li a1, 5
	bge a0, a1, label226
	j label17
label226:
	mv s2, zero
	mv a1, zero
label41:
	ble s0, a1, label59
	ble s0, zero, label233
	j label232
label59:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s2, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label60:
	ble s0, a3, label62
	j label63
label62:
	addiw a2, a2, 1
	j label38
label63:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label65
	j label294
label65:
	ble s0, zero, label294
	slliw a4, a3, 12
	add a4, s1, a4
	li t0, 4
	ble s0, t0, label304
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
	j label78
label304:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
	j label69
label81:
	slliw a1, a2, 12
	add a1, s1, a1
	ble s0, zero, label82
	mv a4, zero
label83:
	addiw a3, a4, 4
	ble s0, a3, label85
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label83
label94:
	ble s0, a3, label96
	j label97
label96:
	addiw a2, a2, 1
	j label34
label97:
	slliw a4, a3, 12
	add a5, s2, a4
	sh2add a4, a2, a5
	lw a4, 0(a4)
	bne a4, zero, label98
	j label473
label69:
	addiw t0, t2, 4
	ble s0, t0, label72
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label69
label72:
	addiw t0, t2, 4
	ble s0, t0, label343
	j label76
label343:
	mv t0, t2
	j label74
label76:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label72
label74:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label294
	j label74
label78:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label416
	mv t3, t1
	mv t1, t2
	j label78
label416:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	j label69
label473:
	addiw a3, a3, 1
	j label94
label294:
	addiw a3, a3, 1
	j label60
label98:
	ble s0, zero, label473
	slliw a4, a3, 12
	add a4, s3, a4
	li t0, 4
	ble s0, t0, label482
	sh2add t0, a2, a5
	lw t0, 0(t0)
	li t1, 4
	mv t3, zero
	j label111
label482:
	mv t2, zero
	sh2add a5, a2, a5
	lw a5, 0(a5)
label102:
	addiw t0, t2, 4
	ble s0, t0, label105
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label102
label105:
	addiw t0, t2, 4
	ble s0, t0, label521
	j label109
label521:
	mv t0, t2
label107:
	sh2add t1, t0, a4
	lw t2, 0(t1)
	sh2add t3, t0, a1
	lw t3, 0(t3)
	mulw t3, a5, t3
	addw t2, t2, t3
	sw t2, 0(t1)
	addiw t0, t0, 1
	ble s0, t0, label473
	j label107
label109:
	sh2add t1, t2, a4
	lw t3, 0(t1)
	sh2add t2, t2, a1
	lw t4, 0(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t1)
	lw t3, 4(t1)
	lw t4, 4(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 4(t1)
	lw t3, 8(t1)
	lw t4, 8(t2)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 8(t1)
	lw t3, 12(t1)
	lw t2, 12(t2)
	mulw t2, a5, t2
	addw t2, t3, t2
	sw t2, 12(t1)
	mv t2, t0
	j label105
label111:
	sh2add t2, t3, a4
	lw t4, 0(t2)
	sh2add t3, t3, a1
	lw t5, 0(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, t0, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, t0, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label594
	mv t3, t1
	mv t1, t2
	j label111
label594:
	mv t2, t1
	sh2add a5, a2, a5
	lw a5, 0(a5)
	j label102
label85:
	addiw a3, a4, 4
	ble s0, a3, label433
	j label432
label433:
	mv a3, a4
label87:
	addiw a4, a3, 4
	ble s0, a4, label90
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	j label87
label90:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label82
	j label90
label24:
	addiw a3, a4, 4
	ble s0, a3, label177
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label24
label177:
	mv a3, a4
label27:
	addiw a4, a3, 4
	ble s0, a4, label30
	sh2add a3, a3, a1
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a3, a4
	j label27
label30:
	sh2add a4, a3, a1
	sw zero, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label167
	j label30
label432:
	sh2add a4, a4, a1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	mv a4, a3
	j label85
label14:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label12
	j label14
label82:
	addiw a2, a2, 1
	j label36
label12:
	addiw s4, s4, 1
	j label9
label233:
	addiw a1, a1, 1
	j label41
label128:
	slli a0, s5, 12
	add s4, s2, a0
	mv s6, zero
label6:
	jal getint
	sh2add a1, s6, s4
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label129
	j label6
label232:
	slli a0, a1, 12
	add a0, s1, a0
	mv a4, s2
	mv a3, zero
label46:
	addiw a2, a3, 4
	ble s0, a2, label49
	sh2add a3, a3, a0
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	j label46
label49:
	addiw a2, a3, 4
	ble s0, a2, label245
	j label55
label245:
	mv a2, a4
label52:
	sh2add a4, a3, a0
	lw a4, 0(a4)
	addw a2, a2, a4
	addiw a3, a3, 1
	ble s0, a3, label254
	j label52
label254:
	mv s2, a2
	addiw a1, a1, 1
	j label41
label55:
	sh2add a3, a3, a0
	lw a5, 0(a3)
	addw a4, a4, a5
	lw a5, 4(a3)
	addw a4, a4, a5
	lw a5, 8(a3)
	addw a4, a4, a5
	lw a3, 12(a3)
	addw a4, a4, a3
	mv a3, a2
	j label49
