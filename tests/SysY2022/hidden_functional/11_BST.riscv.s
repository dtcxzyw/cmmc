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
.p2align 2
insert:
	addi sp, sp, -40
pcrel92:
	auipc t0, %pcrel_hi(left_child)
	sd ra, 0(sp)
	addi a3, t0, %pcrel_lo(pcrel92)
	sd s0, 8(sp)
	li t0, -1
	mv s0, a0
	sd s1, 16(sp)
pcrel93:
	auipc a0, %pcrel_hi(value)
	sd s2, 24(sp)
	addi a4, a0, %pcrel_lo(pcrel93)
	sd s3, 32(sp)
pcrel94:
	auipc a0, %pcrel_hi(right_child)
	addi a5, a0, %pcrel_lo(pcrel94)
	bne s0, t0, label4
	lw a0, 0(a2)
	sh2add t2, a0, a3
	sh2add t1, a0, a4
	addi a3, a0, 1
	sw a1, 0(t1)
	sh2add a1, a0, a5
	sw t0, 0(t2)
	sw t0, 0(a1)
	sw a3, 0(a2)
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label4:
	sh2add t1, s0, a4
	mv s1, a5
	lw a0, 0(t1)
	bgt a1, a0, label80
	mv s1, a3
label80:
	sh2add a0, s0, s1
	lw s2, 0(a0)
	bne s2, t0, label6
	lw t1, 0(a2)
	sh2add a0, t1, a3
	sh2add t2, t1, a4
	sw a1, 0(t2)
	sh2add a1, t1, a5
	sw t0, 0(a0)
	addi a0, t1, 1
	sw t0, 0(a1)
	sh2add a1, s0, s1
	sw a0, 0(a2)
	mv a0, s0
	sw t1, 0(a1)
	j label2
label6:
	sh2add t1, s2, a4
	mv t0, a5
	lw a0, 0(t1)
	bgt a1, a0, label82
	mv t0, a3
label82:
	sh2add s3, s2, t0
	lw a0, 0(s3)
	jal insert
	sh2add a1, s0, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s2, 0(a1)
	j label2
.p2align 2
delete:
	addi sp, sp, -48
	li a3, -1
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	beq a0, a3, label149
pcrel501:
	auipc a5, %pcrel_hi(value)
	addi a4, a5, %pcrel_lo(pcrel501)
pcrel502:
	auipc a5, %pcrel_hi(right_child)
	sh2add a2, a0, a4
	addi s2, a5, %pcrel_lo(pcrel502)
	lw a0, 0(a2)
	ble a1, a0, label111
	sh2add a0, s0, s2
	lw s1, 0(a0)
	beq s1, a3, label98
	sh2add a2, s1, a4
	lw a0, 0(a2)
	ble a1, a0, label103
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	mv a1, s1
	sw a0, 0(s3)
label101:
	sh2add a2, s0, s2
	mv a0, s0
	sw a1, 0(a2)
	j label143
label149:
	mv a0, a3
label143:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label111:
	auipc a2, %pcrel_hi(left_child)
	addi s3, a2, %pcrel_lo(label111)
	bge a1, a0, label112
	sh2add a2, s0, s3
	lw s1, 0(a2)
	beq s1, a3, label142
	sh2add a2, s1, a4
	lw a0, 0(a2)
	bgt a1, a0, label131
pcrel503:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(pcrel503)
	bge a1, a0, label134
	sh2add s2, s1, a5
	lw a0, 0(s2)
	jal delete
	sh2add a2, s0, s3
	mv a1, s1
	sw a0, 0(s2)
	mv a0, s0
	sw s1, 0(a2)
	j label143
label112:
	sh2add a1, s0, s3
	lw a0, 0(a1)
	beq a0, a3, label128
	sh2add a2, s0, s2
	lw s1, 0(a2)
	beq s1, a3, label143
	mv a1, s1
label114:
	sh2add a2, a1, s3
	lw a0, 0(a2)
	bne a0, a3, label253
	sh2add a5, a1, a4
	sh2add a2, s0, a4
	lw a1, 0(a5)
	sh2add a5, s1, a4
	sw a1, 0(a2)
	lw a0, 0(a5)
	bgt a1, a0, label127
pcrel504:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(pcrel504)
	blt a1, a0, label104
	sh2add a0, s1, a5
	lw a1, 0(a0)
	bne a1, a3, label122
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label101
	j label478
