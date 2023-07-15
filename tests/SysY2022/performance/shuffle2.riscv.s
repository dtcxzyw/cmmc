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
pcrel323:
	auipc a1, %pcrel_hi(keys)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel323)
	mv s3, a0
	jal getarray
pcrel324:
	auipc a1, %pcrel_hi(values)
	mv s4, a0
	addi a0, a1, %pcrel_lo(pcrel324)
	mv s5, a0
	jal getarray
pcrel325:
	auipc a1, %pcrel_hi(requests)
	addi a0, a1, %pcrel_lo(pcrel325)
	mv s2, a0
	jal getarray
	mv s1, a0
	li a0, 78
	jal _sysy_starttime
pcrel326:
	auipc a5, %pcrel_hi(nextvalue)
pcrel327:
	auipc a0, %pcrel_hi(key)
pcrel328:
	auipc a1, %pcrel_hi(head)
	addi a2, a0, %pcrel_lo(pcrel327)
	addi a3, a1, %pcrel_lo(pcrel328)
pcrel329:
	auipc a1, %pcrel_hi(value)
	addi a0, a1, %pcrel_lo(pcrel329)
pcrel330:
	auipc a1, %pcrel_hi(next)
	addi a4, a1, %pcrel_lo(pcrel330)
	addi a1, a5, %pcrel_lo(pcrel326)
	ble s4, zero, label14
	mv t0, zero
	mv a5, zero
	mv t1, s3
	mv t5, s5
	lw t2, 0(s3)
	lw t1, 0(s5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
label5:
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
	ble s4, a5, label14
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
	j label5
label14:
	ble s1, zero, label28
pcrel331:
	auipc t0, %pcrel_hi(ans)
	addi a5, t0, %pcrel_lo(pcrel331)
	mv t0, zero
	mv t1, s2
	lw t2, 0(s2)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t1, 0(t4)
	beq t1, zero, label131
	sh2add t4, t1, a2
	lw t3, 0(t4)
	bne t2, t3, label25
	mv t2, zero
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	sext.w t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
label274:
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	j label286
label26:
	addiw t3, t0, 1
	sh2add t0, t0, a5
	sw t2, 0(t0)
	ble s1, t3, label28
	mv t0, t3
	sh2add t1, t3, s2
	lw t2, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t1, 0(t4)
	beq t1, zero, label131
	sh2add t4, t1, a2
	lw t3, 0(t4)
	bne t2, t3, label25
	mv t2, zero
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	sext.w t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
label286:
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
label298:
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	j label300
label131:
	mv t2, zero
	addiw t3, t0, 1
	sh2add t0, t0, a5
	sw zero, 0(t0)
	ble s1, t3, label28
	mv t0, t3
	sh2add t1, t3, s2
	lw t2, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t1, 0(t4)
	beq t1, zero, label131
	sh2add t4, t1, a2
	lw t3, 0(t4)
	bne t2, t3, label25
	mv t2, zero
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	sext.w t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	j label274
label300:
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
label22:
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	j label22
label25:
	sh2add t3, t1, a4
	lw t1, 0(t3)
	beq t1, zero, label131
	sh2add t4, t1, a2
	lw t3, 0(t4)
	bne t2, t3, label25
	mv t2, zero
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	sext.w t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	sh2add t3, t1, a0
	lw t4, 0(t3)
	sh2add t3, t1, a1
	addw t2, t2, t4
	lw t1, 0(t3)
	beq t1, zero, label26
	j label298
label65:
	mv t5, t4
	beq t4, zero, label10
	sh2add a6, t4, a2
	lw t6, 0(a6)
	bne t2, t6, label13
	addiw t0, t0, 1
	sh2add t2, t4, a1
	sh2add t3, t0, a1
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	addiw a5, a5, 1
	ble s4, a5, label14
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
	j label5
label13:
	sh2add t6, t5, a4
	lw t5, 0(t6)
	beq t5, zero, label10
	sh2add a6, t5, a2
	lw t6, 0(a6)
	bne t2, t6, label13
	addiw t0, t0, 1
	sh2add t2, t5, a1
	sh2add t3, t0, a1
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	addiw a5, a5, 1
	ble s4, a5, label14
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
	j label5
label10:
	addiw t0, t0, 1
	sh2add t5, t0, a4
	sw t4, 0(t5)
	sh2add t4, t3, a3
	sh2add t3, t0, a2
	sw t0, 0(t4)
	sw t2, 0(t3)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	sh2add t1, t0, a1
	sw zero, 0(t1)
	addiw a5, a5, 1
	ble s4, a5, label14
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
	j label5
label28:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s1
pcrel332:
	auipc a2, %pcrel_hi(ans)
	addi a1, a2, %pcrel_lo(pcrel332)
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
