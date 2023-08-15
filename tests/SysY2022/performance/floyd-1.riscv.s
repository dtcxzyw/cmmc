.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	jal getint
pcrel450:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel450)
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel451:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel451)
	ble s0, zero, label296
pcrel452:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel453:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s0, %pcrel_lo(pcrel452)(a0)
	addi a2, a3, %pcrel_lo(pcrel453)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	mv t0, zero
	mv a2, zero
pcrel454:
	auipc a1, %pcrel_hi(temp)
	addi a5, a1, %pcrel_lo(pcrel454)
	mv a0, a5
	mv a3, a5
	mv a4, zero
	mv a1, zero
	mv t1, zero
	mv t2, a5
	mv t3, zero
	mv t5, a5
	lw t4, 0(a5)
	blt t4, zero, label312
.p2align 2
label318:
	sh2add t6, a2, t2
	lw t5, 0(t6)
	blt t5, zero, label380
	sh2add a7, a4, t2
	addw t6, t4, t5
	lw a6, 0(a7)
	blt a6, zero, label321
	sh2add t4, t3, a3
	lw t5, 0(t4)
	blt t6, t5, label321
	addiw t3, t3, 1
	bgt s0, t3, label313
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label317
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label316
	j label296
.p2align 2
label380:
	addiw t3, t3, 1
	ble s0, t3, label423
.p2align 2
label313:
	addi t2, t2, 4
	sh2add t5, a1, a0
	lw t4, 0(t5)
	bge t4, zero, label318
	addiw t3, t3, 1
	bgt s0, t3, label313
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	ble s0, t1, label432
.p2align 2
label317:
	sh2add a3, s0, a3
	mv t2, a5
	mv t3, zero
	sh2add t5, a1, a0
	lw t4, 0(t5)
	bge t4, zero, label318
	li t3, 1
	bgt s0, t3, label313
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label317
label421:
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label316
	j label296
.p2align 2
label321:
	sh2add t4, t3, a3
	addiw t3, t3, 1
	sw t6, 0(t4)
	bgt s0, t3, label313
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label317
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label316
	j label296
.p2align 2
label432:
	addiw t0, t0, 1
	addw a2, s0, a2
	ble s0, t0, label296
.p2align 2
label316:
	addi a0, a0, 4
	mv a3, a5
	mv a4, zero
	mv a1, zero
	mv t1, zero
	mv t2, a5
	mv t3, zero
	mv t5, a0
	lw t4, 0(a0)
	bge t4, zero, label318
	li t3, 1
	bgt s0, t3, label313
label356:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label317
	j label421
.p2align 2
label423:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label317
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label316
label296:
	mulw s2, s0, s0
	beq s0, zero, label297
pcrel455:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel456:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	mv a0, zero
	addi a2, a3, %pcrel_lo(pcrel456)
	sw s2, %pcrel_lo(pcrel455)(a1)
	mv a1, s2
	jal cmmcParallelFor
label297:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label312:
	addiw t3, t3, 1
	bgt s0, t3, label313
	j label356
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -64
	mv t1, a0
	mv a4, a1
pcrel142:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel143:
	auipc t2, %pcrel_hi(w)
	sd s3, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s2, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	lw a3, %pcrel_lo(pcrel142)(a5)
pcrel144:
	auipc a5, %pcrel_hi(temp)
	slliw a0, a3, 2
	addi a2, a3, -3
	addi t0, a5, %pcrel_lo(pcrel144)
	addi a5, t2, %pcrel_lo(pcrel143)
	sh2add a1, t1, t0
	li t0, 3
	sh2add t2, t1, a5
	bgt a3, t0, label18
	mv s3, zero
	mv s1, zero
	mv s2, zero
	bgt a3, zero, label9
	j label46
.p2align 2
label24:
	sh2add s0, a0, s0
