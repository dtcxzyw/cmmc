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
pcrel322:
	auipc a0, %pcrel_hi(keys)
	addi a0, a0, %pcrel_lo(pcrel322)
	mv s4, a0
	jal getarray
	mv s5, a0
pcrel323:
	auipc a0, %pcrel_hi(values)
	addi a0, a0, %pcrel_lo(pcrel323)
	mv s6, a0
	jal getarray
pcrel324:
	auipc a0, %pcrel_hi(requests)
	addi a0, a0, %pcrel_lo(pcrel324)
	mv s3, a0
	jal getarray
	mv s2, a0
	li a0, 78
	jal _sysy_starttime
pcrel325:
	auipc a0, %pcrel_hi(ans)
	addi s1, a0, %pcrel_lo(pcrel325)
pcrel326:
	auipc a0, %pcrel_hi(head)
	addi a3, a0, %pcrel_lo(pcrel326)
pcrel327:
	auipc a0, %pcrel_hi(key)
	addi a2, a0, %pcrel_lo(pcrel327)
pcrel328:
	auipc a0, %pcrel_hi(value)
	addi a1, a0, %pcrel_lo(pcrel328)
pcrel329:
	auipc a0, %pcrel_hi(nextvalue)
	addi a0, a0, %pcrel_lo(pcrel329)
pcrel330:
	auipc a4, %pcrel_hi(next)
	addi a4, a4, %pcrel_lo(pcrel330)
	ble s5, zero, label14
	mv t0, zero
	mv a5, zero
	sh2add t1, zero, s4
	lw t2, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	sh2add t1, zero, s6
	lw t1, 0(t1)
	lw t4, 0(t4)
	bne t4, zero, label8
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
	remw t3, t2, s0
	sh2add t4, t3, a3
	sh2add t1, a5, s6
	lw t1, 0(t1)
	lw t4, 0(t4)
	bne t4, zero, label8
	j label5
label8:
	beq t4, zero, label10
	sh2add t5, t4, a2
	lw t5, 0(t5)
	bne t2, t5, label12
	addiw t0, t0, 1
	sh2add t3, t0, a0
	sh2add t2, t4, a0
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a1
	sw t1, 0(t2)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t1, a5, s4
	lw t2, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	sh2add t1, a5, s6
	lw t1, 0(t1)
	lw t4, 0(t4)
	bne t4, zero, label8
	j label5
label12:
	sh2add t4, t4, a4
	lw t4, 0(t4)
	beq t4, zero, label10
	sh2add t5, t4, a2
	lw t5, 0(t5)
	bne t2, t5, label12
	addiw t0, t0, 1
	sh2add t3, t0, a0
	sh2add t2, t4, a0
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a1
	sw t1, 0(t2)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t1, a5, s4
	lw t2, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	sh2add t1, a5, s6
	lw t1, 0(t1)
	lw t4, 0(t4)
	bne t4, zero, label8
	j label5
label14:
	ble s2, zero, label29
	mv a5, zero
	sh2add t0, zero, s3
	lw t0, 0(t0)
	remw t1, t0, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label133
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label20
	beq t1, zero, label146
	mv t0, zero
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, zero, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label286
label298:
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label302
label20:
	sh2add t1, t1, a4
	lw t1, 0(t1)
	beq t1, zero, label133
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label20
	beq t1, zero, label146
	mv t0, zero
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, zero, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label298
label302:
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label305
label286:
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label298
label27:
	addiw t1, a5, 1
	sh2add a5, a5, s1
	sw t0, 0(a5)
	ble s2, t1, label29
	mv a5, t1
	sh2add t0, t1, s3
	lw t0, 0(t0)
	remw t1, t0, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label133
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label20
	beq t1, zero, label146
	mv t0, zero
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, zero, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label286
label305:
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label305
label133:
	mv t0, zero
	addiw t1, a5, 1
	sh2add a5, a5, s1
	sw zero, 0(a5)
	ble s2, t1, label29
	mv a5, t1
	sh2add t0, t1, s3
	lw t0, 0(t0)
	remw t1, t0, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label133
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label20
	beq t1, zero, label146
	mv t0, zero
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, zero, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label274
label146:
	mv t0, zero
	addiw t1, a5, 1
	sh2add a5, a5, s1
	sw zero, 0(a5)
	ble s2, t1, label29
	mv a5, t1
	sh2add t0, t1, s3
	lw t0, 0(t0)
	remw t1, t0, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label133
	sh2add t2, t1, a2
	lw t2, 0(t2)
	bne t0, t2, label20
	beq t1, zero, label146
	mv t0, zero
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, zero, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
label274:
	sh2add t2, t1, a1
	lw t2, 0(t2)
	addw t0, t0, t2
	sh2add t1, t1, a0
	lw t1, 0(t1)
	beq t1, zero, label27
	j label286
label10:
	addiw t0, t0, 1
	sh2add t4, t0, a4
	sh2add t3, t3, a3
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
	remw t3, t2, s0
	sh2add t4, t3, a3
	sh2add t1, a5, s6
	lw t1, 0(t1)
	lw t4, 0(t4)
	bne t4, zero, label8
	j label5
label29:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