label103:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(label103)
	bge a1, a0, label105
label104:
	sh2add s3, s1, a5
	lw a0, 0(s3)
	jal delete
	sh2add a2, s0, s2
	mv a1, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s1, 0(a2)
	j label143
label105:
	sh2add a0, s1, a5
	lw a1, 0(a0)
	bne a1, a3, label106
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label101
label478:
	mv a1, a0
	sh2add a2, s0, s2
	sw a0, 0(a2)
	mv a0, s0
	j label143
label128:
	sh2add a2, s0, s2
	li a0, -1
	lw a1, 0(a2)
	beq a1, a3, label143
	mv a0, a1
	j label143
label134:
	sh2add a0, s1, a5
	lw a1, 0(a0)
	bne a1, a3, label135
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label140
	mv a1, a0
label140:
	sh2add a2, s0, s3
	mv a0, s0
	sw a1, 0(a2)
	j label143
label106:
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label101
	mv a2, a0
label107:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	beq a1, a3, label109
	mv a2, a1
	j label107
label135:
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label140
	mv a2, a0
	j label136
label109:
	sh2add a5, a2, a4
	sh2add a3, s1, a4
	lw a1, 0(a5)
	sw a1, 0(a3)
	jal delete
	mv a1, s1
	sh2add a2, s1, s2
	sw a0, 0(a2)
	mv a0, s0
	sh2add a2, s0, s2
	sw s1, 0(a2)
	j label143
label369:
	mv a2, a1
label136:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	bne a1, a3, label369
	sh2add a3, a2, a4
	sh2add a5, s1, a4
	lw a1, 0(a3)
	sw a1, 0(a5)
	jal delete
	mv a1, s1
	sh2add a2, s1, s2
	sw a0, 0(a2)
	mv a0, s0
	sh2add a2, s0, s3
	sw s1, 0(a2)
	j label143
label122:
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label101
	mv a2, a0
	j label123
label298:
	mv a2, a1
label123:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	bne a1, a3, label298
	j label109
label253:
	mv a1, a0
	j label114
label142:
	sh2add a1, s0, s3
	mv a0, s0
	sw a3, 0(a1)
	j label143
label98:
	sh2add a1, s0, s2
	mv a0, s0
	sw a3, 0(a1)
	j label143
label131:
	sh2add s4, s1, s2
	lw a0, 0(s4)
	jal delete
	sh2add a2, s0, s3
	mv a1, s1
	sw a0, 0(s4)
	mv a0, s0
	sw s1, 0(a2)
	j label143
label127:
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	sh2add a2, s0, s2
	mv a1, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s1, 0(a2)
	j label143
.p2align 2
inorder:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s1, 8(sp)
	li s1, -1
	sd s0, 16(sp)
	beq a0, s1, label508
	mv s0, a0
label506:
	auipc a3, %pcrel_hi(left_child)
	addi a1, a3, %pcrel_lo(label506)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel547:
	auipc a3, %pcrel_hi(value)
	addi a2, a3, %pcrel_lo(pcrel547)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel548:
	auipc a2, %pcrel_hi(right_child)
	addi a1, a2, %pcrel_lo(pcrel548)
	sh2add a0, s0, a1
	lw s0, 0(a0)
	bne s0, s1, label506
label508:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[4] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	sd s2, 24(sp)
	jal getint
	mv s1, a0
	beq a0, zero, label559
	jal getint
pcrel614:
	auipc a3, %pcrel_hi(left_child)
	li a1, -1
pcrel615:
	auipc a2, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel615)(a2)
	li a0, 1
pcrel616:
	auipc a2, %pcrel_hi(right_child)
	sw a1, %pcrel_lo(pcrel614)(a3)
	sw a1, %pcrel_lo(pcrel616)(a2)
	sw a0, 32(sp)
	ble s1, a0, label553
	li s2, 1
.p2align 2
label551:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label551
label553:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s0, a0
	ble a0, zero, label587
	mv s1, zero
	mv s2, zero
	j label554
.p2align 2
label595:
	mv s2, a0
.p2align 2
label554:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s1, s1, 1
	bgt s0, s1, label595
label557:
	jal inorder
	li a0, 10
	jal putch
label559:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label587:
	mv a0, zero
	j label557
