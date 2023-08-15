.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
hashmod:
	.zero	4
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
.align 8
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
pcrel254:
	auipc a1, %pcrel_hi(keys)
pcrel255:
	auipc s3, %pcrel_hi(hashmod)
	addi s4, a1, %pcrel_lo(pcrel254)
	sw a0, %pcrel_lo(pcrel255)(s3)
	mv a0, s4
	jal getarray
pcrel256:
	auipc a1, %pcrel_hi(values)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel256)
	mv a0, s2
	jal getarray
pcrel257:
	auipc a1, %pcrel_hi(requests)
	addi a0, a1, %pcrel_lo(pcrel257)
	jal getarray
	mv s0, a0
	li a0, 78
	jal _sysy_starttime
pcrel258:
	auipc a0, %pcrel_hi(value)
pcrel259:
	auipc a3, %pcrel_hi(key)
pcrel260:
	auipc a4, %pcrel_hi(head)
pcrel261:
	auipc t1, %pcrel_hi(next)
pcrel262:
	auipc t0, %pcrel_hi(nextvalue)
	addi a2, a3, %pcrel_lo(pcrel259)
	addi a1, a4, %pcrel_lo(pcrel260)
	addi a5, t1, %pcrel_lo(pcrel261)
	addi a3, t0, %pcrel_lo(pcrel262)
	addi a4, a0, %pcrel_lo(pcrel258)
	mv t0, zero
	mv a0, s4
	lw t3, 0(s4)
	li t1, 1
	lw t2, 0(s2)
	lw a6, %pcrel_lo(pcrel255)(s3)
	remw t4, t3, a6
	sh2add t6, t4, a1
	lw t5, 0(t6)
	bne t5, zero, label157
.p2align 2
label120:
	sh2add t5, t4, a1
	sh2add t6, t1, a2
	sw t1, 0(t5)
	sh2add t4, t1, a4
	sw t3, 0(t6)
	sh2add t3, t1, a5
	sw t2, 0(t4)
	sh2add t2, t1, a3
	sw zero, 0(t3)
	sw zero, 0(t2)
.p2align 2
label121:
	addiw t0, t0, 1
	ble s1, t0, label122
.p2align 2
label123:
	addi a0, a0, 4
	sh2add t5, t0, s2
	addiw t1, t1, 1
	lw t3, 0(a0)
	lw t2, 0(t5)
pcrel263:
	auipc s3, %pcrel_hi(hashmod)
	lw a6, %pcrel_lo(pcrel263)(s3)
	remw t4, t3, a6
	sh2add t6, t4, a1
	lw t5, 0(t6)
	beq t5, zero, label120
	mv t6, t5
.p2align 2
label116:
	sh2add a6, t6, a2
	lw a7, 0(a6)
	bne t3, a7, label168
	sh2add t3, t6, a3
	addiw t0, t0, 1
	sh2add a6, t1, a3
	lw t4, 0(t3)
	sh2add t5, t1, a4
	sw t4, 0(a6)
	sw t1, 0(t3)
	sw t2, 0(t5)
	bgt s1, t0, label123
label122:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel264:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s0, %pcrel_lo(label122)(a0)
	addi a2, a3, %pcrel_lo(pcrel264)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 90
pcrel265:
	auipc a1, %pcrel_hi(ans)
	addi s1, a1, %pcrel_lo(pcrel265)
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
label157:
	mv t6, t5
	bne t5, zero, label116
label119:
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
	j label121
.p2align 2
label168:
	sh2add a6, t6, a5
	lw t6, 0(a6)
	bne t6, zero, label116
	j label119
.p2align 2
cmmc_parallel_body_0:
	mv t3, a0
	mv a2, a1
pcrel100:
	auipc a3, %pcrel_hi(requests)
pcrel101:
	auipc t0, %pcrel_hi(next)
pcrel102:
	auipc t1, %pcrel_hi(nextvalue)
pcrel103:
	auipc t4, %pcrel_hi(ans)
pcrel104:
	auipc t2, %pcrel_hi(head)
pcrel105:
	auipc a1, %pcrel_hi(key)
	addi a0, a3, %pcrel_lo(pcrel100)
	addi a5, t0, %pcrel_lo(pcrel101)
	addi a3, a1, %pcrel_lo(pcrel105)
	sh2add a4, t3, a0
pcrel106:
	auipc t0, %pcrel_hi(value)
	addi a1, t1, %pcrel_lo(pcrel102)
	addi a0, t0, %pcrel_lo(pcrel106)
	addi t1, t2, %pcrel_lo(pcrel104)
	addi t0, t4, %pcrel_lo(pcrel103)
pcrel107:
	auipc t2, %pcrel_hi(hashmod)
	lw t4, %pcrel_lo(pcrel107)(t2)
	lw t5, 0(a4)
	remw t6, t5, t4
	sh2add a6, t6, t1
	lw t4, 0(a6)
	bne t4, zero, label7
label43:
	mv t5, zero
	sh2add t6, t3, t0
	addiw t3, t3, 1
	sw zero, 0(t6)
	ble a2, t3, label15
.p2align 2
label14:
	addi a4, a4, 4
pcrel108:
	auipc t2, %pcrel_hi(hashmod)
	lw t4, %pcrel_lo(pcrel108)(t2)
	lw t5, 0(a4)
	remw t6, t5, t4
	sh2add a6, t6, t1
	lw t4, 0(a6)
	beq t4, zero, label43
.p2align 2
label7:
	sh2add a6, t4, a3
	lw t6, 0(a6)
	bne t5, t6, label50
	mv t5, zero
.p2align 2
label8:
	sh2add a7, t4, a0
	sh2add t6, t4, a1
	lw a6, 0(a7)
	lw t4, 0(t6)
	addw t5, t5, a6
	bne t4, zero, label8
	sh2add t6, t3, t0
	addiw t3, t3, 1
	sw t5, 0(t6)
	bgt a2, t3, label14
label15:
	ret
.p2align 2
label50:
	sh2add t6, t4, a5
	lw t4, 0(t6)
	bne t4, zero, label7
	j label43
