.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
head:
	.zero	40000000
.align 4
next:
	.zero	40000000
.align 4
nextvalue:
	.zero	40000000
.align 4
key:
	.zero	40000000
.align 4
value:
	.zero	40000000
.align 4
keys:
	.zero	40000000
.align 4
values:
	.zero	40000000
.align 4
requests:
	.zero	40000000
.align 4
ans:
	.zero	40000000
.text
.globl main
main:
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s3, 32(sp)
	sd s4, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel271:
	auipc a1, %pcrel_hi(keys)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel271)
	mv s3, a0
	jal getarray
pcrel272:
	auipc a1, %pcrel_hi(values)
	mv s4, a0
	addi a0, a1, %pcrel_lo(pcrel272)
	mv s5, a0
	jal getarray
pcrel273:
	auipc a1, %pcrel_hi(requests)
	addi a0, a1, %pcrel_lo(pcrel273)
	mv s2, a0
	jal getarray
	mv s1, a0
	li a0, 78
	jal _sysy_starttime
pcrel274:
	auipc a5, %pcrel_hi(nextvalue)
pcrel275:
	auipc a0, %pcrel_hi(key)
pcrel276:
	auipc a1, %pcrel_hi(head)
	addi a2, a0, %pcrel_lo(pcrel275)
	addi a3, a1, %pcrel_lo(pcrel276)
pcrel277:
	auipc a1, %pcrel_hi(value)
	addi a0, a1, %pcrel_lo(pcrel277)
pcrel278:
	auipc a1, %pcrel_hi(next)
	addi a4, a1, %pcrel_lo(pcrel278)
	addi a1, a5, %pcrel_lo(pcrel274)
	ble s4, zero, label2
	mv t0, zero
	mv a5, zero
	mv t1, s3
	mv t5, s5
	lw t2, 0(s3)
	lw t1, 0(s5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label111
	j label27
label2:
	ble s1, zero, label3
pcrel279:
	auipc t0, %pcrel_hi(ans)
	addi a5, t0, %pcrel_lo(pcrel279)
	mv t0, zero
	mv t1, s2
	lw t2, 0(s2)
	remw t4, t2, s0
	sh2add t3, t4, a3
	lw t1, 0(t3)
	beq t1, zero, label69
	sh2add t3, t1, a2
	lw t4, 0(t3)
	bne t2, t4, label12
	mv t2, zero
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	sext.w t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	j label248
label255:
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	j label13
label12:
	sh2add t3, t1, a4
	lw t1, 0(t3)
	beq t1, zero, label69
	sh2add t3, t1, a2
	lw t4, 0(t3)
	bne t2, t4, label12
	mv t2, zero
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	sext.w t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	j label255
label13:
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	j label13
label248:
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	j label255
label69:
	mv t2, zero
label9:
	addiw t1, t0, 1
	sh2add t0, t0, a5
	sw t2, 0(t0)
	ble s1, t1, label3
	mv t0, t1
	sh2add t1, t1, s2
	lw t2, 0(t1)
	remw t4, t2, s0
	sh2add t3, t4, a3
	lw t1, 0(t3)
	beq t1, zero, label69
	sh2add t3, t1, a2
	lw t4, 0(t3)
	bne t2, t4, label12
	mv t2, zero
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	sext.w t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label9
	j label248
label111:
	mv t5, t4
	beq t4, zero, label23
	sh2add t6, t4, a2
	lw a6, 0(t6)
	bne t2, a6, label25
	addiw t0, t0, 1
	sh2add t2, t4, a1
	sh2add t3, t0, a1
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	addiw a5, a5, 1
	ble s4, a5, label2
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label111
	j label27
label25:
	sh2add t6, t5, a4
	lw t5, 0(t6)
	beq t5, zero, label23
	sh2add t6, t5, a2
	lw a6, 0(t6)
	bne t2, a6, label25
	addiw t0, t0, 1
	sh2add t2, t5, a1
	sh2add t3, t0, a1
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	addiw a5, a5, 1
	ble s4, a5, label2
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label111
label27:
	addiw t0, t0, 1
	sh2add t3, t3, a3
	sh2add t4, t0, a2
	sw t0, 0(t3)
	sh2add t3, t0, a0
	sw t2, 0(t4)
	sh2add t2, t0, a4
	sw t1, 0(t3)
	sh2add t1, t0, a1
	sw zero, 0(t2)
	sw zero, 0(t1)
	addiw a5, a5, 1
	ble s4, a5, label2
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label111
	j label27
label23:
	addiw t0, t0, 1
	sh2add t3, t3, a3
	sh2add t5, t0, a4
	sw t4, 0(t5)
	sh2add t4, t0, a2
	sw t0, 0(t3)
	sw t2, 0(t4)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	sh2add t1, t0, a1
	sw zero, 0(t1)
	addiw a5, a5, 1
	ble s4, a5, label2
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label111
	j label27
label3:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s1
pcrel280:
	auipc a2, %pcrel_hi(ans)
	addi a1, a2, %pcrel_lo(pcrel280)
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s4, 24(sp)
	ld s3, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
