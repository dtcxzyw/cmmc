.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.text
.globl main
main:
.p2align 2
	addi sp, sp, -72
pcrel627:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel627)
	sd s4, 8(sp)
	mv s4, a0
	sd s5, 16(sp)
	sd s0, 24(sp)
	sd s7, 32(sp)
	sd s6, 40(sp)
	sd s1, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	jal getarray
pcrel628:
	auipc a1, %pcrel_hi(y)
	addiw s6, a0, -21
	addiw s7, a0, -5
	addiw s5, a0, -1
	addi a0, a1, %pcrel_lo(pcrel628)
	mv s2, a0
	jal getarray
pcrel629:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel629)
	mv s3, a0
	jal getarray
pcrel630:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel630)
	mv s1, a0
	jal getarray
	li a0, 39
	jal _sysy_starttime
	mv a0, zero
pcrel631:
	auipc a1, %pcrel_hi(b)
	addi s0, a1, %pcrel_lo(pcrel631)
.p2align 2
label2:
	bgt s5, zero, label4
	j label71
.p2align 2
label32:
	blt a5, a2, label33
	mv a4, a1
	bgt s5, a1, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label31:
	addiw a1, a4, 1
	sh2add a3, a4, s4
	sh2add a2, a1, s4
	lw a5, 0(a3)
	addi t0, a5, 4
	lw a2, 0(a2)
	addi a3, a2, -4
	blt a5, a2, label38
	j label32
.p2align 2
label36:
	sh2add t0, a5, s2
	sh2add t3, a5, s3
	lw t1, 0(t0)
	addiw a5, a5, 1
	sh2add a3, t1, s1
	lw t0, 0(a3)
	lw t2, 0(t3)
	mulw t1, a4, t2
	addw t0, t0, t1
	sw t0, 0(a3)
	bgt a2, a5, label36
	mv a4, a1
	bgt s5, a1, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label38:
	ble a2, t0, label358
	mv t1, a5
.p2align 2
label39:
	sh2add t2, t1, s2
	lw t3, 0(t2)
	sh2add t4, t3, s1
	sh2add t3, t1, s3
	lw t5, 0(t4)
	lw t6, 0(t3)
	addw t5, t5, t6
	sw t5, 0(t4)
	lw t6, 4(t2)
	sh2add t4, t6, s1
	lw t5, 0(t4)
	lw a6, 4(t3)
	addw t6, t5, a6
	sw t6, 0(t4)
	lw a6, 8(t2)
	sh2add t4, a6, s1
	lw t5, 0(t4)
	lw a6, 8(t3)
	addw t6, t5, a6
	sw t6, 0(t4)
	lw t5, 12(t2)
	sh2add t2, t5, s1
	lw t4, 0(t2)
	lw t5, 12(t3)
	addw t3, t4, t5
	sw t3, 0(t2)
	addiw t2, t1, 4
	ble a3, t2, label397
	mv t1, t2
	j label39
.p2align 2
label358:
	mv t2, a5
	sh2add t3, a5, s2
	lw t4, 0(t3)
	sh2add t1, t4, s1
	sh2add t4, a5, s3
	addiw t2, a5, 1
	lw t3, 0(t1)
	lw t5, 0(t4)
	addw t3, t3, t5
	sw t3, 0(t1)
	ble a2, t2, label536
.p2align 2
label41:
	sh2add t3, t2, s2
	lw t4, 0(t3)
	sh2add t1, t4, s1
	sh2add t4, t2, s3
	addiw t2, t2, 1
	lw t3, 0(t1)
	lw t5, 0(t4)
	addw t3, t3, t5
	sw t3, 0(t1)
	bgt a2, t2, label41
	blt a5, a2, label33
	mv a4, a1
	bgt s5, a1, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label33:
	sh2add t1, a4, s0
	lw t2, 0(t1)
	addi a4, t2, -1
	bgt a2, t0, label34
	j label36
