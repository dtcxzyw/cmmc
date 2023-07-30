.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
head:
	.zero	40000000
.align 8
next:
	.zero	40000000
.align 8
nextvalue:
	.zero	40000000
.align 8
key:
	.zero	40000000
.align 8
value:
	.zero	40000000
.align 8
keys:
	.zero	40000000
.align 8
values:
	.zero	40000000
.align 8
requests:
	.zero	40000000
.align 8
ans:
	.zero	40000000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -56
	sd s1, 48(sp)
	sd s3, 40(sp)
	sd s4, 32(sp)
	sd s5, 24(sp)
	sd s0, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel207:
	auipc a1, %pcrel_hi(keys)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel207)
	mv s3, a0
	jal getarray
pcrel208:
	auipc a1, %pcrel_hi(values)
	mv s4, a0
	addi a0, a1, %pcrel_lo(pcrel208)
	mv s5, a0
	jal getarray
pcrel209:
	auipc a1, %pcrel_hi(requests)
	addi a0, a1, %pcrel_lo(pcrel209)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 78
	jal _sysy_starttime
pcrel210:
	auipc a5, %pcrel_hi(nextvalue)
pcrel211:
	auipc a0, %pcrel_hi(key)
pcrel212:
	auipc a1, %pcrel_hi(head)
	addi a2, a0, %pcrel_lo(pcrel211)
	addi a3, a1, %pcrel_lo(pcrel212)
pcrel213:
	auipc a1, %pcrel_hi(value)
	addi a0, a1, %pcrel_lo(pcrel213)
pcrel214:
	auipc a1, %pcrel_hi(next)
	addi a4, a1, %pcrel_lo(pcrel214)
	addi a1, a5, %pcrel_lo(pcrel210)
	bgt s4, zero, label48
pcrel215:
	auipc a5, %pcrel_hi(ans)
	addi s3, a5, %pcrel_lo(pcrel215)
	bgt s0, zero, label115
	j label14
label48:
	mv t0, zero
	mv a5, zero
	j label2
label14:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s3
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label17:
	bne t1, zero, label19
	mv t0, zero
	addiw t1, a5, 1
	sh2add a5, a5, s3
	sw zero, 0(a5)
	bgt s0, t1, label154
	j label14
.p2align 2
label21:
	sh2add t3, t1, a0
	lw t2, 0(t3)
	sh2add t3, t1, a1
	addw t0, t0, t2
	lw t1, 0(t3)
	bne t1, zero, label21
	addiw t1, a5, 1
	sh2add a5, a5, s3
	sw t0, 0(a5)
	ble s0, t1, label14
label154:
	mv a5, t1
	sh2add t1, t1, s2
	lw t0, 0(t1)
	remw t2, t0, s1
	sh2add t3, t2, a3
	lw t1, 0(t3)
	j label17
.p2align 2
label19:
	sh2add t2, t1, a2
	lw t3, 0(t2)
	beq t0, t3, label133
	sh2add t2, t1, a4
	lw t1, 0(t2)
	bne t1, zero, label19
	mv t0, zero
	addiw t1, a5, 1
	sh2add a5, a5, s3
	sw zero, 0(a5)
	bgt s0, t1, label154
	j label14
.p2align 2
label133:
	mv t0, zero
	sh2add t3, t1, a0
	lw t2, 0(t3)
	sh2add t3, t1, a1
	mv t0, t2
	lw t1, 0(t3)
	bne t1, zero, label21
	addiw t1, a5, 1
	sh2add a5, a5, s3
	sw t2, 0(a5)
	bgt s0, t1, label154
	j label14
.p2align 2
label2:
	sh2add t2, a5, s3
	addiw t0, t0, 1
	sh2add t5, a5, s5
	lw t1, 0(t2)
	lw t2, 0(t5)
	remw t3, t1, s1
	sh2add t4, t3, a3
	lw t4, 0(t4)
	beq t4, zero, label5
	mv t5, t4
	bne t4, zero, label10
	j label9
.p2align 2
label5:
	sh2add t4, t3, a3
	sh2add t3, t0, a2
	sw t0, 0(t4)
	sh2add t4, t0, a0
	sw t1, 0(t3)
	sh2add t1, t0, a4
	sw t2, 0(t4)
	sh2add t2, t0, a1
	sw zero, 0(t1)
	sw zero, 0(t2)
.p2align 2
label6:
	addiw a5, a5, 1
	bgt s4, a5, label2
pcrel216:
	auipc a5, %pcrel_hi(ans)
	addi s3, a5, %pcrel_lo(pcrel216)
	ble s0, zero, label14
label115:
	mv a5, zero
	mv t1, s2
	lw t0, 0(s2)
	remw t2, t0, s1
	sh2add t3, t2, a3
	lw t1, 0(t3)
	j label17
label9:
	sh2add t5, t0, a4
	sh2add t3, t3, a3
	sw t4, 0(t5)
	sh2add t4, t0, a2
	sw t0, 0(t3)
	sw t1, 0(t4)
	sh2add t1, t0, a0
	sw t2, 0(t1)
	sh2add t2, t0, a1
	sw zero, 0(t2)
	j label6
.p2align 2
label10:
	sh2add a6, t5, a2
	lw t6, 0(a6)
	beq t1, t6, label11
	sh2add t6, t5, a4
	lw t5, 0(t6)
	bne t5, zero, label10
	j label9
.p2align 2
label11:
	sh2add t1, t5, a1
	sh2add t4, t0, a1
	lw t3, 0(t1)
	sw t3, 0(t4)
	sw t0, 0(t1)
	sh2add t1, t0, a0
	sw t2, 0(t1)
	addiw a5, a5, 1
	bgt s4, a5, label2
pcrel217:
	auipc a5, %pcrel_hi(ans)
	addi s3, a5, %pcrel_lo(pcrel217)
	bgt s0, zero, label115
	j label14
