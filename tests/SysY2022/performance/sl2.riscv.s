.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	864000000
.align 8
cmmc_parallel_body_payload_0:
	.zero	5
.text
.p2align 2
.globl main
main:
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s4, 8(sp)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	jal getint
	mv s4, a0
	jal getint
	mv s1, a0
	li a0, 13
	jal _sysy_starttime
pcrel211:
	auipc a1, %pcrel_hi(x)
	li a0, 75
	addiw s0, s4, -1
	addi s3, a1, %pcrel_lo(pcrel211)
	slli s2, a0, 5
	ble s4, zero, label72
pcrel212:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
	li a3, 1
pcrel213:
	auipc a4, %pcrel_hi(cmmc_parallel_body_0)
	addi a0, a1, %pcrel_lo(pcrel212)
	sw s4, %pcrel_lo(pcrel212)(a1)
	addi a2, a4, %pcrel_lo(pcrel213)
	sb a3, 4(a0)
	mv a1, s4
	mv a0, zero
	jal cmmcParallelFor
label72:
	li a0, 1
	ble s0, a0, label103
	lui a1, 352
	mv a4, s3
	li t1, 1
	addiw a0, a1, -1792
	add t0, s3, a0
	lui a0, 352
	addiw t1, t1, 1
	li t2, 1
	addiw a1, a0, -1792
	add a0, t0, s2
	add a5, t0, a1
	j label81
.p2align 2
label91:
	addi t3, t3, 4
.p2align 2
label84:
	sh2add a6, t4, a1
	lw t6, 0(t3)
	sh2add s5, t4, a2
	lw a7, 0(a6)
	sh2add s6, t4, a3
	addw t5, t6, a7
	lw a7, 0(s5)
	addw a6, t5, a7
	sh2add t5, t4, a0
	lw a7, 0(s6)
	addiw t4, t4, 1
	addw t6, a6, a7
	lw a7, -4(t5)
	lw s5, 4(t5)
	addw a6, t6, a7
	addw a7, a6, s5
	divw t6, a7, s1
	sw t6, 0(t5)
	bgt s0, t4, label91
	ble s0, t2, label154
	add a0, a0, s2
.p2align 2
label81:
	mul a2, t2, s2
	li t5, -75
	addiw t2, t2, 1
	add a1, a5, a2
	add a3, a4, a2
	slli t4, t5, 5
	addi t3, a3, 4
	add a2, a0, t4
	add a3, a0, s2
	li t4, 1
	j label84
.p2align 2
label154:
	ble s0, t1, label206
	lui a2, 352
	mv a4, t0
	addiw t1, t1, 1
	li t2, 1
	addiw a1, a2, -1792
	add a0, t0, a1
	mv t0, a0
	lui a0, 352
	addiw a1, a0, -1792
	add a0, t0, s2
	add a5, t0, a1
	j label81
label206:
	mv s0, t0
	mv s1, t2
label73:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s3
	jal putarray
	lui a4, 352
	srliw a3, s4, 31
	addiw a1, a4, -1792
	add a0, s4, a3
	sraiw a2, a0, 1
	mul a4, a2, s2
	mul a0, a2, a1
	add a3, s3, a0
	mv a0, s4
	add a1, a3, a4
	jal putarray
	mv a0, s4
	addiw a3, s1, -1
	mul a2, a3, s2
	add a1, s0, a2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	addi sp, sp, 64
	ret
label103:
	mv s0, s3
	li s1, 1
	j label73
.p2align 2
cmmc_parallel_body_0:
	mv a5, a0
	mv a2, a1
pcrel69:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	lui t2, 352
pcrel70:
	auipc a1, %pcrel_hi(x)
	addi t1, a4, %pcrel_lo(pcrel69)
	lw a0, %pcrel_lo(pcrel69)(a4)
	addi t0, a1, %pcrel_lo(pcrel70)
	addiw a4, t2, -1792
	lb a3, 4(t1)
	mul t1, a5, a4
	add a1, t0, t1
	bne a3, zero, label5
	j label15
.p2align 2
label12:
	addi t2, t2, 4
.p2align 2
label9:
	addiw t3, t3, 1
	li t4, 1
	sw t4, 0(t2)
	bgt a0, t3, label12
	addiw t1, t1, 1
	ble a0, t1, label60
.p2align 2
label14:
	li t3, 75
	li t4, 1
	slli t2, t3, 5
	li t3, 1
	add t0, t0, t2
	sw t4, 0(t0)
	mv t2, t0
	bgt a0, t3, label12
	addiw t1, t1, 1
	bgt a0, t1, label14
.p2align 2
label60:
	addiw a5, a5, 1
	ble a2, a5, label17
.p2align 2
label16:
	add a1, a1, a4
	beq a3, zero, label15
.p2align 2
label5:
	mv t0, a1
	mv t1, zero
	mv t2, a1
	mv t3, zero
	j label9
label15:
	addiw a5, a5, 1
	bgt a2, a5, label16
label17:
	ret
