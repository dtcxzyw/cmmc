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
pcrel109:
	auipc a3, %pcrel_hi(value)
	addi a4, a3, %pcrel_lo(pcrel109)
	sh2add a5, s0, a4
pcrel110:
	auipc a4, %pcrel_hi(right_child)
	lw a0, 0(a5)
	addi a3, a4, %pcrel_lo(pcrel110)
pcrel111:
	auipc a5, %pcrel_hi(left_child)
	mv s1, a3
	addi a4, a5, %pcrel_lo(pcrel111)
	bgt a1, a0, label101
	mv s1, a4
label101:
	sh2add a0, s0, s1
	li a3, -1
	lw s2, 0(a0)
	beq s2, a3, label6
pcrel112:
	auipc a3, %pcrel_hi(value)
	addi a4, a3, %pcrel_lo(pcrel112)
	sh2add a5, s2, a4
pcrel113:
	auipc a4, %pcrel_hi(right_child)
	lw a0, 0(a5)
	addi a3, a4, %pcrel_lo(pcrel113)
pcrel114:
	auipc a5, %pcrel_hi(left_child)
	addi a4, a5, %pcrel_lo(pcrel114)
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
label2:
	lw a0, 0(a2)
pcrel115:
	auipc a3, %pcrel_hi(value)
	addi a5, a3, %pcrel_lo(pcrel115)
	sh2add a4, a0, a5
	sw a1, 0(a4)
pcrel116:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel116)
	li a1, -1
	sh2add a3, a0, a4
pcrel117:
	auipc a4, %pcrel_hi(right_child)
	sw a1, 0(a3)
	addi a5, a4, %pcrel_lo(pcrel117)
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
label6:
	lw a0, 0(a2)
pcrel118:
	auipc a5, %pcrel_hi(value)
	addi a3, a5, %pcrel_lo(pcrel118)
pcrel119:
	auipc a5, %pcrel_hi(right_child)
	sh2add a4, a0, a3
	sw a1, 0(a4)
pcrel120:
	auipc a1, %pcrel_hi(left_child)
	addi a4, a1, %pcrel_lo(pcrel120)
	li a1, -1
	sh2add a3, a0, a4
	sw a1, 0(a3)
	addi a3, a5, %pcrel_lo(pcrel119)
	sh2add a4, a0, a3
	sw a1, 0(a4)
	addi a1, a0, 1
	sw a1, 0(a2)
	sh2add a2, s0, s1
	sw a0, 0(a2)
	mv a0, s0
	j label3
delete:
	addi sp, sp, -24
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	li a0, -1
	sd ra, 0(sp)
	beq s0, a0, label145
pcrel292:
	auipc a3, %pcrel_hi(value)
	addi a0, a3, %pcrel_lo(pcrel292)
	sh2add a3, s0, a0
	mv a2, a0
	lw a0, 0(a3)
	bgt a1, a0, label123
	j label124
label145:
	li a0, -1
	j label139
label123:
	auipc a0, %pcrel_hi(right_child)
	addi a2, a0, %pcrel_lo(label123)
	sh2add s1, s0, a2
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
	j label139
label124:
	blt a1, a0, label138
pcrel293:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(pcrel293)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	beq a0, a1, label137
pcrel294:
	auipc a0, %pcrel_hi(left_child)
	addi a3, a0, %pcrel_lo(pcrel294)
	sh2add a1, s0, a3
	li a3, -1
	lw a0, 0(a1)
	beq a0, a3, label127
	j label181
label137:
	auipc a1, %pcrel_hi(right_child)
	addi a4, a1, %pcrel_lo(label137)
	li a1, -1
	sh2add a3, s0, a4
	lw a0, 0(a3)
	beq a0, a1, label145
	j label244
label138:
	auipc a2, %pcrel_hi(left_child)
	addi a3, a2, %pcrel_lo(label138)
	sh2add s1, s0, a3
	lw a0, 0(s1)
	jal delete
	sw a0, 0(s1)
	mv a0, s0
