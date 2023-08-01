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
	auipc a5, %pcrel_hi(left_child)
	li t0, -1
	addi a3, a5, %pcrel_lo(pcrel92)
	sd ra, 0(sp)
	sd s0, 8(sp)
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
	sh2add a3, a0, a3
	sh2add a4, a0, a4
	sw a1, 0(a4)
	sh2add a1, a0, a5
	sw t0, 0(a3)
	addi a3, a0, 1
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
	lw a0, 0(a2)
	sh2add a4, a0, a4
	sw a1, 0(a4)
	sh2add a4, a0, a5
	sh2add a1, a0, a3
	addi a3, a0, 1
	sw t0, 0(a1)
	sh2add a1, s0, s1
	sw t0, 0(a4)
	sw a3, 0(a2)
	sw a0, 0(a1)
	mv a0, s0
	j label3
label7:
	sh2add t0, s2, a4
	mv a0, a5
	lw a4, 0(t0)
	bgt a1, a4, label82
	mv a0, a3
label82:
	sh2add s3, s2, a0
	lw a0, 0(s3)
	jal insert
	sh2add a1, s0, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s2, 0(a1)
	j label3
.p2align 2
delete:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s2, 16(sp)
	li a0, -1
	sd s1, 24(sp)
	sd s3, 32(sp)
	bne s0, a0, label98
label96:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label98:
	auipc a2, %pcrel_hi(value)
pcrel582:
	auipc a5, %pcrel_hi(right_child)
	addi a3, a2, %pcrel_lo(label98)
	addi s2, a5, %pcrel_lo(pcrel582)
	sh2add a4, s0, a3
	lw a2, 0(a4)
	ble a1, a2, label117
	sh2add a2, s0, s2
	lw s1, 0(a2)
	bne s1, a0, label101
label100:
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label117:
	auipc a4, %pcrel_hi(left_child)
	addi s3, a4, %pcrel_lo(label117)
	bge a1, a2, label136
	sh2add a2, s0, s3
	lw s1, 0(a2)
	bne s1, a0, label120
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label96
label136:
	sh2add a2, s0, s3
	lw a1, 0(a2)
	bne a1, a0, label137
	sh2add a2, s0, s2
	lw a1, 0(a2)
	beq a1, a0, label96
	sh2add a1, s0, s2
	lw a0, 0(a1)
	j label96
label101:
	sh2add a4, s1, a3
	lw a2, 0(a4)
	bgt a1, a2, label102
pcrel583:
	auipc a4, %pcrel_hi(left_child)
	addi a5, a4, %pcrel_lo(pcrel583)
	bge a1, a2, label105
label104:
	sh2add s3, s1, a5
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label96
label120:
	sh2add a4, s1, a3
	lw a2, 0(a4)
	bgt a1, a2, label121
pcrel584:
	auipc a4, %pcrel_hi(left_child)
	addi a5, a4, %pcrel_lo(pcrel584)
	bge a1, a2, label124
	sh2add s2, s1, a5
	lw a0, 0(s2)
	jal delete
	sw a0, 0(s2)
	mv a0, s1
	sh2add a2, s0, s3
	sw s1, 0(a2)
	mv a0, s0
	j label96
label137:
	sh2add a2, s0, s2
	lw a4, 0(a2)
	bne a4, a0, label352
	mv a0, a1
	j label96
label352:
	sh2add a2, s0, s2
	lw s1, 0(a2)
	mv a1, s1
label139:
	beq a1, a0, label360
	sh2add a4, a1, s3
	lw a2, 0(a4)
	bne a2, a0, label445
	j label141
label105:
	sh2add a2, s1, a5
	lw a1, 0(a2)
	bne a1, a0, label106
	sh2add a2, s1, s2
	lw a1, 0(a2)
	beq a1, a0, label100
	sh2add a1, s1, s2
	lw a0, 0(a1)
	j label100
label102:
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label96
label360:
	mv a1, a0
label141:
	sh2add a4, a1, a3
	sh2add a2, s0, a3
	lw a1, 0(a4)
	sw a1, 0(a2)
	beq s1, a0, label100
	sh2add a4, s1, a3
	lw a2, 0(a4)
	bgt a1, a2, label102
