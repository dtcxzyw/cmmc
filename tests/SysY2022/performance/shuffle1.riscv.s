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
pcrel259:
	auipc a1, %pcrel_hi(keys)
pcrel260:
	auipc s3, %pcrel_hi(hashmod)
	addi s4, a1, %pcrel_lo(pcrel259)
	sw a0, %pcrel_lo(pcrel260)(s3)
	mv a0, s4
	jal getarray
pcrel261:
	auipc a1, %pcrel_hi(values)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel261)
	mv a0, s2
	jal getarray
pcrel262:
	auipc a1, %pcrel_hi(requests)
	addi a0, a1, %pcrel_lo(pcrel262)
	jal getarray
	mv s0, a0
	li a0, 78
	jal _sysy_starttime
pcrel263:
	auipc a3, %pcrel_hi(head)
pcrel264:
	auipc a0, %pcrel_hi(key)
pcrel265:
	auipc t0, %pcrel_hi(nextvalue)
	addi a1, a3, %pcrel_lo(pcrel263)
	addi a2, a0, %pcrel_lo(pcrel264)
pcrel266:
	auipc a3, %pcrel_hi(value)
pcrel267:
	auipc a0, %pcrel_hi(next)
	addi a4, a3, %pcrel_lo(pcrel266)
	addi a5, a0, %pcrel_lo(pcrel267)
	addi a3, t0, %pcrel_lo(pcrel265)
	mv a0, s4
	mv t0, zero
	lw t3, 0(s4)
	li t1, 1
	lw t2, 0(s2)
	lw a6, %pcrel_lo(pcrel260)(s3)
	remw t4, t3, a6
	sh2add t6, t4, a1
	lw t5, 0(t6)
	beq t5, zero, label118
	mv t6, t5
	bne t5, zero, label121
	j label124
.p2align 2
label118:
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
	ble s1, t0, label127
.p2align 2
label126:
	addi a0, a0, 4
	sh2add t5, t0, s2
	addiw t1, t1, 1
	lw t3, 0(a0)
	lw t2, 0(t5)
pcrel268:
	auipc s3, %pcrel_hi(hashmod)
	lw a6, %pcrel_lo(pcrel268)(s3)
	remw t4, t3, a6
	sh2add t6, t4, a1
	lw t5, 0(t6)
	beq t5, zero, label118
	mv t6, t5
.p2align 2
label121:
	sh2add a7, t6, a2
	lw a6, 0(a7)
	bne t3, a6, label182
	sh2add t3, t6, a3
	addiw t0, t0, 1
	sh2add a6, t1, a3
	lw t4, 0(t3)
	sh2add t5, t1, a4
	sw t4, 0(a6)
	sw t1, 0(t3)
	sw t2, 0(t5)
	bgt s1, t0, label126
	j label127
label124:
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
	bgt s1, t0, label126
label127:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel269:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s0, %pcrel_lo(label127)(a0)
	addi a2, a3, %pcrel_lo(pcrel269)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 90
pcrel270:
	auipc a1, %pcrel_hi(ans)
	addi s1, a1, %pcrel_lo(pcrel270)
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
label182:
	sh2add a6, t6, a5
	lw t6, 0(a6)
	bne t6, zero, label121
	j label124
.p2align 2
cmmc_parallel_body_0:
	mv a2, a1
pcrel105:
	auipc a5, %pcrel_hi(requests)
	mv t3, a0
pcrel106:
	auipc t0, %pcrel_hi(nextvalue)
pcrel107:
	auipc t1, %pcrel_hi(key)
pcrel108:
	auipc t2, %pcrel_hi(head)
pcrel109:
	auipc t4, %pcrel_hi(ans)
pcrel110:
	auipc t6, %pcrel_hi(next)
pcrel111:
	auipc a1, %pcrel_hi(hashmod)
	addi a4, a5, %pcrel_lo(pcrel105)
	lw a5, %pcrel_lo(pcrel111)(a1)
	sh2add a3, a0, a4
	addi a1, t0, %pcrel_lo(pcrel106)
pcrel112:
	auipc a4, %pcrel_hi(value)
	addi t0, t2, %pcrel_lo(pcrel108)
	addi a0, a4, %pcrel_lo(pcrel112)
	addi t2, t6, %pcrel_lo(pcrel110)
	addi a4, t1, %pcrel_lo(pcrel107)
	addi t1, t4, %pcrel_lo(pcrel109)
	lw t5, 0(a3)
	remw a6, t5, a5
	sh2add t6, a6, t0
	lw t4, 0(t6)
	bne t4, zero, label7
label33:
	mv t5, zero
	sh2add t6, t3, t1
	addiw t3, t3, 1
	sw zero, 0(t6)
	ble a2, t3, label15
.p2align 2
label14:
	addi a3, a3, 4
	lw t5, 0(a3)
	remw a6, t5, a5
	sh2add t6, a6, t0
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
	sh2add t6, t3, t1
	addiw t3, t3, 1
	sw t5, 0(t6)
	bgt a2, t3, label14
label15:
	ret
.p2align 2
label42:
	sh2add t6, t4, t2
	lw t4, 0(t6)
	bne t4, zero, label7
	j label33