.p2align 2
label397:
	sh2add t3, t2, s2
	lw t4, 0(t3)
	sh2add t1, t4, s1
	sh2add t4, t2, s3
	addiw t2, t2, 1
	lw t3, 0(t1)
	lw t5, 0(t4)
	addw t3, t3, t5
	sw t3, 0(t1)
	bgt a2, t2, label41
	blt a5, a2, label33
	mv a4, a1
	bgt s5, a1, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label34:
	sh2add t0, a5, s2
	lw t1, 0(t0)
	sh2add t2, t1, s1
	sh2add t1, a5, s3
	addiw a5, a5, 4
	lw t3, 0(t2)
	lw t4, 0(t1)
	mulw t5, a4, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	lw t4, 4(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t5, 4(t1)
	mulw t4, a4, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t4, 8(t0)
	sh2add t2, t4, s1
	lw t3, 0(t2)
	lw t5, 8(t1)
	mulw t4, a4, t5
	addw t6, t3, t4
	sw t6, 0(t2)
	lw t3, 12(t0)
	sh2add t0, t3, s1
	lw t2, 0(t0)
	lw t1, 12(t1)
	mulw t3, a4, t1
	addw t2, t2, t3
	sw t2, 0(t0)
	bgt a3, a5, label34
	j label36
.p2align 2
label4:
	li a2, 4
	ble s5, a2, label74
	li a2, 16
	ble s7, a2, label77
	mv a2, zero
.p2align 2
label8:
	sh2add a1, a2, s0
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	addiw a1, a2, 16
	ble s6, a1, label109
	mv a2, a1
	j label8
.p2align 2
label6:
	sh2add a3, a1, s0
	addiw a1, a1, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s7, a1, label6
	j label87
.p2align 2
label109:
	sh2add a3, a1, s0
	addiw a1, a1, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s7, a1, label6
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a3)
	ble s5, a1, label545
.p2align 2
label10:
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label10
	mv a4, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label14:
	addiw a1, a4, 1
	sh2add a3, a4, s4
	sh2add a2, a1, s4
	lw a5, 0(a3)
	addi t0, a5, 4
	lw a2, 0(a2)
	addi a3, a2, -4
	blt a5, a2, label21
	j label15
.p2align 2
label17:
	sh2add t0, a5, s2
	sh2add t3, a5, s3
	lw t1, 0(t0)
	addiw a5, a5, 1
	sh2add a3, t1, s0
	lw t0, 0(a3)
	lw t2, 0(t3)
	mulw t1, a4, t2
	addw t0, t0, t1
	sw t0, 0(a3)
	bgt a2, a5, label17
	mv a4, a1
	bgt s5, a1, label14
	bgt s5, zero, label43
	mv a4, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label21:
	ble a2, t0, label206
	mv t1, a5
.p2align 2
label22:
	sh2add t2, t1, s2
	lw t3, 0(t2)
	sh2add t4, t3, s0
	sh2add t3, t1, s3
	lw t5, 0(t4)
	lw t6, 0(t3)
	addw t5, t5, t6
	sw t5, 0(t4)
	lw t6, 4(t2)
	sh2add t4, t6, s0
	lw t5, 0(t4)
	lw a6, 4(t3)
	addw t6, t5, a6
	sw t6, 0(t4)
	lw a6, 8(t2)
	sh2add t4, a6, s0
	lw t5, 0(t4)
	lw a6, 8(t3)
	addw t6, t5, a6
	sw t6, 0(t4)
	lw t5, 12(t2)
	sh2add t2, t5, s0
	lw t4, 0(t2)
	lw t3, 12(t3)
	addw t5, t4, t3
	sw t5, 0(t2)
	addiw t2, t1, 4
	ble a3, t2, label245
	mv t1, t2
	j label22
.p2align 2
label245:
	sh2add t3, t2, s2
	lw t4, 0(t3)
	sh2add t1, t4, s0
	sh2add t4, t2, s3
	addiw t2, t2, 1
	lw t3, 0(t1)
	lw t5, 0(t4)
	addw t3, t3, t5
	sw t3, 0(t1)
	ble a2, t2, label532
