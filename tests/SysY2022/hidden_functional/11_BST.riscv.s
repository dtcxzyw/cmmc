.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
value:
	.zero	40000
.align 8
left_child:
	.zero	40000
.align 8
right_child:
	.zero	40000
.text
insert:
.p2align 2
	addi sp, sp, -40
pcrel92:
	auipc a3, %pcrel_hi(value)
pcrel93:
	auipc a4, %pcrel_hi(left_child)
pcrel94:
	auipc a5, %pcrel_hi(right_child)
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	addi a0, a3, %pcrel_lo(pcrel92)
	sd s2, 24(sp)
	addi a3, a4, %pcrel_lo(pcrel93)
	sd s3, 32(sp)
	addi a4, a5, %pcrel_lo(pcrel94)
	li a5, -1
	bne s0, a5, label3
	lw a5, 0(a2)
	sh2add a0, a5, a0
	sw a1, 0(a0)
	li a0, -1
	sh2add a1, a5, a3
	addi a3, a5, 1
	sw a0, 0(a1)
	sh2add a1, a5, a4
	sw a0, 0(a1)
	mv a0, a5
	sw a3, 0(a2)
label6:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label3:
	sh2add t0, s0, a0
	mv s1, a4
	lw a5, 0(t0)
	bgt a1, a5, label80
	mv s1, a3
label80:
	sh2add a5, s0, s1
	li t0, -1
	lw s2, 0(a5)
	bne s2, t0, label5
	lw a5, 0(a2)
	sh2add a0, a5, a0
	sw a1, 0(a0)
	li a0, -1
	sh2add a1, a5, a3
	sw a0, 0(a1)
	sh2add a1, a5, a4
	sw a0, 0(a1)
	sh2add a1, s0, s1
	addi a0, a5, 1
	sw a0, 0(a2)
	mv a0, s0
	sw a5, 0(a1)
	j label6
label5:
	sh2add t0, s2, a0
	mv a0, a4
	lw a5, 0(t0)
	bgt a1, a5, label82
	mv a0, a3
label82:
	sh2add s3, s2, a0
	lw a0, 0(s3)
	jal insert
	sh2add a1, s0, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s2, 0(a1)
	j label6
delete:
.p2align 2
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s2, 16(sp)
	li a0, -1
	sd s1, 24(sp)
	sd s3, 32(sp)
	beq s0, a0, label166
pcrel583:
	auipc a3, %pcrel_hi(value)
	addi a0, a3, %pcrel_lo(pcrel583)
pcrel584:
	auipc a3, %pcrel_hi(right_child)
	sh2add a4, s0, a0
	mv a2, a0
	addi s2, a3, %pcrel_lo(pcrel584)
	lw a0, 0(a4)
	ble a1, a0, label117
	sh2add a0, s0, s2
	li a3, -1
	lw s1, 0(a0)
	bne s1, a3, label101
	li a1, -1
	sw a1, 0(a0)
	mv a0, s0
	j label96
label166:
	li a0, -1
label96:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label117:
	auipc a3, %pcrel_hi(left_child)
	addi s3, a3, %pcrel_lo(label117)
	bge a1, a0, label136
	sh2add a3, s0, s3
	li a0, -1
	lw s1, 0(a3)
	bne s1, a0, label120
	sh2add a0, s0, s3
	li a1, -1
	sw a1, 0(a0)
	mv a0, s0
	j label96
label101:
	sh2add a3, s1, a2
	lw a0, 0(a3)
	ble a1, a0, label104
label116:
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label96
label136:
	sh2add a1, s0, s3
	li a3, -1
	lw a0, 0(a1)
	beq a0, a3, label160
	sh2add a3, s0, s2
	li a4, -1
	lw a1, 0(a3)
	beq a1, a4, label96
	sh2add a1, s0, s2
	lw s1, 0(a1)
	mv a0, s1
label139:
	li a1, -1
	beq a0, a1, label360
	sh2add a3, a0, s3
	li a4, -1
	lw a1, 0(a3)
	bne a1, a4, label367
	j label142
label104:
	auipc a4, %pcrel_hi(left_child)
	addi a3, a4, %pcrel_lo(label104)
	bge a1, a0, label106
label105:
	sh2add s3, s1, a3
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label96
label120:
	sh2add a3, s1, a2
	lw a0, 0(a3)
	ble a1, a0, label122
	sh2add s2, s1, s2
	lw a0, 0(s2)
	jal delete
	sw a0, 0(s2)
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	mv a0, s0
	j label96
