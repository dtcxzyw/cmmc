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
pcrel88:
	auipc a3, %pcrel_hi(value)
pcrel89:
	auipc a4, %pcrel_hi(left_child)
pcrel90:
	auipc a5, %pcrel_hi(right_child)
	sd s0, 32(sp)
	mv s0, a0
	sd s1, 24(sp)
	addi a0, a3, %pcrel_lo(pcrel88)
	sd s2, 16(sp)
	addi a3, a4, %pcrel_lo(pcrel89)
	sd s3, 8(sp)
	addi a4, a5, %pcrel_lo(pcrel90)
	sd ra, 0(sp)
	li a5, -1
	beq s0, a5, label2
	sh2add t0, s0, a0
	mv s1, a4
	lw a5, 0(t0)
	bgt a1, a5, label80
	mv s1, a3
label80:
	sh2add a5, s0, s1
	li t0, -1
	lw s2, 0(a5)
	beq s2, t0, label4
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
label2:
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
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label4:
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
delete:
.p2align 2
	addi sp, sp, -40
	sd s0, 32(sp)
	mv s0, a0
	sd s2, 24(sp)
	li a0, -1
	sd s1, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	bne s0, a0, label94
label162:
	li a0, -1
label92:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label94:
	auipc a3, %pcrel_hi(value)
	addi a0, a3, %pcrel_lo(label94)
pcrel569:
	auipc a3, %pcrel_hi(right_child)
	sh2add a4, s0, a0
	mv a2, a0
	addi s2, a3, %pcrel_lo(pcrel569)
	lw a0, 0(a4)
	bgt a1, a0, label95
pcrel570:
	auipc a3, %pcrel_hi(left_child)
	addi s3, a3, %pcrel_lo(pcrel570)
	bge a1, a0, label132
	sh2add a3, s0, s3
	li a0, -1
	lw s1, 0(a3)
	bne s1, a0, label116
	sh2add a0, s0, s3
	li a1, -1
	sw a1, 0(a0)
	mv a0, s0
	j label92
label116:
	sh2add a3, s1, a2
	lw a0, 0(a3)
	bgt a1, a0, label117
pcrel571:
	auipc a4, %pcrel_hi(left_child)
	addi a3, a4, %pcrel_lo(pcrel571)
	blt a1, a0, label129
	sh2add a1, s1, a3
	li a4, -1
	lw a0, 0(a1)
	beq a0, a4, label127
	sh2add a5, s1, s2
	lw a1, 0(a5)
	beq a1, a4, label297
	sh2add a4, s1, s2
	lw a1, 0(a4)
	mv a0, a1
label122:
	li a4, -1
	bne a0, a4, label124
	li a0, -1
	j label125
label124:
	sh2add t0, a0, a3
	li a5, -1
	lw a4, 0(t0)
	beq a4, a5, label125
	mv a0, a4
	j label122
label125:
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
	j label92
label132:
	sh2add a1, s0, s3
	li a3, -1
	lw a0, 0(a1)
	beq a0, a3, label156
	sh2add a3, s0, s2
	li a4, -1
	lw a1, 0(a3)
	beq a1, a4, label92
	j label348
label156:
	sh2add a1, s0, s2
	li a2, -1
	lw a0, 0(a1)
	beq a0, a2, label162
	lw a0, 0(a1)
	j label92
label214:
	sh2add a1, s1, s2
	lw a0, 0(a1)
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label92
label348:
	sh2add a1, s0, s2
	lw s1, 0(a1)
	mv a0, s1
label135:
	li a1, -1
	bne a0, a1, label137
	li a0, -1
	j label138
label137:
	sh2add a3, a0, s3
	li a4, -1
	lw a1, 0(a3)
	beq a1, a4, label138
	mv a0, a1
	j label135
label138:
	sh2add a3, a0, a2
	sh2add a0, s0, a2
	lw a1, 0(a3)
	li a3, -1
	sw a1, 0(a0)
	beq s1, a3, label215
	sh2add a3, s1, a2
	lw a0, 0(a3)
	bgt a1, a0, label112
