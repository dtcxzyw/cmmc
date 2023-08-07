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
	bne s0, t0, label5
	lw a0, 0(a2)
	sh2add t1, a0, a3
	sh2add t2, a0, a4
	addi a3, a0, 1
	sw a1, 0(t2)
	sh2add a1, a0, a5
	sw t0, 0(t1)
	sw t0, 0(a1)
	sw a3, 0(a2)
label3:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label5:
	sh2add t1, s0, a4
	mv s1, a5
	lw a0, 0(t1)
	bgt a1, a0, label80
	mv s1, a3
label80:
	sh2add a0, s0, s1
	lw s2, 0(a0)
	bne s2, t0, label7
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
	j label3
label7:
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
	j label3
.p2align 2
delete:
	addi sp, sp, -48
	li a2, -1
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	beq a0, a2, label166
pcrel584:
	auipc a5, %pcrel_hi(value)
	addi a4, a5, %pcrel_lo(pcrel584)
pcrel585:
	auipc a5, %pcrel_hi(right_child)
	sh2add a3, a0, a4
	addi s2, a5, %pcrel_lo(pcrel585)
	lw a0, 0(a3)
	ble a1, a0, label117
	sh2add a0, s0, s2
	lw s1, 0(a0)
	beq s1, a2, label100
	sh2add a3, s1, a4
	lw a0, 0(a3)
	bgt a1, a0, label102
pcrel586:
	auipc a3, %pcrel_hi(left_child)
	addi a5, a3, %pcrel_lo(pcrel586)
	bge a1, a0, label107
label106:
	sh2add s3, s1, a5
	lw a0, 0(s3)
	jal delete
	sh2add a1, s0, s2
	mv a2, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s1, 0(a1)
	j label96
label166:
	mv a0, a2
label96:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label117:
	auipc a5, %pcrel_hi(left_child)
	addi s3, a5, %pcrel_lo(label117)
	bge a1, a0, label136
	sh2add a0, s0, s3
	lw s1, 0(a0)
	beq s1, a2, label119
	sh2add a3, s1, a4
	lw a0, 0(a3)
	ble a1, a0, label123
	sh2add s4, s1, s2
	lw a0, 0(s4)
	jal delete
	sh2add a1, s0, s3
	mv a2, s1
	sw a0, 0(s4)
	mv a0, s0
	sw s1, 0(a1)
	j label96
label136:
	sh2add a1, s0, s3
	lw a0, 0(a1)
	beq a0, a2, label137
	sh2add a3, s0, s2
	lw a1, 0(a3)
	beq a1, a2, label96
	sh2add a1, s0, s2
	lw s1, 0(a1)
	mv a0, s1
label141:
	bne a0, a2, label143
	mv a0, a2
label144:
	sh2add a3, a0, a4
	sh2add a5, s0, a4
	lw a1, 0(a3)
	sw a1, 0(a5)
	beq s1, a2, label100
	sh2add a3, s1, a4
	lw a0, 0(a3)
	ble a1, a0, label147
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	mv a2, s1
	sw a0, 0(s3)
label100:
	sh2add a1, s0, s2
	mv a0, s0
	sw a2, 0(a1)
	j label96
label102:
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	mv a2, s1
	sw a0, 0(s3)
	j label100
label123:
	auipc a3, %pcrel_hi(left_child)
	addi a5, a3, %pcrel_lo(label123)
	blt a1, a0, label124
	sh2add a1, s1, a5
	lw a0, 0(a1)
	bne a0, a2, label128
	sh2add a1, s1, s2
	lw a0, 0(a1)
	beq a0, a2, label119
	sh2add a0, s1, s2
	sh2add a1, s0, s3
	lw a2, 0(a0)
	mv a0, s0
	sw a2, 0(a1)
	j label96
label137:
	sh2add a0, s0, s2
	lw a1, 0(a0)
	beq a1, a2, label166
	sh2add a1, s0, s2
	lw a0, 0(a1)
	j label96
label107:
	sh2add a1, s1, a5
	lw a0, 0(a1)
	bne a0, a2, label110
	sh2add a1, s1, s2
	lw a0, 0(a1)
	beq a0, a2, label100
label109:
	sh2add a0, s1, s2
	sh2add a1, s0, s2
	lw a2, 0(a0)
	mv a0, s0
	sw a2, 0(a1)
	j label96
label143:
	sh2add a3, a0, s3
	lw a1, 0(a3)
	bne a1, a2, label377
	j label144
label110:
	sh2add a3, s1, s2
	lw a1, 0(a3)
	bne a1, a2, label232
