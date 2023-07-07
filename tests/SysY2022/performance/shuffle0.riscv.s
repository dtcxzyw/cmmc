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
	mv s0, a0
pcrel312:
	auipc a0, %pcrel_hi(keys)
	addi a0, a0, %pcrel_lo(pcrel312)
	mv s3, a0
	jal getarray
	mv s4, a0
pcrel313:
	auipc a0, %pcrel_hi(values)
	addi a0, a0, %pcrel_lo(pcrel313)
	mv s5, a0
	jal getarray
pcrel314:
	auipc a0, %pcrel_hi(requests)
	addi a0, a0, %pcrel_lo(pcrel314)
	mv s2, a0
	jal getarray
	mv s1, a0
	li a0, 78
	jal _sysy_starttime
pcrel315:
	auipc a1, %pcrel_hi(next)
pcrel316:
	auipc a0, %pcrel_hi(head)
	addi a4, a1, %pcrel_lo(pcrel315)
	addi a3, a0, %pcrel_lo(pcrel316)
pcrel317:
	auipc a1, %pcrel_hi(nextvalue)
pcrel318:
	auipc a0, %pcrel_hi(key)
	addi a1, a1, %pcrel_lo(pcrel317)
	addi a2, a0, %pcrel_lo(pcrel318)
pcrel319:
	auipc a0, %pcrel_hi(value)
	addi a0, a0, %pcrel_lo(pcrel319)
	ble s4, zero, label14
	mv t0, zero
	mv a5, zero
	sh2add t1, zero, s3
	lw t2, 0(t1)
	sh2add t1, zero, s5
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
label5:
	addiw t0, t0, 1
	sh2add t3, t3, a3
	sw t0, 0(t3)
	sh2add t3, t0, a2
	sw t2, 0(t3)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	sh2add t1, t0, a4
	sw zero, 0(t1)
	sh2add t1, t0, a1
	sw zero, 0(t1)
	addiw a5, a5, 1
	ble s4, a5, label14
	sh2add t1, a5, s3
	lw t2, 0(t1)
	sh2add t1, a5, s5
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
	j label5
label14:
	ble s1, zero, label28
pcrel320:
	auipc a5, %pcrel_hi(ans)
	mv t0, zero
	addi a5, a5, %pcrel_lo(pcrel320)
	sh2add t1, zero, s2
	lw t2, 0(t1)
	remw t1, t2, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t3, t1, a2
	lw t3, 0(t3)
	bne t2, t3, label23
	beq t1, zero, label151
	mv t2, zero
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, zero, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
label279:
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
label290:
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	j label294
label23:
	sh2add t1, t1, a4
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t3, t1, a2
	lw t3, 0(t3)
	bne t2, t3, label23
	beq t1, zero, label151
	mv t2, zero
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, zero, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	j label290
label294:
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	j label296
label151:
	mv t2, zero
	addiw t1, t0, 1
	sh2add t0, t0, a5
	sw zero, 0(t0)
	ble s1, t1, label28
	mv t0, t1
	sh2add t1, t1, s2
	lw t2, 0(t1)
	remw t1, t2, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t3, t1, a2
	lw t3, 0(t3)
	bne t2, t3, label23
	beq t1, zero, label151
	mv t2, zero
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, zero, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	j label279
label296:
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	j label296
label131:
	mv t2, zero
label20:
	addiw t1, t0, 1
	sh2add t0, t0, a5
	sw t2, 0(t0)
	ble s1, t1, label28
	mv t0, t1
	sh2add t1, t1, s2
	lw t2, 0(t1)
	remw t1, t2, s0
	sh2add t1, t1, a3
	lw t1, 0(t1)
	beq t1, zero, label131
	sh2add t3, t1, a2
	lw t3, 0(t3)
	bne t2, t3, label23
	beq t1, zero, label151
	mv t2, zero
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, zero, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	sh2add t3, t1, a0
	sh2add t1, t1, a1
	lw t3, 0(t3)
	lw t1, 0(t1)
	addw t2, t2, t3
	beq t1, zero, label20
	j label279
label65:
	mv t5, t4
	beq t4, zero, label10
	sh2add t6, t4, a2
	lw t6, 0(t6)
	bne t2, t6, label12
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
	lw t2, 0(t1)
	sh2add t1, a5, s5
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
	j label5
label10:
	addiw t0, t0, 1
	sh2add t3, t3, a3
	sh2add t5, t0, a4
	sw t4, 0(t5)
	sw t0, 0(t3)
	sh2add t3, t0, a2
	sw t2, 0(t3)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	sh2add t1, t0, a1
	sw zero, 0(t1)
	addiw a5, a5, 1
	ble s4, a5, label14
	sh2add t1, a5, s3
	lw t2, 0(t1)
	sh2add t1, a5, s5
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
	j label5
label12:
	sh2add t5, t5, a4
	lw t5, 0(t5)
	beq t5, zero, label10
	sh2add t6, t5, a2
	lw t6, 0(t6)
	bne t2, t6, label12
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
	lw t2, 0(t1)
	sh2add t1, a5, s5
	lw t1, 0(t1)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	bne t4, zero, label65
	j label5
label28:
	li a0, 90
	jal _sysy_stoptime
pcrel321:
	auipc a0, %pcrel_hi(ans)
	addi a1, a0, %pcrel_lo(pcrel321)
	mv a0, s1
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
