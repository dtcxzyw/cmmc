.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 2
hashmod:
	.zero	4
.p2align 3
head:
	.zero	40000000
.p2align 3
next:
	.zero	40000000
.p2align 3
nextvalue:
	.zero	40000000
.p2align 3
key:
	.zero	40000000
.p2align 3
value:
	.zero	40000000
.p2align 3
keys:
	.zero	40000000
.p2align 3
values:
	.zero	40000000
.p2align 3
requests:
	.zero	40000000
.p2align 3
ans:
	.zero	40000000
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s3, 8(sp)
	sd s4, 16(sp)
	sd s1, 24(sp)
	sd s2, 32(sp)
	sd s0, 40(sp)
	jal getint
pcrel268:
	auipc a1, %pcrel_hi(keys)
pcrel269:
	auipc s3, %pcrel_hi(hashmod)
	addi s4, a1, %pcrel_lo(pcrel268)
	sw a0, %pcrel_lo(pcrel269)(s3)
	mv a0, s4
	jal getarray
pcrel270:
	auipc a1, %pcrel_hi(values)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel270)
	mv a0, s2
	jal getarray
pcrel271:
	auipc a1, %pcrel_hi(requests)
	addi a0, a1, %pcrel_lo(pcrel271)
	jal getarray
	mv s0, a0
	li a0, 78
	jal _sysy_starttime
pcrel272:
	auipc a3, %pcrel_hi(head)
pcrel273:
	auipc a0, %pcrel_hi(key)
pcrel274:
	auipc t0, %pcrel_hi(nextvalue)
	addi a1, a3, %pcrel_lo(pcrel272)
	addi a2, a0, %pcrel_lo(pcrel273)
pcrel275:
	auipc a3, %pcrel_hi(value)
pcrel276:
	auipc a0, %pcrel_hi(next)
	addi a4, a3, %pcrel_lo(pcrel275)
	addi a5, a0, %pcrel_lo(pcrel276)
	addi a3, t0, %pcrel_lo(pcrel274)
	mv a0, s4
	mv t0, zero
	lw t3, 0(s4)
	li t1, 1
	lw t2, 0(s2)
	lw a6, %pcrel_lo(pcrel269)(s3)
	remw t4, t3, a6
	sh2add t6, t4, a1
	lw t5, 0(t6)
	beq t5, zero, label124
	mv t6, t5
	bne t5, zero, label127
	j label130
.p2align 2
label124:
	sh2add t5, t4, a1
	addiw t0, t0, 1
	sh2add t6, t1, a2
	sw t1, 0(t5)
	sh2add t4, t1, a4
	sw t3, 0(t6)
	sh2add t3, t1, a5
	sw t2, 0(t4)
	sh2add t2, t1, a3
	sw zero, 0(t3)
	sw zero, 0(t2)
	ble s1, t0, label133
.p2align 2
label132:
	addi a0, a0, 4
	sh2add t5, t0, s2
	addiw t1, t1, 1
	lw t3, 0(a0)
	lw t2, 0(t5)
pcrel277:
	auipc s3, %pcrel_hi(hashmod)
	lw a6, %pcrel_lo(pcrel277)(s3)
	remw t4, t3, a6
	sh2add t6, t4, a1
	lw t5, 0(t6)
	beq t5, zero, label124
	mv t6, t5
.p2align 2
label127:
	sh2add a7, t6, a2
	lw a6, 0(a7)
	bne t3, a6, label188
	sh2add t3, t6, a3
	addiw t0, t0, 1
	sh2add a6, t1, a3
	lw t4, 0(t3)
	sh2add t5, t1, a4
	sw t4, 0(a6)
	sw t1, 0(t3)
	sw t2, 0(t5)
	bgt s1, t0, label132
	j label133
label130:
	sh2add a6, t1, a5
	sh2add t6, t4, a1
	sw t5, 0(a6)
	sh2add t4, t1, a4
	sw t1, 0(t6)
	sh2add t5, t1, a2
	sw t3, 0(t5)
	sh2add t3, t1, a3
	sw t2, 0(t4)
	sw zero, 0(t3)
	addiw t0, t0, 1
	bgt s1, t0, label132
label133:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel278:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s0, %pcrel_lo(label133)(a0)
	addi a2, a3, %pcrel_lo(pcrel278)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 90
pcrel279:
	auipc a1, %pcrel_hi(ans)
	addi s1, a1, %pcrel_lo(pcrel279)
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label188:
	sh2add a6, t6, a5
	lw t6, 0(a6)
	bne t6, zero, label127
	j label130
.p2align 2
cmmc_parallel_body_0:
	mv a2, a1
pcrel110:
	auipc a5, %pcrel_hi(requests)
	mv t3, a0
pcrel111:
	auipc t0, %pcrel_hi(key)
pcrel112:
	auipc t1, %pcrel_hi(head)
pcrel113:
	auipc t2, %pcrel_hi(ans)
pcrel114:
	auipc t4, %pcrel_hi(next)
	addi a4, a5, %pcrel_lo(pcrel110)
pcrel115:
	auipc a5, %pcrel_hi(nextvalue)
	sh2add a3, a0, a4
	addi a1, a5, %pcrel_lo(pcrel115)
pcrel116:
	auipc a4, %pcrel_hi(value)
	addi a5, t1, %pcrel_lo(pcrel112)
	addi a0, a4, %pcrel_lo(pcrel116)
	addi t1, t4, %pcrel_lo(pcrel114)
	addi a4, t0, %pcrel_lo(pcrel111)
	addi t0, t2, %pcrel_lo(pcrel113)
pcrel117:
	auipc t2, %pcrel_hi(hashmod)
	lw t4, %pcrel_lo(pcrel117)(t2)
	lw t5, 0(a3)
	remw a6, t5, t4
	sh2add t6, a6, a5
	lw t4, 0(t6)
	bne t4, zero, label7
	j label33
.p2align 2
label57:
	sh2add t6, t3, t0
	addiw t3, t3, 1
	sw t5, 0(t6)
	ble a2, t3, label15
.p2align 2
label14:
	addi a3, a3, 4
pcrel118:
	auipc t2, %pcrel_hi(hashmod)
	lw t4, %pcrel_lo(pcrel118)(t2)
	lw t5, 0(a3)
	remw a6, t5, t4
	sh2add t6, a6, a5
	lw t4, 0(t6)
	beq t4, zero, label33
.p2align 2
label7:
	sh2add a6, t4, a4
	lw t6, 0(a6)
	bne t5, t6, label42
	mv t5, zero
.p2align 2
label8:
	sh2add a6, t4, a0
	sh2add t6, t4, a1
	lw a7, 0(a6)
	lw t4, 0(t6)
	addw t5, t5, a7
	bne t4, zero, label8
	j label57
label33:
	mv t5, zero
	sh2add t6, t3, t0
	addiw t3, t3, 1
	sw zero, 0(t6)
	bgt a2, t3, label14
label15:
	ret
.p2align 2
label42:
	sh2add t6, t4, t1
	lw t4, 0(t6)
	bne t4, zero, label7
	j label33
