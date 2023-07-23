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
	beq s0, a0, label2
pcrel113:
	auipc a3, %pcrel_hi(value)
	addi a4, a3, %pcrel_lo(pcrel113)
	sh2add a5, s0, a4
pcrel114:
	auipc a4, %pcrel_hi(right_child)
	lw a0, 0(a5)
	addi a3, a4, %pcrel_lo(pcrel114)
pcrel115:
	auipc a5, %pcrel_hi(left_child)
	mv s1, a3
	addi a4, a5, %pcrel_lo(pcrel115)
	bgt a1, a0, label101
	mv s1, a4
	sh2add a0, s0, a4
	li a3, -1
	lw s2, 0(a0)
	beq s2, a3, label6
pcrel116:
	auipc a3, %pcrel_hi(value)
	addi a4, a3, %pcrel_lo(pcrel116)
	sh2add a5, s2, a4
pcrel117:
	auipc a4, %pcrel_hi(right_child)
	lw a0, 0(a5)
	addi a3, a4, %pcrel_lo(pcrel117)
pcrel118:
	auipc a5, %pcrel_hi(left_child)
	addi a4, a5, %pcrel_lo(pcrel118)
	bgt a1, a0, label103
label112:
	mv a3, a4
	j label103
label2:
	lw a0, 0(a2)
pcrel119:
	auipc a3, %pcrel_hi(value)
	addi a5, a3, %pcrel_lo(pcrel119)
	sh2add a4, a0, a5
	sw a1, 0(a4)
pcrel120:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel120)
	li a1, -1
	sh2add a3, a0, a4
pcrel121:
	auipc a4, %pcrel_hi(right_child)
	sw a1, 0(a3)
	addi a5, a4, %pcrel_lo(pcrel121)
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
label103:
	sh2add s3, s2, a3
	lw a0, 0(s3)
	jal insert
	sh2add a1, s0, s1
	sw a0, 0(s3)
	mv a0, s0
	sw s2, 0(a1)
	j label3
label6:
	lw a0, 0(a2)
pcrel122:
	auipc a5, %pcrel_hi(value)
	addi a3, a5, %pcrel_lo(pcrel122)
pcrel123:
	auipc a5, %pcrel_hi(right_child)
	sh2add a4, a0, a3
	sw a1, 0(a4)
pcrel124:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel124)
	li a1, -1
	sh2add a3, a0, a4
	sw a1, 0(a3)
	addi a3, a5, %pcrel_lo(pcrel123)
	sh2add a4, a0, a3
	sw a1, 0(a4)
	addi a1, a0, 1
	sw a1, 0(a2)
	sh2add a2, s0, s1
	sw a0, 0(a2)
	mv a0, s0
	j label3
label101:
	sh2add a0, s0, s1
	li a3, -1
	lw s2, 0(a0)
	beq s2, a3, label6
pcrel125:
	auipc a3, %pcrel_hi(value)
	addi a4, a3, %pcrel_lo(pcrel125)
	sh2add a5, s2, a4
pcrel126:
	auipc a4, %pcrel_hi(right_child)
	lw a0, 0(a5)
	addi a3, a4, %pcrel_lo(pcrel126)
pcrel127:
	auipc a5, %pcrel_hi(left_child)
	addi a4, a5, %pcrel_lo(pcrel127)
	bgt a1, a0, label103
	j label112
delete:
	addi sp, sp, -24
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	li a0, -1
	sd ra, 0(sp)
	beq s0, a0, label152
pcrel331:
	auipc a3, %pcrel_hi(value)
	addi a0, a3, %pcrel_lo(pcrel331)
	sh2add a3, s0, a0
	mv a2, a0
	lw a0, 0(a3)
	bgt a1, a0, label130
	blt a1, a0, label145
pcrel332:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(pcrel332)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	beq a0, a1, label144
pcrel333:
	auipc a0, %pcrel_hi(left_child)
	addi a3, a0, %pcrel_lo(pcrel333)
	sh2add a1, s0, a3
	li a3, -1
	lw a0, 0(a1)
	beq a0, a3, label134
pcrel334:
	auipc a4, %pcrel_hi(right_child)
	addi a1, a4, %pcrel_lo(pcrel334)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	beq a0, a1, label134
