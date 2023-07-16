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
	addi sp, sp, -40
	sd s0, 32(sp)
	mv s0, a0
	sd s1, 24(sp)
	li a0, -1
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	bne s0, a0, label4
	j label7
label2:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label4:
	auipc a3, %pcrel_hi(value)
pcrel112:
	auipc t0, %pcrel_hi(right_child)
	addi a5, a3, %pcrel_lo(label4)
	addi a3, t0, %pcrel_lo(pcrel112)
	sh2add a4, s0, a5
	mv s1, a3
pcrel113:
	auipc a5, %pcrel_hi(left_child)
	lw a0, 0(a4)
	addi a4, a5, %pcrel_lo(pcrel113)
	bgt a1, a0, label101
	mv s1, a4
label101:
	sh2add a0, s0, s1
	li a3, -1
	lw s2, 0(a0)
	bne s2, a3, label6
	lw a0, 0(a2)
pcrel114:
	auipc a4, %pcrel_hi(value)
	addi a5, a4, %pcrel_lo(pcrel114)
	sh2add a3, a0, a5
	sw a1, 0(a3)
pcrel115:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel115)
	li a1, -1
	sh2add a3, a0, a4
pcrel116:
	auipc a4, %pcrel_hi(right_child)
	sw a1, 0(a3)
	addi a3, a4, %pcrel_lo(pcrel116)
	sh2add a5, a0, a3
	addiw a3, a0, 1
	sw a1, 0(a5)
	sh2add a1, s0, s1
	sw a3, 0(a2)
	sw a0, 0(a1)
	mv a0, s0
	j label2
label6:
	auipc a4, %pcrel_hi(value)
	addi a3, a4, %pcrel_lo(label6)
pcrel117:
	auipc a4, %pcrel_hi(right_child)
	sh2add a5, s2, a3
	addi a3, a4, %pcrel_lo(pcrel117)
	lw a0, 0(a5)
pcrel118:
	auipc a5, %pcrel_hi(left_child)
	addi a4, a5, %pcrel_lo(pcrel118)
	bgt a1, a0, label103
	j label110
label7:
	lw a0, 0(a2)
pcrel119:
	auipc a5, %pcrel_hi(value)
	addi a3, a5, %pcrel_lo(pcrel119)
	sh2add a4, a0, a3
	sw a1, 0(a4)
pcrel120:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel120)
	li a1, -1
	sh2add a3, a0, a4
pcrel121:
	auipc a4, %pcrel_hi(right_child)
	sw a1, 0(a3)
	addi a3, a4, %pcrel_lo(pcrel121)
	sh2add a5, a0, a3
	sw a1, 0(a5)
	addiw a1, a0, 1
	sw a1, 0(a2)
	j label2
label110:
	mv a3, a4
label103:
	sh2add s3, s2, a3
	lw a0, 0(s3)
	jal insert
	sh2add a1, s0, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s2, 0(a1)
	j label2
delete:
	addi sp, sp, -24
	li a2, -1
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	sd ra, 0(sp)
	bne a0, a2, label125
	j label145
label125:
	auipc a3, %pcrel_hi(value)
	addi a0, a3, %pcrel_lo(label125)
	sh2add a3, s0, a0
	mv a2, a0
	lw a0, 0(a3)
	ble a1, a0, label127
	j label126
label145:
	li a0, -1
label123:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label126:
	auipc a0, %pcrel_hi(right_child)
	addi a2, a0, %pcrel_lo(label126)
	sh2add s1, s0, a2
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
	j label123
label127:
	bge a1, a0, label128
pcrel299:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(pcrel299)
	sh2add s1, s0, a2
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
	j label123
label128:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label128)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	bne a0, a1, label129
pcrel300:
	auipc a1, %pcrel_hi(right_child)
	addi a3, a1, %pcrel_lo(pcrel300)
	li a1, -1
	sh2add a4, s0, a3
	lw a0, 0(a4)
	bne a0, a1, label129
	j label145
label129:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label129)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	bne a0, a1, label133
pcrel301:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(pcrel301)
	sh2add a1, s0, a2
	li a2, -1
	lw a0, 0(a1)
	bne a0, a2, label131
	j label290
label133:
	auipc a1, %pcrel_hi(right_child)
	addi a4, a1, %pcrel_lo(label133)
	li a1, -1
	sh2add a3, s0, a4
	lw a0, 0(a3)
	bne a0, a1, label134
pcrel302:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(pcrel302)
	sh2add a1, s0, a2
	li a2, -1
	lw a0, 0(a1)
	bne a0, a2, label131
	j label290
label134:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(label134)
	sh2add a3, s0, a0
	mv s1, a0
	lw a1, 0(a3)
	mv a0, a1
	li a3, -1
	bne a1, a3, label137
label219:
	li a0, -1
	j label138
label137:
	auipc a3, %pcrel_hi(left_child)
	addi a4, a3, %pcrel_lo(label137)
	sh2add a5, a0, a4
	li a4, -1
	lw a3, 0(a5)
	beq a3, a4, label138
	mv a0, a3
	li a3, -1
	bne a0, a3, label137
	j label219
label131:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label131)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	j label123
label290:
	auipc a1, %pcrel_hi(right_child)
	addi a3, a1, %pcrel_lo(label290)
	sh2add a2, s0, a3
	lw a0, 0(a2)
	j label123
label138:
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
	j label123
inorder:
	addi sp, sp, -16
	li a1, -1
	sd s0, 8(sp)
	sd ra, 0(sp)
	beq a0, a1, label306
	mv s0, a0
label304:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label304)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel340:
	auipc a2, %pcrel_hi(value)
	addi a3, a2, %pcrel_lo(pcrel340)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel341:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel341)
	sh2add a2, s0, a0
	li a0, -1
	lw s0, 0(a2)
	beq s0, a0, label306
	j label304
label306:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.globl main
main:
	addi sp, sp, -40
	sd s0, 8(sp)
	addi s0, sp, 0
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd ra, 16(sp)
	jal getint
	mv s1, a0
	bne a0, zero, label343
	j label352
label343:
	jal getint
pcrel406:
	auipc a2, %pcrel_hi(right_child)
pcrel407:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel407)(a1)
pcrel408:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel408)(a1)
	sw a0, %pcrel_lo(pcrel406)(a2)
	li a0, 1
	sw a0, 0(sp)
	ble s1, a0, label346
	li s2, 1
label344:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	ble s1, s2, label346
	j label344
label352:
	mv a0, zero
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 8(sp)
	addi sp, sp, 40
	ret
label346:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s1, a0
	ble a0, zero, label381
	mv s0, zero
	mv s2, zero
	j label347
label381:
	mv a0, zero
	j label350
label347:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s0, s0, 1
	ble s1, s0, label350
	mv s2, a0
	j label347
label350:
	jal inorder
	li a0, 10
	jal putch
	j label352
