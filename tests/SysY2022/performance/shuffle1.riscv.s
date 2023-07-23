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
pcrel208:
	auipc a1, %pcrel_hi(keys)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel208)
	mv s3, a0
	jal getarray
pcrel209:
	auipc a1, %pcrel_hi(values)
	mv s4, a0
	addi a0, a1, %pcrel_lo(pcrel209)
	mv s5, a0
	jal getarray
pcrel210:
	auipc a1, %pcrel_hi(requests)
	addi a0, a1, %pcrel_lo(pcrel210)
	mv s2, a0
	jal getarray
	mv s1, a0
	li a0, 78
	jal _sysy_starttime
pcrel211:
	auipc a5, %pcrel_hi(nextvalue)
pcrel212:
	auipc a0, %pcrel_hi(key)
pcrel213:
	auipc a1, %pcrel_hi(head)
	addi a2, a0, %pcrel_lo(pcrel212)
	addi a3, a1, %pcrel_lo(pcrel213)
pcrel214:
	auipc a1, %pcrel_hi(value)
	addi a0, a1, %pcrel_lo(pcrel214)
pcrel215:
	auipc a1, %pcrel_hi(next)
	addi a4, a1, %pcrel_lo(pcrel215)
	addi a1, a5, %pcrel_lo(pcrel211)
	bgt s4, zero, label50
	bgt s1, zero, label16
	j label15
label50:
	mv t0, zero
	mv a5, zero
	j label2
label15:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s1
pcrel216:
	auipc a2, %pcrel_hi(ans)
	addi a1, a2, %pcrel_lo(pcrel216)
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
label23:
	sh2add t4, t2, a0
	lw t3, 0(t4)
	sh2add t4, t2, a1
	addw t1, t1, t3
	lw t2, 0(t4)
	bne t2, zero, label23
	addiw t2, t0, 1
	sh2add t0, t0, a5
	sw t1, 0(t0)
	ble s1, t2, label15
label160:
	mv t0, t2
	sh2add t2, t2, s2
	lw t1, 0(t2)
	remw t4, t1, s0
	sh2add t3, t4, a3
	lw t2, 0(t3)
	bne t2, zero, label21
	mv t1, zero
	addiw t2, t0, 1
	sh2add t0, t0, a5
	sw zero, 0(t0)
	bgt s1, t2, label160
	j label15
label21:
	sh2add t3, t2, a2
	lw t4, 0(t3)
	beq t1, t4, label139
	sh2add t3, t2, a4
	lw t2, 0(t3)
	bne t2, zero, label21
	mv t1, zero
	addiw t2, t0, 1
	sh2add t0, t0, a5
	sw zero, 0(t0)
	bgt s1, t2, label160
	j label15
label139:
	mv t1, zero
	sh2add t4, t2, a0
	lw t3, 0(t4)
	sh2add t4, t2, a1
	mv t1, t3
	lw t2, 0(t4)
	bne t2, zero, label23
	addiw t2, t0, 1
	sh2add t0, t0, a5
	sw t3, 0(t0)
	bgt s1, t2, label160
	j label15
label11:
	sh2add a6, t5, a2
	lw t6, 0(a6)
	beq t2, t6, label12
	sh2add t6, t5, a4
	lw t5, 0(t6)
	bne t5, zero, label11
	j label10
label12:
	addiw t0, t0, 1
	sh2add t2, t5, a1
	sh2add t3, t0, a1
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	addiw a5, a5, 1
	bgt s4, a5, label2
	ble s1, zero, label15
label16:
	auipc t0, %pcrel_hi(ans)
	addi a5, t0, %pcrel_lo(label16)
	mv t0, zero
	mv t2, s2
	lw t1, 0(s2)
	remw t4, t1, s0
	sh2add t3, t4, a3
	lw t2, 0(t3)
	bne t2, zero, label21
	mv t1, zero
	li t2, 1
	mv t0, a5
	sw zero, 0(a5)
	bgt s1, t2, label160
	j label15
label2:
	sh2add t1, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t1)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	beq t4, zero, label5
	mv t5, t4
	bne t4, zero, label11
	j label10
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
	bgt s4, a5, label2
	bgt s1, zero, label16
	j label15
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
	bgt s4, a5, label2
	bgt s1, zero, label16
	j label15
