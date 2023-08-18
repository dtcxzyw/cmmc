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
	li a3, -1
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	beq a0, a3, label147
pcrel499:
	auipc a5, %pcrel_hi(value)
	addi a4, a5, %pcrel_lo(pcrel499)
pcrel500:
	auipc a5, %pcrel_hi(right_child)
	sh2add a2, a0, a4
	addi s2, a5, %pcrel_lo(pcrel500)
	lw a0, 0(a2)
	ble a1, a0, label109
	sh2add a0, s0, s2
	lw s1, 0(a0)
	beq s1, a3, label96
	sh2add a2, s1, a4
	lw a0, 0(a2)
	ble a1, a0, label101
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	mv a1, s1
	sw a0, 0(s3)
label99:
	sh2add a2, s0, s2
	mv a0, s0
	sw a1, 0(a2)
	j label141
label147:
	mv a0, a3
label141:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label109:
	auipc a2, %pcrel_hi(left_child)
	addi s3, a2, %pcrel_lo(label109)
	bge a1, a0, label110
	sh2add a2, s0, s3
	lw s1, 0(a2)
	bne s1, a3, label129
	sh2add a1, s0, s3
	mv a0, s0
	sw a3, 0(a1)
	j label141
label110:
	sh2add a1, s0, s3
	lw a0, 0(a1)
	beq a0, a3, label126
	sh2add a2, s0, s2
	lw s1, 0(a2)
	beq s1, a3, label141
	mv a1, s1
label112:
	sh2add a2, a1, s3
	lw a0, 0(a2)
	beq a0, a3, label114
	mv a1, a0
	j label112
label129:
	sh2add a2, s1, a4
	lw a0, 0(a2)
	bgt a1, a0, label140
pcrel501:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(pcrel501)
	blt a1, a0, label131
	sh2add a0, s1, a5
	lw a1, 0(a0)
	beq a1, a3, label137
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label138
	mv a2, a0
label134:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	beq a1, a3, label136
	mv a2, a1
	j label134
label101:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(label101)
	bge a1, a0, label103
label102:
	sh2add s3, s1, a5
	lw a0, 0(s3)
	jal delete
	sh2add a2, s0, s2
	mv a1, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s1, 0(a2)
	j label141
label126:
	sh2add a2, s0, s2
	li a0, -1
	lw a1, 0(a2)
	beq a1, a3, label141
	mv a0, a1
	j label141
label114:
	sh2add a2, a1, a4
	sh2add a5, s0, a4
	lw a1, 0(a2)
	sh2add a2, s1, a4
	sw a1, 0(a5)
	lw a0, 0(a2)
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
label103:
	sh2add a0, s1, a5
	lw a1, 0(a0)
	bne a1, a3, label104
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label99
label476:
	mv a1, a0
	sh2add a2, s0, s2
	sw a0, 0(a2)
	mv a0, s0
	j label141
label117:
	auipc a2, %pcrel_hi(left_child)
	addi a5, a2, %pcrel_lo(label117)
	blt a1, a0, label102
	sh2add a0, s1, a5
	lw a1, 0(a0)
	beq a1, a3, label120
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label99
	mv a2, a0
	j label122
label104:
	sh2add t0, s1, s2
	lw a0, 0(t0)
	beq a0, a3, label99
	mv a2, a0
	j label105
label211:
	mv a2, a1
label105:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	bne a1, a3, label211
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
label137:
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label138
	mv a1, a0
label138:
	sh2add a2, s0, s3
	mv a0, s0
	sw a1, 0(a2)
	j label141
label136:
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
label120:
	sh2add a2, s1, s2
	li a1, -1
	lw a0, 0(a2)
	beq a0, a3, label99
	j label476
label301:
	mv a2, a1
label122:
	sh2add t0, a2, a5
	lw a1, 0(t0)
	bne a1, a3, label301
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
label131:
	sh2add s2, s1, a5
	lw a0, 0(s2)
	jal delete
	sh2add a2, s0, s3
	mv a1, s1
	sw a0, 0(s2)
	mv a0, s0
	sw s1, 0(a2)
	j label141
label96:
	sh2add a1, s0, s2
	mv a0, s0
	sw a3, 0(a1)
	j label141
label140:
	sh2add s4, s1, s2
	lw a0, 0(s4)
	jal delete
	sh2add a2, s0, s3
	mv a1, s1
	sw a0, 0(s4)
	mv a0, s0
	sw s1, 0(a2)
	j label141
.p2align 2
inorder:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s1, 8(sp)
	li s1, -1
	sd s0, 16(sp)
	beq a0, s1, label505
	mv s0, a0
label503:
	auipc a3, %pcrel_hi(left_child)
	addi a1, a3, %pcrel_lo(label503)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel544:
	auipc a3, %pcrel_hi(value)
	addi a2, a3, %pcrel_lo(pcrel544)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel545:
	auipc a2, %pcrel_hi(right_child)
	addi a1, a2, %pcrel_lo(pcrel545)
	sh2add a0, s0, a1
	lw s0, 0(a0)
	bne s0, s1, label503
label505:
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
	beq a0, zero, label556
	jal getint
	li a1, -1
pcrel611:
	auipc a3, %pcrel_hi(left_child)
pcrel612:
	auipc a2, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel612)(a2)
	li a0, 1
pcrel613:
	auipc a2, %pcrel_hi(right_child)
	sw a1, %pcrel_lo(pcrel611)(a3)
	sw a1, %pcrel_lo(pcrel613)(a2)
	sw a0, 32(sp)
	ble s1, a0, label550
	li s2, 1
.p2align 2
label548:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label548
label550:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s0, a0
	ble a0, zero, label584
	mv s1, zero
	mv s2, zero
	j label551
.p2align 2
label592:
	mv s2, a0
.p2align 2
label551:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s1, s1, 1
	bgt s0, s1, label592
label554:
	jal inorder
	li a0, 10
	jal putch
label556:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label584:
	mv a0, zero
	j label554
