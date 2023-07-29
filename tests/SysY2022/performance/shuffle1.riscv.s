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
.p2align 2
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s3, 32(sp)
	sd s4, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel219:
	auipc a1, %pcrel_hi(keys)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel219)
	mv s3, a0
	jal getarray
pcrel220:
	auipc a1, %pcrel_hi(values)
	mv s4, a0
	addi a0, a1, %pcrel_lo(pcrel220)
	mv s5, a0
	jal getarray
pcrel221:
	auipc a1, %pcrel_hi(requests)
	addi a0, a1, %pcrel_lo(pcrel221)
	mv s2, a0
	jal getarray
	mv s1, a0
	li a0, 78
	jal _sysy_starttime
pcrel222:
	auipc a5, %pcrel_hi(nextvalue)
pcrel223:
	auipc a0, %pcrel_hi(key)
pcrel224:
	auipc a1, %pcrel_hi(head)
	addi a2, a0, %pcrel_lo(pcrel223)
	addi a3, a1, %pcrel_lo(pcrel224)
pcrel225:
	auipc a1, %pcrel_hi(value)
	addi a0, a1, %pcrel_lo(pcrel225)
pcrel226:
	auipc a1, %pcrel_hi(next)
	addi a4, a1, %pcrel_lo(pcrel226)
	addi a1, a5, %pcrel_lo(pcrel222)
	bgt s4, zero, label50
	bgt s1, zero, label4
	j label3
label50:
	mv t0, zero
	mv a5, zero
	j label16
label3:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s1
pcrel227:
	auipc a2, %pcrel_hi(ans)
	addi a1, a2, %pcrel_lo(pcrel227)
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
.p2align 2
label11:
	sh2add t3, t2, a2
	lw t4, 0(t3)
	beq t1, t4, label83
	sh2add t3, t2, a4
	lw t2, 0(t3)
	bne t2, zero, label11
	mv t1, zero
	addiw t2, t0, 1
	sh2add t0, t0, a5
	sw zero, 0(t0)
	bgt s1, t2, label76
	j label3
.p2align 2
label83:
	mv t1, zero
	sh2add t3, t2, a0
	lw t4, 0(t3)
	sh2add t3, t2, a1
	mv t1, t4
	lw t2, 0(t3)
	bne t2, zero, label13
	addiw t2, t0, 1
	sh2add t0, t0, a5
	sw t4, 0(t0)
	ble s1, t2, label3
label76:
	mv t0, t2
	sh2add t2, t2, s2
	lw t1, 0(t2)
	remw t3, t1, s0
	sh2add t4, t3, a3
	lw t2, 0(t4)
	j label7
.p2align 2
label13:
	sh2add t3, t2, a0
	lw t4, 0(t3)
	sh2add t3, t2, a1
	addw t1, t1, t4
	lw t2, 0(t3)
	bne t2, zero, label13
	addiw t2, t0, 1
	sh2add t0, t0, a5
	sw t1, 0(t0)
	bgt s1, t2, label76
	j label3
label4:
	auipc t0, %pcrel_hi(ans)
	addi a5, t0, %pcrel_lo(label4)
	mv t0, zero
	mv t2, s2
	lw t1, 0(s2)
	remw t3, t1, s0
	sh2add t4, t3, a3
	lw t2, 0(t4)
.p2align 2
label7:
	bne t2, zero, label11
	mv t1, zero
	addiw t2, t0, 1
	sh2add t0, t0, a5
	sw zero, 0(t0)
	bgt s1, t2, label76
	j label3
.p2align 2
label16:
	sh2add t4, a5, s3
	sh2add t5, a5, s5
	lw t2, 0(t4)
	lw t1, 0(t5)
	remw t3, t2, s0
	sh2add t4, t3, a3
	lw t4, 0(t4)
	beq t4, zero, label19
	mv t5, t4
	bne t4, zero, label25
	j label24
.p2align 2
label19:
	addiw t0, t0, 1
	sh2add t4, t3, a3
	sh2add t3, t0, a2
	sw t0, 0(t4)
	sh2add t4, t0, a0
	sw t2, 0(t3)
	sh2add t2, t0, a4
	sw t1, 0(t4)
	sh2add t1, t0, a1
	sw zero, 0(t2)
	sw zero, 0(t1)
.p2align 2
label20:
	addiw a5, a5, 1
	bgt s4, a5, label16
	bgt s1, zero, label4
	j label3
label24:
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
	j label20
.p2align 2
label25:
	sh2add t6, t5, a2
	lw a6, 0(t6)
	beq t2, a6, label27
	sh2add t6, t5, a4
	lw t5, 0(t6)
	bne t5, zero, label25
	j label24
.p2align 2
label27:
	addiw t0, t0, 1
	sh2add t2, t5, a1
	sh2add t3, t0, a1
	lw t4, 0(t2)
	sw t4, 0(t3)
	sw t0, 0(t2)
	sh2add t2, t0, a0
	sw t1, 0(t2)
	addiw a5, a5, 1
	bgt s4, a5, label16
	bgt s1, zero, label4
	j label3
