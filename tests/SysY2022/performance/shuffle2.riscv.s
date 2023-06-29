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
pcrel313:
	auipc a0, %pcrel_hi(keys)
	addi a0, a0, %pcrel_lo(pcrel313)
	mv s4, a0
	jal getarray
	mv s5, a0
pcrel314:
	auipc a0, %pcrel_hi(values)
	addi a0, a0, %pcrel_lo(pcrel314)
	mv s6, a0
	jal getarray
pcrel315:
	auipc a0, %pcrel_hi(requests)
	addi a0, a0, %pcrel_lo(pcrel315)
	mv s3, a0
	jal getarray
	mv s2, a0
	li a0, 78
	jal _sysy_starttime
pcrel316:
	auipc a0, %pcrel_hi(ans)
	addi s1, a0, %pcrel_lo(pcrel316)
pcrel317:
	auipc a0, %pcrel_hi(head)
	addi a3, a0, %pcrel_lo(pcrel317)
pcrel318:
	auipc a0, %pcrel_hi(key)
	addi a2, a0, %pcrel_lo(pcrel318)
pcrel319:
	auipc a0, %pcrel_hi(value)
	addi a1, a0, %pcrel_lo(pcrel319)
pcrel320:
	auipc a0, %pcrel_hi(nextvalue)
	addi a0, a0, %pcrel_lo(pcrel320)
pcrel321:
	auipc a4, %pcrel_hi(next)
	addi a4, a4, %pcrel_lo(pcrel321)
	ble s5, zero, label14
	mv t1, zero
	mv a5, zero
label2:
	slli t2, a5, 2
	add t2, s4, t2
	lw t3, 0(t2)
	remw t4, t3, s0
	slli t2, t4, 2
	add t5, a3, t2
	slli t2, a5, 2
	add t2, s6, t2
	lw t2, 0(t2)
	lw t5, 0(t5)
	bne t5, zero, label8
	addiw t1, t1, 1
	slli t4, t4, 2
	add t4, a3, t4
	sw t1, 0(t4)
	slli t4, t1, 2
	add t4, a2, t4
	sw t3, 0(t4)
	slli t3, t1, 2
	add t3, a1, t3
	sw t2, 0(t3)
	slli t2, t1, 2
	add t2, a4, t2
	sw zero, 0(t2)
	slli t2, t1, 2
	add t2, a0, t2
	sw zero, 0(t2)
	addiw a5, a5, 1
	bge a5, s5, label14
	j label2
label8:
	beq t5, zero, label10
	slli t6, t5, 2
	add t6, a2, t6
	lw t6, 0(t6)
	bne t6, t3, label12
label13:
	addiw t1, t1, 1
	slli t3, t1, 2
	add t3, a0, t3
	slli t4, t5, 2
	add t4, a0, t4
	lw t5, 0(t4)
	sw t5, 0(t3)
	sw t1, 0(t4)
	slli t3, t1, 2
	add t3, a1, t3
	sw t2, 0(t3)
	addiw a5, a5, 1
	bge a5, s5, label14
	j label2
label14:
	ble s2, zero, label29
	mv a5, zero
	slli t1, zero, 2
	add t1, s3, t1
	lw t1, 0(t1)
	remw t2, t1, s0
	slli t2, t2, 2
	add t2, a3, t2
	lw t2, 0(t2)
	beq t2, zero, label133
	slli t3, t2, 2
	add t3, a2, t3
	lw t3, 0(t3)
	bne t3, t1, label22
	beq t2, zero, label153
	mv t1, zero
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, zero, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
label277:
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
label289:
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	j label293
label22:
	slli t2, t2, 2
	add t2, a4, t2
	lw t2, 0(t2)
	beq t2, zero, label133
	slli t3, t2, 2
	add t3, a2, t3
	lw t3, 0(t3)
	bne t3, t1, label22
	beq t2, zero, label153
	mv t1, zero
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, zero, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	j label289
label293:
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	j label295
label153:
	mv t1, zero
	slli t2, a5, 2
	add t2, s1, t2
	sw zero, 0(t2)
	addiw a5, a5, 1
	bge a5, s2, label29
	slli t1, a5, 2
	add t1, s3, t1
	lw t1, 0(t1)
	remw t2, t1, s0
	slli t2, t2, 2
	add t2, a3, t2
	lw t2, 0(t2)
	beq t2, zero, label133
	slli t3, t2, 2
	add t3, a2, t3
	lw t3, 0(t3)
	bne t3, t1, label22
	beq t2, zero, label153
	mv t1, zero
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, zero, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	j label277
label295:
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	j label295
label133:
	mv t1, zero
label19:
	slli t2, a5, 2
	add t2, s1, t2
	sw t1, 0(t2)
	addiw a5, a5, 1
	bge a5, s2, label29
	slli t1, a5, 2
	add t1, s3, t1
	lw t1, 0(t1)
	remw t2, t1, s0
	slli t2, t2, 2
	add t2, a3, t2
	lw t2, 0(t2)
	beq t2, zero, label133
	slli t3, t2, 2
	add t3, a2, t3
	lw t3, 0(t3)
	bne t3, t1, label22
	beq t2, zero, label153
	mv t1, zero
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, zero, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	slli t3, t2, 2
	add t3, a1, t3
	lw t3, 0(t3)
	addw t1, t1, t3
	slli t2, t2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, label19
	j label277
label12:
	slli t5, t5, 2
	add t5, a4, t5
	lw t5, 0(t5)
	beq t5, zero, label10
	slli t6, t5, 2
	add t6, a2, t6
	lw t6, 0(t6)
	bne t6, t3, label12
	j label13
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
label10:
	addiw t1, t1, 1
	slli t5, t1, 2
	add t5, a4, t5
	slli t4, t4, 2
	add t4, a3, t4
	lw t6, 0(t4)
	sw t6, 0(t5)
	sw t1, 0(t4)
	slli t4, t1, 2
	add t4, a2, t4
	sw t3, 0(t4)
	slli t3, t1, 2
	add t3, a1, t3
	sw t2, 0(t3)
	slli t2, t1, 2
	add t2, a0, t2
	sw zero, 0(t2)
	addiw a5, a5, 1
	bge a5, s5, label14
	j label2
