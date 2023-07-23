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
	bne s0, a0, label5
	lw a0, 0(a2)
pcrel112:
	auipc a3, %pcrel_hi(value)
	addi a5, a3, %pcrel_lo(pcrel112)
	sh2add a4, a0, a5
	sw a1, 0(a4)
pcrel113:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel113)
	li a1, -1
	sh2add a3, a0, a4
pcrel114:
	auipc a4, %pcrel_hi(right_child)
	sw a1, 0(a3)
	addi a5, a4, %pcrel_lo(pcrel114)
	sh2add a3, a0, a5
	sw a1, 0(a3)
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
label5:
	auipc a3, %pcrel_hi(value)
	addi a4, a3, %pcrel_lo(label5)
	sh2add a5, s0, a4
pcrel115:
	auipc a4, %pcrel_hi(right_child)
	lw a0, 0(a5)
	addi a3, a4, %pcrel_lo(pcrel115)
pcrel116:
	auipc a5, %pcrel_hi(left_child)
	mv s1, a3
	addi a4, a5, %pcrel_lo(pcrel116)
	bgt a1, a0, label101
	mv s1, a4
label101:
	sh2add a0, s0, s1
	li a3, -1
	lw s2, 0(a0)
	bne s2, a3, label7
	lw a0, 0(a2)
pcrel117:
	auipc a5, %pcrel_hi(value)
	addi a3, a5, %pcrel_lo(pcrel117)
pcrel118:
	auipc a5, %pcrel_hi(right_child)
	sh2add a4, a0, a3
	sw a1, 0(a4)
pcrel119:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel119)
	li a1, -1
	sh2add a3, a0, a4
	sw a1, 0(a3)
	addi a3, a5, %pcrel_lo(pcrel118)
	sh2add a4, a0, a3
	sw a1, 0(a4)
	addi a1, a0, 1
	sw a1, 0(a2)
	sh2add a2, s0, s1
	sw a0, 0(a2)
	mv a0, s0
	j label3
label7:
	auipc a3, %pcrel_hi(value)
	addi a4, a3, %pcrel_lo(label7)
	sh2add a5, s2, a4
pcrel120:
	auipc a4, %pcrel_hi(right_child)
	lw a0, 0(a5)
	addi a3, a4, %pcrel_lo(pcrel120)
pcrel121:
	auipc a5, %pcrel_hi(left_child)
	addi a4, a5, %pcrel_lo(pcrel121)
	bgt a1, a0, label103
	mv a3, a4
label103:
	sh2add s3, s2, a3
	lw a0, 0(s3)
	jal insert
	sh2add a1, s0, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s2, 0(a1)
	j label3
delete:
	addi sp, sp, -24
	li a2, -1
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	sd ra, 0(sp)
	bne a0, a2, label123
label145:
	li a0, -1
label140:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label123:
	auipc a3, %pcrel_hi(value)
	addi a0, a3, %pcrel_lo(label123)
	sh2add a3, s0, a0
	mv a2, a0
	lw a0, 0(a3)
	ble a1, a0, label125
pcrel297:
	auipc a0, %pcrel_hi(right_child)
	addi a2, a0, %pcrel_lo(pcrel297)
	sh2add s1, s0, a2
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
	j label140
label125:
	bge a1, a0, label126
pcrel298:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(pcrel298)
	sh2add s1, s0, a2
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
	j label140
label126:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label126)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	bne a0, a1, label127
pcrel299:
	auipc a3, %pcrel_hi(right_child)
	addi a1, a3, %pcrel_lo(pcrel299)
	sh2add a4, s0, a1
	li a1, -1
	lw a0, 0(a4)
	bne a0, a1, label127
	j label145
label127:
	auipc a0, %pcrel_hi(left_child)
	addi a3, a0, %pcrel_lo(label127)
	sh2add a1, s0, a3
	li a3, -1
	lw a0, 0(a1)
	bne a0, a3, label131
pcrel300:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(pcrel300)
	sh2add a2, s0, a1
	li a1, -1
	lw a0, 0(a2)
	bne a0, a1, label129
	j label289
label131:
	auipc a4, %pcrel_hi(right_child)
	addi a3, a4, %pcrel_lo(label131)
	sh2add a1, s0, a3
	li a3, -1
	lw a0, 0(a1)
	bne a0, a3, label132
pcrel301:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(pcrel301)
	sh2add a2, s0, a1
	li a1, -1
	lw a0, 0(a2)
	bne a0, a1, label129
	j label289
label132:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(label132)
	sh2add a3, s0, a0
	mv s1, a0
	lw a1, 0(a3)
	mv a0, a1
	li a3, -1
	bne a1, a3, label135
label219:
	li a0, -1
	j label136
label135:
	auipc a3, %pcrel_hi(left_child)
	addi a4, a3, %pcrel_lo(label135)
	sh2add a5, a0, a4
	li a4, -1
	lw a3, 0(a5)
	beq a3, a4, label136
	mv a0, a3
	li a3, -1
	bne a0, a3, label135
	j label219
label129:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(label129)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	j label140
label289:
	auipc a1, %pcrel_hi(right_child)
	addi a3, a1, %pcrel_lo(label289)
	sh2add a2, s0, a3
	lw a0, 0(a2)
	j label140
label136:
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
	j label140
inorder:
	addi sp, sp, -16
	li a1, -1
	sd s0, 8(sp)
	sd ra, 0(sp)
	beq a0, a1, label305
	mv s0, a0
label303:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label303)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel339:
	auipc a2, %pcrel_hi(value)
	addi a3, a2, %pcrel_lo(pcrel339)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel340:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel340)
	sh2add a2, s0, a0
	li a0, -1
	lw s0, 0(a2)
	beq s0, a0, label305
	j label303
label305:
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
label342:
	mv a0, zero
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 8(sp)
	addi sp, sp, 40
	ret
label343:
	jal getint
pcrel405:
	auipc a2, %pcrel_hi(right_child)
pcrel406:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel406)(a1)
pcrel407:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel407)(a1)
	sw a0, %pcrel_lo(pcrel405)(a2)
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
label346:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s1, a0
	ble a0, zero, label380
	mv s0, zero
	mv s2, zero
	j label347
label380:
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
	j label342