label139:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label181:
	auipc a4, %pcrel_hi(right_child)
	addi a1, a4, %pcrel_lo(label181)
	sh2add a3, s0, a1
	li a1, -1
	lw a0, 0(a3)
	bne a0, a1, label209
label127:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(label127)
	sh2add a1, s0, a2
	li a2, -1
	lw a0, 0(a1)
	beq a0, a2, label129
pcrel295:
	auipc a0, %pcrel_hi(left_child)
	addi a2, a0, %pcrel_lo(pcrel295)
	sh2add a1, s0, a2
	lw a0, 0(a1)
	j label139
label129:
	auipc a2, %pcrel_hi(right_child)
	addi a1, a2, %pcrel_lo(label129)
	sh2add a3, s0, a1
	lw a0, 0(a3)
	j label139
label209:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(label209)
	sh2add a3, s0, a0
	mv s1, a0
	lw a1, 0(a3)
	mv a0, a1
	li a3, -1
	beq a1, a3, label219
	j label218
label132:
	li a3, -1
	beq a0, a3, label219
label218:
	auipc a3, %pcrel_hi(left_child)
	addi a5, a3, %pcrel_lo(label218)
	sh2add a4, a0, a5
	li a5, -1
	lw a3, 0(a4)
	bne a3, a5, label228
	j label135
label219:
	li a0, -1
	j label135
label228:
	mv a0, a3
	j label132
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
	j label139
label244:
	auipc a0, %pcrel_hi(left_child)
	addi a3, a0, %pcrel_lo(label244)
	sh2add a1, s0, a3
	li a3, -1
	lw a0, 0(a1)
	beq a0, a3, label127
	j label181
inorder:
	addi sp, sp, -16
	li a1, -1
	sd s0, 8(sp)
	sd ra, 0(sp)
	beq a0, a1, label299
	mv s0, a0
label297:
	auipc a0, %pcrel_hi(left_child)
	addi a1, a0, %pcrel_lo(label297)
	sh2add a2, s0, a1
	lw a0, 0(a2)
	jal inorder
pcrel333:
	auipc a2, %pcrel_hi(value)
	addi a3, a2, %pcrel_lo(pcrel333)
	sh2add a1, s0, a3
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
pcrel334:
	auipc a1, %pcrel_hi(right_child)
	addi a0, a1, %pcrel_lo(pcrel334)
	sh2add a2, s0, a0
	li a0, -1
	lw s0, 0(a2)
	bne s0, a0, label297
label299:
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
	bne a0, zero, label337
label336:
	mv a0, zero
	ld ra, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label337:
	jal getint
pcrel398:
	auipc a2, %pcrel_hi(right_child)
pcrel399:
	auipc a1, %pcrel_hi(value)
	sw a0, %pcrel_lo(pcrel399)(a1)
pcrel400:
	auipc a1, %pcrel_hi(left_child)
	li a0, -1
	sw a0, %pcrel_lo(pcrel400)(a1)
	sw a0, %pcrel_lo(pcrel398)(a2)
	li a0, 1
	sw a0, 0(sp)
	ble s1, a0, label340
	li s2, 1
	j label338
label340:
	mv a0, zero
	jal inorder
	li a0, 10
	jal putch
	jal getint
	mv s1, a0
	bgt a0, zero, label374
	mv a0, zero
	j label344
label374:
	mv s0, zero
	mv s2, zero
label341:
	jal getint
	mv a1, a0
	mv a0, s2
	jal delete
	addiw s0, s0, 1
	ble s1, s0, label344
	mv s2, a0
	j label341
label344:
	jal inorder
	li a0, 10
	jal putch
	j label336
label338:
	jal getint
	mv a2, s0
	mv a1, a0
	mv a0, zero
	jal insert
	addiw s2, s2, 1
	bgt s1, s2, label338
	j label340