label122:
	auipc a4, %pcrel_hi(left_child)
	addi a3, a4, %pcrel_lo(label122)
	blt a1, a0, label133
	sh2add a1, s1, a3
	li a4, -1
	lw a0, 0(a1)
	bne a0, a4, label124
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	bne a0, a1, label329
	li a0, -1
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label96
label160:
	sh2add a1, s0, s2
	li a2, -1
	lw a0, 0(a1)
	beq a0, a2, label166
	lw a0, 0(a1)
	j label96
label106:
	sh2add a4, s1, a3
	li a1, -1
	lw a0, 0(a4)
	beq a0, a1, label107
	sh2add a4, s1, s2
	li a5, -1
	lw a1, 0(a4)
	beq a1, a5, label102
	lw a1, 0(a4)
	mv a0, a1
label111:
	li a4, -1
	beq a0, a4, label236
	sh2add t0, a0, a3
	li a5, -1
	lw a4, 0(t0)
	bne a4, a5, label251
	j label113
label218:
	sh2add a1, s1, s2
	lw a0, 0(a1)
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label360:
	li a0, -1
label142:
	sh2add a3, a0, a2
	sh2add a0, s0, a2
	lw a1, 0(a3)
	li a3, -1
	sw a1, 0(a0)
	beq s1, a3, label219
	sh2add a3, s1, a2
	lw a0, 0(a3)
	bgt a1, a0, label116
pcrel585:
	auipc a4, %pcrel_hi(left_child)
	addi a3, a4, %pcrel_lo(pcrel585)
	blt a1, a0, label105
	sh2add a1, s1, a3
	li a4, -1
	lw a0, 0(a1)
	bne a0, a4, label151
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a1, label219
	j label218
label133:
	sh2add s2, s1, a3
	lw a0, 0(s2)
	jal delete
	sw a0, 0(s2)
	mv a0, s1
label134:
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label96
label107:
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	bne a0, a1, label218
label219:
	li a0, -1
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label124:
	sh2add a5, s1, s2
	li a4, -1
	lw a1, 0(a5)
	beq a1, a4, label134
	sh2add a4, s1, s2
	lw a1, 0(a4)
	mv a0, a1
label126:
	li a4, -1
	beq a0, a4, label308
	sh2add t0, a0, a3
	li a5, -1
	lw a4, 0(t0)
	bne a4, a5, label315
	j label129
label236:
	li a0, -1
label113:
	sh2add a4, a0, a2
	sh2add a2, s1, a2
	lw a3, 0(a4)
	sw a3, 0(a2)
	mv a0, a1
	mv a1, a3
	jal delete
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label96
label308:
	li a0, -1
label129:
	sh2add a4, a0, a2
	sh2add a2, s1, a2
	lw a3, 0(a4)
	sw a3, 0(a2)
	mv a0, a1
	mv a1, a3
	jal delete
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	mv a0, s0
	j label96
label102:
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label151:
	sh2add a5, s1, s2
	li a4, -1
	lw a1, 0(a5)
	beq a1, a4, label102
	sh2add a4, s1, s2
	lw a1, 0(a4)
	mv a0, a1
label153:
	li a4, -1
	bne a0, a4, label157
	li a0, -1
	j label113
label157:
	sh2add t0, a0, a3
	li a5, -1
	lw a4, 0(t0)
	beq a4, a5, label113
	mv a0, a4
	j label153
label251:
	mv a0, a4
	j label111
label329:
	sh2add a1, s1, s2
	lw a0, 0(a1)
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label96
label315:
	mv a0, a4
	j label126
label367:
	mv a0, a1
	j label139
inorder:
.p2align 2
	addi sp, sp, -16
	li a1, -1
	sd ra, 0(sp)
	sd s0, 8(sp)
	beq a0, a1, label589
	mv s0, a0
label587:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label587)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel627:
	auipc a3, %pcrel_hi(value)
	addi a1, a3, %pcrel_lo(pcrel627)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal putint
	li a0, 32
	jal putch
pcrel628:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel628)
	sh2add a2, s0, a0
	li a0, -1
	lw s0, 0(a2)
	bne s0, a0, label587
label589:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	sd s2, 24(sp)
	jal getint
	mv s1, a0
	beq a0, zero, label639
	jal getint
pcrel695:
	auipc a2, %pcrel_hi(right_child)
pcrel696:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel696)(a1)
pcrel697:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel697)(a1)
	sw a0, %pcrel_lo(pcrel695)(a2)
	li a0, 1
	sw a0, 32(sp)
	ble s1, a0, label633
	li s2, 1
.p2align 2
label631:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label631
label633:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s0, a0
	ble a0, zero, label667
	mv s1, zero
	mv s2, zero
.p2align 2
label634:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s1, s1, 1
	ble s0, s1, label637
	mv s2, a0
	j label634
label637:
	jal inorder
	li a0, 10
	jal putch
label639:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label667:
	mv a0, zero
	j label637
