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
.p2align 2
.globl main
main:
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	sd s2, 48(sp)
	jal getint
pcrel198:
	auipc a1, %pcrel_hi(keys)
	mv s0, a0
	addi s3, a1, %pcrel_lo(pcrel198)
	mv a0, s3
	jal getarray
pcrel199:
	auipc a1, %pcrel_hi(values)
	mv s4, a0
	addi s5, a1, %pcrel_lo(pcrel199)
	mv a0, s5
	jal getarray
pcrel200:
	auipc a1, %pcrel_hi(requests)
	addi s1, a1, %pcrel_lo(pcrel200)
	mv a0, s1
	jal getarray
	mv s2, a0
	li a0, 78
	jal _sysy_starttime
	mv t0, zero
pcrel201:
	auipc a4, %pcrel_hi(value)
pcrel202:
	auipc a5, %pcrel_hi(nextvalue)
pcrel203:
	auipc a0, %pcrel_hi(key)
pcrel204:
	auipc a1, %pcrel_hi(head)
	addi a2, a0, %pcrel_lo(pcrel203)
	addi a3, a1, %pcrel_lo(pcrel204)
pcrel205:
	auipc a0, %pcrel_hi(next)
	addi a1, a4, %pcrel_lo(pcrel201)
	addi a4, a0, %pcrel_lo(pcrel205)
	addi a0, a5, %pcrel_lo(pcrel202)
	mv a5, zero
.p2align 2
label2:
	sh2add t2, a5, s3
	addiw t0, t0, 1
	sh2add t5, a5, s5
	lw t1, 0(t2)
	lw t2, 0(t5)
	remw t3, t1, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label58
	sh2add t4, t3, a3
	sh2add t3, t0, a2
	sw t0, 0(t4)
	sw t1, 0(t3)
	sh2add t1, t0, a1
	sw t2, 0(t1)
	sh2add t1, t0, a0
	sh2add t2, t0, a4
	sw zero, 0(t2)
	sw zero, 0(t1)
.p2align 2
label6:
	addiw a5, a5, 1
	bgt s4, a5, label2
pcrel206:
	auipc t0, %pcrel_hi(ans)
	mv a5, zero
	addi s3, t0, %pcrel_lo(pcrel206)
	mv t1, s1
	lw t0, 0(s1)
	remw t3, t0, s0
	sh2add t2, t3, a3
	lw t1, 0(t2)
label10:
	bne t1, zero, label15
	j label86
.p2align 2
label94:
	mv a5, t0
	sh2add t1, t0, s1
	lw t0, 0(t1)
	remw t3, t0, s0
	sh2add t2, t3, a3
	lw t1, 0(t2)
	bne t1, zero, label15
	j label86
label14:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s3
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	ld s2, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label15:
	sh2add t2, t1, a2
	lw t3, 0(t2)
	beq t0, t3, label101
	sh2add t2, t1, a4
	lw t1, 0(t2)
	bne t1, zero, label15
	j label86
.p2align 2
label101:
	mv t0, t1
	mv t1, zero
	sh2add t2, t0, a1
	lw t3, 0(t2)
	sh2add t2, t0, a0
	mv t1, t3
	lw t0, 0(t2)
	beq t0, zero, label114
.p2align 2
label17:
	sh2add t2, t0, a1
	lw t3, 0(t2)
	sh2add t2, t0, a0
	addw t1, t1, t3
	lw t0, 0(t2)
	bne t0, zero, label17
.p2align 2
label114:
	addiw t0, a5, 1
	sh2add a5, a5, s3
	sw t1, 0(a5)
	bgt s2, t0, label94
	j label14
.p2align 2
label58:
	mv t5, t4
	beq t4, zero, label22
.p2align 2
label23:
	sh2add a6, t5, a2
	lw t6, 0(a6)
	beq t1, t6, label24
	sh2add t6, t5, a4
	lw t5, 0(t6)
	bne t5, zero, label23
	j label22
label86:
	mv t1, zero
	addiw t0, a5, 1
	sh2add a5, a5, s3
	sw zero, 0(a5)
	bgt s2, t0, label94
	j label14
label22:
	sh2add t5, t0, a4
	sh2add t3, t3, a3
	sw t4, 0(t5)
	sh2add t4, t0, a2
	sw t0, 0(t3)
	sh2add t3, t0, a1
	sw t1, 0(t4)
	sh2add t1, t0, a0
	sw t2, 0(t3)
	sw zero, 0(t1)
	j label6
.p2align 2
label24:
	sh2add t1, t5, a0
	sh2add t4, t0, a0
	lw t3, 0(t1)
	sw t3, 0(t4)
	sw t0, 0(t1)
	sh2add t1, t0, a1
	sw t2, 0(t1)
	addiw a5, a5, 1
	bgt s4, a5, label2
pcrel207:
	auipc t0, %pcrel_hi(ans)
	mv a5, zero
	addi s3, t0, %pcrel_lo(pcrel207)
	mv t1, s1
	lw t0, 0(s1)
	remw t3, t0, s0
	sh2add t2, t3, a3
	lw t1, 0(t2)
	j label10
