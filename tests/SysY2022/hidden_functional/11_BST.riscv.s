.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
value:
	.zero	40000
.align 4
left_child:
	.zero	40000
.align 4
right_child:
	.zero	40000
.text
insert:
.p2align 2
	addi sp, sp, -40
	sd s0, 32(sp)
	mv s0, a0
	sd s1, 24(sp)
	li a0, -1
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	beq s0, a0, label2
pcrel115:
	auipc a3, %pcrel_hi(value)
	addi a4, a3, %pcrel_lo(pcrel115)
	sh2add a5, s0, a4
pcrel116:
	auipc a4, %pcrel_hi(right_child)
	lw a0, 0(a5)
	addi a3, a4, %pcrel_lo(pcrel116)
pcrel117:
	auipc a5, %pcrel_hi(left_child)
	mv s1, a3
	addi a4, a5, %pcrel_lo(pcrel117)
	bgt a1, a0, label107
	mv s1, a4
label107:
	sh2add a0, s0, s1
	li a3, -1
	lw s2, 0(a0)
	beq s2, a3, label6
pcrel118:
	auipc a4, %pcrel_hi(value)
	addi a5, a4, %pcrel_lo(pcrel118)
pcrel119:
	auipc a4, %pcrel_hi(right_child)
	sh2add a3, s2, a5
pcrel120:
	auipc a5, %pcrel_hi(left_child)
	lw a0, 0(a3)
	addi a3, a4, %pcrel_lo(pcrel119)
	addi a4, a5, %pcrel_lo(pcrel120)
	bgt a1, a0, label109
	mv a3, a4
label109:
	sh2add s3, s2, a3
	lw a0, 0(s3)
	jal insert
	sh2add a1, s0, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s2, 0(a1)
	j label3
label2:
	lw a0, 0(a2)
pcrel121:
	auipc a5, %pcrel_hi(value)
	addi a4, a5, %pcrel_lo(pcrel121)
	sh2add a3, a0, a4
	sw a1, 0(a3)
pcrel122:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel122)
	li a1, -1
	sh2add a3, a0, a4
	sw a1, 0(a3)
pcrel123:
	auipc a3, %pcrel_hi(right_child)
	addi a4, a3, %pcrel_lo(pcrel123)
	sh2add a5, a0, a4
	sw a1, 0(a5)
	addi a1, a0, 1
	sw a1, 0(a2)
label3:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label6:
	lw a0, 0(a2)
pcrel124:
	auipc a4, %pcrel_hi(value)
	addi a5, a4, %pcrel_lo(pcrel124)
	sh2add a3, a0, a5
	sw a1, 0(a3)
pcrel125:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel125)
	li a1, -1
	sh2add a3, a0, a4
	sw a1, 0(a3)
pcrel126:
	auipc a3, %pcrel_hi(right_child)
	addi a4, a3, %pcrel_lo(pcrel126)
	sh2add a5, a0, a4
	sw a1, 0(a5)
	addi a1, a0, 1
	sw a1, 0(a2)
	sh2add a2, s0, s1
	sw a0, 0(a2)
	mv a0, s0
	j label3
delete:
.p2align 2
	addi sp, sp, -24
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	li a0, -1
	sd ra, 0(sp)
	bne s0, a0, label128
label151:
	li a0, -1
	j label145
label128:
	auipc a3, %pcrel_hi(value)
	addi a0, a3, %pcrel_lo(label128)
	sh2add a3, s0, a0
	mv a2, a0
	lw a0, 0(a3)
	ble a1, a0, label130
pcrel307:
	auipc a0, %pcrel_hi(right_child)
	addi a2, a0, %pcrel_lo(pcrel307)
	sh2add s1, s0, a2
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
	j label145
label130:
	blt a1, a0, label144
pcrel308:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(pcrel308)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	beq a0, a1, label132
	j label133
label145:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label132:
	auipc a0, %pcrel_hi(right_child)
	addi a1, a0, %pcrel_lo(label132)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	beq a0, a1, label151
label133:
	auipc a3, %pcrel_hi(left_child)
	addi a4, a3, %pcrel_lo(label133)
	li a3, -1
	sh2add a1, s0, a4
	lw a0, 0(a1)
	beq a0, a3, label141
pcrel309:
	auipc a0, %pcrel_hi(right_child)
	addi a3, a0, %pcrel_lo(pcrel309)
	sh2add a1, s0, a3
	li a3, -1
	lw a0, 0(a1)
	bne a0, a3, label205
label141:
	auipc a3, %pcrel_hi(left_child)
	addi a1, a3, %pcrel_lo(label141)
	sh2add a2, s0, a1
	li a1, -1
	lw a0, 0(a2)
	beq a0, a1, label241
	j label240
label144:
	auipc a2, %pcrel_hi(left_child)
	addi a3, a2, %pcrel_lo(label144)
	sh2add s1, s0, a3
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
	j label145
label205:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(label205)
	sh2add a3, s0, a0
	mv s1, a0
	lw a1, 0(a3)
	mv a0, a1
label136:
	li a3, -1
	bne a0, a3, label138
	li a0, -1
	j label139
label138:
	auipc a3, %pcrel_hi(left_child)
	addi a4, a3, %pcrel_lo(label138)
	sh2add a5, a0, a4
	li a4, -1
	lw a3, 0(a5)
	beq a3, a4, label139
	mv a0, a3
	j label136
label139:
	sh2add a4, a0, a2
	sh2add a2, s0, a2
	lw a3, 0(a4)
	sw a3, 0(a2)
	mv a0, a1
	mv a1, a3
	jal delete
	sh2add a1, s0, s1
	sw a0, 0(a1)
	mv a0, s0
	j label145
label241:
	auipc a2, %pcrel_hi(right_child)
	addi a1, a2, %pcrel_lo(label241)
	sh2add a3, s0, a1
	lw a0, 0(a3)
	j label145
label240:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label240)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	j label145
inorder:
.p2align 2
	addi sp, sp, -16
	li a1, -1
	sd s0, 8(sp)
	sd ra, 0(sp)
	beq a0, a1, label313
	mv s0, a0
label311:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label311)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel350:
	auipc a3, %pcrel_hi(value)
	addi a1, a3, %pcrel_lo(pcrel350)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal putint
	li a0, 32
	jal putch
pcrel351:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel351)
	sh2add a2, s0, a0
	li a0, -1
	lw s0, 0(a2)
	bne s0, a0, label311
label313:
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
	bne a0, zero, label354
label353:
	mv a0, zero
	ld ra, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label354:
	jal getint
pcrel415:
	auipc a2, %pcrel_hi(right_child)
pcrel416:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel416)(a1)
pcrel417:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel417)(a1)
	sw a0, %pcrel_lo(pcrel415)(a2)
	li a0, 1
	sw a0, 0(sp)
	ble s1, a0, label357
	li s2, 1
	j label355
label357:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s1, a0
	bgt a0, zero, label391
	mv a0, zero
	j label361
label391:
	mv s0, zero
	mv s2, zero
.p2align 2
label358:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s0, s0, 1
	ble s1, s0, label361
	mv s2, a0
	j label358
label361:
	jal inorder
	li a0, 10
	jal putch
	j label353
.p2align 2
label355:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label355
	j label357