.p2align 2
label24:
	sh2add t3, t2, s2
	lw t4, 0(t3)
	sh2add t1, t4, s0
	sh2add t4, t2, s3
	addiw t2, t2, 1
	lw t3, 0(t1)
	lw t5, 0(t4)
	addw t3, t3, t5
	sw t3, 0(t1)
	bgt a2, t2, label24
	blt a5, a2, label16
	mv a4, a1
	bgt s5, a1, label14
	bgt s5, zero, label43
	mv a4, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label16:
	sh2add t2, a4, s1
	lw t1, 0(t2)
	addi a4, t1, -1
	bgt a2, t0, label19
	j label17
.p2align 2
label206:
	mv t2, a5
	sh2add t3, a5, s2
	lw t4, 0(t3)
	sh2add t1, t4, s0
	sh2add t4, a5, s3
	addiw t2, a5, 1
	lw t3, 0(t1)
	lw t5, 0(t4)
	addw t3, t3, t5
	sw t3, 0(t1)
	bgt a2, t2, label24
	blt a5, a2, label16
	mv a4, a1
	bgt s5, a1, label14
	ble s5, zero, label583
.p2align 2
label43:
	li a2, 4
	ble s5, a2, label415
	li a2, 16
	ble s7, a2, label425
	mv a2, zero
.p2align 2
label49:
	sh2add a1, a2, s1
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	addiw a1, a2, 16
	ble s6, a1, label457
	mv a2, a1
	j label49
.p2align 2
label15:
	blt a5, a2, label16
	mv a4, a1
	bgt s5, a1, label14
	bgt s5, zero, label43
	mv a4, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label19:
	sh2add t0, a5, s2
	lw t1, 0(t0)
	sh2add t2, t1, s0
	sh2add t1, a5, s3
	addiw a5, a5, 4
	lw t3, 0(t2)
	lw t5, 0(t1)
	mulw t4, a4, t5
	addw t3, t3, t4
	sw t3, 0(t2)
	lw t4, 4(t0)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t4, 4(t1)
	mulw t5, a4, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	lw t4, 8(t0)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t4, 8(t1)
	mulw t5, a4, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	lw t4, 12(t0)
	sh2add t0, t4, s0
	lw t2, 0(t0)
	lw t3, 12(t1)
	mulw t1, a4, t3
	addw t2, t2, t1
	sw t2, 0(t0)
	bgt a3, a5, label19
	j label17
.p2align 2
label44:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt s5, a1, label44
	j label422
.p2align 2
label425:
	mv a1, zero
	mv a3, s1
	li a1, 4
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	ble s7, a1, label540
.p2align 2
label47:
	sh2add a3, a1, s1
	addiw a1, a1, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s7, a1, label47
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt s5, a1, label44
	mv a4, zero
	bgt s5, zero, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label536:
	blt a5, a2, label33
	mv a4, a1
	bgt s5, a1, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label532:
	blt a5, a2, label16
	mv a4, a1
	bgt s5, a1, label14
	bgt s5, zero, label43
	mv a4, zero
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
label30:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s7, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label77:
	mv a1, zero
	mv a3, s0
	li a1, 4
	sw zero, 0(s0)
	sw zero, 4(s0)
	sw zero, 8(s0)
	sw zero, 12(s0)
	bgt s7, a1, label6
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label10
	mv a4, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label457:
	sh2add a3, a1, s1
	addiw a1, a1, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	bgt s7, a1, label47
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt s5, a1, label44
	mv a4, zero
	bgt s5, zero, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label545:
	mv a4, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label87:
	sh2add a3, a1, s0
	addiw a1, a1, 1
	sw zero, 0(a3)
	bgt s5, a1, label10
	mv a4, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label74:
	mv a1, zero
	mv a3, s0
	li a1, 1
	sw zero, 0(s0)
	bgt s5, a1, label10
	mv a4, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label71:
	mv a4, zero
	bgt s5, zero, label14
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label540:
	sh2add a2, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a2)
	bgt s5, a1, label44
	mv a4, zero
	bgt s5, zero, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label422:
	mv a4, zero
	bgt s5, zero, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label583:
	mv a4, zero
	bgt s5, zero, label31
	addiw a0, a0, 1
	li a1, 100
	blt a0, a1, label2
	j label30
.p2align 2
label415:
	mv a1, zero
	j label44
