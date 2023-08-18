.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
value:
	.zero	40000
.p2align 3
left_child:
	.zero	40000
.p2align 3
right_child:
	.zero	40000
.text
.p2align 2
insert:
	addi sp, sp, -40
pcrel90:
	auipc t0, %pcrel_hi(left_child)
	sd ra, 0(sp)
	addi a3, t0, %pcrel_lo(pcrel90)
	sd s0, 8(sp)
	li t0, -1
	mv s0, a0
	sd s1, 16(sp)
pcrel91:
	auipc a0, %pcrel_hi(value)
	sd s2, 24(sp)
	addi a4, a0, %pcrel_lo(pcrel91)
	sd s3, 32(sp)
pcrel92:
	auipc a0, %pcrel_hi(right_child)
	addi a5, a0, %pcrel_lo(pcrel92)
	bne s0, t0, label3
	lw a0, 0(a2)
	sh2add t1, a0, a3
	sh2add t2, a0, a4
	addi a3, a0, 1
	sw a1, 0(t2)
	sh2add a1, a0, a5
	sw t0, 0(t1)
	sw t0, 0(a1)
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
	sh2add t1, s0, a4
	mv s1, a5
	lw a0, 0(t1)
	bgt a1, a0, label80
	mv s1, a3
label80:
	sh2add a0, s0, s1
	lw s2, 0(a0)
	bne s2, t0, label5
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
	j label6
label5:
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
	j label6
.p2align 2
delete:
	addi sp, sp, -48
	li a3, -1
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s2, 16(sp)
	sd s3, 24(sp)
	sd s1, 32(sp)
	sd s4, 40(sp)
	beq a0, a3, label147
pcrel503:
	auipc a5, %pcrel_hi(value)
	addi a4, a5, %pcrel_lo(pcrel503)
pcrel504:
	auipc a5, %pcrel_hi(right_child)
	sh2add a2, a0, a4
	addi s2, a5, %pcrel_lo(pcrel504)
	lw a0, 0(a2)
	ble a1, a0, label95
	sh2add a2, s0, s2
	lw s1, 0(a2)
	bne s1, a3, label129
	sh2add a1, s0, s2
	mv a0, s0
	sw a3, 0(a1)
	j label141
label147:
	mv a0, a3
label141:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label95:
	auipc a2, %pcrel_hi(left_child)
	addi s3, a2, %pcrel_lo(label95)
	blt a1, a0, label96
	sh2add a1, s0, s3
	lw a0, 0(a1)
	bne a0, a3, label111
	sh2add a2, s0, s2
	li a0, -1
	lw a1, 0(a2)
	beq a1, a3, label141
	mv a0, a1
	j label141
label129:
	sh2add a2, s1, a4
	lw a0, 0(a2)
	ble a1, a0, label133
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	mv a1, s1
	sw a0, 0(s3)
label115:
	sh2add a2, s0, s2
	mv a0, s0
	sw a1, 0(a2)
	j label141
label96:
	sh2add a0, s0, s3
	lw s1, 0(a0)
	beq s1, a3, label109
	sh2add a2, s1, a4
	lw a0, 0(a2)
	ble a1, a0, label98
	sh2add s4, s1, s2
	lw a0, 0(s4)
	jal delete
	sh2add a2, s0, s3
	mv a1, s1
	sw a0, 0(s4)
	mv a0, s0
	sw s1, 0(a2)
	j label141
label133:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(label133)
	blt a1, a0, label118
	sh2add a0, s1, a5
	lw a1, 0(a0)
	beq a1, a3, label140
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label115
	mv a2, a0
label137:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	beq a1, a3, label139
	mv a2, a1
	j label137
label111:
	sh2add a2, s0, s2
	lw s1, 0(a2)
	beq s1, a3, label141
	mv a1, s1
	j label112
label251:
	mv a1, a0
label112:
	sh2add a2, a1, s3
	lw a0, 0(a2)
	bne a0, a3, label251
	sh2add a5, a1, a4
	sh2add a2, s0, a4
	lw a1, 0(a5)
	sh2add a5, s1, a4
	sw a1, 0(a2)
	lw a0, 0(a5)
	ble a1, a0, label117
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	sh2add a2, s0, s2
	mv a1, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s1, 0(a2)
	j label141
label98:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(label98)
	bge a1, a0, label100
	sh2add s2, s1, a5
	lw a0, 0(s2)
	jal delete
	sh2add a2, s0, s3
	mv a1, s1
	sw a0, 0(s2)
	mv a0, s0
	sw s1, 0(a2)
	j label141
label117:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(label117)
	bge a1, a0, label119
label118:
	sh2add s3, s1, a5
	lw a0, 0(s3)
	jal delete
	sh2add a2, s0, s2
	mv a1, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s1, 0(a2)
	j label141
label100:
	sh2add a0, s1, a5
	lw a1, 0(a0)
	beq a1, a3, label105
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label106
	mv a2, a0
label102:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	beq a1, a3, label104
	mv a2, a1
	j label102
label140:
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label115
label478:
	mv a1, a0
	sh2add a2, s0, s2
	sw a0, 0(a2)
	mv a0, s0
	j label141
label119:
	sh2add a0, s1, a5
	lw a1, 0(a0)
	bne a1, a3, label120
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label115
	j label478
label139:
	sh2add a3, a2, a4
	sh2add a5, s1, a4
	lw a1, 0(a3)
	sw a1, 0(a5)
	jal delete
	mv a1, s1
	sh2add a2, s1, s2
	sw a0, 0(a2)
	mv a0, s0
	sh2add a2, s0, s2
	sw s1, 0(a2)
	j label141
label105:
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label106
	mv a1, a0
label106:
	sh2add a2, s0, s3
	mv a0, s0
	sw a1, 0(a2)
	j label141
label120:
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label115
	mv a2, a0
label121:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	beq a1, a3, label123
	mv a2, a1
	j label121
label104:
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
	j label141
label123:
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
	j label141
label109:
	sh2add a2, s0, s3
	mv a0, s0
	sw a3, 0(a2)
	j label141
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
	beq a0, zero, label550
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
	ble s1, a0, label554
	li s2, 1
.p2align 2
label552:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label552
label554:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s0, a0
	ble a0, zero, label587
	mv s1, zero
	mv s2, zero
	j label555
.p2align 2
label595:
	mv s2, a0
.p2align 2
label555:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s1, s1, 1
	bgt s0, s1, label595
label558:
	jal inorder
	li a0, 10
	jal putch
label550:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label587:
	mv a0, zero
	j label558