.p2align 2
label19:
	sh2add s4, s1, a1
	lw s7, 0(s0)
	sh2add s6, s2, t6
	addiw s3, s3, 4
	sw s7, 0(s4)
	sh2add s4, s2, a6
	lw s5, 0(s6)
	sh2add s7, s1, t3
	sw s5, 0(s7)
	sh2add s5, s2, a7
	lw s6, 0(s4)
	sh2add s7, s1, t4
	addw s2, a0, s2
	sw s6, 0(s7)
	sh2add s6, s1, t5
	lw s4, 0(s5)
	addw s1, a0, s1
	sw s4, 0(s6)
	bgt a2, s3, label24
	ble a3, s3, label135
.p2align 2
label9:
	sh2add t2, s2, t2
	mv t3, s1
	mv t4, s3
	j label10
.p2align 2
label14:
	sh2add t2, a3, t2
.p2align 2
label10:
	sh2add t5, t3, a1
	lw t6, 0(t2)
	addiw t4, t4, 1
	addw t3, a3, t3
	sw t6, 0(t5)
	bgt a3, t4, label14
	addiw t1, t1, 1
	ble a4, t1, label17
.p2align 2
label16:
	addi a1, a1, 4
	sh2add t2, t1, a5
	ble a3, t0, label134
.p2align 2
label18:
	sh2add t3, a3, a1
	mv s0, t2
	mv s3, zero
	mv s1, zero
	mv s2, zero
	sh2add t6, a3, t2
	sh2add t4, a3, t3
	sh2add a6, a3, t6
	sh2add t5, a3, t4
	sh2add a7, a3, a6
	j label19
label134:
	mv s3, zero
	mv s1, zero
	mv s2, zero
	bgt a3, zero, label9
label46:
	addiw t1, t1, 1
	bgt a4, t1, label16
label17:
	ld s3, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label135:
	addiw t1, t1, 1
	bgt a4, t1, label16
	j label17
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
	addiw a4, a0, 3
pcrel293:
	auipc a5, %pcrel_hi(dst)
pcrel294:
	auipc a0, %pcrel_hi(temp)
	addi a2, a5, %pcrel_lo(pcrel293)
	addi a3, a0, %pcrel_lo(pcrel294)
	ble a1, a4, label160
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label183
	sh2add a0, t0, a3
	j label156
.p2align 2
label159:
	addi a0, a0, 64
.p2align 2
label156:
	sh2add t1, t0, a2
	lw t2, 0(a0)
	addiw t0, t0, 16
	sw t2, 0(t1)
	lw t3, 4(a0)
	sw t3, 4(t1)
	lw t2, 8(a0)
	sw t2, 8(t1)
	lw t3, 12(a0)
	sw t3, 12(t1)
	lw t2, 16(a0)
	sw t2, 16(t1)
	lw t3, 20(a0)
	sw t3, 20(t1)
	lw t2, 24(a0)
	sw t2, 24(t1)
	lw t3, 28(a0)
	sw t3, 28(t1)
	lw t2, 32(a0)
	sw t2, 32(t1)
	lw t3, 36(a0)
	sw t3, 36(t1)
	lw t2, 40(a0)
	sw t2, 40(t1)
	lw t4, 44(a0)
	sw t4, 44(t1)
	lw t3, 48(a0)
	sw t3, 48(t1)
	lw t2, 52(a0)
	sw t2, 52(t1)
	lw t3, 56(a0)
	sw t3, 56(t1)
	lw t2, 60(a0)
	sw t2, 60(t1)
	bgt a5, t0, label159
	mv a5, t0
label147:
	ble a4, a5, label160
	sh2add a0, a5, a3
	j label151
label154:
	addi a0, a0, 16
label151:
	sh2add t0, a5, a2
	lw t1, 0(a0)
	addiw a5, a5, 4
	sw t1, 0(t0)
	lw t2, 4(a0)
	sw t2, 4(t0)
	lw t3, 8(a0)
	sw t3, 8(t0)
	lw t1, 12(a0)
	sw t1, 12(t0)
	bgt a4, a5, label154
	mv t0, a5
label160:
	ble a1, t0, label167
	sh2add a0, t0, a3
	j label163
label166:
	addi a0, a0, 4
label163:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label166
label167:
	ret
label183:
	mv a5, t0
	mv t0, zero
	j label147
