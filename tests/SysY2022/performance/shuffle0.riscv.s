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
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s3, 40(sp)
	sd s1, 48(sp)
	jal getint
pcrel201:
	auipc a1, %pcrel_hi(keys)
	mv s0, a0
	addi s5, a1, %pcrel_lo(pcrel201)
	mv a0, s5
	jal getarray
pcrel202:
	auipc a1, %pcrel_hi(values)
	mv s2, a0
	addi s4, a1, %pcrel_lo(pcrel202)
	mv a0, s4
	jal getarray
pcrel203:
	auipc a1, %pcrel_hi(requests)
	addi s3, a1, %pcrel_lo(pcrel203)
	mv a0, s3
	jal getarray
	mv s1, a0
	li a0, 78
	jal _sysy_starttime
pcrel204:
	auipc a1, %pcrel_hi(head)
pcrel205:
	auipc a5, %pcrel_hi(next)
pcrel206:
	auipc a0, %pcrel_hi(key)
pcrel207:
	auipc t0, %pcrel_hi(value)
	mv t1, zero
	addi a3, a1, %pcrel_lo(pcrel204)
	addi a4, a5, %pcrel_lo(pcrel205)
	addi a2, a0, %pcrel_lo(pcrel206)
	addi a1, t0, %pcrel_lo(pcrel207)
	mv a5, s5
pcrel208:
	auipc t0, %pcrel_hi(nextvalue)
	addi a0, t0, %pcrel_lo(pcrel208)
	mv t0, zero
	lw t2, 0(s5)
	mv a6, s4
	li t1, 1
	lw t3, 0(s4)
	remw t4, t2, s0
	sh2add t6, t4, a3
	lw t5, 0(t6)
	beq t5, zero, label29
	mv t6, t5
	bne t5, zero, label26
	j label25
label65:
	auipc t1, %pcrel_hi(ans)
	mv a5, s3
	mv t0, zero
	addi s2, t1, %pcrel_lo(label65)
	lw t2, 0(s3)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t1, 0(t4)
	j label12
.p2align 2
label7:
	addi a5, a5, 4
	sh2add a6, t0, s4
	addiw t1, t1, 1
	lw t2, 0(a5)
	lw t3, 0(a6)
	remw t4, t2, s0
	sh2add t6, t4, a3
	lw t5, 0(t6)
	beq t5, zero, label29
	j label184
label12:
	bne t1, zero, label14
	j label77
.p2align 2
label29:
	sh2add a6, t4, a3
	addiw t0, t0, 1
	sh2add t5, t1, a2
	sw t1, 0(a6)
	sh2add t6, t1, a1
	sw t2, 0(t5)
	sh2add t4, t1, a4
	sw t3, 0(t6)
	sh2add t2, t1, a0
	sw zero, 0(t4)
	sw zero, 0(t2)
	bgt s2, t0, label7
	j label65
label77:
	mv t2, zero
	j label19
.p2align 2
label14:
	sh2add t3, t1, a2
	lw t4, 0(t3)
	bne t2, t4, label84
	mv t2, zero
	sh2add t5, t1, a1
	sh2add t4, t1, a0
	lw t3, 0(t5)
	lw t1, 0(t4)
	mv t2, t3
	beq t1, zero, label19
.p2align 2
label16:
	sh2add t5, t1, a1
	sh2add t4, t1, a0
	lw t3, 0(t5)
	lw t1, 0(t4)
	addw t2, t2, t3
	bne t1, zero, label16
.p2align 2
label19:
	addiw t1, t0, 1
	sh2add t3, t0, s2
	sw t2, 0(t3)
	ble s1, t1, label21
	addi a5, a5, 4
	mv t0, t1
	lw t2, 0(a5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t1, 0(t4)
	bne t1, zero, label14
	j label77
.p2align 2
label184:
	mv t6, t5
	beq t5, zero, label25
.p2align 2
label26:
	sh2add a6, t6, a2
	lw a7, 0(a6)
	beq t2, a7, label27
	sh2add a6, t6, a4
	lw t6, 0(a6)
	bne t6, zero, label26
	j label25
label21:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label6:
	addiw t0, t0, 1
	bgt s2, t0, label7
	j label65
label25:
	sh2add t6, t1, a4
	sh2add a6, t4, a3
	sw t5, 0(t6)
	sh2add t4, t1, a1
	sw t1, 0(a6)
	sh2add t5, t1, a2
	sw t2, 0(t5)
	sh2add t2, t1, a0
	sw t3, 0(t4)
	sw zero, 0(t2)
	j label6
.p2align 2
label84:
	sh2add t3, t1, a4
	lw t1, 0(t3)
	bne t1, zero, label14
	j label77
.p2align 2
label27:
	sh2add t2, t6, a0
	addiw t0, t0, 1
	sh2add a6, t1, a0
	lw t4, 0(t2)
	sh2add t5, t1, a1
	sw t4, 0(a6)
	sw t1, 0(t2)
	sw t3, 0(t5)
	bgt s2, t0, label7
	j label65
