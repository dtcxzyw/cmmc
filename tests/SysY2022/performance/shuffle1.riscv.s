.data
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
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s4, 40(sp)
	sd s5, 32(sp)
	sd s0, 24(sp)
	sd s3, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel291:
	auipc a0, %pcrel_hi(keys)
	addi a0, a0, %pcrel_lo(pcrel291)
	mv s4, a0
	jal getarray
	mv s5, a0
pcrel292:
	auipc a0, %pcrel_hi(values)
	addi a0, a0, %pcrel_lo(pcrel292)
	mv s6, a0
	jal getarray
pcrel293:
	auipc a0, %pcrel_hi(requests)
	addi a0, a0, %pcrel_lo(pcrel293)
	mv s3, a0
	jal getarray
	mv s2, a0
	li a0, 78
	jal _sysy_starttime
pcrel294:
	auipc a0, %pcrel_hi(ans)
	addi s0, a0, %pcrel_lo(pcrel294)
pcrel295:
	auipc a0, %pcrel_hi(head)
	addi a3, a0, %pcrel_lo(pcrel295)
pcrel296:
	auipc a0, %pcrel_hi(key)
	addi a4, a0, %pcrel_lo(pcrel296)
pcrel297:
	auipc a0, %pcrel_hi(value)
	addi a5, a0, %pcrel_lo(pcrel297)
pcrel298:
	auipc a0, %pcrel_hi(nextvalue)
	addi t1, a0, %pcrel_lo(pcrel298)
pcrel299:
	auipc a0, %pcrel_hi(next)
	addi t2, a0, %pcrel_lo(pcrel299)
	ble s5, zero, label2
	mv a0, zero
	mv a1, zero
label18:
	slli a2, a1, 2
	add a2, s4, a2
	lw t4, 0(a2)
	remw a2, t4, s1
	slli a2, a2, 2
	add t5, a3, a2
	slli a2, a1, 2
	add a2, s6, a2
	lw t3, 0(a2)
	lw a2, 0(t5)
	bne a2, zero, label24
	addiw a0, a0, 1
	sw a0, 0(t5)
	slli a2, a0, 2
	add a2, a4, a2
	sw t4, 0(a2)
	slli a2, a0, 2
	add a2, a5, a2
	sw t3, 0(a2)
	slli a2, a0, 2
	add a2, t2, a2
	sw zero, 0(a2)
	slli a2, a0, 2
	add a2, t1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label2
	j label18
label24:
	beq a2, zero, label26
	slli t6, a2, 2
	add t6, a4, t6
	lw t6, 0(t6)
	bne t6, t4, label28
	j label29
label28:
	slli a2, a2, 2
	add a2, t2, a2
	lw a2, 0(a2)
	beq a2, zero, label26
	slli t6, a2, 2
	add t6, a4, t6
	lw t6, 0(t6)
	bne t6, t4, label28
label29:
	addiw a0, a0, 1
	slli t4, a0, 2
	add t4, t1, t4
	slli a2, a2, 2
	add a2, t1, a2
	lw t5, 0(a2)
	sw t5, 0(t4)
	sw a0, 0(a2)
	slli a2, a0, 2
	add a2, a5, a2
	sw t3, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label2
	j label18
label26:
	addiw a0, a0, 1
	slli a2, a0, 2
	add a2, t2, a2
	lw t6, 0(t5)
	sw t6, 0(a2)
	sw a0, 0(t5)
	slli a2, a0, 2
	add a2, a4, a2
	sw t4, 0(a2)
	slli a2, a0, 2
	add a2, a5, a2
	sw t3, 0(a2)
	slli a2, a0, 2
	add a2, t1, a2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s5, label2
	j label18
label2:
	ble s2, zero, label17
	mv a2, zero
	slli a0, zero, 2
	add a0, s3, a0
	lw a1, 0(a0)
	remw a0, a1, s1
	slli a0, a0, 2
	add a0, a3, a0
	lw a0, 0(a0)
	slli t3, zero, 2
	add t3, s0, t3
	beq a0, zero, label71
	slli t4, a0, 2
	add t4, a4, t4
	lw t4, 0(t4)
	bne t4, a1, label10
	beq a0, zero, label89
	mv a1, zero
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, zero, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	j label260
label270:
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	j label274
label10:
	slli a0, a0, 2
	add a0, t2, a0
	lw a0, 0(a0)
	beq a0, zero, label71
	slli t4, a0, 2
	add t4, a4, t4
	lw t4, 0(t4)
	bne t4, a1, label10
	beq a0, zero, label89
	mv a1, zero
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, zero, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	j label270
label274:
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
label276:
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	j label276
label260:
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	j label270
label71:
	mv a1, zero
label7:
	sw a1, 0(t3)
	addiw a2, a2, 1
	bge a2, s2, label17
	slli a0, a2, 2
	add a0, s3, a0
	lw a1, 0(a0)
	remw a0, a1, s1
	slli a0, a0, 2
	add a0, a3, a0
	lw a0, 0(a0)
	slli t3, a2, 2
	add t3, s0, t3
	beq a0, zero, label71
	slli t4, a0, 2
	add t4, a4, t4
	lw t4, 0(t4)
	bne t4, a1, label10
	beq a0, zero, label89
	mv a1, zero
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, zero, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	j label260
label89:
	mv a1, zero
	sw zero, 0(t3)
	addiw a2, a2, 1
	bge a2, s2, label17
	slli a0, a2, 2
	add a0, s3, a0
	lw a1, 0(a0)
	remw a0, a1, s1
	slli a0, a0, 2
	add a0, a3, a0
	lw a0, 0(a0)
	slli t3, a2, 2
	add t3, s0, t3
	beq a0, zero, label71
	slli t4, a0, 2
	add t4, a4, t4
	lw t4, 0(t4)
	bne t4, a1, label10
	beq a0, zero, label89
	mv a1, zero
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, zero, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	slli t4, a0, 2
	add t4, a5, t4
	lw t4, 0(t4)
	addw a1, a1, t4
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label7
	j label260
label17:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