label233:
	mv a2, a0
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label147:
	auipc a3, %pcrel_hi(left_child)
	addi a5, a3, %pcrel_lo(label147)
	blt a1, a0, label106
	sh2add a1, s1, a5
	lw a0, 0(a1)
	beq a0, a2, label157
	sh2add a3, s1, s2
	lw a1, 0(a3)
	beq a1, a2, label233
	sh2add a1, s1, s2
	lw a3, 0(a1)
	mv a0, a3
label152:
	bne a0, a2, label154
label155:
	sh2add t0, a2, a4
	sh2add a5, s1, a4
	lw a1, 0(t0)
	sw a1, 0(a5)
	mv a0, a3
	jal delete
	mv a2, s1
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s0
	sh2add a1, s0, s2
	sw s1, 0(a1)
	j label96
label232:
	sh2add a3, s1, s2
	lw a1, 0(a3)
	mv a0, a1
label112:
	bne a0, a2, label116
label114:
	sh2add a0, a2, a4
	sh2add a5, s1, a4
	lw a3, 0(a0)
	sw a3, 0(a5)
	mv a0, a1
	mv a1, a3
	jal delete
	mv a2, s1
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s0
	sh2add a1, s0, s2
	sw s1, 0(a1)
	j label96
label128:
	sh2add a3, s1, s2
	lw a1, 0(a3)
	beq a1, a2, label313
	lw a1, 0(a3)
	mv a0, a1
label130:
	bne a0, a2, label134
label132:
	sh2add a0, a2, a4
	sh2add a5, s1, a4
	lw a3, 0(a0)
	sw a3, 0(a5)
	mv a0, a1
	mv a1, a3
	jal delete
	mv a2, s1
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s0
	sh2add a1, s0, s3
	sw s1, 0(a1)
	j label96
label134:
	sh2add t0, a0, a5
	lw a3, 0(t0)
	bne a3, a2, label335
	mv a2, a0
	j label132
label116:
	sh2add t0, a0, a5
	lw a3, 0(t0)
	beq a3, a2, label254
	mv a0, a3
	j label112
label157:
	sh2add a0, s1, s2
	lw a1, 0(a0)
	beq a1, a2, label100
	j label109
label154:
	sh2add t0, a0, a5
	lw a1, 0(t0)
	beq a1, a2, label430
	mv a0, a1
	j label152
label313:
	mv a2, a0
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label96
label335:
	mv a0, a3
	j label130
label254:
	mv a2, a0
	j label114
label430:
	mv a2, a0
	j label155
label377:
	mv a0, a1
	j label141
label124:
	sh2add s2, s1, a5
	lw a0, 0(s2)
	jal delete
	sh2add a1, s0, s3
	mv a2, s1
	sw a0, 0(s2)
	mv a0, s0
	sw s1, 0(a1)
	j label96
label119:
	sh2add a1, s0, s3
	mv a0, s0
	sw a2, 0(a1)
	j label96
.p2align 2
inorder:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s1, 8(sp)
	li s1, -1
	sd s0, 16(sp)
	beq a0, s1, label590
	mv s0, a0
label588:
	auipc a3, %pcrel_hi(left_child)
	addi a1, a3, %pcrel_lo(label588)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel629:
	auipc a3, %pcrel_hi(value)
	addi a2, a3, %pcrel_lo(pcrel629)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel630:
	auipc a2, %pcrel_hi(right_child)
	addi a1, a2, %pcrel_lo(pcrel630)
	sh2add a0, s0, a1
	lw s0, 0(a0)
	bne s0, s1, label588
label590:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 32
	sd s1, 16(sp)
	sd s2, 24(sp)
	jal getint
	mv s1, a0
	beq a0, zero, label632
	jal getint
pcrel697:
	auipc a3, %pcrel_hi(left_child)
	li a1, -1
pcrel698:
	auipc a2, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel698)(a2)
	li a0, 1
pcrel699:
	auipc a2, %pcrel_hi(right_child)
	sw a1, %pcrel_lo(pcrel697)(a3)
	sw a1, %pcrel_lo(pcrel699)(a2)
	sw a0, 32(sp)
	ble s1, a0, label636
	li s2, 1
.p2align 2
label634:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label634
label636:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s0, a0
	ble a0, zero, label669
	mv s1, zero
	mv s2, zero
.p2align 2
label637:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s1, s1, 1
	ble s0, s1, label640
	mv s2, a0
	j label637
label632:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label640:
	jal inorder
	li a0, 10
	jal putch
	j label632
label669:
	mv a0, zero
	j label640
