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
	bne s0, t0, label3
	lw a0, 0(a2)
	sh2add a3, a0, a3
	sh2add a4, a0, a4
	sw a1, 0(a4)
	sh2add a1, a0, a5
	sw t0, 0(a3)
	addi a3, a0, 1
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
	j label6
label5:
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
	j label6
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
	beq s0, a0, label96
pcrel588:
	auipc a2, %pcrel_hi(value)
pcrel589:
	auipc a5, %pcrel_hi(right_child)
	addi a3, a2, %pcrel_lo(pcrel588)
	addi s2, a5, %pcrel_lo(pcrel589)
	sh2add a4, s0, a3
	lw a2, 0(a4)
	ble a1, a2, label117
	sh2add a2, s0, s2
	lw s1, 0(a2)
	beq s1, a0, label100
	sh2add a4, s1, a3
	lw a2, 0(a4)
	bgt a1, a2, label116
pcrel590:
	auipc a4, %pcrel_hi(left_child)
	addi a5, a4, %pcrel_lo(pcrel590)
	bge a1, a2, label106
	sh2add s3, s1, a5
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a1, s0, s2
	sw s1, 0(a1)
	mv a0, s0
	j label96
label117:
	auipc a4, %pcrel_hi(left_child)
	addi s3, a4, %pcrel_lo(label117)
	bge a1, a2, label136
	sh2add a2, s0, s3
	lw s1, 0(a2)
	bne s1, a0, label120
label119:
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
label96:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label100:
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label107:
	sh2add a1, s1, s2
	lw a2, 0(a1)
	beq a2, a0, label100
	lw a0, 0(a1)
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label136:
	sh2add a2, s0, s3
	lw a1, 0(a2)
	bne a1, a0, label137
	sh2add a1, s0, s2
	lw a2, 0(a1)
	beq a2, a0, label96
	lw a0, 0(a1)
	j label96
label120:
	sh2add a4, s1, a3
	lw a2, 0(a4)
	bgt a1, a2, label121
pcrel591:
	auipc a4, %pcrel_hi(left_child)
	addi a5, a4, %pcrel_lo(pcrel591)
	blt a1, a2, label133
	sh2add a2, s1, a5
	lw a1, 0(a2)
	beq a1, a0, label131
	sh2add a2, s1, s2
	lw a4, 0(a2)
	bne a4, a0, label300
	mv a0, a1
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label96
label137:
	sh2add a4, s0, s2
	lw a2, 0(a4)
	bne a2, a0, label352
	mv a0, a1
	j label96
label352:
	sh2add a2, s0, s2
	lw s1, 0(a2)
	mv a1, s1
label139:
	bne a1, a0, label141
	mv a1, a0
label142:
	sh2add a2, a1, a3
	sh2add a4, s0, a3
	lw a1, 0(a2)
	sw a1, 0(a4)
	bne s1, a0, label144
label158:
	sh2add a2, s0, s2
	sw a0, 0(a2)
	mv a0, s0
	j label96
label106:
	sh2add a2, s1, a5
	lw a1, 0(a2)
	beq a1, a0, label107
	sh2add a4, s1, s2
	lw a2, 0(a4)
	bne a2, a0, label228
	mv a0, a1
	sh2add a1, s0, s2
	sw a0, 0(a1)
	mv a0, s0
	j label96
label141:
	sh2add a4, a1, s3
	lw a2, 0(a4)
	bne a2, a0, label367
	j label142
label144:
	sh2add a4, s1, a3
	lw a2, 0(a4)
	ble a1, a2, label146
	sh2add s3, s1, s2
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a2, s0, s2
	sw s1, 0(a2)
	mv a0, s0
	j label96
label146:
	auipc a4, %pcrel_hi(left_child)
	addi a5, a4, %pcrel_lo(label146)
	bge a1, a2, label148
	sh2add s3, s1, a5
	lw a0, 0(s3)
	jal delete
	sw a0, 0(s3)
	mv a0, s1
	sh2add a2, s0, s2
	sw s1, 0(a2)
	mv a0, s0
	j label96
label228:
	sh2add a4, s1, s2
	lw a2, 0(a4)
	mv a1, a2