pcrel335:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel335)
	sh2add a3, s0, a0
	mv s1, a0
	lw a1, 0(a3)
	mv a0, a1
	li a3, -1
	beq a1, a3, label226
pcrel336:
	auipc a3, %pcrel_hi(left_child)
	addi a5, a3, %pcrel_lo(pcrel336)
	sh2add a4, a1, a5
	li a5, -1
	lw a3, 0(a4)
	bne a3, a5, label235
	j label142
label152:
	li a0, -1
	j label146
label130:
	auipc a0, %pcrel_hi(right_child)
	addi a2, a0, %pcrel_lo(label130)
	sh2add s1, s0, a2
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
label146:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label134:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(label134)
	sh2add a1, s0, a2
	li a2, -1
	lw a0, 0(a1)
	beq a0, a2, label198
pcrel337:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(pcrel337)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	j label146
label198:
	auipc a2, %pcrel_hi(right_child)
	addi a1, a2, %pcrel_lo(label198)
	sh2add a3, s0, a1
	lw a0, 0(a3)
	j label146
label144:
	auipc a1, %pcrel_hi(right_child)
	addi a4, a1, %pcrel_lo(label144)
	li a1, -1
	sh2add a3, s0, a4
	lw a0, 0(a3)
	beq a0, a1, label152
pcrel338:
	auipc a0, %pcrel_hi(left_child)
	addi a3, a0, %pcrel_lo(pcrel338)
	sh2add a1, s0, a3
	li a3, -1
	lw a0, 0(a1)
	beq a0, a3, label134
pcrel339:
	auipc a4, %pcrel_hi(right_child)
	addi a1, a4, %pcrel_lo(pcrel339)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	beq a0, a1, label134
pcrel340:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel340)
	sh2add a3, s0, a0
	mv s1, a0
	lw a1, 0(a3)
	mv a0, a1
	li a3, -1
	beq a1, a3, label226
pcrel341:
	auipc a3, %pcrel_hi(left_child)
	addi a5, a3, %pcrel_lo(pcrel341)
	sh2add a4, a1, a5
	li a5, -1
	lw a3, 0(a4)
	beq a3, a5, label142
label235:
	mv a0, a3
	li a3, -1
	beq a0, a3, label226
pcrel342:
	auipc a3, %pcrel_hi(left_child)
	addi a5, a3, %pcrel_lo(pcrel342)
	sh2add a4, a0, a5
	li a5, -1
	lw a3, 0(a4)
	bne a3, a5, label235
	j label142
label145:
	auipc a2, %pcrel_hi(left_child)
	addi a3, a2, %pcrel_lo(label145)
	sh2add s1, s0, a3
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
	j label146
label226:
	li a0, -1
label142:
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
	j label146
inorder:
	addi sp, sp, -16
	li a1, -1
	sd s0, 8(sp)
	sd ra, 0(sp)
	beq a0, a1, label346
	mv s0, a0
label344:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label344)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel380:
	auipc a2, %pcrel_hi(value)
	addi a3, a2, %pcrel_lo(pcrel380)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel381:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel381)
	sh2add a2, s0, a0
	li a0, -1
	lw s0, 0(a2)
	bne s0, a0, label344
label346:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.globl main
main:
	addi sp, sp, -40
	sd s0, 32(sp)
	addi s0, sp, 0
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd ra, 8(sp)
	jal getint
	mv s1, a0
	bne a0, zero, label384
label383:
	mv a0, zero
	ld ra, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label384:
	jal getint
pcrel445:
	auipc a2, %pcrel_hi(right_child)
pcrel446:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel446)(a1)
pcrel447:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel447)(a1)
	sw a0, %pcrel_lo(pcrel445)(a2)
	li a0, 1
	sw a0, 0(sp)
	ble s1, a0, label387
	li s2, 1
	j label385
label387:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s1, a0
	bgt a0, zero, label421
	mv a0, zero
	j label391
label421:
	mv s0, zero
	mv s2, zero
label388:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s0, s0, 1
	ble s1, s0, label391
	mv s2, a0
	j label388
label391:
	jal inorder
	li a0, 10
	jal putch
	j label383
label385:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label385
	j label387
