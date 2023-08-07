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
	addi sp, sp, -64
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	jal getint
pcrel199:
	auipc a1, %pcrel_hi(keys)
	mv s0, a0
	addi s6, a1, %pcrel_lo(pcrel199)
	mv a0, s6
	jal getarray
pcrel200:
	auipc a1, %pcrel_hi(values)
	mv s4, a0
	addi s5, a1, %pcrel_lo(pcrel200)
	mv a0, s5
	jal getarray
pcrel201:
	auipc a1, %pcrel_hi(requests)
	addi s3, a1, %pcrel_lo(pcrel201)
	mv a0, s3
	jal getarray
	mv s1, a0
	li a0, 78
	jal _sysy_starttime
pcrel202:
	auipc a1, %pcrel_hi(ans)
pcrel203:
	auipc a0, %pcrel_hi(key)
pcrel204:
	auipc a4, %pcrel_hi(head)
pcrel205:
	auipc t0, %pcrel_hi(value)
pcrel206:
	auipc a5, %pcrel_hi(next)
	addi s2, a1, %pcrel_lo(pcrel202)
	addi a2, a0, %pcrel_lo(pcrel203)
	addi a3, a4, %pcrel_lo(pcrel204)
	addi a1, t0, %pcrel_lo(pcrel205)
	addi a4, a5, %pcrel_lo(pcrel206)
pcrel207:
	auipc t0, %pcrel_hi(nextvalue)
	mv a5, s6
	addi a0, t0, %pcrel_lo(pcrel207)
	mv t0, zero
	lw t2, 0(s6)
	mv a6, s5
	li t1, 1
	lw t3, 0(s5)
	remw t4, t2, s0
	sh2add t6, t4, a3
	lw t5, 0(t6)
	beq t5, zero, label6
	mv t6, t5
	bne t5, zero, label26
	j label29
.p2align 2
label6:
	sh2add t5, t4, a3
	sh2add t6, t1, a2
	sw t1, 0(t5)
	sh2add t4, t1, a1
	sw t2, 0(t6)
	sh2add t5, t1, a4
	sw t3, 0(t4)
	sh2add t2, t1, a0
	sw zero, 0(t5)
	sw zero, 0(t2)
.p2align 2
label7:
	addiw t0, t0, 1
	ble s4, t0, label77
.p2align 2
label8:
	addi a5, a5, 4
	sh2add a6, t0, s5
	addiw t1, t1, 1
	lw t2, 0(a5)
	lw t3, 0(a6)
	remw t4, t2, s0
	sh2add t6, t4, a3
	lw t5, 0(t6)
	beq t5, zero, label6
	mv t6, t5
.p2align 2
label26:
	sh2add a6, t6, a2
	lw a7, 0(a6)
	beq t2, a7, label28
	sh2add a6, t6, a4
	lw t6, 0(a6)
	bne t6, zero, label26
	j label29
label77:
	mv a5, s3
	mv t0, zero
	lw t2, 0(s3)
	remw t4, t2, s0
	sh2add t3, t4, a3
	lw t1, 0(t3)
	bne t1, zero, label15
	j label87
.p2align 2
label28:
	sh2add t2, t6, a0
	addiw t0, t0, 1
	sh2add t5, t1, a0
	lw t4, 0(t2)
	sh2add t6, t1, a1
	sw t4, 0(t5)
	sw t1, 0(t2)
	sw t3, 0(t6)
	bgt s4, t0, label8
	j label77
label87:
	mv t2, zero
	j label20
.p2align 2
label15:
	sh2add t3, t1, a2
	lw t4, 0(t3)
	bne t2, t4, label94
	sh2add t4, t1, a1
	sh2add t3, t1, a0
	lw t5, 0(t4)
	lw t1, 0(t3)
	mv t2, t5
	beq t1, zero, label20
.p2align 2
label17:
	sh2add t4, t1, a1
	sh2add t3, t1, a0
	lw t5, 0(t4)
	lw t1, 0(t3)
	addw t2, t2, t5
	bne t1, zero, label17
.p2align 2
label20:
	addiw t1, t0, 1
	sh2add t3, t0, s2
	sw t2, 0(t3)
	ble s1, t1, label22
	addi a5, a5, 4
	mv t0, t1
	lw t2, 0(a5)
	remw t4, t2, s0
	sh2add t3, t4, a3
	lw t1, 0(t3)
	bne t1, zero, label15
	j label87
label22:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
label94:
	sh2add t3, t1, a4
	lw t1, 0(t3)
	bne t1, zero, label15
	j label87
label29:
	sh2add a6, t1, a4
	sh2add t6, t4, a3
	sw t5, 0(a6)
	sh2add t4, t1, a1
	sw t1, 0(t6)
	sh2add t5, t1, a2
	sw t2, 0(t5)
	sh2add t2, t1, a0
	sw t3, 0(t4)
	sw zero, 0(t2)
	j label7
