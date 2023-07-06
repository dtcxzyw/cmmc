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
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s4, 40(sp)
	sd s6, 32(sp)
	sd s1, 24(sp)
	sd s3, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel318:
	auipc a0, %pcrel_hi(keys)
	addi a0, a0, %pcrel_lo(pcrel318)
	mv s4, a0
	jal getarray
	mv s5, a0
pcrel319:
	auipc a0, %pcrel_hi(values)
	addi a0, a0, %pcrel_lo(pcrel319)
	mv s6, a0
	jal getarray
pcrel320:
	auipc a0, %pcrel_hi(requests)
	addi a0, a0, %pcrel_lo(pcrel320)
	mv s3, a0
	jal getarray
	mv s2, a0
	li a0, 78
	jal _sysy_starttime
pcrel321:
	auipc a4, %pcrel_hi(next)
pcrel322:
	auipc a0, %pcrel_hi(ans)
	addi a4, a4, %pcrel_lo(pcrel321)
	addi s1, a0, %pcrel_lo(pcrel322)
pcrel323:
	auipc a0, %pcrel_hi(head)
	addi a3, a0, %pcrel_lo(pcrel323)
pcrel324:
	auipc a0, %pcrel_hi(key)
	addi a2, a0, %pcrel_lo(pcrel324)
pcrel325:
	auipc a0, %pcrel_hi(value)
	addi a1, a0, %pcrel_lo(pcrel325)
pcrel326:
	auipc a0, %pcrel_hi(nextvalue)
	addi a0, a0, %pcrel_lo(pcrel326)
	ble s5, zero, label14
	mv t0, zero
	mv a5, zero
	sh2add t1, zero, s4
	lw t2, 0(t1)
	sh2add t1, zero, s6
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label6
	j label5
label14:
	ble s2, zero, label27
	mv a5, zero
	sh2add t0, zero, s3
	lw t0, 0(t0)
	remw t1, t0, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label24
	beq t1, zero, label141
	mv t0, zero
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, zero, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	j label283
label271:
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
label283:
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
label295:
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	j label301
label141:
	mv t0, zero
	addiw t1, a5, 1
	sh2add a5, a5, s1
	sw zero, 0(a5)
	ble s2, t1, label27
	mv a5, t1
	sh2add t0, t1, s3
	lw t0, 0(t0)
	remw t1, t0, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label24
	beq t1, zero, label141
	mv t0, zero
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, zero, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	j label271
label24:
	sh2add t1, t1, a4
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label24
	beq t1, zero, label141
	mv t0, zero
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, zero, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	j label295
label25:
	addiw t1, a5, 1
	sh2add a5, a5, s1
	sw t0, 0(a5)
	ble s2, t1, label27
	mv a5, t1
	sh2add t0, t1, s3
	lw t0, 0(t0)
	remw t1, t0, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label24
	beq t1, zero, label141
	mv t0, zero
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, zero, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	j label283
label301:
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	j label301
label131:
	mv t0, zero
	addiw t1, a5, 1
	sh2add a5, a5, s1
	sw zero, 0(a5)
	ble s2, t1, label27
	mv a5, t1
	sh2add t0, t1, s3
	lw t0, 0(t0)
	remw t1, t0, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label24
	beq t1, zero, label141
	mv t0, zero
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, zero, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	sh2add t2, t1, a1
	sh2add t1, t1, a0
	lw t2, 0(t2)
	lw t1, 0(t1)
	addw t0, t0, t2
	beq t1, zero, label25
	j label271
label5:
	addiw t0, t0, 1
	sh2add t3, t3, a3
	sw t0, 0(t3)
	sh2add t3, t0, a2
	sw t2, 0(t3)
	sh2add t2, t0, a1
	sw t1, 0(t2)
	sh2add t1, t0, a4
	sw zero, 0(t1)
	sh2add t1, t0, a0
	sw zero, 0(t1)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t1, a5, s4
	lw t2, 0(t1)
	sh2add t1, a5, s6
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label6
	j label5
label6:
	beq t4, zero, label8
	sh2add t5, t4, a2
	lw t5, 0(t5)
	bne t2, t5, label10
	addiw t0, t0, 1
	sh2add t2, t4, a0
	sh2add t3, t0, a0
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a1
	sw t1, 0(t2)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t1, a5, s4
	lw t2, 0(t1)
	sh2add t1, a5, s6
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label6
	j label5
label10:
	sh2add t4, t4, a4
	lw t4, 0(t4)
	beq t4, zero, label8
	sh2add t5, t4, a2
	lw t5, 0(t5)
	bne t2, t5, label10
	addiw t0, t0, 1
	sh2add t2, t4, a0
	sh2add t3, t0, a0
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a1
	sw t1, 0(t2)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t1, a5, s4
	lw t2, 0(t1)
	sh2add t1, a5, s6
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label6
	j label5
label8:
	addiw t0, t0, 1
	sh2add t3, t3, a3
	sh2add t4, t0, a4
	lw t5, 0(t3)
	sw t5, 0(t4)
	sw t0, 0(t3)
	sh2add t3, t0, a2
	sw t2, 0(t3)
	sh2add t2, t0, a1
	sw t1, 0(t2)
	sh2add t1, t0, a0
	sw zero, 0(t1)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t1, a5, s4
	lw t2, 0(t1)
	sh2add t1, a5, s6
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label6
	j label5
label27:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
