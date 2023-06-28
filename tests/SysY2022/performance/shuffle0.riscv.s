.data
.section .rodata
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
	sd s1, 56(sp)
	sd s6, 48(sp)
	sd s4, 40(sp)
	sd s5, 32(sp)
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s1, a0
pcrel314:
	auipc a0, %pcrel_hi(keys)
	addi a0, a0, %pcrel_lo(pcrel314)
	mv s4, a0
	jal getarray
	mv s5, a0
pcrel315:
	auipc a0, %pcrel_hi(values)
	addi a0, a0, %pcrel_lo(pcrel315)
	mv s6, a0
	jal getarray
pcrel316:
	auipc a0, %pcrel_hi(requests)
	addi a0, a0, %pcrel_lo(pcrel316)
	mv s2, a0
	jal getarray
	mv s3, a0
	li a0, 78
	jal _sysy_starttime
pcrel317:
	auipc a0, %pcrel_hi(ans)
	addi s0, a0, %pcrel_lo(pcrel317)
pcrel318:
	auipc a0, %pcrel_hi(head)
	addi a3, a0, %pcrel_lo(pcrel318)
pcrel319:
	auipc a0, %pcrel_hi(key)
	addi a4, a0, %pcrel_lo(pcrel319)
pcrel320:
	auipc a0, %pcrel_hi(value)
	addi a5, a0, %pcrel_lo(pcrel320)
pcrel321:
	auipc a0, %pcrel_hi(nextvalue)
	addi t1, a0, %pcrel_lo(pcrel321)
pcrel322:
	auipc a0, %pcrel_hi(next)
	addi t2, a0, %pcrel_lo(pcrel322)
	ble s5, zero, label14
	mv a0, zero
	mv a1, zero
label2:
	slli a2, a1, 2
	add a2, s4, a2
	lw t4, 0(a2)
	remw t5, t4, s1
	slli a2, t5, 2
	add a2, a3, a2
	slli t3, a1, 2
	add t3, s6, t3
	lw t3, 0(t3)
	lw a2, 0(a2)
	bne a2, zero, label8
	addiw a0, a0, 1
	slli a2, t5, 2
	add a2, a3, a2
	sw a0, 0(a2)
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
	bge a1, s5, label14
	j label2
label8:
	beq a2, zero, label10
	slli t6, a2, 2
	add t6, a4, t6
	lw t6, 0(t6)
	bne t6, t4, label12
	j label13
label10:
	addiw a0, a0, 1
	slli a2, a0, 2
	add a2, t2, a2
	slli t5, t5, 2
	add t5, a3, t5
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
	bge a1, s5, label14
	j label2
label13:
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
	bge a1, s5, label14
	j label2
label14:
	ble s3, zero, label29
	mv a2, zero
	slli a0, zero, 2
	add a0, s2, a0
	lw a1, 0(a0)
	remw a0, a1, s1
	slli a0, a0, 2
	add a0, a3, a0
	lw a0, 0(a0)
	beq a0, zero, label133
	slli t3, a0, 2
	add t3, a4, t3
	lw t3, 0(t3)
	bne t3, a1, label22
	beq a0, zero, label153
	mv a1, zero
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, zero, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
label278:
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
label290:
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	j label294
label22:
	slli a0, a0, 2
	add a0, t2, a0
	lw a0, 0(a0)
	beq a0, zero, label133
	slli t3, a0, 2
	add t3, a4, t3
	lw t3, 0(t3)
	bne t3, a1, label22
	beq a0, zero, label153
	mv a1, zero
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, zero, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	j label290
label294:
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
label296:
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	j label296
label133:
	mv a1, zero
label19:
	slli a0, a2, 2
	add a0, s0, a0
	sw a1, 0(a0)
	addiw a2, a2, 1
	bge a2, s3, label29
	slli a0, a2, 2
	add a0, s2, a0
	lw a1, 0(a0)
	remw a0, a1, s1
	slli a0, a0, 2
	add a0, a3, a0
	lw a0, 0(a0)
	beq a0, zero, label133
	slli t3, a0, 2
	add t3, a4, t3
	lw t3, 0(t3)
	bne t3, a1, label22
	beq a0, zero, label153
	mv a1, zero
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, zero, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	j label278
label153:
	mv a1, zero
	slli a0, a2, 2
	add a0, s0, a0
	sw zero, 0(a0)
	addiw a2, a2, 1
	bge a2, s3, label29
	slli a0, a2, 2
	add a0, s2, a0
	lw a1, 0(a0)
	remw a0, a1, s1
	slli a0, a0, 2
	add a0, a3, a0
	lw a0, 0(a0)
	beq a0, zero, label133
	slli t3, a0, 2
	add t3, a4, t3
	lw t3, 0(t3)
	bne t3, a1, label22
	beq a0, zero, label153
	mv a1, zero
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, zero, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	slli t3, a0, 2
	add t3, a5, t3
	lw t3, 0(t3)
	addw a1, a1, t3
	slli a0, a0, 2
	add a0, t1, a0
	lw a0, 0(a0)
	beq a0, zero, label19
	j label278
label12:
	slli a2, a2, 2
	add a2, t2, a2
	lw a2, 0(a2)
	beq a2, zero, label10
	slli t6, a2, 2
	add t6, a4, t6
	lw t6, 0(t6)
	bne t6, t4, label12
	j label13
label29:
	li a0, 90
	jal _sysy_stoptime
	mv a0, s3
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	addi sp, sp, 64
	ret
