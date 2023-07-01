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
pcrel312:
	auipc a0, %pcrel_hi(keys)
	addi a0, a0, %pcrel_lo(pcrel312)
	mv s4, a0
	jal getarray
	mv s5, a0
pcrel313:
	auipc a0, %pcrel_hi(values)
	addi a0, a0, %pcrel_lo(pcrel313)
	mv s6, a0
	jal getarray
pcrel314:
	auipc a0, %pcrel_hi(requests)
	addi a0, a0, %pcrel_lo(pcrel314)
	mv s3, a0
	jal getarray
	mv s2, a0
	li a0, 78
	jal _sysy_starttime
pcrel315:
	auipc a0, %pcrel_hi(ans)
	addi s1, a0, %pcrel_lo(pcrel315)
pcrel316:
	auipc a0, %pcrel_hi(head)
	addi a3, a0, %pcrel_lo(pcrel316)
pcrel317:
	auipc a0, %pcrel_hi(key)
	addi a2, a0, %pcrel_lo(pcrel317)
pcrel318:
	auipc a0, %pcrel_hi(value)
	addi a1, a0, %pcrel_lo(pcrel318)
pcrel319:
	auipc a0, %pcrel_hi(nextvalue)
	addi a0, a0, %pcrel_lo(pcrel319)
pcrel320:
	auipc a4, %pcrel_hi(next)
	addi a4, a4, %pcrel_lo(pcrel320)
	ble s5, zero, label14
	mv t1, zero
	mv a5, zero
	sh2add t2, zero, s4
	lw t3, 0(t2)
	remw t4, t3, s0
	sh2add t5, t4, a3
	sh2add t2, zero, s6
	lw t2, 0(t2)
	lw t5, 0(t5)
	bne t5, zero, label6
label5:
	addiw t1, t1, 1
	sh2add t4, t4, a3
	sw t1, 0(t4)
	sh2add t4, t1, a2
	sw t3, 0(t4)
	sh2add t3, t1, a1
	sw t2, 0(t3)
	sh2add t2, t1, a4
	sw zero, 0(t2)
	sh2add t2, t1, a0
	sw zero, 0(t2)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t2, a5, s4
	lw t3, 0(t2)
	remw t4, t3, s0
	sh2add t5, t4, a3
	sh2add t2, a5, s6
	lw t2, 0(t2)
	lw t5, 0(t5)
	bne t5, zero, label6
	j label5
label6:
	beq t5, zero, label8
	sh2add t6, t5, a2
	lw t6, 0(t6)
	bne t3, t6, label10
	addiw t1, t1, 1
	sh2add t4, t1, a0
	sh2add t3, t5, a0
	lw t5, 0(t3)
	sw t5, 0(t4)
	sw t1, 0(t3)
	sh2add t3, t1, a1
	sw t2, 0(t3)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t2, a5, s4
	lw t3, 0(t2)
	remw t4, t3, s0
	sh2add t5, t4, a3
	sh2add t2, a5, s6
	lw t2, 0(t2)
	lw t5, 0(t5)
	bne t5, zero, label6
	j label5
label8:
	addiw t1, t1, 1
	sh2add t5, t1, a4
	sh2add t4, t4, a3
	lw t6, 0(t4)
	sw t6, 0(t5)
	sw t1, 0(t4)
	sh2add t4, t1, a2
	sw t3, 0(t4)
	sh2add t3, t1, a1
	sw t2, 0(t3)
	sh2add t2, t1, a0
	sw zero, 0(t2)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t2, a5, s4
	lw t3, 0(t2)
	remw t4, t3, s0
	sh2add t5, t4, a3
	sh2add t2, a5, s6
	lw t2, 0(t2)
	lw t5, 0(t5)
	bne t5, zero, label6
	j label5
label14:
	ble s2, zero, label29
	mv a5, zero
	sh2add t1, zero, s3
	lw t1, 0(t1)
	remw t2, t1, s0
	sh2add t2, t2, a3
	lw t2, 0(t2)
	beq t2, zero, label133
	sh2add t3, t2, a2
	lw t3, 0(t3)
	bne t1, t3, label20
	beq t2, zero, label146
	mv t1, zero
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, zero, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
label279:
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label290
label27:
	addiw t2, a5, 1
	sh2add a5, a5, s1
	sw t1, 0(a5)
	ble s2, t2, label29
	mv a5, t2
	sh2add t1, t2, s3
	lw t1, 0(t1)
	remw t2, t1, s0
	sh2add t2, t2, a3
	lw t2, 0(t2)
	beq t2, zero, label133
	sh2add t3, t2, a2
	lw t3, 0(t3)
	bne t1, t3, label20
	beq t2, zero, label146
	mv t1, zero
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, zero, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label279
label290:
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label294
label20:
	sh2add t2, t2, a4
	lw t2, 0(t2)
	beq t2, zero, label133
	sh2add t3, t2, a2
	lw t3, 0(t3)
	bne t1, t3, label20
	beq t2, zero, label146
	mv t1, zero
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, zero, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label290
label294:
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label297
label146:
	mv t1, zero
	addiw t2, a5, 1
	sh2add a5, a5, s1
	sw zero, 0(a5)
	ble s2, t2, label29
	mv a5, t2
	sh2add t1, t2, s3
	lw t1, 0(t1)
	remw t2, t1, s0
	sh2add t2, t2, a3
	lw t2, 0(t2)
	beq t2, zero, label133
	sh2add t3, t2, a2
	lw t3, 0(t3)
	bne t1, t3, label20
	beq t2, zero, label146
	mv t1, zero
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, zero, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label268
label297:
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label297
label268:
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label279
label133:
	mv t1, zero
	addiw t2, a5, 1
	sh2add a5, a5, s1
	sw zero, 0(a5)
	ble s2, t2, label29
	mv a5, t2
	sh2add t1, t2, s3
	lw t1, 0(t1)
	remw t2, t1, s0
	sh2add t2, t2, a3
	lw t2, 0(t2)
	beq t2, zero, label133
	sh2add t3, t2, a2
	lw t3, 0(t3)
	bne t1, t3, label20
	beq t2, zero, label146
	mv t1, zero
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, zero, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	sh2add t3, t2, a1
	lw t3, 0(t3)
	addw t1, t1, t3
	sh2add t2, t2, a0
	lw t2, 0(t2)
	beq t2, zero, label27
	j label268
label10:
	sh2add t5, t5, a4
	lw t5, 0(t5)
	beq t5, zero, label8
	sh2add t6, t5, a2
	lw t6, 0(t6)
	bne t3, t6, label10
	addiw t1, t1, 1
	sh2add t4, t1, a0
	sh2add t3, t5, a0
	lw t5, 0(t3)
	sw t5, 0(t4)
	sw t1, 0(t3)
	sh2add t3, t1, a1
	sw t2, 0(t3)
	addiw a5, a5, 1
	ble s5, a5, label14
	sh2add t2, a5, s4
	lw t3, 0(t2)
	remw t4, t3, s0
	sh2add t5, t4, a3
	sh2add t2, a5, s6
	lw t2, 0(t2)
	lw t5, 0(t5)
	bne t5, zero, label6
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