pcrel572:
	auipc a4, %pcrel_hi(left_child)
	addi a3, a4, %pcrel_lo(pcrel572)
	blt a1, a0, label101
	sh2add a1, s1, a3
	li a4, -1
	lw a0, 0(a1)
	bne a0, a4, label147
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a1, label215
	j label214
label147:
	sh2add a5, s1, s2
	li a4, -1
	lw a1, 0(a5)
	beq a1, a4, label98
	j label416
label95:
	sh2add a0, s0, s2
	li a3, -1
	lw s1, 0(a0)
	beq s1, a3, label96
	sh2add a3, s1, a2
	lw a0, 0(a3)
	bgt a1, a0, label112
pcrel573:
	auipc a4, %pcrel_hi(left_child)
	addi a3, a4, %pcrel_lo(pcrel573)
	bge a1, a0, label102
label101:
	sh2add s3, s1, a3
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label92
label102:
	sh2add a4, s1, a3
	li a1, -1
	lw a0, 0(a4)
	bne a0, a1, label105
	sh2add a2, s1, s2
	lw a0, 0(a2)
	beq a0, a1, label215
	j label214
label105:
	sh2add a4, s1, s2
	li a5, -1
	lw a1, 0(a4)
	beq a1, a5, label98
	lw a1, 0(a4)
	mv a0, a1
label107:
	li a4, -1
	bne a0, a4, label111
	li a0, -1
label109:
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
	j label92
label111:
	sh2add t0, a0, a3
	li a5, -1
	lw a4, 0(t0)
	beq a4, a5, label109
	mv a0, a4
	j label107
label96:
	sh2add a0, s0, s2
	li a1, -1
	sw a1, 0(a0)
	mv a0, s0
	j label92
label297:
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label92
label112:
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label92
label98:
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label92
label416:
	sh2add a4, s1, s2
	lw a1, 0(a4)
	mv a0, a1
label149:
	li a4, -1
	bne a0, a4, label153
	li a0, -1
	j label109
label153:
	sh2add t0, a0, a3
	li a5, -1
	lw a4, 0(t0)
	beq a4, a5, label109
	mv a0, a4
	j label149
label117:
	sh2add s2, s1, s2
	lw a0, 0(s2)
	jal delete
	sw a0, 0(s2)
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	mv a0, s0
	j label92
label129:
	sh2add s2, s1, a3
	lw a0, 0(s2)
	jal delete
	sw a0, 0(s2)
	mv a0, s1
	j label297
label215:
	li a0, -1
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label92
label127:
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a1, label326
	sh2add a1, s1, s2
	lw a0, 0(a1)
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label92
label326:
	li a0, -1
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label92
inorder:
.p2align 2
	addi sp, sp, -16
	li a1, -1
	sd s0, 8(sp)
	sd ra, 0(sp)
	beq a0, a1, label577
	mv s0, a0
label575:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label575)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel614:
	auipc a3, %pcrel_hi(value)
	addi a1, a3, %pcrel_lo(pcrel614)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal putint
	li a0, 32
	jal putch
pcrel615:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel615)
	sh2add a2, s0, a0
	li a0, -1
	lw s0, 0(a2)
	bne s0, a0, label575
label577:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s0, 32(sp)
	addi s0, sp, 0
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd ra, 8(sp)
	jal getint
	mv s1, a0
	beq a0, zero, label626
	jal getint
pcrel679:
	auipc a2, %pcrel_hi(right_child)
pcrel680:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel680)(a1)
pcrel681:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel681)(a1)
	sw a0, %pcrel_lo(pcrel679)(a2)
	li a0, 1
	sw a0, 0(sp)
	ble s1, a0, label620
	li s2, 1
	j label618
label620:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s1, a0
	bgt a0, zero, label655
	mv a0, zero
	j label624
label655:
	mv s0, zero
	mv s2, zero
.p2align 2
label621:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s0, s0, 1
	ble s1, s0, label624
	mv s2, a0
	j label621
label624:
	jal inorder
	li a0, 10
	jal putch
label626:
	mv a0, zero
	ld ra, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label618:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label618
	j label620