label111:
	bne a1, a0, label115
label113:
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
label115:
	sh2add t0, a1, a5
	lw a4, 0(t0)
	bne a4, a0, label251
	mv a0, a1
	j label113
label148:
	sh2add a2, s1, a5
	lw a1, 0(a2)
	bne a1, a0, label151
	sh2add a2, s1, s2
	lw a1, 0(a2)
	beq a1, a0, label158
	sh2add a1, s1, s2
	lw a0, 0(a1)
	sh2add a2, s0, s2
	sw a0, 0(a2)
	mv a0, s0
	j label96
label300:
	sh2add a4, s1, s2
	lw a2, 0(a4)
	mv a1, a2
label126:
	bne a1, a0, label128
label129:
	sh2add a0, a0, a3
	sh2add a3, s1, a3
	lw a1, 0(a0)
	sw a1, 0(a3)
	mv a0, a2
	jal delete
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	mv a0, s0
	j label96
label131:
	sh2add a2, s1, s2
	lw a1, 0(a2)
	beq a1, a0, label119
	sh2add a1, s1, s2
	lw a0, 0(a1)
	sh2add a1, s0, s3
	sw a0, 0(a1)
	mv a0, s0
	j label96
label128:
	sh2add t0, a1, a5
	lw a4, 0(t0)
	beq a4, a0, label314
	mv a1, a4
	j label126
label151:
	sh2add a4, s1, s2
	lw a2, 0(a4)
	bne a2, a0, label420
	mv a0, a1
	sh2add a2, s0, s2
	sw a1, 0(a2)
	mv a0, s0
	j label96
label420:
	sh2add a4, s1, s2
	lw a2, 0(a4)
	mv a1, a2
label153:
	beq a1, a0, label155
	sh2add t0, a1, a5
	lw a4, 0(t0)
	beq a4, a0, label442
	mv a1, a4
	j label153
label155:
	sh2add a4, a0, a3
	sh2add a3, s1, a3
	lw a1, 0(a4)
	sw a1, 0(a3)
	mv a0, a2
	jal delete
	sh2add a1, s1, s2
	sw a0, 0(a1)
	mv a0, s1
	sh2add a2, s0, s2
	sw s1, 0(a2)
	mv a0, s0
	j label96
label442:
	mv a0, a1
	j label155
label121:
	sh2add s2, s1, s2
	lw a0, 0(s2)
	jal delete
	sw a0, 0(s2)
	mv a0, s1
	sh2add a1, s0, s3
	sw s1, 0(a1)
	mv a0, s0
	j label96
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
label314:
	mv a0, a1
	j label129
label251:
	mv a1, a4
	j label111
label133:
	sh2add s2, s1, a5
	lw a0, 0(s2)
	jal delete
	sw a0, 0(s2)
	mv a0, s1
	j label119
label367:
	mv a1, a2
	j label139
.p2align 2
inorder:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s1, 8(sp)
	li s1, -1
	sd s0, 16(sp)
	beq a0, s1, label595
	mv s0, a0
label593:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label593)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel634:
	auipc a3, %pcrel_hi(value)
	addi a2, a3, %pcrel_lo(pcrel634)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel635:
	auipc a2, %pcrel_hi(right_child)
	addi a1, a2, %pcrel_lo(pcrel635)
	sh2add a0, s0, a1
	lw s0, 0(a0)
	bne s0, s1, label593
label595:
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
	beq a0, zero, label646
	jal getint
pcrel702:
	auipc a2, %pcrel_hi(right_child)
pcrel703:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel703)(a1)
pcrel704:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel704)(a1)
	sw a0, %pcrel_lo(pcrel702)(a2)
	li a0, 1
	sw a0, 32(sp)
	ble s1, a0, label640
	li s2, 1
.p2align 2
label638:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label638
label640:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s0, a0
	ble a0, zero, label674
	mv s1, zero
	mv s2, zero
.p2align 2
label641:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s1, s1, 1
	ble s0, s1, label644
	mv s2, a0
	j label641
label644:
	jal inorder
	li a0, 10
	jal putch
label646:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 40
	ret
label674:
	mv a0, zero
	j label644
