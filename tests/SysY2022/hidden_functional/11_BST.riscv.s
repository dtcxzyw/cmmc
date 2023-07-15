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
	j label4
label2:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label4:
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
	addiw a1, a0, 1
	sw a1, 0(a2)
	j label2
label5:
	auipc a4, %pcrel_hi(value)
	addi a5, a4, %pcrel_lo(label5)
pcrel115:
	auipc a4, %pcrel_hi(right_child)
	sh2add a3, s0, a5
pcrel116:
	auipc a5, %pcrel_hi(left_child)
	lw a0, 0(a3)
	addi a3, a4, %pcrel_lo(pcrel115)
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
	auipc a4, %pcrel_hi(value)
	addi a5, a4, %pcrel_lo(pcrel117)
	sh2add a3, a0, a5
	sw a1, 0(a3)
pcrel118:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel118)
	li a1, -1
	sh2add a3, a0, a4
pcrel119:
	auipc a4, %pcrel_hi(right_child)
	sw a1, 0(a3)
	addi a5, a4, %pcrel_lo(pcrel119)
	sh2add a3, a0, a5
	sw a1, 0(a3)
	addiw a1, a0, 1
	sw a1, 0(a2)
	sh2add a2, s0, s1
	sw a0, 0(a2)
	mv a0, s0
	j label2
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
pcrel297:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(pcrel297)
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
pcrel298:
	auipc a1, %pcrel_hi(right_child)
	addi a3, a1, %pcrel_lo(pcrel298)
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
	bne a0, a1, label130
pcrel299:
	auipc a2, %pcrel_hi(left_child)
	addi a1, a2, %pcrel_lo(pcrel299)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	bne a0, a1, label138
	j label290
label130:
	auipc a0, %pcrel_hi(right_child)
	addi a1, a0, %pcrel_lo(label130)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	bne a0, a1, label131
pcrel300:
	auipc a2, %pcrel_hi(left_child)
	addi a1, a2, %pcrel_lo(pcrel300)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	bne a0, a1, label138
label290:
	auipc a3, %pcrel_hi(right_child)
	addi a2, a3, %pcrel_lo(label290)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	j label123
label138:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(label138)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	j label123
label131:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(label131)
	sh2add a3, s0, a0
	mv s1, a0
	lw a1, 0(a3)
	mv a0, a1
	li a3, -1
	bne a1, a3, label134
label200:
	li a0, -1
	j label135
label134:
	auipc a3, %pcrel_hi(left_child)
	addi a4, a3, %pcrel_lo(label134)
	sh2add a5, a0, a4
	li a4, -1
	lw a3, 0(a5)
	beq a3, a4, label135
	mv a0, a3
	li a3, -1
	bne a0, a3, label134
	j label200
label135:
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
	beq a0, a1, label304
	mv s0, a0
label302:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label302)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel338:
	auipc a2, %pcrel_hi(value)
	addi a3, a2, %pcrel_lo(pcrel338)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel339:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel339)
	sh2add a2, s0, a0
	li a0, -1
	lw s0, 0(a2)
	beq s0, a0, label304
	j label302
label304:
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
	bne a0, zero, label342
label341:
	mv a0, zero
	ld ra, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 8(sp)
	addi sp, sp, 40
	ret
label342:
	jal getint
pcrel404:
	auipc a2, %pcrel_hi(right_child)
pcrel405:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel405)(a1)
pcrel406:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel406)(a1)
	sw a0, %pcrel_lo(pcrel404)(a2)
	li a0, 1
	sw a0, 0(sp)
	ble s1, a0, label345
	li s2, 1
label343:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	ble s1, s2, label345
	j label343
label345:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s1, a0
	ble a0, zero, label379
	mv s0, zero
	mv s2, zero
	j label346
label379:
	mv a0, zero
	j label349
label346:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s0, s0, 1
	ble s1, s0, label349
	mv s2, a0
	j label346
label349:
	jal inorder
	li a0, 10
	jal putch
	j label341