pcrel585:
	auipc a4, %pcrel_hi(left_child)
	addi a5, a4, %pcrel_lo(pcrel585)
	blt a1, a2, label104
	sh2add a2, s1, a5
	lw a1, 0(a2)
	beq a1, a0, label150
	sh2add a2, s1, s2
	lw a4, 0(a2)
	beq a4, a0, label221
	sh2add a4, s1, s2
	lw a2, 0(a4)
	mv a1, a2
label154:
	beq a1, a0, label110
	sh2add t0, a1, a5
	lw a4, 0(t0)
	beq a4, a0, label437
	mv a1, a4
	j label154
label106:
	sh2add a2, s1, s2
	lw a4, 0(a2)
	beq a4, a0, label221
	sh2add a4, s1, s2
	lw a2, 0(a4)
	mv a1, a2
label108:
	bne a1, a0, label112
label110:
	sh2add a4, a0, a3
	sh2add a3, s1, a3
	lw a1, 0(a4)
	sw a1, 0(a3)
	mv a0, a2
	jal delete
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label96
label112:
	sh2add t0, a1, a5
	lw a4, 0(t0)
	bne a4, a0, label243
	mv a0, a1
	j label110
label124:
	sh2add a2, s1, a5
	lw a1, 0(a2)
	beq a1, a0, label125
	sh2add a4, s1, s2
	lw a2, 0(a4)
	bne a2, a0, label314
	mv a0, a1
	sh2add a2, s0, s3
	sw a1, 0(a2)
	mv a0, s0
	j label96
label125:
	sh2add a1, s1, s2
	lw a2, 0(a1)
	bne a2, a0, label126
	sh2add a2, s0, s3
	sw a0, 0(a2)
	mv a0, s0
	j label96
label126:
	sh2add a1, s1, s2
	lw a0, 0(a1)
	sh2add a2, s0, s3
	sw a0, 0(a2)
	mv a0, s0
	j label96
label314:
	sh2add a4, s1, s2
	lw a2, 0(a4)
	mv a1, a2
label129:
	bne a1, a0, label133
label131:
	sh2add a4, a0, a3
	sh2add a3, s1, a3
	lw a1, 0(a4)
	sw a1, 0(a3)
	mv a0, a2
	jal delete
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s1
	sh2add a2, s0, s3
	sw s1, 0(a2)
	mv a0, s0
	j label96
label133:
	sh2add t0, a1, a5
	lw a4, 0(t0)
	bne a4, a0, label337
	mv a0, a1
	j label131
label150:
	sh2add a2, s1, s2
	lw a1, 0(a2)
	beq a1, a0, label100
	sh2add a1, s1, s2
	lw a0, 0(a1)
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label221:
	mv a0, a1
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label445:
	mv a1, a2
	j label139
label337:
	mv a1, a4
	j label129
label437:
	mv a0, a1
	j label110
label121:
	sh2add s2, s1, s2
	lw a0, 0(s2)
	jal delete
	sw a0, 0(s2)
	mv a0, s1
	sh2add a2, s0, s3
	sw s1, 0(a2)
	mv a0, s0
	j label96
label243:
	mv a1, a4
	j label108
.p2align 2
inorder:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s1, 8(sp)
	li s1, -1
	sd s0, 16(sp)
	beq a0, s1, label589
	mv s0, a0
label587:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label587)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel628:
	auipc a3, %pcrel_hi(value)
	addi a2, a3, %pcrel_lo(pcrel628)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel629:
	auipc a2, %pcrel_hi(right_child)
	addi a1, a2, %pcrel_lo(pcrel629)
	sh2add a0, s0, a1
	lw s0, 0(a0)
	bne s0, s1, label587
label589:
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
	beq a0, zero, label640
	jal getint
pcrel696:
	auipc a2, %pcrel_hi(right_child)
pcrel697:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel697)(a1)
pcrel698:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel698)(a1)
	sw a0, %pcrel_lo(pcrel696)(a2)
	li a0, 1
	sw a0, 32(sp)
	ble s1, a0, label634
	li s2, 1
.p2align 2
label632:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label632
label634:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s0, a0
	ble a0, zero, label668
	mv s1, zero
	mv s2, zero
.p2align 2
label635:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s1, s1, 1
	ble s0, s1, label638
	mv s2, a0
	j label635
label638:
	jal inorder
	li a0, 10
	jal putch
label640:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label668:
	mv a0, zero
	j label638
